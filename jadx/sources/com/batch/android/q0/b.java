package com.batch.android.q0;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.widget.ImageView;
import defpackage.a61;
import defpackage.md;
import defpackage.pq0;
import defpackage.tr;
import java.util.HashSet;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class b extends Drawable {
    private static final String u = "RoundedDrawable";
    public static final int v = -16777216;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RectF f23957a = new RectF();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RectF f23958b = new RectF();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RectF f23959c;
    private final Bitmap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Paint f23960e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f23961f;
    private final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final RectF f23962h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Paint f23963i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Matrix f23964j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final RectF f23965k;
    private Shader.TileMode l;
    private Shader.TileMode m;
    private boolean n;
    private float o;
    private final boolean[] p;
    private boolean q;
    private float r;
    private ColorStateList s;
    private ImageView.ScaleType t;

    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f23966a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f23966a = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23966a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23966a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f23966a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f23966a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f23966a[ImageView.ScaleType.FIT_START.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f23966a[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public b(Bitmap bitmap) {
        RectF rectF = new RectF();
        this.f23959c = rectF;
        this.f23962h = new RectF();
        this.f23964j = new Matrix();
        this.f23965k = new RectF();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.l = tileMode;
        this.m = tileMode;
        this.n = true;
        this.o = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.p = new boolean[]{true, true, true, true};
        this.q = false;
        this.r = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.s = ColorStateList.valueOf(v);
        this.t = ImageView.ScaleType.FIT_CENTER;
        this.d = bitmap;
        int width = bitmap.getWidth();
        this.f23961f = width;
        int height = bitmap.getHeight();
        this.g = height;
        rectF.set(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, width, height);
        Paint paint = new Paint();
        this.f23960e = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f23963i = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        paint2.setColor(this.s.getColorForState(getState(), v));
        paint2.setStrokeWidth(this.r);
    }

    private void b(Canvas canvas) {
        float f2;
        float f3;
        if (a(this.p) || this.o == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        RectF rectF = this.f23958b;
        float f4 = rectF.left;
        float f5 = rectF.top;
        float fWidth = rectF.width() + f4;
        float fHeight = this.f23958b.height() + f5;
        float f6 = this.o;
        float f7 = this.r / 2.0f;
        if (this.p[0]) {
            f2 = f5;
        } else {
            f2 = f5;
            canvas.drawLine(f4 - f7, f5, f4 + f6, f2, this.f23963i);
            canvas.drawLine(f4, f2 - f7, f4, f2 + f6, this.f23963i);
        }
        if (!this.p[1]) {
            float f8 = f2;
            canvas.drawLine((fWidth - f6) - f7, f8, fWidth, f2, this.f23963i);
            canvas.drawLine(fWidth, f8 - f7, fWidth, f8 + f6, this.f23963i);
            fWidth = fWidth;
        }
        if (this.p[2]) {
            f3 = fHeight;
        } else {
            canvas.drawLine((fWidth - f6) - f7, fHeight, fWidth + f7, fHeight, this.f23963i);
            float f9 = fWidth;
            canvas.drawLine(f9, fHeight - f6, fWidth, fHeight, this.f23963i);
            f3 = fHeight;
        }
        if (this.p[3]) {
            return;
        }
        canvas.drawLine(f4 - f7, f3, f4 + f6, f3, this.f23963i);
        canvas.drawLine(f4, f3 - f6, f4, f3, this.f23963i);
    }

    private void k() {
        float fWidth;
        float fA;
        int i2 = a.f23966a[this.t.ordinal()];
        if (i2 == 1) {
            this.f23962h.set(this.f23957a);
            RectF rectF = this.f23962h;
            float f2 = this.r / 2.0f;
            rectF.inset(f2, f2);
            this.f23964j.reset();
            this.f23964j.setTranslate((int) tr.a(this.f23962h.width(), this.f23961f, 0.5f, 0.5f), (int) tr.a(this.f23962h.height(), this.g, 0.5f, 0.5f));
        } else if (i2 == 2) {
            this.f23962h.set(this.f23957a);
            RectF rectF2 = this.f23962h;
            float f3 = this.r / 2.0f;
            rectF2.inset(f3, f3);
            this.f23964j.reset();
            float fHeight = this.f23962h.height() * this.f23961f;
            float fWidth2 = this.f23962h.width() * this.g;
            RectF rectF3 = this.f23962h;
            float fA2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            if (fHeight > fWidth2) {
                fWidth = rectF3.height() / this.g;
                fA = pq0.a(this.f23961f, fWidth, this.f23962h.width(), 0.5f);
            } else {
                fWidth = rectF3.width() / this.f23961f;
                fA2 = pq0.a(this.g, fWidth, this.f23962h.height(), 0.5f);
                fA = 0.0f;
            }
            this.f23964j.setScale(fWidth, fWidth);
            Matrix matrix = this.f23964j;
            float f4 = this.r / 2.0f;
            matrix.postTranslate(((int) (fA + 0.5f)) + f4, ((int) (fA2 + 0.5f)) + f4);
        } else if (i2 == 3) {
            this.f23964j.reset();
            float fMin = (((float) this.f23961f) > this.f23957a.width() || ((float) this.g) > this.f23957a.height()) ? Math.min(this.f23957a.width() / this.f23961f, this.f23957a.height() / this.g) : 1.0f;
            float fWidth3 = (int) (((this.f23957a.width() - (this.f23961f * fMin)) * 0.5f) + 0.5f);
            float fHeight2 = (int) (((this.f23957a.height() - (this.g * fMin)) * 0.5f) + 0.5f);
            this.f23964j.setScale(fMin, fMin);
            this.f23964j.postTranslate(fWidth3, fHeight2);
            this.f23962h.set(this.f23959c);
            this.f23964j.mapRect(this.f23962h);
            RectF rectF4 = this.f23962h;
            float f5 = this.r / 2.0f;
            rectF4.inset(f5, f5);
            this.f23964j.setRectToRect(this.f23959c, this.f23962h, Matrix.ScaleToFit.FILL);
        } else if (i2 == 5) {
            this.f23962h.set(this.f23959c);
            this.f23964j.setRectToRect(this.f23959c, this.f23957a, Matrix.ScaleToFit.END);
            this.f23964j.mapRect(this.f23962h);
            RectF rectF5 = this.f23962h;
            float f6 = this.r / 2.0f;
            rectF5.inset(f6, f6);
            this.f23964j.setRectToRect(this.f23959c, this.f23962h, Matrix.ScaleToFit.FILL);
        } else if (i2 != 6) {
            RectF rectF6 = this.f23962h;
            if (i2 != 7) {
                rectF6.set(this.f23959c);
                this.f23964j.setRectToRect(this.f23959c, this.f23957a, Matrix.ScaleToFit.CENTER);
                this.f23964j.mapRect(this.f23962h);
                RectF rectF7 = this.f23962h;
                float f7 = this.r / 2.0f;
                rectF7.inset(f7, f7);
                this.f23964j.setRectToRect(this.f23959c, this.f23962h, Matrix.ScaleToFit.FILL);
            } else {
                rectF6.set(this.f23957a);
                RectF rectF8 = this.f23962h;
                float f8 = this.r / 2.0f;
                rectF8.inset(f8, f8);
                this.f23964j.reset();
                this.f23964j.setRectToRect(this.f23959c, this.f23962h, Matrix.ScaleToFit.FILL);
            }
        } else {
            this.f23962h.set(this.f23959c);
            this.f23964j.setRectToRect(this.f23959c, this.f23957a, Matrix.ScaleToFit.START);
            this.f23964j.mapRect(this.f23962h);
            RectF rectF9 = this.f23962h;
            float f9 = this.r / 2.0f;
            rectF9.inset(f9, f9);
            this.f23964j.setRectToRect(this.f23959c, this.f23962h, Matrix.ScaleToFit.FILL);
        }
        this.f23958b.set(this.f23962h);
    }

    public b a(float f2, float f3, float f4, float f5) {
        HashSet hashSet = new HashSet(4);
        hashSet.add(Float.valueOf(f2));
        hashSet.add(Float.valueOf(f3));
        hashSet.add(Float.valueOf(f4));
        hashSet.add(Float.valueOf(f5));
        hashSet.remove(Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM));
        if (hashSet.size() > 1) {
            md.n("Multiple nonzero corner radii not yet supported.");
            return null;
        }
        if (hashSet.isEmpty()) {
            this.o = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        } else {
            float fFloatValue = ((Float) hashSet.iterator().next()).floatValue();
            if (Float.isInfinite(fFloatValue) || Float.isNaN(fFloatValue) || fFloatValue < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                a61.p("Invalid radius value: ", fFloatValue);
                return null;
            }
            this.o = fFloatValue;
        }
        boolean[] zArr = this.p;
        zArr[0] = f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM;
        zArr[1] = f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM;
        zArr[2] = f4 > Call.Parameters.DEFAULT_CAMERA_ZOOM;
        zArr[3] = f5 > Call.Parameters.DEFAULT_CAMERA_ZOOM;
        return this;
    }

    public float c() {
        return this.r;
    }

    public float d() {
        return this.o;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.n) {
            BitmapShader bitmapShader = new BitmapShader(this.d, this.l, this.m);
            Shader.TileMode tileMode = this.l;
            Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
            if (tileMode == tileMode2 && this.m == tileMode2) {
                bitmapShader.setLocalMatrix(this.f23964j);
            }
            this.f23960e.setShader(bitmapShader);
            this.n = false;
        }
        if (this.q) {
            float f2 = this.r;
            RectF rectF = this.f23958b;
            if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                canvas.drawOval(rectF, this.f23960e);
                return;
            } else {
                canvas.drawOval(rectF, this.f23960e);
                canvas.drawOval(this.f23962h, this.f23963i);
                return;
            }
        }
        if (!b(this.p)) {
            canvas.drawRect(this.f23958b, this.f23960e);
            if (this.r > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                canvas.drawRect(this.f23962h, this.f23963i);
                return;
            }
            return;
        }
        float f3 = this.o;
        float f4 = this.r;
        RectF rectF2 = this.f23958b;
        if (f4 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            canvas.drawRoundRect(rectF2, f3, f3, this.f23960e);
            a(canvas);
        } else {
            canvas.drawRoundRect(rectF2, f3, f3, this.f23960e);
            canvas.drawRoundRect(this.f23962h, f3, f3, this.f23963i);
            a(canvas);
            b(canvas);
        }
    }

    public ImageView.ScaleType e() {
        return this.t;
    }

    public Bitmap f() {
        return this.d;
    }

    public Shader.TileMode g() {
        return this.l;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f23960e.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f23960e.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.g;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f23961f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public Shader.TileMode h() {
        return this.m;
    }

    public boolean i() {
        return this.q;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.s.isStateful();
    }

    public Bitmap j() {
        return a(this);
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f23957a.set(rect);
        k();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        int colorForState = this.s.getColorForState(iArr, 0);
        if (this.f23963i.getColor() == colorForState) {
            return super.onStateChange(iArr);
        }
        this.f23963i.setColor(colorForState);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f23960e.setAlpha(i2);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f23960e.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f23960e.setDither(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f23960e.setFilterBitmap(z);
        invalidateSelf();
    }

    public static Bitmap a(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(Math.max(drawable.getIntrinsicWidth(), 2), Math.max(drawable.getIntrinsicHeight(), 2), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private void a(Canvas canvas) {
        if (a(this.p) || this.o == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        RectF rectF = this.f23958b;
        float f2 = rectF.left;
        float f3 = rectF.top;
        float fWidth = rectF.width() + f2;
        float fHeight = this.f23958b.height() + f3;
        float f4 = this.o;
        if (!this.p[0]) {
            this.f23965k.set(f2, f3, f2 + f4, f3 + f4);
            canvas.drawRect(this.f23965k, this.f23960e);
        }
        if (!this.p[1]) {
            this.f23965k.set(fWidth - f4, f3, fWidth, f4);
            canvas.drawRect(this.f23965k, this.f23960e);
        }
        if (!this.p[2]) {
            this.f23965k.set(fWidth - f4, fHeight - f4, fWidth, fHeight);
            canvas.drawRect(this.f23965k, this.f23960e);
        }
        if (this.p[3]) {
            return;
        }
        this.f23965k.set(f2, fHeight - f4, f4 + f2, fHeight);
        canvas.drawRect(this.f23965k, this.f23960e);
    }

    public float a(int i2) {
        return this.p[i2] ? this.o : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public b a(int i2, float f2) {
        if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            float f3 = this.o;
            if (f3 != Call.Parameters.DEFAULT_CAMERA_ZOOM && f3 != f2) {
                md.n("Multiple nonzero corner radii not yet supported.");
                return null;
            }
        }
        if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            if (a(i2, this.p)) {
                this.o = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            this.p[i2] = false;
            return this;
        }
        if (this.o == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            this.o = f2;
        }
        this.p[i2] = true;
        return this;
    }

    public static b a(Bitmap bitmap) {
        if (bitmap != null) {
            return new b(bitmap);
        }
        return null;
    }

    public static Drawable b(Drawable drawable) {
        if (drawable == null || (drawable instanceof Animatable) || (drawable instanceof b)) {
            return drawable;
        }
        if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                layerDrawable.setDrawableByLayerId(layerDrawable.getId(i2), b(layerDrawable.getDrawable(i2)));
            }
            return layerDrawable;
        }
        Bitmap bitmapA = a(drawable);
        return bitmapA != null ? new b(bitmapA) : drawable;
    }

    public b a(float f2) {
        this.r = f2;
        this.f23963i.setStrokeWidth(f2);
        return this;
    }

    public int a() {
        return this.s.getDefaultColor();
    }

    public b a(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.s = colorStateList;
        this.f23963i.setColor(colorStateList.getColorForState(getState(), v));
        return this;
    }

    public b a(boolean z) {
        this.q = z;
        return this;
    }

    public b a(ImageView.ScaleType scaleType) {
        if (scaleType == null) {
            scaleType = ImageView.ScaleType.FIT_CENTER;
        }
        if (this.t != scaleType) {
            this.t = scaleType;
            k();
        }
        return this;
    }

    public b b(float f2) {
        a(f2, f2, f2, f2);
        return this;
    }

    public b a(Shader.TileMode tileMode) {
        if (this.l != tileMode) {
            this.l = tileMode;
            this.n = true;
            invalidateSelf();
        }
        return this;
    }

    public b b(int i2) {
        return a(ColorStateList.valueOf(i2));
    }

    public ColorStateList b() {
        return this.s;
    }

    public b b(Shader.TileMode tileMode) {
        if (this.m != tileMode) {
            this.m = tileMode;
            this.n = true;
            invalidateSelf();
        }
        return this;
    }

    private static boolean a(int i2, boolean[] zArr) {
        int length = zArr.length;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                return true;
            }
            if (zArr[i3] != (i3 == i2)) {
                return false;
            }
            i3++;
        }
    }

    private static boolean a(boolean[] zArr) {
        for (boolean z : zArr) {
            if (z) {
                return false;
            }
        }
        return true;
    }

    private static boolean b(boolean[] zArr) {
        for (boolean z : zArr) {
            if (z) {
                return true;
            }
        }
        return false;
    }
}
