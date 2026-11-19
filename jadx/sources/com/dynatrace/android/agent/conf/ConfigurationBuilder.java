package com.dynatrace.android.agent.conf;

import com.dynatrace.agent.common.InstrumentationFlavor;
import com.dynatrace.android.agent.Global;
import com.github.druk.dnssd.DNSSD;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ConfigurationBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AgentMode f27348a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f27349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f27350c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f27351e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f27352f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String[] f27353h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String[] f27354i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f27355j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f27356k;
    public boolean l;
    public final boolean m;
    public final int n;
    public final int o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final String[] s;
    public final InstrumentationFlavor t;
    public final boolean u;
    public final int v;

    static {
        boolean z = Global.f27307a;
    }

    public ConfigurationBuilder(AgentMode agentMode, String str, String str2) {
        new ConfigurationPreset();
        this.f27353h = new String[0];
        this.f27354i = new String[0];
        this.f27348a = agentMode;
        this.f27349b = str;
        this.f27350c = str2;
        this.d = true;
        this.f27355j = true;
        this.f27356k = false;
        String[] strArrA = BuilderUtil.a(new String[0]);
        if (strArrA != null) {
            this.f27353h = strArrA;
        }
        String[] strArrA2 = BuilderUtil.a(new String[0]);
        if (strArrA2 != null) {
            this.f27354i = strArrA2;
        }
        if (agentMode != AgentMode.APP_MON) {
            this.l = false;
        }
        this.n = 500;
        this.o = DNSSD.DNSSD_DEFAULT_TIMEOUT;
        this.q = true;
        this.m = true;
        this.r = true;
        this.s = new String[0];
        this.f27351e = true;
        this.f27352f = true;
        this.g = true;
        this.p = true;
        this.t = InstrumentationFlavor.PLAIN;
        this.u = true;
        this.v = 1000;
    }
}
