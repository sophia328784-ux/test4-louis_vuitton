package com.dynatrace.agent;

import com.dynatrace.agent.common.InstrumentationFlavor;
import defpackage.fc;
import defpackage.o60;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/dynatrace/agent/OneAgentConfiguration;", "", "", "version", "applicationId", "beaconUrl", "", "applicationMonitoring", "activityMonitoring", "nativeCrashReporting", "anrReporting", "", "eventThrottlingLimit", "Lcom/dynatrace/agent/common/InstrumentationFlavor;", "instrumentationFlavor", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZILcom/dynatrace/agent/common/InstrumentationFlavor;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class OneAgentConfiguration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26428a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26429b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f26430c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f26431e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f26432f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f26433h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final InstrumentationFlavor f26434i;

    public OneAgentConfiguration(String str, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, int i2, InstrumentationFlavor instrumentationFlavor) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        instrumentationFlavor.getClass();
        this.f26428a = str;
        this.f26429b = str2;
        this.f26430c = str3;
        this.d = z;
        this.f26431e = z2;
        this.f26432f = z3;
        this.g = z4;
        this.f26433h = i2;
        this.f26434i = instrumentationFlavor;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OneAgentConfiguration)) {
            return false;
        }
        OneAgentConfiguration oneAgentConfiguration = (OneAgentConfiguration) obj;
        return Intrinsics.c(this.f26428a, oneAgentConfiguration.f26428a) && Intrinsics.c(this.f26429b, oneAgentConfiguration.f26429b) && Intrinsics.c(this.f26430c, oneAgentConfiguration.f26430c) && this.d == oneAgentConfiguration.d && this.f26431e == oneAgentConfiguration.f26431e && this.f26432f == oneAgentConfiguration.f26432f && this.g == oneAgentConfiguration.g && this.f26433h == oneAgentConfiguration.f26433h && this.f26434i == oneAgentConfiguration.f26434i;
    }

    public final int hashCode() {
        return this.f26434i.hashCode() + tr.b(this.f26433h, o60.b(o60.b(o60.b(o60.b(fc.b(fc.b(this.f26428a.hashCode() * 31, 31, this.f26429b), 31, this.f26430c), 31, this.d), 31, this.f26431e), 31, this.f26432f), 31, this.g), 31);
    }

    public final String toString() {
        return "OneAgentConfiguration(version=" + this.f26428a + ", applicationId=" + this.f26429b + ", beaconUrl=" + this.f26430c + ", applicationMonitoring=" + this.d + ", activityMonitoring=" + this.f26431e + ", nativeCrashReporting=" + this.f26432f + ", anrReporting=" + this.g + ", eventThrottlingLimit=" + this.f26433h + ", instrumentationFlavor=" + this.f26434i + ')';
    }
}
