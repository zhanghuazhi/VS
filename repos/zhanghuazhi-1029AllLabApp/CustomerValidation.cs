﻿using System;

public class CustomerValidation
{
	public void CheckCustomerName(string CustomerName)
    {
        if (CustomerName.Length > 10)
            throw new Exception("Name should be within 10 characters.");
        else if (CustomerName == "")
            throw new Exception("Name is required.");
    }
}
