package com.google.android.datatransport.cct.internal;

import defpackage.md;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_LogEvent extends LogEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f27887a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f27888b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ComplianceData f27889c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f27890e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f27891f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final NetworkConnectionInfo f27892h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ExperimentIds f27893i;

    public static final class Builder extends LogEvent.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Long f27894a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Integer f27895b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ComplianceData f27896c;
        public Long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public byte[] f27897e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f27898f;
        public Long g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public NetworkConnectionInfo f27899h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ExperimentIds f27900i;

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public final LogEvent a() {
            String strConcat = this.f27894a == null ? " eventTimeMs" : "";
            if (this.d == null) {
                strConcat = strConcat.concat(" eventUptimeMs");
            }
            if (this.g == null) {
                strConcat = strConcat.concat(" timezoneOffsetSeconds");
            }
            if (strConcat.isEmpty()) {
                return new AutoValue_LogEvent(this.f27894a.longValue(), this.f27895b, this.f27896c, this.d.longValue(), this.f27897e, this.f27898f, this.g.longValue(), this.f27899h, this.f27900i);
            }
            md.k("Missing required properties:".concat(strConcat));
            return null;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public final LogEvent.Builder b(ComplianceData complianceData) {
            this.f27896c = complianceData;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public final LogEvent.Builder c(Integer num) {
            this.f27895b = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public final LogEvent.Builder d(long j2) {
            this.f27894a = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public final LogEvent.Builder e(long j2) {
            this.d = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public final LogEvent.Builder f(ExperimentIds experimentIds) {
            this.f27900i = experimentIds;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public final LogEvent.Builder g(NetworkConnectionInfo networkConnectionInfo) {
            this.f27899h = networkConnectionInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public final LogEvent.Builder h(long j2) {
            this.g = Long.valueOf(j2);
            return this;
        }
    }

    public AutoValue_LogEvent(long j2, Integer num, ComplianceData complianceData, long j3, byte[] bArr, String str, long j4, NetworkConnectionInfo networkConnectionInfo, ExperimentIds experimentIds) {
        this.f27887a = j2;
        this.f27888b = num;
        this.f27889c = complianceData;
        this.d = j3;
        this.f27890e = bArr;
        this.f27891f = str;
        this.g = j4;
        this.f27892h = networkConnectionInfo;
        this.f27893i = experimentIds;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public final ComplianceData a() {
        return this.f27889c;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public final Integer b() {
        return this.f27888b;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public final long c() {
        return this.f27887a;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public final long d() {
        return this.d;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public final ExperimentIds e() {
        return this.f27893i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LogEvent)) {
            return false;
        }
        LogEvent logEvent = (LogEvent) obj;
        if (this.f27887a != logEvent.c()) {
            return false;
        }
        Integer num = this.f27888b;
        if (num == null) {
            if (logEvent.b() != null) {
                return false;
            }
        } else if (!num.equals(logEvent.b())) {
            return false;
        }
        ComplianceData complianceData = this.f27889c;
        if (complianceData == null) {
            if (logEvent.a() != null) {
                return false;
            }
        } else if (!complianceData.equals(logEvent.a())) {
            return false;
        }
        if (this.d != logEvent.d()) {
            return false;
        }
        if (!Arrays.equals(this.f27890e, logEvent instanceof AutoValue_LogEvent ? ((AutoValue_LogEvent) logEvent).f27890e : logEvent.g())) {
            return false;
        }
        String str = this.f27891f;
        if (str == null) {
            if (logEvent.h() != null) {
                return false;
            }
        } else if (!str.equals(logEvent.h())) {
            return false;
        }
        if (this.g != logEvent.i()) {
            return false;
        }
        NetworkConnectionInfo networkConnectionInfo = this.f27892h;
        if (networkConnectionInfo == null) {
            if (logEvent.f() != null) {
                return false;
            }
        } else if (!networkConnectionInfo.equals(logEvent.f())) {
            return false;
        }
        ExperimentIds experimentIds = this.f27893i;
        if (experimentIds == null) {
            return logEvent.e() == null;
        }
        return experimentIds.equals(logEvent.e());
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public final NetworkConnectionInfo f() {
        return this.f27892h;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public final byte[] g() {
        return this.f27890e;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public final String h() {
        return this.f27891f;
    }

    public final int hashCode() {
        long j2 = this.f27887a;
        int i2 = (((int) (j2 ^ (j2 >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f27888b;
        int iHashCode = (i2 ^ (num == null ? 0 : num.hashCode())) * 1000003;
        ComplianceData complianceData = this.f27889c;
        int iHashCode2 = (iHashCode ^ (complianceData == null ? 0 : complianceData.hashCode())) * 1000003;
        long j3 = this.d;
        int iHashCode3 = (((iHashCode2 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f27890e)) * 1000003;
        String str = this.f27891f;
        int iHashCode4 = (iHashCode3 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j4 = this.g;
        int i3 = (iHashCode4 ^ ((int) (j4 ^ (j4 >>> 32)))) * 1000003;
        NetworkConnectionInfo networkConnectionInfo = this.f27892h;
        int iHashCode5 = (i3 ^ (networkConnectionInfo == null ? 0 : networkConnectionInfo.hashCode())) * 1000003;
        ExperimentIds experimentIds = this.f27893i;
        return iHashCode5 ^ (experimentIds != null ? experimentIds.hashCode() : 0);
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public final long i() {
        return this.g;
    }

    public final String toString() {
        return "LogEvent{eventTimeMs=" + this.f27887a + ", eventCode=" + this.f27888b + ", complianceData=" + this.f27889c + ", eventUptimeMs=" + this.d + ", sourceExtension=" + Arrays.toString(this.f27890e) + ", sourceExtensionJsonProto3=" + this.f27891f + ", timezoneOffsetSeconds=" + this.g + ", networkConnectionInfo=" + this.f27892h + ", experimentIds=" + this.f27893i + "}";
    }
}
