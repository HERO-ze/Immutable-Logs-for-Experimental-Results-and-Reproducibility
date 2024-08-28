# Immutable-Logs-for-Experimental-Results-and-Reproducibility
## Vision

The ExperimentalResults smart contract is designed to log and manage experimental data in a secure and decentralized manner. It allows users to record experimental results along with a unique hash and timestamp, ensuring data integrity and traceability. This contract is useful for applications in research, testing, and any scenario where verifiable records are essential.
Features

    Logging Results: Users can log experimental results with a unique identifier. The result includes:
        Data: A string containing the experimental data.
        Data Hash: A hash of the data, generated using the keccak256 algorithm, to ensure integrity.
        Timestamp: The time at which the result was logged, provided by the block.timestamp.

    Event Emission: An event ResultLogged is emitted every time a result is recorded, providing transparency and easy tracking of logged data.

    Data Retrieval: Users can retrieve the stored results using their unique identifier, including the original data, its hash, and the timestamp.

## Diagram

+---------------------+
| ExperimentalResults |
+---------------------+
| - results: mapping  |
| - resultCount: uint256 |
+---------------------+
| + logResult(string) |
| + getResult(uint256)|
+---------------------+
           |
           | Emits
           |
           v
+-----------------------+
|    ResultLogged       |
+-----------------------+
| - resultId: uint256   |
| - data: string        |
| - dataHash: bytes32   |
+-----------------------+

## Deployment
0x048bF65EE404113959B80B74EF2f3d576976Ed58
![Screenshot 2024-08-28 100725](https://github.com/user-attachments/assets/41185c6b-791f-41b6-b814-d126da65fa83)
