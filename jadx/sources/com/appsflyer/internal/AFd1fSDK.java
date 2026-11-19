package com.appsflyer.internal;

import com.appsflyer.share.network.http.ResponseNetwork;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AFd1fSDK<Body> implements ResponseNetwork<Body> {
    public final AFd1nSDK AFKeystoreWrapper;
    final boolean AFLogger;
    final Map<String, List<String>> d;
    private final Body registerClient;
    final int unregisterClient;

    public AFd1fSDK(Body body, int i2, boolean z, Map<String, List<String>> map, AFd1nSDK aFd1nSDK) {
        this.registerClient = body;
        this.unregisterClient = i2;
        this.AFLogger = z;
        this.d = new HashMap(map);
        this.AFKeystoreWrapper = aFd1nSDK;
    }

    public final String AFKeystoreWrapper(String str) {
        List<String> headerField = getHeaderField(str);
        if (headerField == null || headerField.isEmpty()) {
            return null;
        }
        Iterator<String> it = headerField.iterator();
        StringBuilder sb = new StringBuilder(it.next());
        while (it.hasNext()) {
            sb.append(", ");
            sb.append(it.next());
        }
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AFd1fSDK aFd1fSDK = (AFd1fSDK) obj;
        if (this.unregisterClient == aFd1fSDK.unregisterClient && this.AFLogger == aFd1fSDK.AFLogger && this.registerClient.equals(aFd1fSDK.registerClient) && this.d.equals(aFd1fSDK.d)) {
            return this.AFKeystoreWrapper.equals(aFd1fSDK.AFKeystoreWrapper);
        }
        return false;
    }

    @Override // com.appsflyer.share.network.http.ResponseNetwork
    public Body getBody() {
        return this.registerClient;
    }

    @Override // com.appsflyer.share.network.http.ResponseNetwork
    public List<String> getHeaderField(String str) {
        for (String str2 : this.d.keySet()) {
            if (str2 != null && str2.equalsIgnoreCase(str)) {
                return this.d.get(str2);
            }
        }
        return null;
    }

    @Override // com.appsflyer.share.network.http.ResponseNetwork
    public int getStatusCode() {
        return this.unregisterClient;
    }

    public int hashCode() {
        return this.AFKeystoreWrapper.hashCode() + ((this.d.hashCode() + (((((this.registerClient.hashCode() * 31) + this.unregisterClient) * 31) + (this.AFLogger ? 1 : 0)) * 31)) * 31);
    }

    @Override // com.appsflyer.share.network.http.ResponseNetwork
    public boolean isSuccessful() {
        return this.AFLogger;
    }
}
