v 20121123 2
C 40000 40000 0 0 0 title-B.sym
C 44300 47100 1 0 0 mcp23017.sym
{
T 45600 50600 5 10 1 1 0 0 1
device=MCP23017
T 44700 50600 5 10 1 1 0 0 1
refdes=U1
T 44300 47100 5 10 0 0 0 0 1
footprint=DIP28N
}
C 44300 42600 1 0 0 mcp23017.sym
{
T 45600 46100 5 10 1 1 0 0 1
device=MCP23017
T 44700 46100 5 10 1 1 0 0 1
refdes=U2
T 44300 42600 5 10 1 1 0 0 1
footprint=DIP28N
}
C 40300 42500 1 0 0 connector26-1.sym
{
T 40400 50800 5 10 0 0 0 0 1
device=CONNECTOR_26
T 40400 50600 5 10 1 1 0 0 1
refdes=CONN4
T 40300 42500 5 10 0 0 0 0 1
footprint=HEADER26_2
}
C 50600 48200 1 0 1 connector8-1.sym
{
T 50500 51400 5 10 0 0 0 6 1
device=CONNECTOR_8
T 50500 50800 5 10 1 1 0 6 1
refdes=CONN0
T 50600 48200 5 10 0 0 0 0 1
footprint=JUMPER8
}
C 54600 48000 1 0 1 connector8-1.sym
{
T 54500 51200 5 10 0 0 0 6 1
device=CONNECTOR_8
T 54500 50600 5 10 1 1 0 6 1
refdes=CONN1
T 54600 48000 5 10 0 0 0 0 1
footprint=JUMPER8
}
C 51200 44300 1 0 1 connector8-1.sym
{
T 51100 47500 5 10 0 0 0 6 1
device=CONNECTOR_8
T 51100 46900 5 10 1 1 0 6 1
refdes=CONN2
T 51200 44300 5 10 0 0 0 0 1
footprint=JUMPER8
}
C 54600 41600 1 0 1 connector8-1.sym
{
T 54500 44800 5 10 0 0 0 6 1
device=CONNECTOR_8
T 54500 44200 5 10 1 1 0 6 1
refdes=CONN3
T 54600 41600 5 10 0 0 0 0 1
footprint=JUMPER8
}
C 42100 51700 1 0 0 vss-1.sym
N 42100 48800 42500 48800 4
C 44000 50400 1 0 0 vss-1.sym
C 44100 46100 1 0 0 vss-1.sym
N 44200 50400 44200 50300 4
N 43800 50300 44400 50300 4
N 44300 43900 44300 46100 4
N 44300 45800 44400 45800 4
C 42400 48500 1 0 0 gnd-1.sym
C 43800 49800 1 0 0 gnd-1.sym
C 43900 45300 1 0 0 gnd-1.sym
N 43500 50100 44400 50100 4
N 43000 45600 44400 45600 4
C 44300 46900 1 0 0 gnd-1.sym
C 44100 42500 1 0 0 gnd-1.sym
N 44200 42800 44200 43100 4
N 44200 43100 44400 43100 4
N 44400 42900 44400 43700 4
N 44400 47200 44400 48400 4
N 42100 49100 43300 49100 4
N 43300 44700 43300 49200 4
N 43300 49200 44400 49200 4
N 43300 44700 44400 44700 4
N 42100 49700 43700 49700 4
N 43700 44500 43700 49700 4
N 43700 49000 44400 49000 4
N 43700 44500 44400 44500 4
N 44300 43900 44400 43900 4
C 43500 49900 1 90 0 capacitor-1.sym
{
T 42800 50100 5 10 0 0 90 0 1
device=CAPACITOR
T 43200 50200 5 10 0 1 180 0 1
footprint=CK06_type_capacitor
T 42600 50100 5 10 0 0 90 0 1
symversion=0.1
T 42800 50500 5 10 1 1 0 0 1
value=10nF
T 43500 49900 5 10 1 1 0 0 1
refdes=C1
}
C 43000 45300 1 90 0 capacitor-1.sym
{
T 42300 45500 5 10 0 0 90 0 1
device=CAPACITOR
T 42700 46000 5 10 1 1 180 0 1
refdes=C2
T 42100 45500 5 10 0 0 90 0 1
symversion=0.1
T 42300 45500 5 10 1 1 0 0 1
value=10nF
T 43000 45300 5 10 0 0 0 0 1
footprint=CK06_type_capacitor
}
N 43300 50800 43800 50800 4
N 43800 50800 43800 50300 4
N 43500 50100 43500 49900 4
N 43500 49900 43300 49900 4
N 42800 46200 44100 46200 4
N 44100 46200 44100 45900 4
N 44100 45900 44300 45900 4
N 43000 45600 43000 45300 4
N 43000 45300 42800 45300 4
N 46700 50300 47300 50300 4
N 47300 50300 47300 50500 4
N 47300 50500 48900 50500 4
N 46700 50100 47400 50100 4
N 47400 50100 47400 50200 4
N 47400 50200 48900 50200 4
N 46700 49900 48900 49900 4
N 46700 49700 47400 49700 4
N 47400 49700 47400 49600 4
N 47400 49600 48900 49600 4
N 46700 49500 47300 49500 4
N 47300 49500 47300 49300 4
N 47300 49300 48900 49300 4
N 46700 49300 47200 49300 4
N 47200 49300 47200 49000 4
N 47200 49000 48900 49000 4
N 46700 49100 47100 49100 4
N 47100 49100 47100 48700 4
N 47100 48700 48900 48700 4
N 46700 48900 47000 48900 4
N 47000 48900 47000 48400 4
N 47000 48400 48900 48400 4
N 46700 48600 48800 48600 4
N 48800 48600 48800 48100 4
N 48800 48100 51000 48100 4
N 51000 48100 51000 50300 4
N 51000 50300 52900 50300 4
N 46700 48400 46900 48400 4
N 46900 48400 46900 48100 4
N 46900 48100 48700 48100 4
N 48700 48100 48700 47900 4
N 48700 47900 51100 47900 4
N 51100 47900 51100 50000 4
N 51100 50000 52900 50000 4
N 46700 48200 49000 48200 4
N 49000 48200 49000 47800 4
N 49000 47800 51200 47800 4
N 51200 47800 51200 49700 4
N 51200 49700 52900 49700 4
N 46700 48000 48600 48000 4
N 48600 48000 48600 47700 4
N 48600 47700 51300 47700 4
N 51300 47700 51300 49400 4
N 51300 49400 52900 49400 4
N 46700 47800 48500 47800 4
N 48500 47600 48500 47800 4
N 48500 47600 51400 47600 4
N 51400 47600 51400 49100 4
N 51400 49100 52900 49100 4
N 46700 47600 48400 47600 4
N 48400 47600 48400 47500 4
N 48400 47500 51500 47500 4
N 51500 47500 51500 48800 4
N 51500 48800 52900 48800 4
N 46700 47400 51600 47400 4
N 51600 47400 51600 48500 4
N 51600 48500 52900 48500 4
N 46700 47200 51700 47200 4
N 51700 47200 51700 48200 4
N 51700 48200 52900 48200 4
N 46700 45800 46700 46600 4
N 46700 46600 49500 46600 4
N 46700 45600 46800 45600 4
N 46800 45600 46800 46300 4
N 46800 46300 49500 46300 4
N 46700 45400 46900 45400 4
N 46900 45400 46900 46000 4
N 46900 46000 49500 46000 4
N 46700 45200 47000 45200 4
N 47000 45200 47000 45700 4
N 47000 45700 49500 45700 4
N 46700 45000 47100 45000 4
N 47100 45000 47100 45400 4
N 47100 45400 49500 45400 4
N 46700 44800 47200 44800 4
N 47200 44800 47200 45100 4
N 47200 45100 49500 45100 4
N 46700 44600 47300 44600 4
N 47300 44600 47300 44800 4
N 47300 44800 49500 44800 4
N 46700 44400 47400 44400 4
N 47400 44400 47400 44500 4
N 47400 44500 49500 44500 4
N 46700 44100 51500 44100 4
N 51500 44100 51500 43900 4
N 51500 43900 52900 43900 4
N 46700 43900 51400 43900 4
N 51400 43900 51400 43600 4
N 51400 43600 52900 43600 4
N 46700 43700 51300 43700 4
N 51300 43700 51300 43300 4
N 51300 43300 52900 43300 4
N 46700 43500 51200 43500 4
N 51200 43500 51200 43000 4
N 51200 43000 52900 43000 4
N 46700 43300 51100 43300 4
N 51100 43300 51100 42700 4
N 51100 42700 52900 42700 4
N 46700 43100 51000 43100 4
N 51000 43100 51000 42400 4
N 51000 42400 52900 42400 4
N 46700 42900 50900 42900 4
N 50900 42900 50900 42100 4
N 50900 42100 52900 42100 4
N 46700 42700 50800 42700 4
N 50800 42700 50800 41800 4
N 50800 41800 52900 41800 4
N 44200 50300 44200 49900 4
N 44200 49900 44400 49900 4
N 44300 45400 44400 45400 4
C 42300 51100 1 0 0 header3-1.sym
{
T 43300 51750 5 10 0 0 0 0 1
device=HEADER3
T 42700 52400 5 10 1 1 0 0 1
refdes=J1
T 42300 51100 5 10 0 0 0 0 1
footprint=JUMPER3
}
N 42300 52100 42100 52100 4
N 42100 52100 42100 50300 4
N 42300 51300 42300 50000 4
N 42300 50000 42100 50000 4