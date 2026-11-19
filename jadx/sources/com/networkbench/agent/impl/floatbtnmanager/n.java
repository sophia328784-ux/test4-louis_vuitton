package com.networkbench.agent.impl.floatbtnmanager;

import android.view.View;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes2.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f37122a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WindowManager.LayoutParams f37123b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f37124c;
    private final int d;

    public n(View view, WindowManager.LayoutParams layoutParams) {
        this.f37122a = view;
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        this.d = iArr[0];
        this.f37124c = iArr[1];
        this.f37123b = layoutParams;
    }

    public View a() {
        return this.f37122a;
    }

    public int b() {
        return this.f37124c;
    }

    public int c() {
        return this.d;
    }

    public WindowManager.LayoutParams d() {
        return this.f37123b;
    }
}
