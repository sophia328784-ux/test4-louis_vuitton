package com.dynatrace.agent.storage.preference;

import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0080\b\u0018\u00002\u00020\u0001:\u0001\u0014Bq\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\b\b\u0002\u0010\f\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0004¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;", "", "", "revision", "", "maxBeaconSizeKib", "maxEventSizeKib", "", "capture", "", "", "userInteractionsCapture", "tracestateKeyPrefix", "traceContextEnabled", "uaEnable", "uaActivityEndDelayMs", "uaActivityValidationDelayMs", "uaMaxDurationMs", "<init>", "(JIIZLjava/util/List;Ljava/lang/String;ZZIII)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class ServerConfigurationV4 {
    public static final Companion l = new Companion(null);
    public static final ServerConfigurationV4 m = new ServerConfigurationV4(0, 1024, 256, true, EmptyList.f71768b, "", true, true, 100, 100, 50000);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f27043a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27044b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27045c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f27046e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f27047f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f27048h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f27049i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f27050j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f27051k;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4$Companion;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public /* synthetic */ ServerConfigurationV4(long j2, int i2, int i3, boolean z, List list, String str, boolean z2, boolean z3, int i4, int i5, int i6, int i7, DefaultConstructorMarker defaultConstructorMarker) {
        this(j2, i2, i3, z, list, (i7 & 32) != 0 ? "" : str, (i7 & 64) != 0 ? true : z2, (i7 & 128) != 0 ? true : z3, (i7 & 256) != 0 ? 100 : i4, (i7 & 512) != 0 ? 100 : i5, (i7 & 1024) != 0 ? 50000 : i6);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ServerConfigurationV4)) {
            return false;
        }
        ServerConfigurationV4 serverConfigurationV4 = (ServerConfigurationV4) obj;
        return this.f27043a == serverConfigurationV4.f27043a && this.f27044b == serverConfigurationV4.f27044b && this.f27045c == serverConfigurationV4.f27045c && this.d == serverConfigurationV4.d && Intrinsics.c(this.f27046e, serverConfigurationV4.f27046e) && Intrinsics.c(this.f27047f, serverConfigurationV4.f27047f) && this.g == serverConfigurationV4.g && this.f27048h == serverConfigurationV4.f27048h && this.f27049i == serverConfigurationV4.f27049i && this.f27050j == serverConfigurationV4.f27050j && this.f27051k == serverConfigurationV4.f27051k;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f27051k) + tr.b(this.f27050j, tr.b(this.f27049i, o60.b(o60.b(fc.b(n00.a(o60.b(tr.b(this.f27045c, tr.b(this.f27044b, Long.hashCode(this.f27043a) * 31, 31), 31), 31, this.d), 31, this.f27046e), 31, this.f27047f), 31, this.g), 31, this.f27048h), 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ServerConfigurationV4(revision=");
        sb.append(this.f27043a);
        sb.append(", maxBeaconSizeKib=");
        sb.append(this.f27044b);
        sb.append(", maxEventSizeKib=");
        sb.append(this.f27045c);
        sb.append(", capture=");
        sb.append(this.d);
        sb.append(", userInteractionsCapture=");
        sb.append(this.f27046e);
        sb.append(", tracestateKeyPrefix=");
        sb.append(this.f27047f);
        sb.append(", traceContextEnabled=");
        sb.append(this.g);
        sb.append(", uaEnable=");
        sb.append(this.f27048h);
        sb.append(", uaActivityEndDelayMs=");
        sb.append(this.f27049i);
        sb.append(", uaActivityValidationDelayMs=");
        sb.append(this.f27050j);
        sb.append(", uaMaxDurationMs=");
        return tr.k(sb, this.f27051k, ')');
    }

    public ServerConfigurationV4(long j2, int i2, int i3, boolean z, List<String> list, String str, boolean z2, boolean z3, int i4, int i5, int i6) {
        list.getClass();
        str.getClass();
        this.f27043a = j2;
        this.f27044b = i2;
        this.f27045c = i3;
        this.d = z;
        this.f27046e = list;
        this.f27047f = str;
        this.g = z2;
        this.f27048h = z3;
        this.f27049i = i4;
        this.f27050j = i5;
        this.f27051k = i6;
    }
}
