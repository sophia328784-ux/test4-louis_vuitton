package com.appsflyer.internal;

/* JADX INFO: loaded from: classes.dex */
public class AFd1nSDK {
    public final long registerClient;

    public AFd1nSDK(long j2) {
        this.registerClient = j2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.registerClient == ((AFd1nSDK) obj).registerClient;
    }

    public int hashCode() {
        long j2 = this.registerClient;
        return (int) (j2 ^ (j2 >>> 32));
    }
}
