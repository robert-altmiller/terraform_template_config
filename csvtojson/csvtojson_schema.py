import csv
import json
import sys

def csv_to_json(input_csv_file):
    result = {}
    
    with open(input_csv_file, 'r') as csv_file:
        reader = csv.DictReader(csv_file)
        for row in reader:
            header = row.pop('header')
            # Split the catalog_principal_privileges and schema_principal_privileges columns by the pipe character
            row['catalog_principal_privileges'] = row['catalog_principal_privileges'].split('|')
            row['schema_principal_privileges'] = row['schema_principal_privileges'].split('|')
            
            # Create the nested dictionary structure
            if header not in result:
                result[header] = {}
            result[header][row['resource_name']] = row

    return result

def combine_jsons(new_data, master_json_file):
    # Load the existing JSON file
    existing_data = {}
    try:
        with open(master_json_file, 'r') as json_file:
            existing_data = json.load(json_file)
    except FileNotFoundError:
        pass

    # Combine the new data with the existing data
    combined_data = {**existing_data, **new_data}
    
    # Write the combined data back to the master JSON file
    with open(master_json_file, 'w') as json_file:
        json.dump(combined_data, json_file, indent=2)

if __name__ == '__main__':
    if len(sys.argv) != 3:
        print("Usage: python script_name.py path_to_schemas.csv path_to_master_schemas.json")
        sys.exit(1)
    
    csv_path = sys.argv[1]
    json_path = sys.argv[2]
    
    new_data = csv_to_json(csv_path)
    combine_jsons(new_data, json_path)
    print("JSON file has been updated!")
