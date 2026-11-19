package com.linecorp.linesdk.internal.nwclient;

import com.linecorp.linesdk.LineIdToken;

/* JADX INFO: loaded from: classes2.dex */
public class IdTokenValidator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LineIdToken f36208a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f36209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f36210c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f36211e;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public LineIdToken f36212a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f36213b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f36214c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f36215e;
    }

    public IdTokenValidator(Builder builder) {
        this.f36208a = builder.f36212a;
        this.f36209b = builder.f36213b;
        this.f36210c = builder.f36214c;
        this.d = builder.d;
        this.f36211e = builder.f36215e;
    }

    public static void a(String str, Object obj, Object obj2) {
        throw new RuntimeException(str + " expected: " + obj + ", but received: " + obj2);
    }
}
