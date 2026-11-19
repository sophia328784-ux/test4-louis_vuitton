package com.dynatrace.android.agent.conf;

import defpackage.d21;

/* JADX INFO: loaded from: classes2.dex */
public final class ReplayConfiguration {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final ReplayConfiguration f27392k = new ReplayConfiguration(new Builder());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f27393a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f27394b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f27395c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f27396e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f27397f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f27398h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f27399i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f27400j;

    public ReplayConfiguration(Builder builder) {
        this.f27393a = builder.f27401a;
        this.f27394b = builder.f27402b;
        this.f27395c = builder.f27403c;
        this.d = builder.d;
        this.f27396e = builder.f27404e;
        this.f27397f = builder.f27405f;
        this.g = builder.g;
        this.f27398h = builder.f27406h;
        this.f27399i = builder.f27407i;
        this.f27400j = builder.f27408j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ReplayConfiguration.class != obj.getClass()) {
            return false;
        }
        ReplayConfiguration replayConfiguration = (ReplayConfiguration) obj;
        return this.f27393a == replayConfiguration.f27393a && this.f27394b == replayConfiguration.f27394b && this.f27396e == replayConfiguration.f27396e && this.f27395c == replayConfiguration.f27395c && this.f27397f == replayConfiguration.f27397f && this.g == replayConfiguration.g && this.d == replayConfiguration.d && this.f27398h == replayConfiguration.f27398h && this.f27399i == replayConfiguration.f27399i && this.f27400j == replayConfiguration.f27400j;
    }

    public final int hashCode() {
        int i2 = (((((((this.f27393a ? 1 : 0) * 31) + (this.f27394b ? 1 : 0)) * 31) + (this.f27395c ? 1 : 0)) * 31) + this.d) * 31;
        int i3 = this.f27396e;
        return ((((((((((i2 + (i3 ^ (i3 >>> 32))) * 31) + this.f27397f) * 31) + this.g) * 31) + (this.f27398h ? 1 : 0)) * 31) + (this.f27399i ? 1 : 0)) * 31) + (this.f27400j ? 1 : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ReplayConfiguration{capture=");
        sb.append(this.f27393a);
        sb.append(", fullSessionConfigReceived=");
        sb.append(this.f27394b);
        sb.append(", crashesEnabled=");
        sb.append(this.f27395c);
        sb.append(", trafficControlPercentage=");
        sb.append(this.d);
        sb.append(", retentionTime=");
        sb.append(this.f27396e);
        sb.append(", protocolVersion=");
        sb.append(this.f27397f);
        sb.append(", selfMonitoring=");
        sb.append(this.g);
        sb.append(", pixelCopy=");
        sb.append(this.f27398h);
        sb.append(", colorMasking=");
        sb.append(this.f27399i);
        sb.append(", composeEnabled=");
        return d21.q(sb, this.f27400j, '}');
    }

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f27401a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f27402b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f27403c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f27404e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f27405f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f27406h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f27407i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f27408j;

        public Builder(ReplayConfiguration replayConfiguration) {
            this.f27401a = replayConfiguration.f27393a;
            this.f27402b = replayConfiguration.f27394b;
            this.f27403c = replayConfiguration.f27395c;
            this.d = replayConfiguration.d;
            this.f27404e = replayConfiguration.f27396e;
            this.f27405f = replayConfiguration.f27397f;
            this.g = replayConfiguration.g;
            this.f27406h = replayConfiguration.f27398h;
            this.f27407i = replayConfiguration.f27399i;
            this.f27408j = replayConfiguration.f27400j;
        }

        public Builder() {
            this.f27401a = false;
            this.f27402b = false;
            this.f27403c = false;
            this.d = 0;
            this.f27404e = 0;
            this.f27405f = 1;
            this.g = 0;
            this.f27406h = false;
            this.f27407i = false;
            this.f27408j = true;
        }
    }
}
