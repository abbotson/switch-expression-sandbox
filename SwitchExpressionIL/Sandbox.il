.assembly extern System.Runtime
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 8:0:0:0
}

.class public abstract auto ansi sealed beforefieldinit SwitchExpressionSandbox.Sandbox
       extends [System.Runtime]System.Object
{
  .method public hidebysig static int32  SwitchExpressionMethod(bool val1,
                                                                bool val2) cil managed
  {
    .maxstack  1
    .locals init (int32 result)

    // Pattern matching

                            ldarg.0   // val1
                            brtrue.s  val1_true

    val1_false:             ldarg.1   // val2
                            brfalse.s val1_false_val2_false
                            br.s      val1_false_val2_true

    val1_true:              ldarg.1   // val2
                            brfalse.s val1_true_val2_false
                            br.s      val1_true_val2_true

    // Set result of the switch expression

    val1_false_val2_false:  ldc.i4.1
                            stloc.0   // result
                            br.s      return_statement

    val1_false_val2_true:   ldc.i4.2
                            stloc.0   // result
                            br.s      return_statement

    val1_true_val2_false:   ldc.i4.3
                            stloc.0   // result
                            br.s      return_statement

    val1_true_val2_true:    ldc.i4.4
                            stloc.0   // result

    // Use the result of the switch expression

    return_statement:       ldloc.0   // result
                            ret
  }

  .method public hidebysig static int32  SwitchStatementMethod(bool val1,
                                                               bool val2) cil managed
  {
    .maxstack  8

    // Pattern matching

                            ldarg.0    // val1
                            brtrue.s   val1_true

    val1_false:             ldarg.1    // val2
                            brfalse.s  val1_false_val2_false
                            br.s       val1_false_val2_true

    val1_true:              ldarg.1
                            brfalse.s  val1_true_val2_false
                            br.s       val1_true_val2_true

    // Cases in switch statement

    val1_false_val2_false:  ldc.i4.1
                            ret

    val1_false_val2_true:   ldc.i4.2
                            ret

    val1_true_val2_false:   ldc.i4.3
                            ret

    val1_true_val2_true:    ldc.i4.4
                            ret
  }

  .method public hidebysig static int32  TernaryExpressionMethod(bool val1,
                                                                 bool val2) cil managed
  {
    .maxstack  8

                            ldarg.0    // val1
                            brtrue.s   val1_true

    val1_false:             ldarg.1    // val2
                            brtrue.s   val1_false_val2_true

    val1_false_val2_false:  ldc.i4.1
                            ret

    val1_false_val2_true:   ldc.i4.2
                            ret

    val1_true:              ldarg.1    // val2
                            brtrue.s   val1_true_val2_true

    val1_true_val2_false:   ldc.i4.3
                            ret

    val1_true_val2_true:    ldc.i4.4
                            ret
  }

  .method public hidebysig static int32  IfStatementsMethod(bool val1,
                                                            bool val2) cil managed
  {
    .maxstack  8

                            ldarg.0    // val1
                            brfalse.s  val1_false

    val1_true:              ldarg.1    // val2
                            brfalse.s  val1_true_val2_false

    val1_true_val2_true:    ldc.i4.4
                            ret

    val1_true_val2_false:   ldc.i4.3
                            ret

    val1_false:             ldarg.1    // val2
                            brfalse.s  val1_false_val2_false

    val1_false_val2_true:   ldc.i4.2
                            ret

    val1_false_val2_false:  ldc.i4.1
                            ret
  }
}
