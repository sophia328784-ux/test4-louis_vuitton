package com.networkbench.agent.impl.session.screen;

import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class NBSViewTool {
    private static final int[] numbers = new int[2];

    public static Rect getVisibleViewRect(View view) {
        Rect rect = new Rect();
        if (view != null) {
            view.getGlobalVisibleRect(rect);
            View rootView = view.getRootView();
            int[] iArr = numbers;
            rootView.getLocationOnScreen(iArr);
            rect.offset(iArr[0], iArr[1]);
        }
        return rect;
    }
}
