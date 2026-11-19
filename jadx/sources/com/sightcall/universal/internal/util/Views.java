package com.sightcall.universal.internal.util;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import defpackage.w21;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002¨\u0006\u0004"}, d2 = {"layoutOver", "", "Landroid/view/View;", "view", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class Views {
    public static final void layoutOver(View view, View view2) {
        view.getClass();
        view2.getClass();
        new Handler(Looper.getMainLooper()).post(new w21(view, view2, 17));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void layoutOver$lambda$0(View view, View view2) {
        view.getLayoutParams().width = view2.getWidth();
        view.getLayoutParams().height = view2.getHeight();
        view.requestLayout();
    }
}
