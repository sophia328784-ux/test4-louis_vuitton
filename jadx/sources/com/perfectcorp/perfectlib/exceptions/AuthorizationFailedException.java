package com.perfectcorp.perfectlib.exceptions;

import defpackage.pq0;

/* JADX INFO: loaded from: classes3.dex */
public final class AuthorizationFailedException extends IllegalStateException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f40135b;

    public AuthorizationFailedException(int i2) {
        super(pq0.k(i2, "status code is "));
        this.f40135b = i2;
    }

    public final int getStatusCode() {
        return this.f40135b;
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "Authorization failed. statusCode=" + this.f40135b;
    }
}
