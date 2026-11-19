package org.spongycastle.asn1.x9;

/* JADX INFO: loaded from: classes5.dex */
public abstract class X9ECParametersHolder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public X9ECParameters f77836a;

    public abstract X9ECParameters a();

    public final synchronized X9ECParameters b() {
        try {
            if (this.f77836a == null) {
                this.f77836a = a();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f77836a;
    }
}
