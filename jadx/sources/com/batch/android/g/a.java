package com.batch.android.g;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.batch.android.e.t;

/* JADX INFO: loaded from: classes2.dex */
public class a implements c {
    @Override // com.batch.android.g.c
    public void a(Context context) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + context.getPackageName())));
        } catch (ActivityNotFoundException unused) {
            t.a("Core", "Could not open Play Store");
        }
    }
}
