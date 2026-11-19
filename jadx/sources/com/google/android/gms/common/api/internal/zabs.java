package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: classes2.dex */
public final class zabs extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f29087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zabr f29088b;

    public zabs(zabr zabrVar) {
        this.f29088b = zabrVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f29088b.a();
            synchronized (this) {
                try {
                    Context context2 = this.f29087a;
                    if (context2 != null) {
                        context2.unregisterReceiver(this);
                    }
                    this.f29087a = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
