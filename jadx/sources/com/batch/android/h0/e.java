package com.batch.android.h0;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public class e extends com.batch.android.f0.c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f23463f;
    public String g;

    public e(String str) {
        super(str);
    }

    private Spanned e() {
        Spanned spannedFromHtml;
        String str = this.g;
        if (str == null || (spannedFromHtml = Html.fromHtml(str, 0)) == null || spannedFromHtml.length() == 0) {
            return null;
        }
        return spannedFromHtml;
    }

    public CharSequence d() {
        Spanned spannedE = e();
        return !TextUtils.isEmpty(spannedE) ? spannedE : this.f23463f;
    }
}
