package com.google.android.gms.internal.gtm;

import android.os.RemoteException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
final class zzbp implements zzgt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbt f29992a;

    @Override // com.google.android.gms.internal.gtm.zzgt
    public final Object a(String str, HashMap map) {
        try {
            this.f29992a.d.N(str, map);
            return null;
        } catch (RemoteException e2) {
            "Error calling customEvaluator proxy:".concat(String.valueOf(e2.getMessage()));
            zzbg.a();
            return null;
        }
    }
}
