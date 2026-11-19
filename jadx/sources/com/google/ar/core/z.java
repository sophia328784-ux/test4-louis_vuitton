package com.google.ar.core;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class z implements ServiceConnection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ y f33456b;

    public z(y yVar) {
        this.f33456b = yVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        y yVar = this.f33456b;
        synchronized (yVar) {
            yVar.f33451c = com.google.ar.core.dependencies.g.b(iBinder);
            yVar.f33455i = 3;
            Iterator it = yVar.f33449a.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        y yVar = this.f33456b;
        synchronized (yVar) {
            yVar.f33455i = 1;
            yVar.f33451c = null;
        }
    }
}
