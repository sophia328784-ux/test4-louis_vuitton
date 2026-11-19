package com.batch.android.messaging.view;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.animation.AnimationUtils;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class a extends CloseButton {
    private boolean v;
    private long w;
    private long x;

    public a(Context context) {
        super(context);
        this.v = false;
        this.w = 0L;
        this.x = 0L;
    }

    private void e() {
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        long j2 = this.w;
        if (jCurrentAnimationTimeMillis >= j2) {
            this.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.v = false;
        } else {
            this.g = (j2 - jCurrentAnimationTimeMillis) / this.x;
        }
        postInvalidateOnAnimation();
    }

    public void a(long j2) {
        this.v = true;
        this.x = j2;
        this.w = AnimationUtils.currentAnimationTimeMillis() + j2;
        setCountdownProgress(1.0f);
        invalidate();
    }

    public boolean d() {
        return this.v;
    }

    @Override // com.batch.android.messaging.view.CloseButton, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.v) {
            e();
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof AnimatedCountdownSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        AnimatedCountdownSavedState animatedCountdownSavedState = (AnimatedCountdownSavedState) parcelable;
        super.onRestoreInstanceState(animatedCountdownSavedState.getSuperState());
        this.x = animatedCountdownSavedState.d;
        this.w = animatedCountdownSavedState.f23709c;
        boolean z = animatedCountdownSavedState.f23708b;
        this.v = z;
        if (z) {
            postInvalidate();
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        AnimatedCountdownSavedState animatedCountdownSavedState = new AnimatedCountdownSavedState(super.onSaveInstanceState());
        animatedCountdownSavedState.d = this.x;
        animatedCountdownSavedState.f23709c = this.w;
        animatedCountdownSavedState.f23708b = this.v;
        return animatedCountdownSavedState;
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.v = false;
        this.w = 0L;
        this.x = 0L;
    }

    public a(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.v = false;
        this.w = 0L;
        this.x = 0L;
    }

    public a(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.v = false;
        this.w = 0L;
        this.x = 0L;
    }
}
