package com.google.android.play.integrity.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: loaded from: classes2.dex */
final class ad implements ServiceConnection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ae f33314b;

    public /* synthetic */ ad(ae aeVar) {
        this.f33314b = aeVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ae aeVar = this.f33314b;
        aeVar.f33316b.a("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        aeVar.a().post(new aa(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        ae aeVar = this.f33314b;
        aeVar.f33316b.a("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        aeVar.a().post(new ab(this));
    }
}
