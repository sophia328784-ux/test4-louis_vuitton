package com.batch.android.c0;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import com.batch.android.BatchMessage;
import com.batch.android.e.t;
import defpackage.mc0;
import defpackage.z71;

/* JADX INFO: loaded from: classes.dex */
public class a extends b<com.batch.android.h0.a> {
    private static final String l = "AlertTemplateFragment";

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.batch.android.h0.a aVar, DialogInterface dialogInterface, int i2) {
        this.g.a(0, aVar.f23452j);
        this.f22995f.a(getContext(), k(), aVar.f23452j);
    }

    @Override // com.batch.android.c0.b
    public boolean g() {
        return false;
    }

    @Override // com.batch.android.c0.b
    public int i() {
        return 0;
    }

    @Override // com.batch.android.c0.b
    public void l() {
    }

    @Override // com.batch.android.c0.b
    public void m() {
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        com.batch.android.h0.a aVarJ = j();
        if (aVarJ == null) {
            t.a(l, "Unknown error while creating alert fragment. Please report this to Batch's support. (code -3)");
            return super.onCreateDialog(bundle);
        }
        Context context = getContext();
        if (context == null) {
            t.a(l, "Unknown error while creating alert fragment. Please report this to Batch's support. (code -5)");
            return super.onCreateDialog(bundle);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(new ContextThemeWrapper(context, com.batch.android.o0.c.b(context)));
        AlertController.AlertParams alertParams = builder.f810a;
        alertParams.l = true;
        String str = aVarJ.f23450h;
        if (str != null) {
            builder.setTitle(str);
        }
        alertParams.g = aVarJ.f23463f;
        String str2 = aVarJ.f23451i;
        mc0 mc0Var = new mc0(this, 4);
        alertParams.f803j = str2;
        alertParams.f804k = mc0Var;
        com.batch.android.f0.b bVar = aVarJ.f23452j;
        if (bVar != null) {
            String str3 = bVar.d;
            z71 z71Var = new z71(this, aVarJ, 0);
            alertParams.f801h = str3;
            alertParams.f802i = z71Var;
        }
        alertParams.n = this;
        alertParams.m = this;
        return builder.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(DialogInterface dialogInterface, int i2) {
        this.g.b();
    }

    public static a a(BatchMessage batchMessage, com.batch.android.h0.a aVar) {
        a aVar2 = new a();
        aVar2.a(batchMessage, aVar);
        return aVar2;
    }
}
