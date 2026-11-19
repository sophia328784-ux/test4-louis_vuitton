package com.networkbench.agent.impl.g.b;

import android.view.View;
import android.view.WindowManager;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<View> f37196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WindowManager.LayoutParams f37197b;

    public c(View view, WindowManager.LayoutParams layoutParams) {
        this.f37196a = new WeakReference<>(view);
        this.f37197b = layoutParams;
    }
}
