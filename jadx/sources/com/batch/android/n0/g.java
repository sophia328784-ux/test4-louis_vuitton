package com.batch.android.n0;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class g implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f23818b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ JsResult f23819c;

    public /* synthetic */ g(JsResult jsResult, int i2) {
        this.f23818b = i2;
        this.f23819c = jsResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        int i2 = this.f23818b;
        JsResult jsResult = this.f23819c;
        switch (i2) {
            case 0:
                e.a.b(jsResult, dialogInterface);
                break;
            case 1:
                e.a.a(jsResult, dialogInterface);
                break;
            default:
                e.a.a((JsPromptResult) jsResult, dialogInterface);
                break;
        }
    }
}
