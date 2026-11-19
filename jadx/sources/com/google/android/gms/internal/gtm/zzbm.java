package com.google.android.gms.internal.gtm;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.vuitton.android.R;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f29985a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f29986b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Intent f29987c;
    public final zzcv d;

    public zzbm(Intent intent, Context context, Context context2, zzcv zzcvVar) {
        this.f29985a = context;
        this.f29986b = context2;
        this.f29987c = intent;
        this.d = zzcvVar;
    }

    public final void a() {
        Uri data = this.f29987c.getData();
        try {
            zzcv zzcvVar = this.d;
            zzcvVar.getClass();
            zzcvVar.d.execute(new zzcq(zzcvVar, data));
            Context context = this.f29986b;
            String string = context.getResources().getString(R.string.tagmanager_preview_dialog_title);
            String string2 = context.getResources().getString(R.string.tagmanager_preview_dialog_message);
            String string3 = context.getResources().getString(R.string.tagmanager_preview_dialog_button);
            AlertDialog alertDialogCreate = new AlertDialog.Builder(this.f29985a).create();
            alertDialogCreate.setTitle(string);
            alertDialogCreate.setMessage(string2);
            alertDialogCreate.setButton(-1, string3, new zzbl(this));
            alertDialogCreate.show();
        } catch (Exception e2) {
            "Calling preview threw an exception: ".concat(String.valueOf(e2.getMessage()));
            zzbg.a();
        }
    }
}
