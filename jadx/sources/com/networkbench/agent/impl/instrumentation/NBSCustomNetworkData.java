package com.networkbench.agent.impl.instrumentation;

/* JADX INFO: loaded from: classes2.dex */
public class NBSCustomNetworkData {
    private long bytesReceived;
    private long bytesSent;
    private int totalTime;
    private String url;

    public static class Builder {
        private long bytesReceived;
        private long bytesSent;
        private int totalTime;
        private String url;

        public Builder(String str) {
            this.url = str;
        }

        public NBSCustomNetworkData build() {
            return new NBSCustomNetworkData(this);
        }

        public Builder bytesReceived(long j2) {
            this.bytesReceived = j2;
            return this;
        }

        public Builder bytesSent(long j2) {
            this.bytesSent = j2;
            return this;
        }

        public Builder totalTime(int i2) {
            this.totalTime = i2;
            return this;
        }
    }

    private NBSCustomNetworkData(Builder builder) {
        this.url = builder.url;
        this.totalTime = builder.totalTime;
        this.bytesSent = builder.bytesSent;
        this.bytesReceived = builder.bytesReceived;
    }
}
