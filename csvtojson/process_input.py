import ast, json
import pandas as pd


def dataframe_to_json(df, orient='records'):
    """convert a pandas DataFrame to a JSON string."""
    try:
        json_data = df.to_json(orient=orient)
        return json_data
    except Exception as e:
        print(f"An error occurred: {str(e)}")
        return None
  

def convert_col_to_python_list(cell):
    """convert dataframe column to python list"""
    try:
        return ast.literal_eval(cell)
    except (ValueError, SyntaxError):
        return cell  # Return the original value if evaluation fails


def read_excel_data(input_filepath = None, worksheet_name = None, header_row = 1):
   """read excel data for creating Databricks Terraform resources"""

   # read the Excel file into a DataFrame, using row 2 as the header
   df = pd.read_excel(input_filepath, sheet_name = worksheet_name, header= header_row)
 
   # apply the safe_eval function to the entire column (convert to python list)
   df['sc_principal_privileges'] = df['sc_principal_privileges'].apply(convert_col_to_python_list)
   
   # convert dataframe to json
   df_json = json.loads(dataframe_to_json(df))

   # rebuild json object into a payload for Terraform
   tf_json_payload = {}
   for json_obj in df_json:
      tf_json_payload[json_obj["resource_name"]] = json_obj

   return json.dumps(tf_json_payload)


if __name__ == "__main__":
    
    # Specify the input file path, worksheet name, and header row as needed
    input_filepath = 'input.xlsx'
    worksheet_name = 'storage_credentials'
    header_row = 1

    # Call the read_excel_data function to process the Excel data
    jsondata = read_excel_data(input_filepath, worksheet_name, header_row)
    print(jsondata)