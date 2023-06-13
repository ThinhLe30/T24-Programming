SUBROUTINE CusEmpDetail(cust_id, employee_status, occupation, employers_name, empoyers_address)
    $INSERT T24.BP I_COMMON
    $INSERT T24.BP I_EQUATE
    $INSERT T24.BP I_F.CUSTOMER
    fn_cust = "F.CUSTOMER"
    f_cust= ""
    cust_rec =""

    employee_status = ""
    occupation = ""
    employers_name = ""
    empoyers_address = ""

    CALL LOAD.COMPANY("BNK")
    * Loading data 
    CALL OPF(fn_cust,f_cust)
    * Open the file we want to retrieve data
    CALL F.READ(fn_cust, cust_id, cust_rec, f_cust, err)
    * Reading the record we wannna specified
    employee_status = cust_rec<70>
    occupation = cust_rec<71>
    employers_name = cust_rec<73>
    empoyers_address = cust_rec<74>
    RETURN
END


PROGRAM
    CRT @(-1)
    PROMPT "Enter employee id to see detail: ""
    INPUT cust_id

    CALL CusEmpDetail(cust_id, employee_status, occupation, employers_name, empoyers_address)
    * call the subroutine method

    * you need to format all the value above bc this's a multiple value
    PROMPT "Employee with id: " : cust_id
    PROMPT "Employee Status: " : FMT(employee_status, "MCP")
    PROMPT "Occupation: " : FMT(employee_status, "MCP")
    PROMPT "Employers Name: " : FMT(employers_name, "MCP")
    PROMPT "Employers Address: " : FMT(empoyers_address, "MCP")

END