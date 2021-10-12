# DHARMA-Initiative
  
    sd
Dharma Initiative Button platform provides a dead man switch security.
Journalists or individuals who require to keep their own safety by keeping specific information as “private” 
When using Dharma an individual can securely upload digital assets , such as documents or incriminating videos. 
The assets uploaded must be encrypted, and the individual need to have access to the encryption key.

Post upload of the content the user define some key parameters ; 

Hours until deadman switch reset 
Safe Word 
Meta Data 
Encryption Key
The encryption key will be recorded on an HSM on google cloud…** Might need to find a better solution to store the key ** 


Once the user uploaded the file and provided all the parameters the data will be uploaded to IPFS and pinned to a CID (utilizing nft.storage) 
The user must “sign” a reset for the deadman switch on the platform (or directly on the contract ) every X amount of hours.

Failure to sign will invoke a process of sending a transaction on the network which include the CID , Metadata of the file and the encryption key . 
The user has an option to send a “safe word” in order to defuse the contract and destroy the encryption key and metadata. 

