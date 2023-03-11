Verilog generator statements allow you to create multiple instances of a module with different parameter values. The main usage of generator statements is to create a parameterized design that can be easily customized and reused for different applications. Here are some examples of Verilog generator statements and their usage:

1. Generate loop: The generate loop statement allows you to create multiple instances of a module using a loop. Here's an example:

```
genvar i;
generate
  for (i = 0; i < N; i = i + 1) begin
    my_module #(i) inst (
      .clk(clk),
      .reset(reset),
      .out_data(out_data[i])
    );
  end
endgenerate

```

In this example, the generate loop creates ```N``` instances of ```my_module```, each with a different value of ```i``` passed as a parameter. This allows you to create a parameterized design that can be easily customized for different applications.

2. Conditional generate: The conditional generate statement allows you to create instances of a module based on a condition. Here's an example:

```
genvar i;
generate
  if (N > 1) begin
    my_module #(1) inst1 (
      .clk(clk),
      .reset(reset),
      .out_data(out_data[0])
    );
    for (i = 1; i < N; i = i + 1) begin
      my_module #(i+1) inst2 (
        .clk(clk),
        .reset(reset),
        .out_data(out_data[i])
      );
    end
  end else begin
    my_module #(1) inst (
      .clk(clk),
      .reset(reset),
      .out_data(out_data[0])
    );
  end
endgenerate
```
In this example, the conditional generate statement creates instances of ```my_module``` based on the value of ```N```. If ```N``` is greater than 1, it creates multiple instances with different parameter values. Otherwise, it creates a single instance with the default parameter value.

3. Generate block: The generate block statement allows you to create instances of a module with different parameter values based on a block of code. Here's an example:

```
genvar i;
generate
  if (N > 1) begin : gen_block
    my_module #(1) inst1 (
      .clk(clk),
      .reset(reset),
      .out_data(out_data[0])
    );
    for (i = 1; i < N; i = i + 1) begin : for_block
      my_module #(i+1) inst2 (
        .clk(clk),
        .reset(reset),
        .out_data(out_data[i])
      );
    end
  end else begin : else_block
    my_module #(1) inst (
      .clk(clk),
      .reset(reset),
      .out_data(out_data[0])
    );
  end
endgenerate
```

In this example, the generate block statement creates instances of my_module based on a block of code that contains multiple statements. The block is labeled with the name ```gen_block``` and ```else_block```, which can be used to refer to the block in other parts of the code. The for loop that creates multiple instances is also labeled with the name ```for_block```.

These are some examples of Verilog generator statements and their usage. Generator statements are a powerful feature of Verilog that allows you to create parameterized designs that can be easily customized and reused for different applications.
