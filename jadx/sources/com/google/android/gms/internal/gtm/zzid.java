package com.google.android.gms.internal.gtm;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzid implements zzdi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f30095a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DisplayMetrics f30096b = new DisplayMetrics();

    public zzid(Context context) {
        this.f30095a = context;
    }

    @Override // com.google.android.gms.internal.gtm.zzdi
    public final zzkk a(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr != null);
        Preconditions.a(zzkkVarArr.length == 0);
        Display defaultDisplay = ((WindowManager) this.f30095a.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = this.f30096b;
        defaultDisplay.getMetrics(displayMetrics);
        return new zzkv(displayMetrics.widthPixels + "x" + displayMetrics.heightPixels);
    }
}
