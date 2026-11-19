package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class ClippableRoundedCornerLayout extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Path f32694b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float[] f32695c;

    public ClippableRoundedCornerLayout(Context context) {
        super(context);
        this.f32695c = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
    }

    public final void a(float f2, float f3, float f4, float f5, float[] fArr) {
        RectF rectF = new RectF(f2, f3, f4, f5);
        if (this.f32694b == null) {
            this.f32694b = new Path();
        }
        this.f32695c = fArr;
        this.f32694b.reset();
        this.f32694b.addRoundRect(rectF, fArr, Path.Direction.CW);
        this.f32694b.close();
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.f32694b == null) {
            super.dispatchDraw(canvas);
            return;
        }
        int iSave = canvas.save();
        canvas.clipPath(this.f32694b);
        super.dispatchDraw(canvas);
        canvas.restoreToCount(iSave);
    }

    public float[] getCornerRadii() {
        return this.f32695c;
    }

    public ClippableRoundedCornerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f32695c = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
    }

    public ClippableRoundedCornerLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f32695c = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
    }
}
