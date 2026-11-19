package com.batch.android.q0;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import defpackage.a61;
import java.util.Map;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class c extends ImageView implements com.batch.android.s0.c {
    static final /* synthetic */ boolean A = true;
    private static final int r = -2;
    private static final int s = 0;
    private static final int t = 1;
    private static final int u = 2;
    private static final String v = "RoundedImageView";
    public static final float w = 0.0f;
    public static final float x = 0.0f;
    public static final Shader.TileMode y = Shader.TileMode.CLAMP;
    private static final ImageView.ScaleType[] z = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f23967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Drawable f23968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ColorStateList f23969c;
    private float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ColorFilter f23970e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f23971f;
    private Drawable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f23972h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f23973i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f23974j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f23975k;
    private int l;
    private ImageView.ScaleType m;
    private Shader.TileMode n;
    private Shader.TileMode o;
    private float p;
    private final boolean[] q;

    public c(Context context) {
        super(context);
        this.f23967a = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        this.f23969c = ColorStateList.valueOf(b.v);
        this.d = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f23970e = null;
        this.f23971f = false;
        this.f23972h = false;
        this.f23973i = false;
        this.f23974j = false;
        this.m = ImageView.ScaleType.FIT_CENTER;
        Shader.TileMode tileMode = y;
        this.n = tileMode;
        this.o = tileMode;
        this.p = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.q = new boolean[]{true, true, true, true};
    }

    private void b(boolean z2) {
        if (this.f23974j) {
            if (z2) {
                this.f23968b = b.b(this.f23968b);
            }
            a(this.f23968b, ImageView.ScaleType.FIT_XY);
        }
    }

    private Drawable d() {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i2 = this.l;
        if (i2 != 0) {
            try {
                drawable = resources.getDrawable(i2);
            } catch (Exception unused) {
                this.l = 0;
            }
        }
        return b.b(drawable);
    }

    private Drawable e() {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i2 = this.f23975k;
        if (i2 != 0) {
            try {
                drawable = resources.getDrawable(i2);
            } catch (Exception unused) {
                this.f23975k = 0;
            }
        }
        return b.b(drawable);
    }

    private void f() {
        a(this.g, this.m);
    }

    @Override // com.batch.android.s0.c
    public void a(Map<String, String> map) {
        Float fValueOf = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        if (map == null) {
            return;
        }
        Float[] fArr = {fValueOf, fValueOf, fValueOf, fValueOf};
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if ("border-radius".equalsIgnoreCase(entry.getKey())) {
                Float fA = com.batch.android.o0.b.a(entry.getValue());
                setCornerRadius(fA != null ? com.batch.android.o0.b.a(getResources(), fA) : 0.0f);
            } else if ("opacity".equalsIgnoreCase(entry.getKey())) {
                Float fA2 = com.batch.android.o0.b.a(entry.getValue());
                if (fA2 != null) {
                    setAlpha(fA2.floatValue());
                }
            } else if ("elevation".equalsIgnoreCase(entry.getKey())) {
                Float fA3 = com.batch.android.o0.b.a(entry.getValue());
                if (fA3 != null) {
                    setElevation(fA3.floatValue());
                }
            } else if ("scale".equalsIgnoreCase(entry.getKey())) {
                String value = entry.getValue();
                if ("fill".equalsIgnoreCase(value)) {
                    setScaleType(ImageView.ScaleType.CENTER_CROP);
                } else if ("fit".equalsIgnoreCase(value)) {
                    setScaleType(ImageView.ScaleType.FIT_CENTER);
                }
            } else if ("z-index".equalsIgnoreCase(entry.getKey())) {
                Float fA4 = com.batch.android.o0.b.a(entry.getValue());
                if (fA4 != null) {
                    setZ(com.batch.android.o0.b.a(getResources(), fA4));
                }
            } else if ("rounded-corners".equalsIgnoreCase(entry.getKey())) {
                String value2 = entry.getValue();
                if ("all".equalsIgnoreCase(value2)) {
                    boolean[] zArr = this.q;
                    zArr[0] = true;
                    zArr[1] = true;
                    zArr[3] = true;
                    zArr[2] = true;
                } else if ("left".equalsIgnoreCase(value2)) {
                    boolean[] zArr2 = this.q;
                    zArr2[0] = true;
                    zArr2[1] = false;
                    zArr2[3] = true;
                    zArr2[2] = false;
                } else if ("right".equalsIgnoreCase(value2)) {
                    boolean[] zArr3 = this.q;
                    zArr3[0] = false;
                    zArr3[1] = true;
                    zArr3[3] = false;
                    zArr3[2] = true;
                } else if ("top".equalsIgnoreCase(value2)) {
                    boolean[] zArr4 = this.q;
                    zArr4[0] = true;
                    zArr4[1] = true;
                    zArr4[3] = false;
                    zArr4[2] = false;
                } else if ("bottom".equalsIgnoreCase(value2)) {
                    boolean[] zArr5 = this.q;
                    zArr5[0] = false;
                    zArr5[1] = false;
                    zArr5[3] = true;
                    zArr5[2] = true;
                }
                setCornerRadius(this.p);
            } else if ("padding-left".equalsIgnoreCase(entry.getKey())) {
                fArr[0] = com.batch.android.o0.b.a(entry.getValue());
            } else if ("padding-top".equalsIgnoreCase(entry.getKey())) {
                fArr[1] = com.batch.android.o0.b.a(entry.getValue());
            } else if ("padding-right".equalsIgnoreCase(entry.getKey())) {
                fArr[2] = com.batch.android.o0.b.a(entry.getValue());
            } else if ("padding-bottom".equalsIgnoreCase(entry.getKey())) {
                fArr[3] = com.batch.android.o0.b.a(entry.getValue());
            }
        }
        Resources resources = getResources();
        setPadding(com.batch.android.o0.b.a(resources, fArr[0]), com.batch.android.o0.b.a(resources, fArr[1]), com.batch.android.o0.b.a(resources, fArr[2]), com.batch.android.o0.b.a(resources, fArr[3]));
    }

    public boolean c() {
        return this.f23974j;
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    public int getBorderColor() {
        return this.f23969c.getDefaultColor();
    }

    public ColorStateList getBorderColors() {
        return this.f23969c;
    }

    public float getBorderWidth() {
        return this.d;
    }

    public float getCornerRadius() {
        return getMaxCornerRadius();
    }

    public float getMaxCornerRadius() {
        float[] fArr = this.f23967a;
        float fMax = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        for (float f2 : fArr) {
            fMax = Math.max(f2, fMax);
        }
        return fMax;
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.m;
    }

    public Shader.TileMode getTileModeX() {
        return this.n;
    }

    public Shader.TileMode getTileModeY() {
        return this.o;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        ColorDrawable colorDrawable = new ColorDrawable(i2);
        this.f23968b = colorDrawable;
        setBackgroundDrawable(colorDrawable);
    }

    @Override // android.view.View
    @Deprecated
    public void setBackgroundDrawable(Drawable drawable) {
        this.f23968b = drawable;
        b(true);
        super.setBackgroundDrawable(this.f23968b);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        if (this.l != i2) {
            this.l = i2;
            Drawable drawableD = d();
            this.f23968b = drawableD;
            setBackgroundDrawable(drawableD);
        }
    }

    public void setBorderColor(ColorStateList colorStateList) {
        if (this.f23969c.equals(colorStateList)) {
            return;
        }
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(b.v);
        }
        this.f23969c = colorStateList;
        f();
        b(false);
        if (this.d > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            invalidate();
        }
    }

    public void setBorderWidth(float f2) {
        if (this.d == f2) {
            return;
        }
        this.d = f2;
        f();
        b(false);
        invalidate();
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f23970e != colorFilter) {
            this.f23970e = colorFilter;
            this.f23972h = true;
            this.f23971f = true;
            a();
            invalidate();
        }
    }

    public void setCornerRadius(float f2) {
        this.p = f2;
        boolean[] zArr = this.q;
        float f3 = zArr[0] ? f2 : 0.0f;
        float f4 = zArr[1] ? f2 : 0.0f;
        float f5 = zArr[2] ? f2 : 0.0f;
        if (!zArr[3]) {
            f2 = 0.0f;
        }
        a(f3, f4, f5, f2);
    }

    public void setCornerRadiusDimen(int i2) {
        float dimension = getResources().getDimension(i2);
        a(dimension, dimension, dimension, dimension);
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        this.f23975k = 0;
        this.g = b.a(bitmap);
        f();
        super.setImageDrawable(this.g);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        this.f23975k = 0;
        this.g = b.b(drawable);
        f();
        super.setImageDrawable(this.g);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i2) {
        if (this.f23975k != i2) {
            this.f23975k = i2;
            this.g = e();
            f();
            super.setImageDrawable(this.g);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        setImageDrawable(getDrawable());
    }

    public void setOval(boolean z2) {
        this.f23973i = z2;
        f();
        b(false);
        invalidate();
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (!A && scaleType == null) {
            a61.h();
            return;
        }
        if (this.m != scaleType) {
            this.m = scaleType;
            super.setScaleType(scaleType);
            f();
            b(false);
            invalidate();
        }
    }

    public void setTileModeX(Shader.TileMode tileMode) {
        if (this.n == tileMode) {
            return;
        }
        this.n = tileMode;
        f();
        b(false);
        invalidate();
    }

    public void setTileModeY(Shader.TileMode tileMode) {
        if (this.o == tileMode) {
            return;
        }
        this.o = tileMode;
        f();
        b(false);
        invalidate();
    }

    public void setBorderWidth(int i2) {
        setBorderWidth(getResources().getDimension(i2));
    }

    private static Shader.TileMode b(int i2) {
        if (i2 == 0) {
            return Shader.TileMode.CLAMP;
        }
        if (i2 == 1) {
            return Shader.TileMode.REPEAT;
        }
        if (i2 != 2) {
            return null;
        }
        return Shader.TileMode.MIRROR;
    }

    public boolean b() {
        return this.f23973i;
    }

    public void setBorderColor(int i2) {
        setBorderColor(ColorStateList.valueOf(i2));
    }

    public c(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public c(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f23967a = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        this.f23969c = ColorStateList.valueOf(b.v);
        this.d = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f23970e = null;
        this.f23971f = false;
        this.f23972h = false;
        this.f23973i = false;
        this.f23974j = false;
        this.m = ImageView.ScaleType.FIT_CENTER;
        Shader.TileMode tileMode = y;
        this.n = tileMode;
        this.o = tileMode;
        this.p = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.q = new boolean[]{true, true, true, true};
    }

    private void a(Drawable drawable, ImageView.ScaleType scaleType) {
        if (drawable == null) {
            return;
        }
        if (drawable instanceof b) {
            b bVar = (b) drawable;
            bVar.a(scaleType).a(this.d).a(this.f23969c).a(this.f23973i).a(this.n).b(this.o);
            float[] fArr = this.f23967a;
            if (fArr != null) {
                bVar.a(fArr[0], fArr[1], fArr[2], fArr[3]);
            }
            a();
            return;
        }
        if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                a(layerDrawable.getDrawable(i2), scaleType);
            }
        }
    }

    public float a(int i2) {
        return this.f23967a[i2];
    }

    public void a(int i2, int i3) {
        a(i2, getResources().getDimensionPixelSize(i3));
    }

    public void a(int i2, float f2) {
        float[] fArr = this.f23967a;
        if (fArr[i2] == f2) {
            return;
        }
        fArr[i2] = f2;
        f();
        b(false);
        invalidate();
    }

    public void a(float f2, float f3, float f4, float f5) {
        float[] fArr = this.f23967a;
        if (fArr[0] == f2 && fArr[1] == f3 && fArr[2] == f5 && fArr[3] == f4) {
            return;
        }
        fArr[0] = f2;
        fArr[1] = f3;
        fArr[3] = f4;
        fArr[2] = f5;
        f();
        b(false);
        invalidate();
    }

    public void a(boolean z2) {
        if (this.f23974j == z2) {
            return;
        }
        this.f23974j = z2;
        b(true);
        invalidate();
    }

    private void a() {
        Drawable drawable = this.g;
        if (drawable == null || !this.f23971f) {
            return;
        }
        Drawable drawableMutate = drawable.mutate();
        this.g = drawableMutate;
        if (this.f23972h) {
            drawableMutate.setColorFilter(this.f23970e);
        }
    }
}
