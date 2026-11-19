package com.google.android.exoplayer2.ui;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.text.StaticLayout;
import android.text.TextPaint;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
final class SubtitlePainter {
    public int A;
    public StaticLayout B;
    public StaticLayout C;
    public int D;
    public int E;
    public int F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f28411a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f28412b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f28413c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f28414e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextPaint f28415f;
    public final Paint g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CharSequence f28416h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f28417i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f28418j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f28419k;
    public float l;
    public int m;
    public float n;
    public float o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public float u;
    public float v;
    public float w;
    public int x;
    public int y;
    public int z;

    public SubtitlePainter(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{R.attr.lineSpacingExtra, R.attr.lineSpacingMultiplier}, 0, 0);
        this.f28414e = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.d = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        float fRound = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.f28411a = fRound;
        this.f28412b = fRound;
        this.f28413c = fRound;
        TextPaint textPaint = new TextPaint();
        this.f28415f = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.g = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
    }

    public final void a(Canvas canvas, boolean z) {
        Canvas canvas2;
        if (!z) {
            throw null;
        }
        StaticLayout staticLayout = this.B;
        StaticLayout staticLayout2 = this.C;
        if (staticLayout == null || staticLayout2 == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(this.D, this.E);
        if (Color.alpha(this.r) > 0) {
            int i2 = this.r;
            Paint paint = this.g;
            paint.setColor(i2);
            canvas2 = canvas;
            canvas2.drawRect(-this.F, Call.Parameters.DEFAULT_CAMERA_ZOOM, staticLayout.getWidth() + this.F, staticLayout.getHeight(), paint);
        } else {
            canvas2 = canvas;
        }
        int i3 = this.t;
        TextPaint textPaint = this.f28415f;
        if (i3 == 1) {
            textPaint.setStrokeJoin(Paint.Join.ROUND);
            textPaint.setStrokeWidth(this.f28411a);
            textPaint.setColor(this.s);
            textPaint.setStyle(Paint.Style.FILL_AND_STROKE);
            staticLayout2.draw(canvas2);
        } else {
            float f2 = this.f28412b;
            if (i3 == 2) {
                float f3 = this.f28413c;
                textPaint.setShadowLayer(f2, f3, f3, this.s);
            } else if (i3 == 3 || i3 == 4) {
                boolean z2 = i3 == 3;
                int i4 = z2 ? -1 : this.s;
                int i5 = z2 ? this.s : -1;
                float f4 = f2 / 2.0f;
                textPaint.setColor(this.p);
                textPaint.setStyle(Paint.Style.FILL);
                float f5 = -f4;
                textPaint.setShadowLayer(f2, f5, f5, i4);
                staticLayout2.draw(canvas2);
                textPaint.setShadowLayer(f2, f4, f4, i5);
            }
        }
        textPaint.setColor(this.p);
        textPaint.setStyle(Paint.Style.FILL);
        staticLayout.draw(canvas2);
        textPaint.setShadowLayer(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0);
        canvas2.restoreToCount(iSave);
    }
}
