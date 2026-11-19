package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class AspectRatioFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AspectRatioUpdateDispatcher f28360b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AspectRatioListener f28361c;
    public float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f28362e;

    public interface AspectRatioListener {
        void a();
    }

    public final class AspectRatioUpdateDispatcher implements Runnable {
        private boolean aspectRatioMismatch;
        private boolean isScheduled;
        private float naturalAspectRatio;
        private float targetAspectRatio;

        private AspectRatioUpdateDispatcher() {
        }

        @Override // java.lang.Runnable
        public void run() {
            this.isScheduled = false;
            AspectRatioListener aspectRatioListener = AspectRatioFrameLayout.this.f28361c;
            if (aspectRatioListener == null) {
                return;
            }
            aspectRatioListener.a();
        }

        public void scheduleUpdate(float f2, float f3, boolean z) {
            this.targetAspectRatio = f2;
            this.naturalAspectRatio = f3;
            this.aspectRatioMismatch = z;
            if (this.isScheduled) {
                return;
            }
            this.isScheduled = true;
            AspectRatioFrameLayout.this.post(this);
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ResizeMode {
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28362e = 0;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.f28398a, 0, 0);
            try {
                this.f28362e = typedArrayObtainStyledAttributes.getInt(0, 0);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        this.f28360b = new AspectRatioUpdateDispatcher();
    }

    public int getResizeMode() {
        return this.f28362e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0043, code lost:
    
        if (r4 > net.rtccloud.sdk.Call.Parameters.DEFAULT_CAMERA_ZOOM) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0045, code lost:
    
        r2 = r2 * r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0048, code lost:
    
        r1 = r1 / r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0057, code lost:
    
        if (r4 > net.rtccloud.sdk.Call.Parameters.DEFAULT_CAMERA_ZOOM) goto L21;
     */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r10, int r11) {
        /*
            r9 = this;
            super.onMeasure(r10, r11)
            float r10 = r9.d
            r11 = 0
            int r10 = (r10 > r11 ? 1 : (r10 == r11 ? 0 : -1))
            if (r10 > 0) goto Lb
            return
        Lb:
            int r10 = r9.getMeasuredWidth()
            int r0 = r9.getMeasuredHeight()
            float r1 = (float) r10
            float r2 = (float) r0
            float r3 = r1 / r2
            float r4 = r9.d
            float r4 = r4 / r3
            r5 = 1065353216(0x3f800000, float:1.0)
            float r4 = r4 - r5
            float r5 = java.lang.Math.abs(r4)
            r6 = 1008981770(0x3c23d70a, float:0.01)
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            com.google.android.exoplayer2.ui.AspectRatioFrameLayout$AspectRatioUpdateDispatcher r6 = r9.f28360b
            if (r5 > 0) goto L31
            float r9 = r9.d
            r10 = 0
            r6.scheduleUpdate(r9, r3, r10)
            return
        L31:
            int r5 = r9.f28362e
            r7 = 1
            if (r5 == 0) goto L53
            if (r5 == r7) goto L4f
            r8 = 2
            if (r5 == r8) goto L4b
            r8 = 4
            if (r5 == r8) goto L3f
            goto L5a
        L3f:
            int r11 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1))
            float r4 = r9.d
            if (r11 <= 0) goto L48
        L45:
            float r2 = r2 * r4
        L46:
            int r10 = (int) r2
            goto L5a
        L48:
            float r1 = r1 / r4
        L49:
            int r0 = (int) r1
            goto L5a
        L4b:
            float r10 = r9.d
            float r2 = r2 * r10
            goto L46
        L4f:
            float r11 = r9.d
            float r1 = r1 / r11
            goto L49
        L53:
            int r11 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1))
            float r4 = r9.d
            if (r11 <= 0) goto L45
            goto L48
        L5a:
            float r11 = r9.d
            r6.scheduleUpdate(r11, r3, r7)
            r11 = 1073741824(0x40000000, float:2.0)
            int r10 = android.view.View.MeasureSpec.makeMeasureSpec(r10, r11)
            int r11 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r11)
            super.onMeasure(r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.AspectRatioFrameLayout.onMeasure(int, int):void");
    }

    public void setAspectRatio(float f2) {
        if (this.d != f2) {
            this.d = f2;
            requestLayout();
        }
    }

    public void setAspectRatioListener(AspectRatioListener aspectRatioListener) {
        this.f28361c = aspectRatioListener;
    }

    public void setResizeMode(int i2) {
        if (this.f28362e != i2) {
            this.f28362e = i2;
            requestLayout();
        }
    }

    public AspectRatioFrameLayout(Context context) {
        this(context, null);
    }
}
