package com.vuitton.android.presentation.extensions;

import android.view.View;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/extensions/ViewExtKt$requestApplyInsetsWhenAttachedToWindow$1", "Landroid/view/View$OnAttachStateChangeListener;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ViewExtKt$requestApplyInsetsWhenAttachedToWindow$1 implements View.OnAttachStateChangeListener {
    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        view.getClass();
        view.removeOnAttachStateChangeListener(this);
        view.requestApplyInsets();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        view.getClass();
    }
}
