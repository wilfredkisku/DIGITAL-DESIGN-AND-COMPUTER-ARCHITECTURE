# Digital Design and Computer Architecture

```$dumpvars``` and ```$dumpfile``` Verilog

In the waveform genration tutorial we had used $dumpfile and $dumpvars system tasks. We will now take a deeper look into these two system variables.
$dumpfile

The $dumpvars is used to dump the changes in the values of nets and registers in a file that is named as its argument. For example

```$dumpfile("test.vcd");```


will dump the changes in a file named test.vcd. The changes are recorded in a file called VCD file that stands for value change dump. A VCD (value change dump) stores all the information about value changes. We can not have more than one ```$dumpfile``` statements in verilog simulation. But what exactly are we going to dump in this file ? Thhis is specified by ```$dumpvars``` that we will cover next. One more thing, the declaration of ```$dumpfile``` must come before the $dumpvars or any other system tasks that specifies dump.
```$dumpvars```

The ```$dumpvars``` is used to specify which variables are to be dumped ( in the file mentioned by $dumpfile). The simplest way to use it is without any argument.

```$dumpvars;```


In this case, it dumps ALL variables in the current testbench module and in all other modules instantiated by it. The general syntax of the $dumpvars include two arguments as in

```$dumpvars(<levels> <, <module_or_variable>>* );```


We basically can specify which modules , and which variables in modules will be dumped. The simplest way to use this is to set the level to 0 and module name as the top module ( typically the top testbench module) as in

```$dumpvars(0, toptestbench_module);```


When level is set to 0, and only the module name is specified, it dumps ALL the variables of that module and all the variables in ALL lower level modules instantiated by this top module. If any module in not instantiated by this top module, then its variable will not be covered.

. If you wish to also cover variables of a module that is not instantiated by the top module , you could write

```$dumpvars(0, toptestbench_module, not_instantiated_module);```


If we wish to dump the variables only in the top module but not the modules instantiated below it, we could have 1 as its first argument as in

```$dumpvars(1, toptestbench_module);```
