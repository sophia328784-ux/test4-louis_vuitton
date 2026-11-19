package com.google.vr.dynamite.client;

import defpackage.d21;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f35677b = 1;

    @Override // java.lang.Throwable
    public final String getMessage() {
        String str = this.f35677b != 1 ? "Unknown error" : "Package not available";
        return d21.p(new StringBuilder(str.length() + 17), "LoaderException{", str, "}");
    }
}
