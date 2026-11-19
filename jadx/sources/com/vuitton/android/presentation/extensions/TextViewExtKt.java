package com.vuitton.android.presentation.extensions;

import android.widget.TextView;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TextViewExtKt {
    public static void a(TextView textView, String str) {
        textView.setText(str != null ? StringAndroidExtKt.b(str) : null);
    }
}
