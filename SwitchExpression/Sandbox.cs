namespace SwitchExpressionSandbox;

public static class Sandbox
{
    public static int SwitchExpressionMethod(bool val1, bool val2)
    {
        return (val1, val2) switch
        {
            (false, false) => 1,
            (false, true) => 2,
            (true, false) => 3,
            (true, true) => 4
        };
    }

    public static int SwitchStatementMethod(bool val1, bool val2)
    {
        switch (val1, val2)
        {
            case (false, false): return 1;
            case (false, true): return 2;
            case (true, false): return 3;
            case (true, true): return 4;
        };
    }

    public static int TernaryExpressionMethod(bool val1, bool val2)
    {
        return val1
            ? (val2 ? 4 : 3)
            : (val2 ? 2 : 1);
    }

    public static int IfStatementsMethod(bool val1, bool val2)
    {
        if (val1)
        {
            if (val2)
            {
                return 4;
            }
            else
            {
                return 3;
            }
        }
        else
        {
            if (val2)
            {
                return 2;
            }
            else
            {
                return 1;
            }
        }
    }
}
