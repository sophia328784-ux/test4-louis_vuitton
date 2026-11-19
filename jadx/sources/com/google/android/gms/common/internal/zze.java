package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes2.dex */
public final class zze implements ServiceConnection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29259b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BaseGmsClient f29260c;

    public zze(BaseGmsClient baseGmsClient, int i2) {
        java.util.Objects.requireNonNull(baseGmsClient);
        this.f29260c = baseGmsClient;
        this.f29259b = i2;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        int i2;
        int i3;
        BaseGmsClient baseGmsClient = this.f29260c;
        if (iBinder == null) {
            synchronized (baseGmsClient.f29156h) {
                i2 = baseGmsClient.o;
            }
            if (i2 == 3) {
                baseGmsClient.w = true;
                i3 = 5;
            } else {
                i3 = 4;
            }
            Handler handler = baseGmsClient.g;
            handler.sendMessage(handler.obtainMessage(i3, baseGmsClient.y.get(), 16));
            return;
        }
        synchronized (baseGmsClient.f29157i) {
            try {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                baseGmsClient.f29158j = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IGmsServiceBroker)) ? new zzaa(iBinder) : (IGmsServiceBroker) iInterfaceQueryLocalInterface;
            } catch (Throwable th) {
                throw th;
            }
        }
        BaseGmsClient baseGmsClient2 = this.f29260c;
        int i4 = this.f29259b;
        baseGmsClient2.getClass();
        zzg zzgVar = new zzg(baseGmsClient2, 0, null);
        Handler handler2 = baseGmsClient2.g;
        handler2.sendMessage(handler2.obtainMessage(7, i4, -1, zzgVar));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        BaseGmsClient baseGmsClient = this.f29260c;
        synchronized (baseGmsClient.f29157i) {
            baseGmsClient.f29158j = null;
        }
        BaseGmsClient baseGmsClient2 = this.f29260c;
        int i2 = this.f29259b;
        Handler handler = baseGmsClient2.g;
        handler.sendMessage(handler.obtainMessage(6, i2, 1));
    }
}
