﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


public interface ICitizen
{
    string Id { get; set; }
    bool CheckIdEnds(string num);

    bool CheckYear(string year);
}

