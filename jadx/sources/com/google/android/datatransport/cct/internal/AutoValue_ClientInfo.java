package com.google.android.datatransport.cct.internal;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_ClientInfo extends ClientInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ClientInfo.ClientType f27871a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AndroidClientInfo f27872b;

    public static final class Builder extends ClientInfo.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ClientInfo.ClientType f27873a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public AndroidClientInfo f27874b;

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.Builder
        public final ClientInfo a() {
            return new AutoValue_ClientInfo(this.f27873a, this.f27874b);
        }

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.Builder
        public final ClientInfo.Builder b(AndroidClientInfo androidClientInfo) {
            this.f27874b = androidClientInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.Builder
        public final ClientInfo.Builder c(ClientInfo.ClientType clientType) {
            this.f27873a = clientType;
            return this;
        }
    }

    public AutoValue_ClientInfo(ClientInfo.ClientType clientType, AndroidClientInfo androidClientInfo) {
        this.f27871a = clientType;
        this.f27872b = androidClientInfo;
    }

    @Override // com.google.android.datatransport.cct.internal.ClientInfo
    public final AndroidClientInfo b() {
        return this.f27872b;
    }

    @Override // com.google.android.datatransport.cct.internal.ClientInfo
    public final ClientInfo.ClientType c() {
        return this.f27871a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClientInfo)) {
            return false;
        }
        ClientInfo clientInfo = (ClientInfo) obj;
        ClientInfo.ClientType clientType = this.f27871a;
        if (clientType == null) {
            if (clientInfo.c() != null) {
                return false;
            }
        } else if (!clientType.equals(clientInfo.c())) {
            return false;
        }
        AndroidClientInfo androidClientInfo = this.f27872b;
        if (androidClientInfo == null) {
            return clientInfo.b() == null;
        }
        return androidClientInfo.equals(clientInfo.b());
    }

    public final int hashCode() {
        ClientInfo.ClientType clientType = this.f27871a;
        int iHashCode = ((clientType == null ? 0 : clientType.hashCode()) ^ 1000003) * 1000003;
        AndroidClientInfo androidClientInfo = this.f27872b;
        return iHashCode ^ (androidClientInfo != null ? androidClientInfo.hashCode() : 0);
    }

    public final String toString() {
        return "ClientInfo{clientType=" + this.f27871a + ", androidClientInfo=" + this.f27872b + "}";
    }
}
