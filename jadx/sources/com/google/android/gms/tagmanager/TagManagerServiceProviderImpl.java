package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.gtm.zzbe;
import com.google.android.gms.internal.gtm.zzcz;

/* JADX INFO: loaded from: classes2.dex */
public class TagManagerServiceProviderImpl extends zzv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile zzcz f32077a;

    @Override // com.google.android.gms.tagmanager.zzw
    public zzbe getService(IObjectWrapper iObjectWrapper, zzq zzqVar, zzh zzhVar) throws RemoteException {
        zzcz zzczVar;
        zzcz zzczVar2 = f32077a;
        if (zzczVar2 != null) {
            return zzczVar2;
        }
        synchronized (TagManagerServiceProviderImpl.class) {
            try {
                zzczVar = f32077a;
                if (zzczVar == null) {
                    zzcz zzczVar3 = new zzcz((Context) ObjectWrapper.G2(iObjectWrapper), zzqVar, zzhVar);
                    f32077a = zzczVar3;
                    zzczVar = zzczVar3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzczVar;
    }
}
