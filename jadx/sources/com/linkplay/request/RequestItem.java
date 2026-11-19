package com.linkplay.request;

/* JADX INFO: loaded from: classes2.dex */
public class RequestItem {
    private String ip;
    private String security;

    public static class Builder {
        private String ip;
        private String security;

        public RequestItem build() {
            return new RequestItem(this.ip, this.security, 0);
        }

        public Builder ip(String str) {
            this.ip = str;
            return this;
        }

        public Builder security(String str) {
            this.security = str;
            return this;
        }
    }

    private RequestItem(String str, String str2) {
        this.ip = str;
        this.security = str2;
    }

    public String getIp() {
        return this.ip;
    }

    public String getSecurity() {
        return this.security;
    }

    public /* synthetic */ RequestItem(String str, String str2, int i2) {
        this(str, str2);
    }
}
