// Code your design here
module fuladdr(sum,cout,a,b,cin);
  output sum,cout;
  input a,b,cin;
  xor(node1,a,b);
  xor(sum,node1,cin);
  and(node2,a,b);
  or(node3,a,b);
  and(node4,cin,node3);
  or(cout,node2,node4);
 endmodule