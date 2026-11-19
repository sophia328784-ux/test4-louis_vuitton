package com.dynatrace.android.agent.conf;

import defpackage.tr;

/* JADX INFO: loaded from: classes2.dex */
public final class RageTapConfiguration {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final RageTapConfiguration f27385e = new RageTapConfiguration(new Builder());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f27386a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27388c;
    public final int d;

    public RageTapConfiguration(Builder builder) {
        this.f27386a = builder.f27389a;
        this.f27387b = builder.f27390b;
        this.f27388c = builder.f27391c;
        this.d = builder.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && RageTapConfiguration.class == obj.getClass()) {
            RageTapConfiguration rageTapConfiguration = (RageTapConfiguration) obj;
            if (this.f27386a == rageTapConfiguration.f27386a && this.f27387b == rageTapConfiguration.f27387b && this.f27388c == rageTapConfiguration.f27388c && this.d == rageTapConfiguration.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((((this.f27386a * 31) + this.f27387b) * 31) + this.f27388c) * 31) + this.d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RageTapConfiguration{tapDuration=");
        sb.append(this.f27386a);
        sb.append(", dispersionRadius=");
        sb.append(this.f27387b);
        sb.append(", timespanDifference=");
        sb.append(this.f27388c);
        sb.append(", minimumNumberOfTaps=");
        return tr.k(sb, this.d, '}');
    }

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f27389a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f27390b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f27391c;
        public int d;

        public Builder(RageTapConfiguration rageTapConfiguration) {
            this.f27389a = rageTapConfiguration.f27386a;
            this.f27390b = rageTapConfiguration.f27387b;
            this.f27391c = rageTapConfiguration.f27388c;
            this.d = rageTapConfiguration.d;
        }

        public Builder() {
            this.f27389a = 100;
            this.f27390b = 100;
            this.f27391c = 300;
            this.d = 3;
        }
    }
}
