package com.google.android.gms.tagmanager;

import android.content.Intent;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes2.dex */
public interface zzt extends IInterface {
    void initialize(IObjectWrapper iObjectWrapper, zzq zzqVar, zzh zzhVar);

    void preview(Intent intent, IObjectWrapper iObjectWrapper);

    void previewIntent(Intent intent, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, zzq zzqVar, zzh zzhVar);
}
