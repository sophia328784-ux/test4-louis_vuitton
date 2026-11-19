package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.gtm.zzao;
import com.google.android.gms.internal.gtm.zzbm;
import com.google.android.gms.internal.gtm.zzcv;

/* JADX INFO: loaded from: classes2.dex */
public class TagManagerApiImpl extends zzs {
    @Override // com.google.android.gms.tagmanager.zzt
    public void initialize(IObjectWrapper iObjectWrapper, zzq zzqVar, zzh zzhVar) throws RemoteException {
        zzcv.a((Context) ObjectWrapper.G2(iObjectWrapper), zzqVar).b();
    }

    @Override // com.google.android.gms.tagmanager.zzt
    @Deprecated
    public void preview(Intent intent, IObjectWrapper iObjectWrapper) {
        zzao.a(5);
    }

    @Override // com.google.android.gms.tagmanager.zzt
    public void previewIntent(Intent intent, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, zzq zzqVar, zzh zzhVar) {
        Context context = (Context) ObjectWrapper.G2(iObjectWrapper);
        new zzbm(intent, context, (Context) ObjectWrapper.G2(iObjectWrapper2), zzcv.a(context, zzqVar)).a();
    }
}
