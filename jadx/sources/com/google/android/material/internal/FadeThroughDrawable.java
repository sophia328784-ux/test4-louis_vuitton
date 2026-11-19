package com.google.android.material.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes2.dex */
public class FadeThroughDrawable extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Drawable f32708a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Drawable f32709b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float[] f32710c;
    public float d;

    public static class EmptyDrawable extends Drawable {
        @Override // android.graphics.drawable.Drawable
        public final void draw(Canvas canvas) {
        }

        @Override // android.graphics.drawable.Drawable
        public final int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public final void setAlpha(int i2) {
        }

        @Override // android.graphics.drawable.Drawable
        public final void setColorFilter(ColorFilter colorFilter) {
        }
    }

    public FadeThroughDrawable(Drawable drawable, Drawable drawable2) {
        Drawable drawableMutate = drawable != null ? drawable.getConstantState().newDrawable().mutate() : new EmptyDrawable();
        this.f32708a = drawableMutate;
        Drawable drawableMutate2 = drawable2 != null ? drawable2.getConstantState().newDrawable().mutate() : new EmptyDrawable();
        this.f32709b = drawableMutate2;
        int layoutDirection = drawable != null ? drawable.getLayoutDirection() : 3;
        int layoutDirection2 = drawable2 != null ? drawable2.getLayoutDirection() : 3;
        drawableMutate.setLayoutDirection(layoutDirection);
        drawableMutate2.setLayoutDirection(layoutDirection2);
        drawableMutate2.setAlpha(0);
        this.f32710c = new float[2];
    }

    public final void a(float f2) {
        if (this.d != f2) {
            this.d = f2;
            float[] fArr = this.f32710c;
            FadeThroughUtils.a(f2, fArr);
            this.f32708a.setAlpha((int) (fArr[0] * 255.0f));
            this.f32709b.setAlpha((int) (fArr[1] * 255.0f));
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        this.f32708a.draw(canvas);
        this.f32709b.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return Math.max(this.f32708a.getIntrinsicHeight(), this.f32709b.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.max(this.f32708a.getIntrinsicWidth(), this.f32709b.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() {
        return Math.max(this.f32708a.getMinimumHeight(), this.f32709b.getMinimumHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() {
        return Math.max(this.f32708a.getMinimumWidth(), this.f32709b.getMinimumWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return this.f32708a.isStateful() || this.f32709b.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i2) {
        float f2 = this.d;
        Drawable drawable = this.f32709b;
        Drawable drawable2 = this.f32708a;
        if (f2 <= 0.5f) {
            drawable2.setAlpha(i2);
            drawable.setAlpha(0);
        } else {
            drawable2.setAlpha(0);
            drawable.setAlpha(i2);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setBounds(int i2, int i3, int i4, int i5) {
        super.setBounds(i2, i3, i4, i5);
        this.f32708a.setBounds(i2, i3, i4, i5);
        this.f32709b.setBounds(i2, i3, i4, i5);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f32708a.setColorFilter(colorFilter);
        this.f32709b.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setState(int[] iArr) {
        return this.f32708a.setState(iArr) || this.f32709b.setState(iArr);
    }
}
