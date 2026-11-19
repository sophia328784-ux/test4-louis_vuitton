package com.google.android.material.shape;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.StateSet;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.shadow.ShadowRenderer;
import defpackage.cj;
import defpackage.md;
import defpackage.pq0;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Objects;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialShapeDrawable extends Drawable implements TintAwareDrawable, Shapeable {
    public static final Paint G;
    public static final SpringAnimatedCornerSizeProperty[] H;
    public ShapeAppearanceModel A;
    public SpringForce B;
    public final SpringAnimation[] C;
    public float[] D;
    public float[] E;
    public OnCornerSizeChangeListener F;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ShapeAppearanceModel.CornerSizeUnaryOperator f32935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MaterialShapeDrawableState f32936c;
    public final ShapePath.ShadowCompatOperation[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ShapePath.ShadowCompatOperation[] f32937e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BitSet f32938f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f32939h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Matrix f32940i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Path f32941j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Path f32942k;
    public final RectF l;
    public final RectF m;
    public final Region n;
    public final Region o;
    public final Paint p;
    public final Paint q;
    public final ShadowRenderer r;
    public final ShapeAppearancePathProvider.PathListener s;
    public final ShapeAppearancePathProvider t;
    public PorterDuffColorFilter u;
    public PorterDuffColorFilter v;
    public int w;
    public final RectF x;
    public boolean y;
    public boolean z;

    /* JADX INFO: renamed from: com.google.android.material.shape.MaterialShapeDrawable$1, reason: invalid class name */
    public class AnonymousClass1 implements ShapeAppearanceModel.CornerSizeUnaryOperator {
        public AnonymousClass1() {
        }

        public final CornerSize a(CornerSize cornerSize) {
            if (cornerSize instanceof RelativeCornerSize) {
                return cornerSize;
            }
            Paint paint = MaterialShapeDrawable.G;
            return new AdjustedCornerSize(-MaterialShapeDrawable.this.k(), cornerSize);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface CompatibilityShadowMode {
    }

    public interface OnCornerSizeChangeListener {
        void h(float f2);
    }

    public static class SpringAnimatedCornerSizeProperty extends FloatPropertyCompat<MaterialShapeDrawable> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f32954a;

        public SpringAnimatedCornerSizeProperty(int i2) {
            super(pq0.k(i2, "cornerSizeAtIndex"));
            this.f32954a = i2;
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Object obj) {
            float[] fArr = ((MaterialShapeDrawable) obj).D;
            return fArr != null ? fArr[this.f32954a] : Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Object obj, float f2) {
            MaterialShapeDrawable materialShapeDrawable = (MaterialShapeDrawable) obj;
            float[] fArr = materialShapeDrawable.D;
            if (fArr != null) {
                int i2 = this.f32954a;
                if (fArr[i2] != f2) {
                    fArr[i2] = f2;
                    OnCornerSizeChangeListener onCornerSizeChangeListener = materialShapeDrawable.F;
                    if (onCornerSizeChangeListener != null) {
                        onCornerSizeChangeListener.h(materialShapeDrawable.i());
                    }
                    materialShapeDrawable.invalidateSelf();
                }
            }
        }
    }

    static {
        RelativeCornerSize relativeCornerSize = ShapeAppearanceModel.m;
        ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder();
        int i2 = 0;
        CornerTreatment cornerTreatmentA = MaterialShapeUtils.a(0);
        builder.f32968a = cornerTreatmentA;
        float fB = ShapeAppearanceModel.Builder.b(cornerTreatmentA);
        if (fB != -1.0f) {
            builder.e(fB);
        }
        builder.f32969b = cornerTreatmentA;
        float fB2 = ShapeAppearanceModel.Builder.b(cornerTreatmentA);
        if (fB2 != -1.0f) {
            builder.f(fB2);
        }
        builder.f32970c = cornerTreatmentA;
        float fB3 = ShapeAppearanceModel.Builder.b(cornerTreatmentA);
        if (fB3 != -1.0f) {
            builder.d(fB3);
        }
        builder.d = cornerTreatmentA;
        float fB4 = ShapeAppearanceModel.Builder.b(cornerTreatmentA);
        if (fB4 != -1.0f) {
            builder.c(fB4);
        }
        builder.e(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        builder.f(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        builder.d(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        builder.c(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        builder.a();
        Paint paint = new Paint(1);
        G = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        H = new SpringAnimatedCornerSizeProperty[4];
        while (true) {
            SpringAnimatedCornerSizeProperty[] springAnimatedCornerSizePropertyArr = H;
            if (i2 >= springAnimatedCornerSizePropertyArr.length) {
                return;
            }
            springAnimatedCornerSizePropertyArr[i2] = new SpringAnimatedCornerSizeProperty(i2);
            i2++;
        }
    }

    public MaterialShapeDrawable(MaterialShapeDrawableState materialShapeDrawableState) {
        this.f32935b = new AnonymousClass1();
        this.d = new ShapePath.ShadowCompatOperation[4];
        this.f32937e = new ShapePath.ShadowCompatOperation[4];
        this.f32938f = new BitSet(8);
        this.f32940i = new Matrix();
        this.f32941j = new Path();
        this.f32942k = new Path();
        this.l = new RectF();
        this.m = new RectF();
        this.n = new Region();
        this.o = new Region();
        Paint paint = new Paint(1);
        this.p = paint;
        Paint paint2 = new Paint(1);
        this.q = paint2;
        this.r = new ShadowRenderer();
        this.t = Looper.getMainLooper().getThread() == Thread.currentThread() ? ShapeAppearancePathProvider.Lazy.f32986a : new ShapeAppearancePathProvider();
        this.x = new RectF();
        this.y = true;
        this.z = true;
        this.C = new SpringAnimation[4];
        this.f32936c = materialShapeDrawableState;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        B();
        z(getState());
        this.s = new ShapeAppearancePathProvider.PathListener() { // from class: com.google.android.material.shape.MaterialShapeDrawable.2
            @Override // com.google.android.material.shape.ShapeAppearancePathProvider.PathListener
            public final void a(ShapePath shapePath, Matrix matrix, int i2) {
                MaterialShapeDrawable materialShapeDrawable = MaterialShapeDrawable.this;
                BitSet bitSet = materialShapeDrawable.f32938f;
                shapePath.getClass();
                bitSet.set(i2, false);
                ShapePath.ShadowCompatOperation[] shadowCompatOperationArr = materialShapeDrawable.d;
                shapePath.b(shapePath.f32991f);
                shadowCompatOperationArr[i2] = new ShapePath.AnonymousClass1(new ArrayList(shapePath.f32992h), new Matrix(matrix));
            }

            @Override // com.google.android.material.shape.ShapeAppearancePathProvider.PathListener
            public final void b(ShapePath shapePath, Matrix matrix, int i2) {
                MaterialShapeDrawable materialShapeDrawable = MaterialShapeDrawable.this;
                shapePath.getClass();
                materialShapeDrawable.f32938f.set(i2 + 4, false);
                ShapePath.ShadowCompatOperation[] shadowCompatOperationArr = materialShapeDrawable.f32937e;
                shapePath.b(shapePath.f32991f);
                shadowCompatOperationArr[i2] = new ShapePath.AnonymousClass1(new ArrayList(shapePath.f32992h), new Matrix(matrix));
            }
        };
    }

    public static float c(RectF rectF, ShapeAppearanceModel shapeAppearanceModel, float[] fArr) {
        if (fArr == null) {
            if (shapeAppearanceModel.g(rectF)) {
                return shapeAppearanceModel.f32962e.a(rectF);
            }
            return -1.0f;
        }
        if (fArr.length > 1) {
            float f2 = fArr[0];
            for (int i2 = 1; i2 < fArr.length; i2++) {
                if (fArr[i2] != f2) {
                    return -1.0f;
                }
            }
        }
        if (shapeAppearanceModel.f()) {
            return fArr[0];
        }
        return -1.0f;
    }

    public final void A(int[] iArr, boolean z) {
        ShapeAppearanceModel shapeAppearanceModelA;
        CornerSize cornerSize;
        int i2;
        RectF rectFH = h();
        if (this.f32936c.f32946b == null || rectFH.isEmpty()) {
            return;
        }
        boolean z2 = z | (this.B == null);
        if (this.D == null) {
            this.D = new float[4];
        }
        StateListShapeAppearanceModel stateListShapeAppearanceModel = this.f32936c.f32946b;
        ShapeAppearanceModel[] shapeAppearanceModelArr = stateListShapeAppearanceModel.d;
        int i3 = stateListShapeAppearanceModel.f33010a;
        int[][] iArr2 = stateListShapeAppearanceModel.f33012c;
        StateListCornerSize stateListCornerSize = stateListShapeAppearanceModel.f33015h;
        StateListCornerSize stateListCornerSize2 = stateListShapeAppearanceModel.g;
        StateListCornerSize stateListCornerSize3 = stateListShapeAppearanceModel.f33014f;
        StateListCornerSize stateListCornerSize4 = stateListShapeAppearanceModel.f33013e;
        int i4 = 0;
        while (true) {
            if (i4 >= i3) {
                i4 = -1;
                break;
            } else if (StateSet.stateSetMatches(iArr2[i4], iArr)) {
                break;
            } else {
                i4++;
            }
        }
        if (i4 < 0) {
            int[] iArr3 = StateSet.WILD_CARD;
            int i5 = 0;
            while (true) {
                if (i5 >= i3) {
                    i2 = -1;
                    break;
                } else {
                    if (StateSet.stateSetMatches(iArr2[i5], iArr3)) {
                        i2 = i5;
                        break;
                    }
                    i5++;
                }
            }
            i4 = i2;
        }
        if (stateListCornerSize4 == null && stateListCornerSize3 == null && stateListCornerSize2 == null && stateListCornerSize == null) {
            shapeAppearanceModelA = shapeAppearanceModelArr[i4];
        } else {
            ShapeAppearanceModel shapeAppearanceModel = shapeAppearanceModelArr[i4];
            shapeAppearanceModel.getClass();
            ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder(shapeAppearanceModel);
            if (stateListCornerSize4 != null) {
                builder.f32971e = stateListCornerSize4.c(iArr);
            }
            if (stateListCornerSize3 != null) {
                builder.f32972f = stateListCornerSize3.c(iArr);
            }
            if (stateListCornerSize2 != null) {
                builder.f32973h = stateListCornerSize2.c(iArr);
            }
            if (stateListCornerSize != null) {
                builder.g = stateListCornerSize.c(iArr);
            }
            shapeAppearanceModelA = builder.a();
        }
        int i6 = 0;
        while (i6 < 4) {
            this.t.getClass();
            if (i6 == 1) {
                cornerSize = shapeAppearanceModelA.g;
            } else if (i6 != 2) {
                cornerSize = i6 != 3 ? shapeAppearanceModelA.f32963f : shapeAppearanceModelA.f32962e;
            } else {
                cornerSize = shapeAppearanceModelA.f32964h;
            }
            float fA = cornerSize.a(rectFH);
            if (z2) {
                this.D[i6] = fA;
            }
            SpringAnimation[] springAnimationArr = this.C;
            SpringAnimation springAnimation = springAnimationArr[i6];
            if (springAnimation != null) {
                springAnimation.f(fA);
                if (z2) {
                    springAnimationArr[i6].g();
                }
            }
            i6++;
        }
        if (z2) {
            invalidateSelf();
        }
    }

    public final boolean B() {
        PorterDuffColorFilter porterDuffColorFilter;
        PorterDuffColorFilter porterDuffColorFilter2 = this.u;
        PorterDuffColorFilter porterDuffColorFilter3 = this.v;
        MaterialShapeDrawableState materialShapeDrawableState = this.f32936c;
        ColorStateList colorStateList = materialShapeDrawableState.f32949f;
        PorterDuff.Mode mode = materialShapeDrawableState.g;
        if (colorStateList == null || mode == null) {
            int color = this.p.getColor();
            int iD = d(color);
            this.w = iD;
            porterDuffColorFilter = iD != color ? new PorterDuffColorFilter(iD, PorterDuff.Mode.SRC_IN) : null;
        } else {
            int iD2 = d(colorStateList.getColorForState(getState(), 0));
            this.w = iD2;
            porterDuffColorFilter = new PorterDuffColorFilter(iD2, mode);
        }
        this.u = porterDuffColorFilter;
        this.f32936c.getClass();
        this.v = null;
        this.f32936c.getClass();
        return (Objects.equals(porterDuffColorFilter2, this.u) && Objects.equals(porterDuffColorFilter3, this.v)) ? false : true;
    }

    public final void C() {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32936c;
        float f2 = materialShapeDrawableState.n + Call.Parameters.DEFAULT_CAMERA_ZOOM;
        materialShapeDrawableState.p = (int) Math.ceil(0.75f * f2);
        this.f32936c.q = (int) Math.ceil(f2 * 0.25f);
        B();
        super.invalidateSelf();
    }

    public void a() {
        invalidateSelf();
    }

    public final void b(RectF rectF, Path path) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32936c;
        this.t.a(materialShapeDrawableState.f32945a, this.D, materialShapeDrawableState.f32952j, rectF, this.s, path);
        if (this.f32936c.f32951i != 1.0f) {
            Matrix matrix = this.f32940i;
            matrix.reset();
            float f2 = this.f32936c.f32951i;
            matrix.setScale(f2, f2, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(matrix);
        }
        path.computeBounds(this.x, true);
    }

    public final int d(int i2) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32936c;
        float f2 = materialShapeDrawableState.n + Call.Parameters.DEFAULT_CAMERA_ZOOM + materialShapeDrawableState.m;
        ElevationOverlayProvider elevationOverlayProvider = materialShapeDrawableState.f32947c;
        return elevationOverlayProvider != null ? elevationOverlayProvider.a(f2, i2) : i2;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Paint paint;
        PorterDuffColorFilter porterDuffColorFilter = this.u;
        Paint paint2 = this.p;
        paint2.setColorFilter(porterDuffColorFilter);
        int alpha = paint2.getAlpha();
        int i2 = this.f32936c.l;
        paint2.setAlpha(((i2 + (i2 >>> 7)) * alpha) >>> 8);
        PorterDuffColorFilter porterDuffColorFilter2 = this.v;
        Paint paint3 = this.q;
        paint3.setColorFilter(porterDuffColorFilter2);
        paint3.setStrokeWidth(this.f32936c.f32953k);
        int alpha2 = paint3.getAlpha();
        int i3 = this.f32936c.l;
        paint3.setAlpha(((i3 + (i3 >>> 7)) * alpha2) >>> 8);
        Paint.Style style = this.f32936c.r;
        if (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL) {
            boolean z = this.g;
            paint = paint2;
            Path path = this.f32941j;
            if (z) {
                b(h(), path);
                this.g = false;
            }
            MaterialShapeDrawableState materialShapeDrawableState = this.f32936c;
            int i4 = materialShapeDrawableState.o;
            if (i4 != 1 && materialShapeDrawableState.p > 0) {
                if (i4 == 2) {
                    canvas.save();
                    canvas.translate((int) (Math.sin(Math.toRadians(0.0d)) * ((double) this.f32936c.q)), j());
                    if (this.y) {
                        RectF rectF = this.x;
                        int iWidth = (int) (rectF.width() - getBounds().width());
                        int iHeight = (int) (rectF.height() - getBounds().height());
                        if (iWidth < 0 || iHeight < 0) {
                            md.k("Invalid shadow bounds. Check that the treatments result in a valid path.");
                            return;
                        }
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(cj.a(this.f32936c.p, 2, (int) rectF.width(), iWidth), cj.a(this.f32936c.p, 2, (int) rectF.height(), iHeight), Bitmap.Config.ARGB_8888);
                        Canvas canvas2 = new Canvas(bitmapCreateBitmap);
                        float f2 = (getBounds().left - this.f32936c.p) - iWidth;
                        float f3 = (getBounds().top - this.f32936c.p) - iHeight;
                        canvas2.translate(-f2, -f3);
                        e(canvas2);
                        canvas.drawBitmap(bitmapCreateBitmap, f2, f3, (Paint) null);
                        bitmapCreateBitmap.recycle();
                        canvas.restore();
                    } else {
                        e(canvas);
                        canvas.restore();
                    }
                } else if (!o()) {
                    path.isConvex();
                }
            }
            f(canvas, paint, path, this.f32936c.f32945a, this.D, h());
        } else {
            paint = paint2;
        }
        if (m()) {
            if (this.f32939h) {
                ShapeAppearanceModel shapeAppearanceModel = this.f32936c.f32945a;
                shapeAppearanceModel.getClass();
                ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder(shapeAppearanceModel);
                CornerSize cornerSize = shapeAppearanceModel.f32962e;
                AnonymousClass1 anonymousClass1 = (AnonymousClass1) this.f32935b;
                builder.f32971e = anonymousClass1.a(cornerSize);
                builder.f32972f = anonymousClass1.a(shapeAppearanceModel.f32963f);
                builder.f32973h = anonymousClass1.a(shapeAppearanceModel.f32964h);
                builder.g = anonymousClass1.a(shapeAppearanceModel.g);
                this.A = builder.a();
                float[] fArr = this.D;
                if (fArr != null) {
                    if (this.E == null) {
                        this.E = new float[fArr.length];
                    }
                    float fK = k();
                    int i5 = 0;
                    while (true) {
                        float[] fArr2 = this.D;
                        if (i5 >= fArr2.length) {
                            break;
                        }
                        this.E[i5] = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, fArr2[i5] - fK);
                        i5++;
                    }
                } else {
                    this.E = null;
                }
                ShapeAppearanceModel shapeAppearanceModel2 = this.A;
                float[] fArr3 = this.E;
                float f4 = this.f32936c.f32952j;
                RectF rectFH = h();
                RectF rectF2 = this.m;
                rectF2.set(rectFH);
                float fK2 = k();
                rectF2.inset(fK2, fK2);
                this.t.a(shapeAppearanceModel2, fArr3, f4, rectF2, null, this.f32942k);
                this.f32939h = false;
            }
            g(canvas);
        }
        paint.setAlpha(alpha);
        paint3.setAlpha(alpha2);
    }

    public final void e(Canvas canvas) {
        this.f32938f.cardinality();
        int i2 = this.f32936c.q;
        Path path = this.f32941j;
        ShadowRenderer shadowRenderer = this.r;
        if (i2 != 0) {
            canvas.drawPath(path, shadowRenderer.f32923a);
        }
        for (int i3 = 0; i3 < 4; i3++) {
            ShapePath.ShadowCompatOperation shadowCompatOperation = this.d[i3];
            int i4 = this.f32936c.p;
            Matrix matrix = ShapePath.ShadowCompatOperation.f33005b;
            shadowCompatOperation.a(matrix, shadowRenderer, i4, canvas);
            this.f32937e[i3].a(matrix, shadowRenderer, this.f32936c.p, canvas);
        }
        if (this.y) {
            int iSin = (int) (Math.sin(Math.toRadians(0.0d)) * ((double) this.f32936c.q));
            int iJ = j();
            canvas.translate(-iSin, -iJ);
            canvas.drawPath(path, G);
            canvas.translate(iSin, iJ);
        }
    }

    public final void f(Canvas canvas, Paint paint, Path path, ShapeAppearanceModel shapeAppearanceModel, float[] fArr, RectF rectF) {
        float fC = c(rectF, shapeAppearanceModel, fArr);
        if (fC < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            canvas.drawPath(path, paint);
        } else {
            float f2 = fC * this.f32936c.f32952j;
            canvas.drawRoundRect(rectF, f2, f2, paint);
        }
    }

    public void g(Canvas canvas) {
        ShapeAppearanceModel shapeAppearanceModel = this.A;
        float[] fArr = this.E;
        RectF rectFH = h();
        RectF rectF = this.m;
        rectF.set(rectFH);
        float fK = k();
        rectF.inset(fK, fK);
        f(canvas, this.q, this.f32942k, shapeAppearanceModel, fArr, rectF);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f32936c.l;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f32936c;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.f32936c.o == 2) {
            return;
        }
        RectF rectFH = h();
        if (rectFH.isEmpty()) {
            return;
        }
        float fC = c(rectFH, this.f32936c.f32945a, this.D);
        if (fC >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            outline.setRoundRect(getBounds(), fC * this.f32936c.f32952j);
            return;
        }
        boolean z = this.g;
        Path path = this.f32941j;
        if (z) {
            b(rectFH, path);
            this.g = false;
        }
        DrawableUtils.e(outline, path);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        Rect rect2 = this.f32936c.f32950h;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        Rect bounds = getBounds();
        Region region = this.n;
        region.set(bounds);
        RectF rectFH = h();
        Path path = this.f32941j;
        b(rectFH, path);
        Region region2 = this.o;
        region2.setPath(path, region);
        region.op(region2, Region.Op.DIFFERENCE);
        return region;
    }

    public final RectF h() {
        Rect bounds = getBounds();
        RectF rectF = this.l;
        rectF.set(bounds);
        return rectF;
    }

    public final float i() {
        float[] fArr = this.D;
        if (fArr != null) {
            return (((fArr[3] + fArr[2]) - fArr[1]) - fArr[0]) / 2.0f;
        }
        RectF rectFH = h();
        ShapeAppearanceModel shapeAppearanceModel = this.f32936c.f32945a;
        ShapeAppearancePathProvider shapeAppearancePathProvider = this.t;
        shapeAppearancePathProvider.getClass();
        float fA = shapeAppearanceModel.f32962e.a(rectFH);
        ShapeAppearanceModel shapeAppearanceModel2 = this.f32936c.f32945a;
        shapeAppearancePathProvider.getClass();
        float fA2 = shapeAppearanceModel2.f32964h.a(rectFH) + fA;
        ShapeAppearanceModel shapeAppearanceModel3 = this.f32936c.f32945a;
        shapeAppearancePathProvider.getClass();
        float fA3 = fA2 - shapeAppearanceModel3.g.a(rectFH);
        ShapeAppearanceModel shapeAppearanceModel4 = this.f32936c.f32945a;
        shapeAppearancePathProvider.getClass();
        return (fA3 - shapeAppearanceModel4.f32963f.a(rectFH)) / 2.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        this.g = true;
        this.f32939h = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (super.isStateful()) {
            return true;
        }
        ColorStateList colorStateList = this.f32936c.f32949f;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        this.f32936c.getClass();
        ColorStateList colorStateList2 = this.f32936c.f32948e;
        if (colorStateList2 != null && colorStateList2.isStateful()) {
            return true;
        }
        ColorStateList colorStateList3 = this.f32936c.d;
        if (colorStateList3 != null && colorStateList3.isStateful()) {
            return true;
        }
        StateListShapeAppearanceModel stateListShapeAppearanceModel = this.f32936c.f32946b;
        return stateListShapeAppearanceModel != null && stateListShapeAppearanceModel.d();
    }

    public final int j() {
        return (int) (Math.cos(Math.toRadians(0.0d)) * ((double) this.f32936c.q));
    }

    public final float k() {
        return m() ? this.q.getStrokeWidth() / 2.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public final float l() {
        float[] fArr = this.D;
        return fArr != null ? fArr[3] : this.f32936c.f32945a.f32962e.a(h());
    }

    public final boolean m() {
        Paint.Style style = this.f32936c.r;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.q.getStrokeWidth() > Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.f32936c = new MaterialShapeDrawableState(this.f32936c);
        return this;
    }

    public final void n(Context context) {
        this.f32936c.f32947c = new ElevationOverlayProvider(context);
        C();
    }

    public final boolean o() {
        if (!this.f32936c.f32945a.g(h())) {
            float[] fArr = this.D;
            if (fArr != null) {
                if (fArr.length > 1) {
                    float f2 = fArr[0];
                    for (int i2 = 1; i2 < fArr.length; i2++) {
                        if (fArr[i2] == f2) {
                        }
                    }
                    if (this.f32936c.f32945a.f()) {
                    }
                } else if (this.f32936c.f32945a.f()) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.g = true;
        this.f32939h = true;
        super.onBoundsChange(rect);
        if (this.f32936c.f32946b != null && !rect.isEmpty()) {
            A(getState(), this.z);
        }
        this.z = rect.isEmpty();
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        if (this.f32936c.f32946b != null) {
            A(iArr, false);
        }
        boolean z = z(iArr) || B();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    public final void p(SpringForce springForce) {
        if (this.B == springForce) {
            return;
        }
        this.B = springForce;
        int i2 = 0;
        while (true) {
            SpringAnimation[] springAnimationArr = this.C;
            if (i2 >= springAnimationArr.length) {
                A(getState(), true);
                invalidateSelf();
                return;
            }
            if (springAnimationArr[i2] == null) {
                springAnimationArr[i2] = new SpringAnimation(this, H[i2]);
            }
            SpringAnimation springAnimation = springAnimationArr[i2];
            SpringForce springForce2 = new SpringForce();
            springForce2.a((float) springForce.f13053b);
            double d = springForce.f13052a;
            springForce2.b((float) (d * d));
            springAnimation.u = springForce2;
            i2++;
        }
    }

    public final void q(float f2) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32936c;
        if (materialShapeDrawableState.n != f2) {
            materialShapeDrawableState.n = f2;
            C();
        }
    }

    public final void r(ColorStateList colorStateList) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32936c;
        if (materialShapeDrawableState.d != colorStateList) {
            materialShapeDrawableState.d = colorStateList;
            onStateChange(getState());
        }
    }

    public final void s(float f2) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32936c;
        if (materialShapeDrawableState.f32952j != f2) {
            materialShapeDrawableState.f32952j = f2;
            this.g = true;
            this.f32939h = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32936c;
        if (materialShapeDrawableState.l != i2) {
            materialShapeDrawableState.l = i2;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f32936c.getClass();
        super.invalidateSelf();
    }

    @Override // com.google.android.material.shape.Shapeable
    public final void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32936c;
        materialShapeDrawableState.f32945a = shapeAppearanceModel;
        materialShapeDrawableState.f32946b = null;
        this.D = null;
        this.E = null;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i2) {
        setTintList(ColorStateList.valueOf(i2));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f32936c.f32949f = colorStateList;
        B();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32936c;
        if (materialShapeDrawableState.g != mode) {
            materialShapeDrawableState.g = mode;
            B();
            super.invalidateSelf();
        }
    }

    public final void t() {
        this.f32936c.r = Paint.Style.FILL;
        super.invalidateSelf();
    }

    public final void u() {
        this.r.a(-12303292);
        this.f32936c.getClass();
        super.invalidateSelf();
    }

    public final void v(int i2) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32936c;
        if (materialShapeDrawableState.o != i2) {
            materialShapeDrawableState.o = i2;
            super.invalidateSelf();
        }
    }

    public final void w(StateListShapeAppearanceModel stateListShapeAppearanceModel) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32936c;
        if (materialShapeDrawableState.f32946b != stateListShapeAppearanceModel) {
            materialShapeDrawableState.f32946b = stateListShapeAppearanceModel;
            A(getState(), true);
            invalidateSelf();
        }
    }

    public final void x(ColorStateList colorStateList) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32936c;
        if (materialShapeDrawableState.f32948e != colorStateList) {
            materialShapeDrawableState.f32948e = colorStateList;
            onStateChange(getState());
        }
    }

    public final void y(float f2) {
        this.f32936c.f32953k = f2;
        invalidateSelf();
    }

    public final boolean z(int[] iArr) {
        boolean z;
        Paint paint;
        int color;
        int colorForState;
        Paint paint2;
        int color2;
        int colorForState2;
        if (this.f32936c.d == null || color2 == (colorForState2 = this.f32936c.d.getColorForState(iArr, (color2 = (paint2 = this.p).getColor())))) {
            z = false;
        } else {
            paint2.setColor(colorForState2);
            z = true;
        }
        if (this.f32936c.f32948e == null || color == (colorForState = this.f32936c.f32948e.getColorForState(iArr, (color = (paint = this.q).getColor())))) {
            return z;
        }
        paint.setColor(colorForState);
        return true;
    }

    public static class MaterialShapeDrawableState extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ShapeAppearanceModel f32945a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public StateListShapeAppearanceModel f32946b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ElevationOverlayProvider f32947c;
        public ColorStateList d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ColorStateList f32948e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ColorStateList f32949f;
        public PorterDuff.Mode g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Rect f32950h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final float f32951i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f32952j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public float f32953k;
        public int l;
        public float m;
        public float n;
        public int o;
        public int p;
        public int q;
        public Paint.Style r;

        public MaterialShapeDrawableState(MaterialShapeDrawableState materialShapeDrawableState) {
            this.d = null;
            this.f32948e = null;
            this.f32949f = null;
            this.g = PorterDuff.Mode.SRC_IN;
            this.f32950h = null;
            this.f32951i = 1.0f;
            this.f32952j = 1.0f;
            this.l = 255;
            this.m = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.n = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.o = 0;
            this.p = 0;
            this.q = 0;
            this.r = Paint.Style.FILL_AND_STROKE;
            this.f32945a = materialShapeDrawableState.f32945a;
            this.f32946b = materialShapeDrawableState.f32946b;
            this.f32947c = materialShapeDrawableState.f32947c;
            this.f32953k = materialShapeDrawableState.f32953k;
            this.d = materialShapeDrawableState.d;
            this.f32948e = materialShapeDrawableState.f32948e;
            this.g = materialShapeDrawableState.g;
            this.f32949f = materialShapeDrawableState.f32949f;
            this.l = materialShapeDrawableState.l;
            this.f32951i = materialShapeDrawableState.f32951i;
            this.q = materialShapeDrawableState.q;
            this.o = materialShapeDrawableState.o;
            this.f32952j = materialShapeDrawableState.f32952j;
            this.m = materialShapeDrawableState.m;
            this.n = materialShapeDrawableState.n;
            this.p = materialShapeDrawableState.p;
            this.r = materialShapeDrawableState.r;
            if (materialShapeDrawableState.f32950h != null) {
                this.f32950h = new Rect(materialShapeDrawableState.f32950h);
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this);
            materialShapeDrawable.g = true;
            materialShapeDrawable.f32939h = true;
            return materialShapeDrawable;
        }

        public MaterialShapeDrawableState(ShapeAppearanceModel shapeAppearanceModel, ElevationOverlayProvider elevationOverlayProvider) {
            this.d = null;
            this.f32948e = null;
            this.f32949f = null;
            this.g = PorterDuff.Mode.SRC_IN;
            this.f32950h = null;
            this.f32951i = 1.0f;
            this.f32952j = 1.0f;
            this.l = 255;
            this.m = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.n = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.o = 0;
            this.p = 0;
            this.q = 0;
            this.r = Paint.Style.FILL_AND_STROKE;
            this.f32945a = shapeAppearanceModel;
            this.f32947c = elevationOverlayProvider;
        }
    }

    public MaterialShapeDrawable(Context context, AttributeSet attributeSet, int i2, int i3) {
        this(ShapeAppearanceModel.c(context, attributeSet, i2, i3).a());
    }

    @Deprecated
    public MaterialShapeDrawable(ShapePathModel shapePathModel) {
        this((ShapeAppearanceModel) shapePathModel);
    }

    public MaterialShapeDrawable(ShapeAppearanceModel shapeAppearanceModel) {
        this(new MaterialShapeDrawableState(shapeAppearanceModel, null));
    }

    public MaterialShapeDrawable() {
        this(new ShapeAppearanceModel());
    }
}
