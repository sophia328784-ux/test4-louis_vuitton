package com.google.android.material.appbar;

import android.view.View;
import androidx.core.view.ViewCompat;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
class ViewOffsetHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f32279a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f32280b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f32281c;
    public int d;

    public ViewOffsetHelper(View view) {
        this.f32279a = view;
    }

    public final void a() {
        int i2 = this.d;
        View view = this.f32279a;
        int top = i2 - (view.getTop() - this.f32280b);
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        view.offsetTopAndBottom(top);
        view.offsetLeftAndRight(0 - (view.getLeft() - this.f32281c));
    }
}
