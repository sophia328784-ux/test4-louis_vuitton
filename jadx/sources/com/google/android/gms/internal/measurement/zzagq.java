package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.common.base.Function;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzagq implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ zzagq f30481b = new zzagq();

    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        String strB;
        Context context = (Context) obj;
        String str = zzagr.f30484c;
        if (str != null) {
            return str;
        }
        synchronized (zzagr.class) {
            try {
                strB = zzagr.f30484c;
                if (strB == null) {
                    strB = zzlg.b(context, "com.google.android.gms.measurement");
                    zzagr.f30484c = strB;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return strB;
    }
}
