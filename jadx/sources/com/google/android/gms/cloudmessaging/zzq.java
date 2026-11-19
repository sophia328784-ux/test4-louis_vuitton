package com.google.android.gms.cloudmessaging;

import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Messenger f28936a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzd f28937b;

    public zzq(IBinder iBinder) throws RemoteException {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if (Objects.equals(interfaceDescriptor, "android.os.IMessenger")) {
            this.f28936a = new Messenger(iBinder);
            this.f28937b = null;
        } else {
            if (!Objects.equals(interfaceDescriptor, "com.google.android.gms.iid.IMessengerCompat")) {
                "Invalid interface descriptor: ".concat(String.valueOf(interfaceDescriptor));
                throw new RemoteException();
            }
            this.f28937b = new zzd(iBinder);
            this.f28936a = null;
        }
    }
}
