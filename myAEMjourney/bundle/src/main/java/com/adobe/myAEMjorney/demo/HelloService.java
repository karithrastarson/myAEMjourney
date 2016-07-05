package com.adobe.myAEMjorney.demo;

/**
 * A simple service interface
 */
public interface HelloService {
    
    /**
     * @return the name of the underlying JCR repository implementation
     */
    public String getRepositoryName();

}