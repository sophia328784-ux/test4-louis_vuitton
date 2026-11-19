package com.google.android.gms.internal.gtm;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
final class zzbl implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzbm f29984b;

    public zzbl(zzbm zzbmVar) {
        this.f29984b = zzbmVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        Context context = this.f29984b.f29985a;
        String packageName = context.getPackageName();
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(packageName);
        if (launchIntentForPackage == null) {
            "No launch activity found for package name: ".concat(String.valueOf(packageName));
            zzao.a(5);
        } else {
            "Invoke the launch activity for package name: ".concat(String.valueOf(packageName));
            zzao.a(4);
            context.startActivity(launchIntentForPackage);
        }
    }
}
