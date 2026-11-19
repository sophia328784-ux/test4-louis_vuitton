package com.dynatrace.android.agent.crash;

/* JADX INFO: loaded from: classes2.dex */
public class StacktraceData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27451a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f27452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f27453c;
    public final PlatformType d;

    public StacktraceData(String str, String str2, String str3, PlatformType platformType) {
        this.f27451a = str;
        this.f27452b = str2;
        this.f27453c = str3;
        this.d = platformType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            StacktraceData stacktraceData = (StacktraceData) obj;
            String str = stacktraceData.f27451a;
            String str2 = this.f27451a;
            if (str2 == null ? str != null : !str2.equals(str)) {
                return false;
            }
            String str3 = stacktraceData.f27452b;
            String str4 = this.f27452b;
            if (str4 == null ? str3 != null : !str4.equals(str3)) {
                return false;
            }
            String str5 = stacktraceData.f27453c;
            String str6 = this.f27453c;
            if (str6 == null ? str5 != null : !str6.equals(str5)) {
                return false;
            }
            if (this.d == stacktraceData.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f27451a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f27452b;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f27453c;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        PlatformType platformType = this.d;
        return iHashCode3 + (platformType != null ? platformType.hashCode() : 0);
    }

    public final String toString() {
        return "StacktraceData{name='" + this.f27451a + "', reason='" + this.f27452b + "', stacktrace='" + this.f27453c + "', type=" + this.d + '}';
    }
}
