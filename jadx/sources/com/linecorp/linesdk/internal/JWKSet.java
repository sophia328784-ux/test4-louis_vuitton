package com.linecorp.linesdk.internal;

import defpackage.n00;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class JWKSet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f36182a;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ArrayList f36183a;
    }

    public static class JWK {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f36184a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f36185b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f36186c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f36187e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f36188f;
        public final String g;

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f36189a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f36190b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f36191c;
            public String d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f36192e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f36193f;
            public String g;
        }

        public JWK(Builder builder) {
            this.f36184a = builder.f36189a;
            this.f36185b = builder.f36190b;
            this.f36186c = builder.f36191c;
            this.d = builder.d;
            this.f36187e = builder.f36192e;
            this.f36188f = builder.f36193f;
            this.g = builder.g;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("JWK{keyType='");
            sb.append(this.f36184a);
            sb.append("', algorithm='");
            sb.append(this.f36185b);
            sb.append("', use='");
            sb.append(this.f36186c);
            sb.append("', keyId='");
            sb.append(this.d);
            sb.append("', curve='");
            sb.append(this.f36187e);
            sb.append("', x='");
            sb.append(this.f36188f);
            sb.append("', y='");
            return n00.r(this.g, "'}", sb);
        }
    }

    public JWKSet(Builder builder) {
        this.f36182a = builder.f36183a;
    }

    public final String toString() {
        return "JWKSet{keys=" + this.f36182a + '}';
    }
}
