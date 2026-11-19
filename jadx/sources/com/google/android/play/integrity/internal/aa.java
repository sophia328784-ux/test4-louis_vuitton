package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class aa extends t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ IBinder f33311a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ ad f33312b;

    public aa(ad adVar, IBinder iBinder) {
        this.f33312b = adVar;
        this.f33311a = iBinder;
    }

    @Override // com.google.android.play.integrity.internal.t
    public final void b() {
        n nVarA = this.f33312b.f33314b.f33321i.a(this.f33311a);
        ae aeVar = this.f33312b.f33314b;
        aeVar.n = nVarA;
        s sVar = aeVar.f33316b;
        sVar.a("linkToDeath", new Object[0]);
        try {
            aeVar.n.asBinder().linkToDeath(aeVar.f33323k, 0);
        } catch (RemoteException unused) {
            Object[] objArr = new Object[0];
            sVar.getClass();
            if (Log.isLoggable("PlayCore", 6)) {
                s.b(sVar.f33333a, "linkToDeath failed", objArr);
            }
        }
        ae aeVar2 = this.f33312b.f33314b;
        aeVar2.g = false;
        Iterator it = aeVar2.d.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.f33312b.f33314b.d.clear();
    }
}
