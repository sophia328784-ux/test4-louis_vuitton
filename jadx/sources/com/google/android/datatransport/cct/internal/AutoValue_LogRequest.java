package com.google.android.datatransport.cct.internal;

import defpackage.md;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_LogRequest extends LogRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f27901a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f27902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ClientInfo f27903c;
    public final Integer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f27904e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f27905f;
    public final QosTier g;

    public static final class Builder extends LogRequest.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Long f27906a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Long f27907b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ClientInfo f27908c;
        public Integer d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f27909e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ArrayList f27910f;
        public QosTier g;

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest a() {
            String strConcat = this.f27906a == null ? " requestTimeMs" : "";
            if (this.f27907b == null) {
                strConcat = strConcat.concat(" requestUptimeMs");
            }
            if (strConcat.isEmpty()) {
                return new AutoValue_LogRequest(this.f27906a.longValue(), this.f27907b.longValue(), this.f27908c, this.d, this.f27909e, this.f27910f, this.g);
            }
            md.k("Missing required properties:".concat(strConcat));
            return null;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest.Builder b(ClientInfo clientInfo) {
            this.f27908c = clientInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest.Builder c(ArrayList arrayList) {
            this.f27910f = arrayList;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest.Builder d(Integer num) {
            this.d = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest.Builder e(String str) {
            this.f27909e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest.Builder f(QosTier qosTier) {
            this.g = qosTier;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest.Builder g(long j2) {
            this.f27906a = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest.Builder h(long j2) {
            this.f27907b = Long.valueOf(j2);
            return this;
        }
    }

    public AutoValue_LogRequest(long j2, long j3, ClientInfo clientInfo, Integer num, String str, ArrayList arrayList, QosTier qosTier) {
        this.f27901a = j2;
        this.f27902b = j3;
        this.f27903c = clientInfo;
        this.d = num;
        this.f27904e = str;
        this.f27905f = arrayList;
        this.g = qosTier;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public final ClientInfo b() {
        return this.f27903c;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public final List c() {
        return this.f27905f;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public final Integer d() {
        return this.d;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public final String e() {
        return this.f27904e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LogRequest)) {
            return false;
        }
        LogRequest logRequest = (LogRequest) obj;
        if (this.f27901a != logRequest.g() || this.f27902b != logRequest.h()) {
            return false;
        }
        ClientInfo clientInfo = this.f27903c;
        if (clientInfo == null) {
            if (logRequest.b() != null) {
                return false;
            }
        } else if (!clientInfo.equals(logRequest.b())) {
            return false;
        }
        Integer num = this.d;
        if (num == null) {
            if (logRequest.d() != null) {
                return false;
            }
        } else if (!num.equals(logRequest.d())) {
            return false;
        }
        String str = this.f27904e;
        if (str == null) {
            if (logRequest.e() != null) {
                return false;
            }
        } else if (!str.equals(logRequest.e())) {
            return false;
        }
        List list = this.f27905f;
        if (list == null) {
            if (logRequest.c() != null) {
                return false;
            }
        } else if (!list.equals(logRequest.c())) {
            return false;
        }
        QosTier qosTier = this.g;
        if (qosTier == null) {
            return logRequest.f() == null;
        }
        return qosTier.equals(logRequest.f());
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public final QosTier f() {
        return this.g;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public final long g() {
        return this.f27901a;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public final long h() {
        return this.f27902b;
    }

    public final int hashCode() {
        long j2 = this.f27901a;
        long j3 = this.f27902b;
        int i2 = (((((int) (j2 ^ (j2 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j3 >>> 32) ^ j3))) * 1000003;
        ClientInfo clientInfo = this.f27903c;
        int iHashCode = (i2 ^ (clientInfo == null ? 0 : clientInfo.hashCode())) * 1000003;
        Integer num = this.d;
        int iHashCode2 = (iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f27904e;
        int iHashCode3 = (iHashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List list = this.f27905f;
        int iHashCode4 = (iHashCode3 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        QosTier qosTier = this.g;
        return iHashCode4 ^ (qosTier != null ? qosTier.hashCode() : 0);
    }

    public final String toString() {
        return "LogRequest{requestTimeMs=" + this.f27901a + ", requestUptimeMs=" + this.f27902b + ", clientInfo=" + this.f27903c + ", logSource=" + this.d + ", logSourceName=" + this.f27904e + ", logEvents=" + this.f27905f + ", qosTier=" + this.g + "}";
    }
}
