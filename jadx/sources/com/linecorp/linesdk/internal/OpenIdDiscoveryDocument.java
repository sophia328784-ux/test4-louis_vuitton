package com.linecorp.linesdk.internal;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class OpenIdDiscoveryDocument {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f36195a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f36196b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f36197c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f36198e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f36199f;
    public final ArrayList g;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f36200a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f36201b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f36202c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ArrayList f36203e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ArrayList f36204f;
        public ArrayList g;
    }

    public OpenIdDiscoveryDocument(Builder builder) {
        this.f36195a = builder.f36200a;
        this.f36196b = builder.f36201b;
        this.f36197c = builder.f36202c;
        this.d = builder.d;
        this.f36198e = builder.f36203e;
        this.f36199f = builder.f36204f;
        this.g = builder.g;
    }

    public final String toString() {
        return "OpenIdDiscoveryDocument{issuer='" + this.f36195a + "', authorizationEndpoint='" + this.f36196b + "', tokenEndpoint='" + this.f36197c + "', jwksUri='" + this.d + "', responseTypesSupported=" + this.f36198e + ", subjectTypesSupported=" + this.f36199f + ", idTokenSigningAlgValuesSupported=" + this.g + '}';
    }
}
