package org.spongycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class ASN1Exception extends IOException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IllegalArgumentException f77705b;

    public ASN1Exception(String str, IllegalArgumentException illegalArgumentException) {
        super(str);
        this.f77705b = illegalArgumentException;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f77705b;
    }
}
