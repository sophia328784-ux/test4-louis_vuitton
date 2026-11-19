package org.spongycastle.asn1;

/* JADX INFO: loaded from: classes5.dex */
public class ASN1ParsingException extends IllegalStateException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f77717b;

    public ASN1ParsingException(String str, Throwable th) {
        super(str);
        this.f77717b = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f77717b;
    }

    public ASN1ParsingException(String str) {
        super(str);
    }
}
