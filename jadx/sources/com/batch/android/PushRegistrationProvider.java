package com.batch.android;

/* JADX INFO: loaded from: classes.dex */
public interface PushRegistrationProvider {
    void checkLibraryAvailability() throws PushRegistrationProviderAvailabilityException;

    void checkServiceAvailability() throws PushRegistrationProviderAvailabilityException;

    default String getGCPProjectID() {
        return null;
    }

    String getRegistration();

    String getSenderID();

    String getShortname();
}
