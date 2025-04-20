import Std.Diagnostics.DumpMachine;
import Microsoft.Quantum.Diagnostics.*;

//O qubit espera (zero ou one)
operation Main() : (Result, Result) {
    
    //alocando dois qubits no estado 0
    use (q1, q2) = (Qubit(), Qubit());

    //colocando o qubit em superposition com hadarmard
    //50% de chande de ser medido com 0 ou com 1
    H(q1);

    //definindo controle e destino
    //ele vai escolanar de um para o outro
    CNOT(q1, q2);

    //exibindo estando atual
    DumpMachine();

    //medindo qubits
    let (m1, m2) = (M(q1), M(q2));

    //redefinir qubits para 0
    Reset(q1);
    Reset(q2);

    //retornar medicao
     return (m1, m2);

}