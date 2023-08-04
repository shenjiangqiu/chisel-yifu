package mergetree

import circt.stage.ChiselStage
import java.io._

object Main extends App {
  // Param sizes to generate
  val sizes = List(4, 8, 16, 32, 64)

  for (size <- sizes) {
    // Generate the Verilog output
    val verilogCode = ChiselStage.emitSystemVerilog(
      new AddTree(size, 32),
      firtoolOpts = Array("-disable-all-randomization", "-strip-debug-info")
    )

    // Define the filename
    val fileName = s"AddTree-${size}-32.v"

    // Write the Verilog code to a file
    val pw = new PrintWriter(new File(fileName))
    pw.write(verilogCode)
    pw.close
  }
}
