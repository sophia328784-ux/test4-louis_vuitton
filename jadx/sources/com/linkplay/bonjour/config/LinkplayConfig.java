package com.linkplay.bonjour.config;

/* JADX INFO: loaded from: classes2.dex */
public class LinkplayConfig {
    public static boolean bResolveFromCache = false;
    public static boolean bServiceAddByConnectSetup = false;
    public static boolean bWifiChangeProcess = true;
    private boolean resolveFromCache;
    private boolean serviceByConnection;
    private boolean wifiChangedListening;

    public static class Builder {
        private boolean serviceByConnection = false;
        private boolean wifiChangedListening = true;
        private boolean resolveFromCache = false;

        public LinkplayConfig build() {
            return new LinkplayConfig(this.serviceByConnection, this.wifiChangedListening, this.resolveFromCache);
        }

        public Builder setResolveFromCache(boolean z) {
            this.resolveFromCache = z;
            return this;
        }

        public Builder setServiceByConnection(boolean z) {
            this.serviceByConnection = z;
            return this;
        }

        public Builder setWifiChangedListening(boolean z) {
            this.wifiChangedListening = z;
            return this;
        }
    }

    private LinkplayConfig(boolean z, boolean z2, boolean z3) {
        this.serviceByConnection = z;
        this.wifiChangedListening = z2;
        this.resolveFromCache = z3;
    }

    public boolean isResolveFromCache() {
        return this.resolveFromCache;
    }

    public boolean isServiceByConnection() {
        return this.serviceByConnection;
    }

    public boolean isWifiChangedListening() {
        return this.wifiChangedListening;
    }
}
