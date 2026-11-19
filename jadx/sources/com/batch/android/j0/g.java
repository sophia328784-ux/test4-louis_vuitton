package com.batch.android.j0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.graphics.drawable.Drawable;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class g extends Drawable {
    private static final float A = 9.0f;
    public static final int p = 0;
    public static final int q = 1;
    public static final int r = 2;
    public static final int s = 3;
    public static final int t = 0;
    public static final int u = 1;
    public static final int v = 2;
    private static final int w = 0;
    private static final int x = 1;
    private static final int y = 2;
    private static final float z = 3.0f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f23539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f23540b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Rect f23541c;
    private Paint d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ColorFilter f23542e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private PorterDuffColorFilter f23543f;
    private int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Path f23544h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final RectF f23545i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Paint f23546j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f23547k;
    private boolean l;
    private Path m;
    private boolean n;
    private float o;

    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f23548a;

        static {
            int[] iArr = new int[c.values().length];
            f23548a = iArr;
            try {
                iArr[c.TOP_BOTTOM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23548a[c.TR_BL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23548a[c.RIGHT_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f23548a[c.BR_TL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f23548a[c.BOTTOM_TOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f23548a[c.BL_TR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f23548a[c.LEFT_RIGHT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public enum c {
        TOP_BOTTOM,
        TR_BL,
        RIGHT_LEFT,
        BR_TL,
        BOTTOM_TOP,
        BL_TR,
        LEFT_RIGHT,
        TL_BR
    }

    private g(b bVar, Resources resources) {
        this.f23540b = new Paint(1);
        this.g = 255;
        this.f23544h = new Path();
        this.f23545i = new RectF();
        this.n = true;
        this.f23539a = bVar;
        a(resources);
    }

    private Path a(b bVar) {
        Path path = this.m;
        if (path != null && (!bVar.D || !this.n)) {
            return path;
        }
        this.n = false;
        float level = bVar.D ? (getLevel() * 360.0f) / 10000.0f : 360.0f;
        RectF rectF = new RectF(this.f23545i);
        float fWidth = rectF.width() / 2.0f;
        float fHeight = rectF.height() / 2.0f;
        int i2 = bVar.w;
        float fWidth2 = i2 != -1 ? i2 : rectF.width() / bVar.u;
        int i3 = bVar.v;
        float fWidth3 = i3 != -1 ? i3 : rectF.width() / bVar.t;
        RectF rectF2 = new RectF(rectF);
        rectF2.inset(fWidth - fWidth3, fHeight - fWidth3);
        RectF rectF3 = new RectF(rectF2);
        float f2 = -fWidth2;
        rectF3.inset(f2, f2);
        Path path2 = this.m;
        if (path2 == null) {
            this.m = new Path();
        } else {
            path2.reset();
        }
        Path path3 = this.m;
        if (level >= 360.0f || level <= -360.0f) {
            path3.addOval(rectF3, Path.Direction.CW);
            path3.addOval(rectF2, Path.Direction.CCW);
            return path3;
        }
        path3.setFillType(Path.FillType.EVEN_ODD);
        float f3 = fWidth + fWidth3;
        path3.moveTo(f3, fHeight);
        path3.lineTo(f3 + fWidth2, fHeight);
        path3.arcTo(rectF3, Call.Parameters.DEFAULT_CAMERA_ZOOM, level, false);
        path3.arcTo(rectF2, level, -level, false);
        path3.close();
        return path3;
    }

    private void b(int i2, int i3, float f2, float f3) {
        if (this.d == null) {
            Paint paint = new Paint(1);
            this.d = paint;
            paint.setStyle(Paint.Style.STROKE);
        }
        this.d.setStrokeWidth(i2);
        this.d.setColor(i3);
        this.d.setPathEffect(f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM ? new DashPathEffect(new float[]{f2, f3}, Call.Parameters.DEFAULT_CAMERA_ZOOM) : null);
        invalidateSelf();
    }

    /* JADX WARN: Code duplicated, block: B:48:0x010a  */
    /* JADX WARN: Code duplicated, block: B:51:0x0117  */
    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x0057. Please report as an issue. */
    private boolean c() {
        float[] fArr;
        float fMin;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        if (this.f23547k) {
            this.f23547k = false;
            Rect bounds = getBounds();
            Paint paint = this.d;
            float strokeWidth = paint != null ? paint.getStrokeWidth() * 0.5f : 0.0f;
            b bVar = this.f23539a;
            this.f23545i.set(bounds.left + strokeWidth, bounds.top + strokeWidth, bounds.right - strokeWidth, bounds.bottom - strokeWidth);
            int[] iArr = bVar.f23554h;
            if (iArr != null) {
                RectF rectF = this.f23545i;
                int i2 = bVar.f23551c;
                if (i2 == 0) {
                    float level = bVar.C ? getLevel() / 10000.0f : 1.0f;
                    switch (a.f23548a[bVar.f23552e.ordinal()]) {
                        case 1:
                            f2 = rectF.left;
                            f3 = rectF.top;
                            f4 = rectF.bottom;
                            f12 = level * f4;
                            f13 = f2;
                            f14 = f13;
                            f15 = f3;
                            break;
                        case 2:
                            f5 = rectF.right;
                            f6 = rectF.top;
                            f7 = rectF.left * level;
                            f8 = rectF.bottom;
                            f12 = level * f8;
                            f13 = f5;
                            f15 = f6;
                            f14 = f7;
                            break;
                        case 3:
                            f9 = rectF.right;
                            f10 = rectF.top;
                            f11 = rectF.left;
                            f7 = level * f11;
                            f13 = f9;
                            f12 = f10;
                            f15 = f12;
                            f14 = f7;
                            break;
                        case 4:
                            f5 = rectF.right;
                            f6 = rectF.bottom;
                            f7 = rectF.left * level;
                            f8 = rectF.top;
                            f12 = level * f8;
                            f13 = f5;
                            f15 = f6;
                            f14 = f7;
                            break;
                        case 5:
                            f2 = rectF.left;
                            f3 = rectF.bottom;
                            f4 = rectF.top;
                            f12 = level * f4;
                            f13 = f2;
                            f14 = f13;
                            f15 = f3;
                            break;
                        case 6:
                            f5 = rectF.left;
                            f6 = rectF.bottom;
                            f7 = rectF.right * level;
                            f8 = rectF.top;
                            f12 = level * f8;
                            f13 = f5;
                            f15 = f6;
                            f14 = f7;
                            break;
                        case 7:
                            f9 = rectF.left;
                            f10 = rectF.top;
                            f11 = rectF.right;
                            f7 = level * f11;
                            f13 = f9;
                            f12 = f10;
                            f15 = f12;
                            f14 = f7;
                            break;
                        default:
                            f5 = rectF.left;
                            f6 = rectF.top;
                            f7 = rectF.right * level;
                            f8 = rectF.bottom;
                            f12 = level * f8;
                            f13 = f5;
                            f15 = f6;
                            f14 = f7;
                            break;
                    }
                    this.f23540b.setShader(new LinearGradient(f13, f15, f14, f12, iArr, bVar.f23557k, Shader.TileMode.CLAMP));
                } else if (i2 == 1) {
                    float f16 = rectF.left;
                    float f17 = ((rectF.right - f16) * bVar.y) + f16;
                    float f18 = rectF.top;
                    float f19 = ((rectF.bottom - f18) * bVar.z) + f18;
                    float level2 = bVar.A;
                    int i3 = bVar.B;
                    if (i3 == 1) {
                        int i4 = bVar.r;
                        float fWidth = i4 >= 0 ? i4 : rectF.width();
                        int i5 = bVar.s;
                        fMin = Math.min(fWidth, i5 >= 0 ? i5 : rectF.height());
                    } else {
                        if (i3 == 2) {
                            fMin = Math.min(rectF.width(), rectF.height());
                        }
                        if (bVar.C) {
                            level2 *= getLevel() / 10000.0f;
                        }
                        this.o = level2;
                        if (level2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            level2 = 0.001f;
                        }
                        this.f23540b.setShader(new RadialGradient(f17, f19, level2, iArr, (float[]) null, Shader.TileMode.CLAMP));
                    }
                    level2 *= fMin;
                    if (bVar.C) {
                        level2 *= getLevel() / 10000.0f;
                    }
                    this.o = level2;
                    if (level2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        level2 = 0.001f;
                    }
                    this.f23540b.setShader(new RadialGradient(f17, f19, level2, iArr, (float[]) null, Shader.TileMode.CLAMP));
                } else if (i2 == 2) {
                    float f20 = rectF.left;
                    float f21 = ((rectF.right - f20) * bVar.y) + f20;
                    float f22 = rectF.top;
                    float f23 = ((rectF.bottom - f22) * bVar.z) + f22;
                    if (bVar.C) {
                        int[] iArr2 = bVar.f23555i;
                        int length = iArr.length;
                        if (iArr2 == null || iArr2.length != length + 1) {
                            iArr2 = new int[length + 1];
                            bVar.f23555i = iArr2;
                        }
                        System.arraycopy(iArr, 0, iArr2, 0, length);
                        int i6 = length - 1;
                        iArr2[length] = iArr[i6];
                        fArr = bVar.f23556j;
                        float f24 = 1.0f / i6;
                        if (fArr == null || fArr.length != length + 1) {
                            fArr = new float[length + 1];
                            bVar.f23556j = fArr;
                        }
                        float level3 = getLevel() / 10000.0f;
                        for (int i7 = 0; i7 < length; i7++) {
                            fArr[i7] = i7 * f24 * level3;
                        }
                        fArr[length] = 1.0f;
                        iArr = iArr2;
                    } else {
                        fArr = null;
                    }
                    this.f23540b.setShader(new SweepGradient(f21, f23, iArr, fArr));
                }
                if (bVar.f23553f == null) {
                    this.f23540b.setColor(com.batch.android.q0.b.v);
                }
            }
        }
        return !this.f23545i.isEmpty();
    }

    private boolean f() {
        Paint paint;
        return (this.f23539a.l < 0 || (paint = this.d) == null || a(paint.getColor())) && a(this.f23540b.getColor());
    }

    public float d() {
        if (this.f23539a.f23551c != 1) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        c();
        return this.o;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Canvas canvas2;
        Canvas canvas3;
        Paint paint;
        if (c()) {
            int alpha = this.f23540b.getAlpha();
            Paint paint2 = this.d;
            int alpha2 = paint2 != null ? paint2.getAlpha() : 0;
            int iB = b(alpha);
            int iB2 = b(alpha2);
            boolean z2 = iB2 > 0 && (paint = this.d) != null && paint.getStrokeWidth() > Call.Parameters.DEFAULT_CAMERA_ZOOM;
            boolean z3 = iB > 0;
            b bVar = this.f23539a;
            ColorFilter colorFilter = this.f23542e;
            if (colorFilter == null) {
                colorFilter = this.f23543f;
            }
            ColorFilter colorFilter2 = colorFilter;
            boolean z4 = z2 && z3 && bVar.f23550b != 2 && iB2 < 255 && (this.g < 255 || colorFilter2 != null);
            if (z4) {
                if (this.f23546j == null) {
                    this.f23546j = new Paint();
                }
                this.f23546j.setDither(bVar.x);
                this.f23546j.setAlpha(this.g);
                this.f23546j.setColorFilter(colorFilter2);
                float strokeWidth = this.d.getStrokeWidth();
                RectF rectF = this.f23545i;
                canvas.saveLayer(rectF.left - strokeWidth, rectF.top - strokeWidth, rectF.right + strokeWidth, rectF.bottom + strokeWidth, this.f23546j);
                canvas2 = canvas;
                this.f23540b.setColorFilter(null);
                this.d.setColorFilter(null);
            } else {
                canvas2 = canvas;
                this.f23540b.setAlpha(iB);
                this.f23540b.setDither(bVar.x);
                this.f23540b.setColorFilter(colorFilter2);
                if (colorFilter2 != null && bVar.f23553f == null) {
                    this.f23540b.setColor(this.g << 24);
                }
                if (z2) {
                    this.d.setAlpha(iB2);
                    this.d.setDither(bVar.x);
                    this.d.setColorFilter(colorFilter2);
                }
            }
            int i2 = bVar.f23550b;
            if (i2 == 0) {
                canvas3 = canvas2;
                if (bVar.p != null) {
                    a();
                    canvas3.drawPath(this.f23544h, this.f23540b);
                    if (z2) {
                        canvas3.drawPath(this.f23544h, this.d);
                    }
                } else {
                    float f2 = bVar.o;
                    if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        float fMin = Math.min(f2, Math.min(this.f23545i.width(), this.f23545i.height()) * 0.5f);
                        canvas3.drawRoundRect(this.f23545i, fMin, fMin, this.f23540b);
                        if (z2) {
                            canvas3.drawRoundRect(this.f23545i, fMin, fMin, this.d);
                        }
                    } else {
                        if (this.f23540b.getColor() != 0 || colorFilter2 != null || this.f23540b.getShader() != null) {
                            canvas3.drawRect(this.f23545i, this.f23540b);
                        }
                        if (z2) {
                            canvas3.drawRect(this.f23545i, this.d);
                        }
                    }
                }
            } else if (i2 != 1) {
                if (i2 == 2) {
                    RectF rectF2 = this.f23545i;
                    float fCenterY = rectF2.centerY();
                    if (z2) {
                        canvas3 = canvas;
                        canvas3.drawLine(rectF2.left, fCenterY, rectF2.right, fCenterY, this.d);
                    }
                } else if (i2 == 3) {
                    Path pathA = a(bVar);
                    canvas2.drawPath(pathA, this.f23540b);
                    if (z2) {
                        canvas2.drawPath(pathA, this.d);
                    }
                }
                canvas3 = canvas2;
            } else {
                canvas3 = canvas2;
                canvas3.drawOval(this.f23545i, this.f23540b);
                if (z2) {
                    canvas3.drawOval(this.f23545i, this.d);
                }
            }
            if (z4) {
                canvas3.restore();
                return;
            }
            this.f23540b.setAlpha(alpha);
            if (z2) {
                this.d.setAlpha(alpha2);
            }
        }
    }

    public void e(int i2) {
        this.m = null;
        this.n = true;
        this.f23539a.b(i2);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.g;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.f23539a.getChangingConfigurations() | super.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f23542e;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        this.f23539a.f23549a = getChangingConfigurations();
        return this.f23539a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f23539a.s;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f23539a.r;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return (this.g == 255 && this.f23539a.E && f()) ? -1 : -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        b bVar = this.f23539a;
        Rect bounds = getBounds();
        boolean z2 = bVar.F;
        float fMin = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        outline.setAlpha((z2 && f()) ? this.g / 255.0f : 0.0f);
        int i2 = bVar.f23550b;
        if (i2 == 0) {
            if (bVar.p != null) {
                a();
                outline.setConvexPath(this.f23544h);
                return;
            } else {
                float f2 = bVar.o;
                if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    fMin = Math.min(f2, Math.min(bounds.width(), bounds.height()) * 0.5f);
                }
                outline.setRoundRect(bounds, fMin);
                return;
            }
        }
        if (i2 == 1) {
            outline.setOval(bounds);
        } else {
            if (i2 != 2) {
                return;
            }
            Paint paint = this.d;
            float strokeWidth = paint == null ? 1.0E-4f : paint.getStrokeWidth() * 0.5f;
            float fCenterY = bounds.centerY();
            outline.setRect(bounds.left, (int) Math.floor(fCenterY - strokeWidth), bounds.right, (int) Math.ceil(fCenterY + strokeWidth));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        Rect rect2 = this.f23541c;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        b bVar = this.f23539a;
        if (super.isStateful()) {
            return true;
        }
        ColorStateList colorStateList = bVar.f23553f;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        ColorStateList colorStateList2 = bVar.g;
        if (colorStateList2 != null && colorStateList2.isStateful()) {
            return true;
        }
        ColorStateList colorStateList3 = bVar.G;
        return colorStateList3 != null && colorStateList3.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.l && super.mutate() == this) {
            this.f23539a = new b(this.f23539a);
            a((Resources) null);
            this.l = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.m = null;
        this.n = true;
        this.f23547k = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i2) {
        super.onLevelChange(i2);
        this.f23547k = true;
        this.n = true;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean z2;
        ColorStateList colorStateList;
        int colorForState;
        int colorForState2;
        b bVar = this.f23539a;
        ColorStateList colorStateList2 = bVar.f23553f;
        if (colorStateList2 == null || this.f23540b.getColor() == (colorForState2 = colorStateList2.getColorForState(iArr, 0))) {
            z2 = false;
        } else {
            this.f23540b.setColor(colorForState2);
            z2 = true;
        }
        Paint paint = this.d;
        if (paint != null && (colorStateList = bVar.g) != null && paint.getColor() != (colorForState = colorStateList.getColorForState(iArr, 0))) {
            paint.setColor(colorForState);
            z2 = true;
        }
        if (bVar.G != null && bVar.H != null) {
            z2 = true;
        }
        if (!z2) {
            return false;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (i2 != this.g) {
            this.g = i2;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (colorFilter != this.f23542e) {
            this.f23542e = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z2) {
        b bVar = this.f23539a;
        if (z2 != bVar.x) {
            bVar.x = z2;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f23539a.G = colorStateList;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f23539a.H = mode;
        invalidateSelf();
    }

    public static final class b extends Drawable.ConstantState {
        float A;
        int B;
        boolean C;
        boolean D;
        boolean E;
        boolean F;
        ColorStateList G;
        PorterDuff.Mode H;
        int[] I;
        int[] J;
        int[] K;
        int[] L;
        int[] M;
        int[] N;
        int[] O;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f23549a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f23550b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f23551c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public c f23552e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ColorStateList f23553f;
        public ColorStateList g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int[] f23554h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int[] f23555i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float[] f23556j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public float[] f23557k;
        public int l;
        public float m;
        public float n;
        public float o;
        public float[] p;
        public Rect q;
        public int r;
        public int s;
        public float t;
        public float u;
        public int v;
        public int w;
        public boolean x;
        float y;
        float z;

        public b(b bVar) {
            this.f23550b = 0;
            this.f23551c = 0;
            this.d = 0;
            this.l = -1;
            this.m = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.n = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.o = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.p = null;
            this.q = null;
            this.r = -1;
            this.s = -1;
            this.t = 3.0f;
            this.u = g.A;
            this.v = -1;
            this.w = -1;
            this.x = false;
            this.y = 0.5f;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = 0;
            this.C = false;
            this.D = true;
            this.G = null;
            this.H = PorterDuff.Mode.SRC_IN;
            this.f23549a = bVar.f23549a;
            this.f23550b = bVar.f23550b;
            this.f23551c = bVar.f23551c;
            this.d = bVar.d;
            this.f23552e = bVar.f23552e;
            this.f23553f = bVar.f23553f;
            int[] iArr = bVar.f23554h;
            if (iArr != null) {
                this.f23554h = (int[]) iArr.clone();
            }
            float[] fArr = bVar.f23557k;
            if (fArr != null) {
                this.f23557k = (float[]) fArr.clone();
            }
            this.g = bVar.g;
            this.l = bVar.l;
            this.m = bVar.m;
            this.n = bVar.n;
            this.o = bVar.o;
            float[] fArr2 = bVar.p;
            if (fArr2 != null) {
                this.p = (float[]) fArr2.clone();
            }
            if (bVar.q != null) {
                this.q = new Rect(bVar.q);
            }
            this.r = bVar.r;
            this.s = bVar.s;
            this.t = bVar.t;
            this.u = bVar.u;
            this.v = bVar.v;
            this.w = bVar.w;
            this.x = bVar.x;
            this.y = bVar.y;
            this.z = bVar.z;
            this.A = bVar.A;
            this.B = bVar.B;
            this.C = bVar.C;
            this.D = bVar.D;
            this.E = bVar.E;
            this.F = bVar.F;
            this.G = bVar.G;
            this.H = bVar.H;
            this.I = bVar.I;
            this.J = bVar.J;
            this.K = bVar.K;
            this.L = bVar.L;
            this.M = bVar.M;
            this.N = bVar.N;
            this.O = bVar.O;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            boolean z = false;
            this.E = false;
            this.F = false;
            if (this.f23554h != null) {
                int i2 = 0;
                while (true) {
                    int[] iArr = this.f23554h;
                    if (i2 >= iArr.length) {
                        break;
                    } else if (!g.a(iArr[i2])) {
                        return;
                    } else {
                        i2++;
                    }
                }
            }
            if (this.f23554h == null && this.f23553f == null) {
                return;
            }
            this.F = true;
            if (this.f23550b == 0 && this.o <= Call.Parameters.DEFAULT_CAMERA_ZOOM && this.p == null) {
                z = true;
            }
            this.E = z;
        }

        public void b(int i2) {
            this.f23550b = i2;
            a();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return (this.I == null && this.J == null && this.K == null && this.L == null && this.M == null && this.N == null && this.O == null && !super.canApplyTheme()) ? false : true;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            int i2 = this.f23549a;
            ColorStateList colorStateList = this.g;
            int changingConfigurations = i2 | (colorStateList != null ? colorStateList.getChangingConfigurations() : 0);
            ColorStateList colorStateList2 = this.f23553f;
            int changingConfigurations2 = changingConfigurations | (colorStateList2 != null ? colorStateList2.getChangingConfigurations() : 0);
            ColorStateList colorStateList3 = this.G;
            return changingConfigurations2 | (colorStateList3 != null ? colorStateList3.getChangingConfigurations() : 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new g(this, (Resources) null, (a) (0 == true ? 1 : 0));
        }

        public void b(float[] fArr) {
            this.f23557k = fArr;
            a();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new g(this, resources, (a) null);
        }

        public void a(int i2) {
            this.f23551c = i2;
        }

        public void a(float f2, float f3) {
            this.y = f2;
            this.z = f3;
        }

        public void a(int[] iArr) {
            this.f23554h = iArr;
            this.f23553f = null;
            a();
        }

        public void a(ColorStateList colorStateList) {
            this.f23554h = null;
            this.f23553f = colorStateList;
            a();
        }

        public void a(int i2, ColorStateList colorStateList, float f2, float f3) {
            this.l = i2;
            this.g = colorStateList;
            this.m = f2;
            this.n = f3;
            a();
        }

        public void a(float f2) {
            if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                f2 = 0.0f;
            }
            this.o = f2;
            this.p = null;
        }

        public void a(float[] fArr) {
            this.p = fArr;
            if (fArr == null) {
                this.o = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
        }

        public void a(int i2, int i3) {
            this.r = i2;
            this.s = i3;
        }

        public void a(float f2, int i2) {
            this.A = f2;
            this.B = i2;
        }

        public b(c cVar, int[] iArr, float[] fArr) {
            this.f23550b = 0;
            this.f23551c = 0;
            this.d = 0;
            this.l = -1;
            this.m = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.n = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.o = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.p = null;
            this.q = null;
            this.r = -1;
            this.s = -1;
            this.t = 3.0f;
            this.u = g.A;
            this.v = -1;
            this.w = -1;
            this.x = false;
            this.y = 0.5f;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = 0;
            this.C = false;
            this.D = true;
            this.G = null;
            this.H = PorterDuff.Mode.SRC_IN;
            this.f23552e = cVar;
            a(iArr);
            b(fArr);
        }
    }

    public void d(int i2) {
        this.f23539a.a(i2);
        this.f23547k = true;
        invalidateSelf();
    }

    public c e() {
        return this.f23539a.f23552e;
    }

    public g() {
        this(new b(c.TOP_BOTTOM, null, null), null);
    }

    public g(c cVar, int[] iArr, float[] fArr) {
        this(new b(cVar, iArr, fArr), null);
    }

    public /* synthetic */ g(b bVar, Resources resources, a aVar) {
        this(bVar, resources);
    }

    public void b(int i2, int i3) {
        a(i2, i3, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    public void b(float f2) {
        this.f23539a.a(f2, 0);
        this.f23547k = true;
        invalidateSelf();
    }

    private int b(int i2) {
        int i3 = this.g;
        return ((i3 + (i3 >> 7)) * i2) >> 8;
    }

    public void b() {
        this.l = false;
    }

    public void a(float[] fArr) {
        this.f23539a.a(fArr);
        this.n = true;
        invalidateSelf();
    }

    public void a(float f2) {
        this.f23539a.a(f2);
        this.n = true;
        invalidateSelf();
    }

    public void a(int i2, ColorStateList colorStateList) {
        a(i2, colorStateList, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    public void a(int i2, int i3, float f2, float f3) {
        this.f23539a.a(i2, ColorStateList.valueOf(i3), f2, f3);
        b(i2, i3, f2, f3);
    }

    public void a(int i2, ColorStateList colorStateList, float f2, float f3) {
        this.f23539a.a(i2, colorStateList, f2, f3);
        b(i2, colorStateList != null ? colorStateList.getColorForState(getState(), 0) : 0, f2, f3);
    }

    public void a(int i2, int i3) {
        this.f23539a.a(i2, i3);
        this.n = true;
        invalidateSelf();
    }

    public void a(float f2, float f3) {
        this.f23539a.a(f2, f3);
        this.f23547k = true;
        invalidateSelf();
    }

    public void a(boolean z2) {
        this.f23539a.C = z2;
        this.f23547k = true;
        invalidateSelf();
    }

    public void a(c cVar) {
        this.f23539a.f23552e = cVar;
        this.f23547k = true;
        invalidateSelf();
    }

    public void a(int[] iArr, float[] fArr) {
        this.f23539a.a(iArr);
        if (fArr != null) {
            this.f23539a.b(fArr);
        }
        this.f23547k = true;
        invalidateSelf();
    }

    private void a() {
        b bVar = this.f23539a;
        if (this.n) {
            c();
            this.f23544h.reset();
            this.f23544h.addRoundRect(this.f23545i, bVar.p, Path.Direction.CW);
            this.n = false;
        }
    }

    public static boolean a(int i2) {
        return ((i2 >> 24) & 255) == 255;
    }

    public void a(ColorStateList colorStateList) {
        this.f23539a.a(colorStateList);
        this.f23540b.setColor(colorStateList != null ? colorStateList.getColorForState(getState(), 0) : 0);
        invalidateSelf();
    }

    private void a(Resources resources) {
        b bVar = this.f23539a;
        if (bVar.f23553f != null) {
            this.f23540b.setColor(bVar.f23553f.getColorForState(getState(), 0));
        } else {
            int[] iArr = bVar.f23554h;
            Paint paint = this.f23540b;
            if (iArr == null) {
                paint.setColor(0);
            } else {
                paint.setColor(com.batch.android.q0.b.v);
            }
        }
        this.f23541c = bVar.q;
        if (bVar.l >= 0) {
            Paint paint2 = new Paint(1);
            this.d = paint2;
            paint2.setStyle(Paint.Style.STROKE);
            this.d.setStrokeWidth(bVar.l);
            if (bVar.g != null) {
                this.d.setColor(bVar.g.getColorForState(getState(), 0));
            }
            if (bVar.m != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                this.d.setPathEffect(new DashPathEffect(new float[]{bVar.m, bVar.n}, Call.Parameters.DEFAULT_CAMERA_ZOOM));
            }
        }
        this.f23547k = true;
        bVar.a();
    }

    public void c(int i2) {
        this.f23539a.a(ColorStateList.valueOf(i2));
        this.f23540b.setColor(i2);
        invalidateSelf();
    }
}
