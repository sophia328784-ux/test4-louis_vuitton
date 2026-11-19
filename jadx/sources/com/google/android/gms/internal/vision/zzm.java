package com.google.android.gms.internal.vision;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;

/* JADX INFO: loaded from: classes2.dex */
public final class zzm extends zzt<zzl> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final zzk f31287h;

    public zzm(Context context, zzk zzkVar) {
        super(context, "BarcodeNativeHandle", "barcode");
        this.f31287h = zzkVar;
        b();
    }

    @Override // com.google.android.gms.internal.vision.zzt
    public final zzl a(DynamiteModule dynamiteModule, Context context) throws DynamiteModule.LoadingException {
        zzn zzpVar;
        IBinder iBinderB = dynamiteModule.b("com.google.android.gms.vision.barcode.ChimeraNativeBarcodeDetectorCreator");
        if (iBinderB == null) {
            zzpVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinderB.queryLocalInterface("com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator");
            zzpVar = iInterfaceQueryLocalInterface instanceof zzn ? (zzn) iInterfaceQueryLocalInterface : new zzp(iBinderB, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator");
        }
        if (zzpVar == null) {
            return null;
        }
        ObjectWrapper objectWrapper = new ObjectWrapper(context);
        zzk zzkVar = this.f31287h;
        Preconditions.h(zzkVar);
        return zzpVar.k(objectWrapper, zzkVar);
    }
}
