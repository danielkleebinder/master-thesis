# Time-travelling State Machines for Verifiable BPM

## Abstract
Inter-organizational business process management often relies on third parties to establish
trust between participants. Since the rise of blockchain technology and its associated
properties regarding traceability, research communities aim to integrate blockchains into
workflow execution engines in favor of a trusted third party. Frequently, these approaches
directly leverage upon the blockchain, which leads to shortcomings such as a lack of
flexibility or increased cost. Therefore, this thesis proposes a novel concept that allows
workflow execution and verification using the blockchain while preserving flexibility and
reducing transaction costs by utilizing present-day cryptography.

The concept relies on a modular software architecture where each module is loosely
coupled to others through an event-sourcing system. It aims to preserve the advantages
of a blockchain by enabling time travel to allow participants to verify past states while
keeping proof of the correctness of these states on the blockchain, which acts as a single
source of truth. The proposed approach was derived by discussing related literature and
exploring its practical utility by creating a prototypical implementation.

The proposed concept and its prototype were evaluated against qualitative criteria
extracted from related work, while the complexity was analyzed by applying formal
methods to static structures. Afterwards, their practical utility was exhibited by executing
simulations of simplified real-world business processes. The evaluation has shown dramatic
improvements regarding flexibility and privacy. Furthermore, the execution duration
per transaction was observed to be around 18 seconds on Ethereum. This qualifies the
proposed concept as a suitable approach for slow- and fast-paced business processes.

Nonetheless, some shortcomings remain. The execution cost linearly correlates to the
number of participants, which results in an overall cost reduction for smaller business
processes but breaks even and exceeds other approaches after reaching a certain threshold.
This work presents a novel idea for workflow execution that leverages on properties of
blockchains and instigates future work to demystify and treat blockchains only as loosely
coupled sub-systems of supportive nature.