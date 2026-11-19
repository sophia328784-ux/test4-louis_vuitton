package com.batch.android.j0;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.os.Parcelable;
import android.view.animation.AnimationUtils;
import android.widget.ProgressBar;
import com.batch.android.e.t;
import com.batch.android.messaging.view.AnimatedCountdownSavedState;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class a extends ProgressBar implements com.batch.android.s0.c {
    private static final String d = "CountdownView";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f23496e = 1000;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f23497a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f23498b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f23499c;

    public a(Context context) {
        super(context, null, R.style.Widget.ProgressBar.Horizontal);
        this.f23497a = false;
        this.f23498b = 0L;
        this.f23499c = 0L;
        setIndeterminate(false);
        setMax(1000);
        setProgress(1000);
    }

    @Override // com.batch.android.s0.c
    public void a(Map<String, String> map) {
        com.batch.android.o0.b.a(this, map);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if ("color".equalsIgnoreCase(entry.getKey())) {
                try {
                    setColor(Color.parseColor(entry.getValue()));
                } catch (IllegalArgumentException e2) {
                    t.c(d, "Unparsable color (" + entry.getValue() + ")", e2);
                }
            }
        }
    }

    @Override // android.widget.ProgressBar
    public boolean isAnimating() {
        return this.f23497a;
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f23497a) {
            a();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof AnimatedCountdownSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        AnimatedCountdownSavedState animatedCountdownSavedState = (AnimatedCountdownSavedState) parcelable;
        super.onRestoreInstanceState(animatedCountdownSavedState.getSuperState());
        this.f23499c = animatedCountdownSavedState.d;
        this.f23498b = animatedCountdownSavedState.f23709c;
        boolean z = animatedCountdownSavedState.f23708b;
        this.f23497a = z;
        if (z) {
            postInvalidate();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public Parcelable onSaveInstanceState() {
        AnimatedCountdownSavedState animatedCountdownSavedState = new AnimatedCountdownSavedState(super.onSaveInstanceState());
        animatedCountdownSavedState.d = this.f23499c;
        animatedCountdownSavedState.f23709c = this.f23498b;
        animatedCountdownSavedState.f23708b = this.f23497a;
        return animatedCountdownSavedState;
    }

    public void setColor(int i2) {
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RectShape());
        shapeDrawable.getPaint().setColor(i2);
        setProgressDrawable(new ClipDrawable(shapeDrawable, 3, 1));
        invalidate();
    }

    public void a(long j2) {
        this.f23497a = true;
        this.f23499c = j2;
        this.f23498b = AnimationUtils.currentAnimationTimeMillis() + j2;
        setProgress(1000);
        invalidate();
    }

    private void a() {
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        long j2 = this.f23498b;
        if (jCurrentAnimationTimeMillis >= j2) {
            setProgress(0);
            this.f23497a = false;
        } else {
            setProgress((int) (((j2 - jCurrentAnimationTimeMillis) / this.f23499c) * 1000.0f));
        }
        postInvalidateOnAnimation();
    }
}
