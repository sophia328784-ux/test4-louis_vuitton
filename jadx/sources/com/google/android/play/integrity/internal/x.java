package com.google.android.play.integrity.internal;

/* JADX INFO: loaded from: classes2.dex */
final class x extends t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ae f33341a;

    public x(ae aeVar) {
        this.f33341a = aeVar;
    }

    @Override // com.google.android.play.integrity.internal.t
    public final void b() {
        synchronized (this.f33341a.f33319f) {
            try {
                if (this.f33341a.l.get() > 0 && this.f33341a.l.decrementAndGet() > 0) {
                    this.f33341a.f33316b.a("Leaving the connection open for other ongoing calls.", new Object[0]);
                    return;
                }
                ae aeVar = this.f33341a;
                if (aeVar.n != null) {
                    aeVar.f33316b.a("Unbind from service.", new Object[0]);
                    ae aeVar2 = this.f33341a;
                    aeVar2.f33315a.unbindService(aeVar2.m);
                    ae aeVar3 = this.f33341a;
                    aeVar3.g = false;
                    aeVar3.n = null;
                    aeVar3.m = null;
                }
                this.f33341a.e();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
