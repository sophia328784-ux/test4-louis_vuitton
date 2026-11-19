package com.batch.android.n0;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class f implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f23816b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ JsResult f23817c;

    public /* synthetic */ f(JsResult jsResult, int i2) {
        this.f23816b = i2;
        this.f23817c = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        int i3 = this.f23816b;
        JsResult jsResult = this.f23817c;
        switch (i3) {
            case 0:
                jsResult.confirm();
                break;
            case 1:
                jsResult.confirm();
                break;
            default:
                ((JsPromptResult) jsResult).cancel();
                break;
        }
    }
}
