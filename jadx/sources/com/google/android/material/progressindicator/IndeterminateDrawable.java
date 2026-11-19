package com.google.android.material.progressindicator;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.provider.Settings;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import com.google.android.material.progressindicator.BaseProgressIndicatorSpec;
import defpackage.cj;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class IndeterminateDrawable<S extends BaseProgressIndicatorSpec> extends DrawableWithAnimatedVisibilityChange {
    public final DrawingDelegate o;
    public IndeterminateAnimatorDelegate p;
    public VectorDrawableCompat q;

    public IndeterminateDrawable(Context context, BaseProgressIndicatorSpec baseProgressIndicatorSpec, DrawingDelegate drawingDelegate, IndeterminateAnimatorDelegate indeterminateAnimatorDelegate) {
        super(context, baseProgressIndicatorSpec);
        this.o = drawingDelegate;
        this.p = indeterminateAnimatorDelegate;
        indeterminateAnimatorDelegate.f32841a = this;
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange
    public final void d() {
        g(false, false, false);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0100  */
    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i2;
        boolean z;
        int i3;
        VectorDrawableCompat vectorDrawableCompat;
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(this.m)) {
            AnimatorDurationScaleProvider animatorDurationScaleProvider = this.d;
            BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32819c;
            if (animatorDurationScaleProvider != null && Settings.Global.getFloat(this.f32818b.getContentResolver(), "animator_duration_scale", 1.0f) == Call.Parameters.DEFAULT_CAMERA_ZOOM && (vectorDrawableCompat = this.q) != null) {
                vectorDrawableCompat.setBounds(getBounds());
                this.q.setTint(baseProgressIndicatorSpec.f32789e[0]);
                this.q.draw(canvas);
                return;
            }
            canvas.save();
            Rect bounds = getBounds();
            float fB = b();
            boolean zF = super.f();
            boolean zE = super.e();
            DrawingDelegate drawingDelegate = this.o;
            drawingDelegate.f32828a.d();
            drawingDelegate.a(canvas, bounds, fB, zF, zE);
            int i4 = baseProgressIndicatorSpec.f32792i;
            int i5 = this.l;
            boolean z2 = (baseProgressIndicatorSpec instanceof LinearProgressIndicatorSpec) || ((baseProgressIndicatorSpec instanceof CircularProgressIndicatorSpec) && ((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).s);
            if (z2 && i4 == 0 && !baseProgressIndicatorSpec.b(false)) {
                i2 = 1;
                z = true;
            } else {
                i2 = 1;
                z = false;
            }
            Paint paint = this.f32825k;
            if (!z) {
                if (z2) {
                    DrawingDelegate.ActiveIndicator activeIndicator = (DrawingDelegate.ActiveIndicator) this.p.f32842b.get(0);
                    DrawingDelegate.ActiveIndicator activeIndicator2 = (DrawingDelegate.ActiveIndicator) cj.c(i2, this.p.f32842b);
                    DrawingDelegate drawingDelegate2 = this.o;
                    if (drawingDelegate2 instanceof LinearDrawingDelegate) {
                        i3 = i4;
                        drawingDelegate2.d(canvas, paint, Call.Parameters.DEFAULT_CAMERA_ZOOM, activeIndicator.f32832a, baseProgressIndicatorSpec.f32790f, i5, i3);
                        this.o.d(canvas, paint, activeIndicator2.f32833b, 1.0f, baseProgressIndicatorSpec.f32790f, i5, i3);
                    } else {
                        i3 = i4;
                        canvas.save();
                        canvas.rotate(activeIndicator2.g);
                        this.o.d(canvas, paint, activeIndicator2.f32833b, activeIndicator.f32832a + 1.0f, baseProgressIndicatorSpec.f32790f, i5, i3);
                        canvas.restore();
                    }
                }
                for (int i6 = 0; i6 < this.p.f32842b.size(); i6++) {
                    DrawingDelegate.ActiveIndicator activeIndicator3 = (DrawingDelegate.ActiveIndicator) this.p.f32842b.get(i6);
                    activeIndicator3.f32836f = c();
                    this.o.c(canvas, paint, activeIndicator3, this.l);
                    if (i6 <= 0 && !z && z2) {
                        this.o.d(canvas, paint, ((DrawingDelegate.ActiveIndicator) this.p.f32842b.get(i6 - 1)).f32833b, activeIndicator3.f32832a, baseProgressIndicatorSpec.f32790f, i5, i3);
                    }
                }
                canvas.restore();
            }
            this.o.d(canvas, paint, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, baseProgressIndicatorSpec.f32790f, i5, 0);
            i3 = i4;
            while (i6 < this.p.f32842b.size()) {
                DrawingDelegate.ActiveIndicator activeIndicator4 = (DrawingDelegate.ActiveIndicator) this.p.f32842b.get(i6);
                activeIndicator4.f32836f = c();
                this.o.c(canvas, paint, activeIndicator4, this.l);
                if (i6 <= 0) {
                }
            }
            canvas.restore();
        }
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange
    public final boolean g(boolean z, boolean z2, boolean z3) {
        AnimatorDurationScaleProvider animatorDurationScaleProvider = this.d;
        ContentResolver contentResolver = this.f32818b.getContentResolver();
        animatorDurationScaleProvider.getClass();
        return h(z, z2, z3 && Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f) > Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.l;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.o.e();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.o.f();
    }

    @Override // android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getOpacity() {
        return -3;
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange
    public final boolean h(boolean z, boolean z2, boolean z3) {
        VectorDrawableCompat vectorDrawableCompat;
        boolean zH = super.h(z, z2, z3);
        if (this.d != null && Settings.Global.getFloat(this.f32818b.getContentResolver(), "animator_duration_scale", 1.0f) == Call.Parameters.DEFAULT_CAMERA_ZOOM && (vectorDrawableCompat = this.q) != null) {
            return vectorDrawableCompat.setVisible(z, z2);
        }
        if (!super.isRunning()) {
            this.p.a();
        }
        if (z && z3) {
            this.p.f();
        }
        return zH;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        return g(z, z2, true);
    }
}
