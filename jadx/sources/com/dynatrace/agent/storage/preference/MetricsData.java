package com.dynatrace.agent.storage.preference;

import com.dynatrace.agent.metrics.AppVersion;
import defpackage.d21;
import defpackage.fc;
import defpackage.o60;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b\u0080\b\u0018\u00002\u00020\u0001BÉ\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\n\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\b\b\u0002\u0010\u0014\u001a\u00020\n\u0012\b\b\u0002\u0010\u0015\u001a\u00020\n\u0012\b\b\u0002\u0010\u0016\u001a\u00020\n\u0012\b\b\u0002\u0010\u0017\u001a\u00020\r\u0012\b\b\u0002\u0010\u0018\u001a\u00020\r¢\u0006\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/dynatrace/agent/storage/preference/MetricsData;", "", "", "deviceScreenWidth", "deviceScreenHeight", "deviceOrientation", "deviceBatteryLevel", "", "locationLatitude", "locationLongitude", "", "deviceManufacturer", "deviceModelIdentifier", "", "deviceIsRooted", "osName", "osVersion", "bundle", "Lcom/dynatrace/agent/metrics/AppVersion;", "appVersion", "instanceId", "sessionId", "networkType", "crashReportingOptIn", "sessionActive", "<init>", "(IIIILjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/agent/metrics/AppVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class MetricsData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f26965a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f26966b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f26967c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Double f26968e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Double f26969f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f26970h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f26971i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f26972j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f26973k;
    public final String l;
    public final AppVersion m;
    public final String n;
    public final String o;
    public final String p;
    public final boolean q;
    public final boolean r;

    public /* synthetic */ MetricsData(int i2, int i3, int i4, int i5, Double d, Double d2, String str, String str2, boolean z, String str3, String str4, String str5, AppVersion appVersion, String str6, String str7, String str8, boolean z2, boolean z3, int i6, DefaultConstructorMarker defaultConstructorMarker) {
        this((i6 & 1) != 0 ? -1 : i2, (i6 & 2) != 0 ? -1 : i3, (i6 & 4) != 0 ? -1 : i4, (i6 & 8) == 0 ? i5 : -1, (i6 & 16) != 0 ? null : d, (i6 & 32) != 0 ? null : d2, (i6 & 64) != 0 ? null : str, (i6 & 128) != 0 ? null : str2, (i6 & 256) != 0 ? false : z, (i6 & 512) != 0 ? "Android" : str3, (i6 & 1024) != 0 ? null : str4, (i6 & 2048) != 0 ? null : str5, (i6 & 4096) == 0 ? appVersion : null, (i6 & 8192) != 0 ? "" : str6, (i6 & 16384) != 0 ? "" : str7, (i6 & 32768) == 0 ? str8 : "", (i6 & 65536) != 0 ? false : z2, (i6 & 131072) != 0 ? false : z3);
    }

    public static MetricsData a(MetricsData metricsData, int i2, int i3, int i4, int i5, Double d, Double d2, boolean z, String str, String str2, String str3, boolean z2, boolean z3, int i6) {
        int i7 = (i6 & 1) != 0 ? metricsData.f26965a : i2;
        int i8 = (i6 & 2) != 0 ? metricsData.f26966b : i3;
        int i9 = (i6 & 4) != 0 ? metricsData.f26967c : i4;
        int i10 = (i6 & 8) != 0 ? metricsData.d : i5;
        Double d3 = (i6 & 16) != 0 ? metricsData.f26968e : d;
        Double d4 = (i6 & 32) != 0 ? metricsData.f26969f : d2;
        String str4 = metricsData.g;
        String str5 = metricsData.f26970h;
        boolean z4 = (i6 & 256) != 0 ? metricsData.f26971i : z;
        String str6 = metricsData.f26972j;
        String str7 = metricsData.f26973k;
        String str8 = metricsData.l;
        AppVersion appVersion = metricsData.m;
        String str9 = (i6 & 8192) != 0 ? metricsData.n : str;
        String str10 = (i6 & 16384) != 0 ? metricsData.o : str2;
        String str11 = (32768 & i6) != 0 ? metricsData.p : str3;
        boolean z5 = (65536 & i6) != 0 ? metricsData.q : z2;
        boolean z6 = (i6 & 131072) != 0 ? metricsData.r : z3;
        metricsData.getClass();
        str6.getClass();
        str9.getClass();
        str10.getClass();
        str11.getClass();
        return new MetricsData(i7, i8, i9, i10, d3, d4, str4, str5, z4, str6, str7, str8, appVersion, str9, str10, str11, z5, z6);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MetricsData)) {
            return false;
        }
        MetricsData metricsData = (MetricsData) obj;
        return this.f26965a == metricsData.f26965a && this.f26966b == metricsData.f26966b && this.f26967c == metricsData.f26967c && this.d == metricsData.d && Intrinsics.c(this.f26968e, metricsData.f26968e) && Intrinsics.c(this.f26969f, metricsData.f26969f) && Intrinsics.c(this.g, metricsData.g) && Intrinsics.c(this.f26970h, metricsData.f26970h) && this.f26971i == metricsData.f26971i && Intrinsics.c(this.f26972j, metricsData.f26972j) && Intrinsics.c(this.f26973k, metricsData.f26973k) && Intrinsics.c(this.l, metricsData.l) && Intrinsics.c(this.m, metricsData.m) && Intrinsics.c(this.n, metricsData.n) && Intrinsics.c(this.o, metricsData.o) && Intrinsics.c(this.p, metricsData.p) && this.q == metricsData.q && this.r == metricsData.r;
    }

    public final int hashCode() {
        int iB = tr.b(this.d, tr.b(this.f26967c, tr.b(this.f26966b, Integer.hashCode(this.f26965a) * 31, 31), 31), 31);
        Double d = this.f26968e;
        int iHashCode = (iB + (d == null ? 0 : d.hashCode())) * 31;
        Double d2 = this.f26969f;
        int iHashCode2 = (iHashCode + (d2 == null ? 0 : d2.hashCode())) * 31;
        String str = this.g;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f26970h;
        int iB2 = fc.b(o60.b((iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.f26971i), 31, this.f26972j);
        String str3 = this.f26973k;
        int iHashCode4 = (iB2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.l;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        AppVersion appVersion = this.m;
        return Boolean.hashCode(this.r) + o60.b(fc.b(fc.b(fc.b((iHashCode5 + (appVersion != null ? appVersion.hashCode() : 0)) * 31, 31, this.n), 31, this.o), 31, this.p), 31, this.q);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MetricsData(deviceScreenWidth=");
        sb.append(this.f26965a);
        sb.append(", deviceScreenHeight=");
        sb.append(this.f26966b);
        sb.append(", deviceOrientation=");
        sb.append(this.f26967c);
        sb.append(", deviceBatteryLevel=");
        sb.append(this.d);
        sb.append(", locationLatitude=");
        sb.append(this.f26968e);
        sb.append(", locationLongitude=");
        sb.append(this.f26969f);
        sb.append(", deviceManufacturer=");
        sb.append(this.g);
        sb.append(", deviceModelIdentifier=");
        sb.append(this.f26970h);
        sb.append(", deviceIsRooted=");
        sb.append(this.f26971i);
        sb.append(", osName=");
        sb.append(this.f26972j);
        sb.append(", osVersion=");
        sb.append(this.f26973k);
        sb.append(", bundle=");
        sb.append(this.l);
        sb.append(", appVersion=");
        sb.append(this.m);
        sb.append(", instanceId=");
        sb.append(this.n);
        sb.append(", sessionId=");
        sb.append(this.o);
        sb.append(", networkType=");
        sb.append(this.p);
        sb.append(", crashReportingOptIn=");
        sb.append(this.q);
        sb.append(", sessionActive=");
        return d21.q(sb, this.r, ')');
    }

    public MetricsData(int i2, int i3, int i4, int i5, Double d, Double d2, String str, String str2, boolean z, String str3, String str4, String str5, AppVersion appVersion, String str6, String str7, String str8, boolean z2, boolean z3) {
        d21.y(str3, str6, str7, str8);
        this.f26965a = i2;
        this.f26966b = i3;
        this.f26967c = i4;
        this.d = i5;
        this.f26968e = d;
        this.f26969f = d2;
        this.g = str;
        this.f26970h = str2;
        this.f26971i = z;
        this.f26972j = str3;
        this.f26973k = str4;
        this.l = str5;
        this.m = appVersion;
        this.n = str6;
        this.o = str7;
        this.p = str8;
        this.q = z2;
        this.r = z3;
    }

    public MetricsData() {
        this(0, 0, 0, 0, null, null, null, null, false, null, null, null, null, null, null, null, false, false, 262143, null);
    }
}
