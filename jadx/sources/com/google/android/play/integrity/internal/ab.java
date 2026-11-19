package com.google.android.play.integrity.internal;

/* JADX INFO: loaded from: classes2.dex */
final class ab extends t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ad f33313a;

    public ab(ad adVar) {
        this.f33313a = adVar;
    }

    @Override // com.google.android.play.integrity.internal.t
    public final void b() {
        ae aeVar = this.f33313a.f33314b;
        aeVar.f33316b.a("unlinkToDeath", new Object[0]);
        aeVar.n.asBinder().unlinkToDeath(aeVar.f33323k, 0);
        ae aeVar2 = this.f33313a.f33314b;
        aeVar2.n = null;
        aeVar2.g = false;
    }
}
