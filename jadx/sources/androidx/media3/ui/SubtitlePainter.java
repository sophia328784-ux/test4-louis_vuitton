package androidx.media3.ui;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
final class SubtitlePainter {
    public int A;
    public int B;
    public int C;
    public int D;
    public StaticLayout E;
    public StaticLayout F;
    public int G;
    public int H;
    public int I;
    public Rect J;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f18053a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f18054b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f18055c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f18056e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextPaint f18057f;
    public final Paint g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f18058h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CharSequence f18059i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Layout.Alignment f18060j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Bitmap f18061k;
    public float l;
    public int m;
    public int n;
    public float o;
    public int p;
    public float q;
    public float r;
    public int s;
    public int t;
    public int u;
    public int v;
    public int w;
    public float x;
    public float y;
    public float z;

    public SubtitlePainter(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{R.attr.lineSpacingExtra, R.attr.lineSpacingMultiplier}, 0, 0);
        this.f18056e = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.d = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        float fRound = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.f18053a = fRound;
        this.f18054b = fRound;
        this.f18055c = fRound;
        TextPaint textPaint = new TextPaint();
        this.f18057f = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.g = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f18058h = paint2;
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
    }

    public final void a(Canvas canvas, boolean z) {
        Canvas canvas2;
        if (!z) {
            this.J.getClass();
            this.f18061k.getClass();
            canvas.drawBitmap(this.f18061k, (Rect) null, this.J, this.f18058h);
            return;
        }
        StaticLayout staticLayout = this.E;
        StaticLayout staticLayout2 = this.F;
        if (staticLayout == null || staticLayout2 == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(this.G, this.H);
        if (Color.alpha(this.u) > 0) {
            int i2 = this.u;
            Paint paint = this.g;
            paint.setColor(i2);
            canvas2 = canvas;
            canvas2.drawRect(-this.I, Call.Parameters.DEFAULT_CAMERA_ZOOM, staticLayout.getWidth() + this.I, staticLayout.getHeight(), paint);
        } else {
            canvas2 = canvas;
        }
        int i3 = this.w;
        TextPaint textPaint = this.f18057f;
        if (i3 == 1) {
            textPaint.setStrokeJoin(Paint.Join.ROUND);
            textPaint.setStrokeWidth(this.f18053a);
            textPaint.setColor(this.v);
            textPaint.setStyle(Paint.Style.FILL_AND_STROKE);
            staticLayout2.draw(canvas2);
        } else {
            float f2 = this.f18054b;
            if (i3 == 2) {
                float f3 = this.f18055c;
                textPaint.setShadowLayer(f2, f3, f3, this.v);
            } else if (i3 == 3 || i3 == 4) {
                boolean z2 = i3 == 3;
                int i4 = z2 ? -1 : this.v;
                int i5 = z2 ? this.v : -1;
                float f4 = f2 / 2.0f;
                textPaint.setColor(this.s);
                textPaint.setStyle(Paint.Style.FILL);
                float f5 = -f4;
                textPaint.setShadowLayer(f2, f5, f5, i4);
                staticLayout2.draw(canvas2);
                textPaint.setShadowLayer(f2, f4, f4, i5);
            }
        }
        textPaint.setColor(this.s);
        textPaint.setStyle(Paint.Style.FILL);
        staticLayout.draw(canvas2);
        textPaint.setShadowLayer(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0);
        canvas2.restoreToCount(iSave);
    }
}
