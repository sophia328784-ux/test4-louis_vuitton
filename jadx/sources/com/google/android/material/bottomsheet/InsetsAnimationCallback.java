package com.google.android.material.bottomsheet;

import android.view.View;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.animation.AnimationUtils;
import java.util.Iterator;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
class InsetsAnimationCallback extends WindowInsetsAnimationCompat.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f32392b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f32393c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int[] f32394e;

    public InsetsAnimationCallback(View view) {
        super(0);
        this.f32394e = new int[2];
        this.f32392b = view;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.f32392b.setTranslationY(Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        View view = this.f32392b;
        int[] iArr = this.f32394e;
        view.getLocationOnScreen(iArr);
        this.f32393c = iArr[1];
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) it.next();
            if ((windowInsetsAnimationCompat.f() & 8) != 0) {
                this.f32392b.setTranslationY(AnimationUtils.c(this.d, 0, windowInsetsAnimationCompat.d()));
                break;
            }
        }
        return windowInsetsCompat;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final WindowInsetsAnimationCompat.BoundsCompat onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
        View view = this.f32392b;
        int[] iArr = this.f32394e;
        view.getLocationOnScreen(iArr);
        int i2 = this.f32393c - iArr[1];
        this.d = i2;
        view.setTranslationY(i2);
        return boundsCompat;
    }
}
