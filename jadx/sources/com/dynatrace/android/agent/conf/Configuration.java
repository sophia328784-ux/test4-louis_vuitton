package com.dynatrace.android.agent.conf;

import com.dynatrace.agent.OneAgentConfiguration;
import com.dynatrace.agent.common.InstrumentationFlavor;
import defpackage.a;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class Configuration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27339a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f27340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f27341c;
    public final AgentMode d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f27342e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f27343f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f27344h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f27345i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f27346j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f27347k;
    public final boolean l;
    public final boolean m;
    public final boolean n;
    public final String[] o;
    public final String[] p;
    public final String[] q;
    public final boolean r;
    public final boolean s;
    public final boolean t;
    public final InstrumentationFlavor u;
    public final boolean v;
    public final int w;

    public Configuration(String str, String str2, String str3, AgentMode agentMode, boolean z, int i2, int i3, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, String[] strArr, String[] strArr2, String[] strArr3, boolean z9, boolean z10, boolean z11, InstrumentationFlavor instrumentationFlavor, boolean z12, int i4) {
        this.f27339a = str;
        this.f27340b = str2;
        this.f27341c = str3;
        this.d = agentMode;
        this.f27342e = z;
        this.f27343f = i2;
        this.g = i3;
        this.f27344h = z2;
        this.f27345i = z3;
        this.f27346j = z4;
        this.f27347k = z5;
        this.l = z6;
        this.m = z7;
        this.n = z8;
        this.o = strArr;
        this.p = strArr2;
        this.q = strArr3;
        this.r = z9;
        this.s = z10;
        this.t = z11;
        this.u = instrumentationFlavor;
        this.v = z12;
        this.w = i4;
    }

    public final OneAgentConfiguration a() {
        return new OneAgentConfiguration("8.343.1.1038", this.f27339a, this.f27341c, this.f27345i, this.f27346j, this.l, this.m, this.w, this.u);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Configuration{applicationId='");
        sb.append(this.f27339a);
        sb.append("', appIdEncoded='");
        sb.append(this.f27340b);
        sb.append("', beaconUrl='");
        sb.append(this.f27341c);
        sb.append("', mode=");
        sb.append(this.d);
        sb.append(", certificateValidation=");
        sb.append(this.f27342e);
        sb.append(", keyStore=null, keyManagers=");
        sb.append(Arrays.toString((Object[]) null));
        sb.append(", graceTime=");
        sb.append(this.f27343f);
        sb.append(", waitTime=");
        sb.append(this.g);
        sb.append(", sendEmptyAction=");
        sb.append(this.f27344h);
        sb.append(", namePrivacy=false, applicationMonitoring=");
        sb.append(this.f27345i);
        sb.append(", activityMonitoring=");
        sb.append(this.f27346j);
        sb.append(", crashReporting=");
        sb.append(this.f27347k);
        sb.append(", nativeCrashReporting=");
        sb.append(this.l);
        sb.append(", anrReporting=");
        sb.append(this.m);
        sb.append(", webRequestTiming=");
        sb.append(this.n);
        sb.append(", monitoredDomains=");
        sb.append(Arrays.toString(this.o));
        sb.append(", monitoredHttpsDomains=");
        sb.append(Arrays.toString(this.p));
        sb.append(", urlFilters=");
        sb.append(Arrays.toString(this.q));
        sb.append(", hybridApp=false, fileDomainCookies=");
        sb.append(this.r);
        sb.append(", debugLogLevel=false, autoStart=false, communicationProblemListener=null, userOptIn=");
        sb.append(this.s);
        sb.append(", startupLoadBalancing=");
        sb.append(this.t);
        sb.append(", startupWithGrailEnabled=false, instrumentationFlavor=");
        sb.append(this.u);
        sb.append(", sessionReplayComponentProvider=null, isRageTapDetectionEnabled=");
        sb.append(this.v);
        sb.append(", autoUserActionModifier=null, httpFactory=null, eventThrottlingLimit=");
        return a.i(this.w, ", enableOfflineRecovery=false}", sb);
    }
}
