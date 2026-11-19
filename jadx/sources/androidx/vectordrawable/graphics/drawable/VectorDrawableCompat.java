package androidx.vectordrawable.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.util.AttributeSet;
import androidx.collection.ArrayMap;
import androidx.core.content.res.ComplexColorCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import defpackage.md;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class VectorDrawableCompat extends VectorDrawableCommon {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final PorterDuff.Mode f20073k = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public VectorDrawableCompatState f20074c;
    public PorterDuffColorFilter d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ColorFilter f20075e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f20076f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float[] f20077h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Matrix f20078i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Rect f20079j;

    public static class VClipPath extends VPath {
    }

    public static class VFullPath extends VPath {
        public ComplexColorCompat d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f20080e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ComplexColorCompat f20081f;
        public float g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f20082h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f20083i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f20084j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public float f20085k;
        public Paint.Cap l;
        public Paint.Join m;
        public float n;

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        public final boolean a() {
            return this.f20081f.b() || this.d.b();
        }

        /* JADX WARN: Code duplicated, block: B:13:0x0036  */
        /* JADX WARN: Code duplicated, block: B:7:0x001c  */
        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        public final boolean b(int[] iArr) {
            boolean z;
            ComplexColorCompat complexColorCompat = this.f20081f;
            boolean z2 = true;
            if (complexColorCompat.b()) {
                ColorStateList colorStateList = complexColorCompat.f12022b;
                int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
                if (colorForState != complexColorCompat.f12023c) {
                    complexColorCompat.f12023c = colorForState;
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
            ComplexColorCompat complexColorCompat2 = this.d;
            if (complexColorCompat2.b()) {
                ColorStateList colorStateList2 = complexColorCompat2.f12022b;
                int colorForState2 = colorStateList2.getColorForState(iArr, colorStateList2.getDefaultColor());
                if (colorForState2 != complexColorCompat2.f12023c) {
                    complexColorCompat2.f12023c = colorForState2;
                } else {
                    z2 = false;
                }
            } else {
                z2 = false;
            }
            return z | z2;
        }

        public float getFillAlpha() {
            return this.f20082h;
        }

        public int getFillColor() {
            return this.f20081f.f12023c;
        }

        public float getStrokeAlpha() {
            return this.g;
        }

        public int getStrokeColor() {
            return this.d.f12023c;
        }

        public float getStrokeWidth() {
            return this.f20080e;
        }

        public float getTrimPathEnd() {
            return this.f20084j;
        }

        public float getTrimPathOffset() {
            return this.f20085k;
        }

        public float getTrimPathStart() {
            return this.f20083i;
        }

        public void setFillAlpha(float f2) {
            this.f20082h = f2;
        }

        public void setFillColor(int i2) {
            this.f20081f.f12023c = i2;
        }

        public void setStrokeAlpha(float f2) {
            this.g = f2;
        }

        public void setStrokeColor(int i2) {
            this.d.f12023c = i2;
        }

        public void setStrokeWidth(float f2) {
            this.f20080e = f2;
        }

        public void setTrimPathEnd(float f2) {
            this.f20084j = f2;
        }

        public void setTrimPathOffset(float f2) {
            this.f20085k = f2;
        }

        public void setTrimPathStart(float f2) {
            this.f20083i = f2;
        }
    }

    public static abstract class VObject {
        public boolean a() {
            return false;
        }

        public boolean b(int[] iArr) {
            return false;
        }
    }

    public VectorDrawableCompat(VectorDrawableCompatState vectorDrawableCompatState) {
        this.g = true;
        this.f20077h = new float[9];
        this.f20078i = new Matrix();
        this.f20079j = new Rect();
        this.f20074c = vectorDrawableCompatState;
        this.d = b(vectorDrawableCompatState.f20109c, vectorDrawableCompatState.d);
    }

    public static VectorDrawableCompat a(int i2, Resources.Theme theme, Resources resources) {
        VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
        ThreadLocal threadLocal = ResourcesCompat.f12034a;
        vectorDrawableCompat.f20072b = resources.getDrawable(i2, theme);
        new VectorDrawableDelegateState(vectorDrawableCompat.f20072b.getConstantState());
        return vectorDrawableCompat;
    }

    public final PorterDuffColorFilter b(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(super.getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.f20072b;
        if (drawable == null) {
            return false;
        }
        drawable.canApplyTheme();
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Paint paint;
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        Rect rect = this.f20079j;
        copyBounds(rect);
        if (rect.width() <= 0 || rect.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f20075e;
        if (colorFilter == null) {
            colorFilter = this.d;
        }
        Matrix matrix = this.f20078i;
        canvas.getMatrix(matrix);
        float[] fArr = this.f20077h;
        matrix.getValues(fArr);
        float fAbs = Math.abs(fArr[0]);
        float fAbs2 = Math.abs(fArr[4]);
        float fAbs3 = Math.abs(fArr[1]);
        float fAbs4 = Math.abs(fArr[3]);
        if (fAbs3 != Call.Parameters.DEFAULT_CAMERA_ZOOM || fAbs4 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            fAbs = 1.0f;
            fAbs2 = 1.0f;
        }
        int iWidth = (int) (rect.width() * fAbs);
        int iHeight = (int) (rect.height() * fAbs2);
        int iMin = Math.min(2048, iWidth);
        int iMin2 = Math.min(2048, iHeight);
        if (iMin <= 0 || iMin2 <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(rect.left, rect.top);
        if (isAutoMirrored() && getLayoutDirection() == 1) {
            canvas.translate(rect.width(), Call.Parameters.DEFAULT_CAMERA_ZOOM);
            canvas.scale(-1.0f, 1.0f);
        }
        rect.offsetTo(0, 0);
        VectorDrawableCompatState vectorDrawableCompatState = this.f20074c;
        Bitmap bitmap = vectorDrawableCompatState.f20111f;
        if (bitmap == null || iMin != bitmap.getWidth() || iMin2 != vectorDrawableCompatState.f20111f.getHeight()) {
            vectorDrawableCompatState.f20111f = Bitmap.createBitmap(iMin, iMin2, Bitmap.Config.ARGB_8888);
            vectorDrawableCompatState.f20115k = true;
        }
        boolean z = this.g;
        VectorDrawableCompatState vectorDrawableCompatState2 = this.f20074c;
        if (!z) {
            vectorDrawableCompatState2.f20111f.eraseColor(0);
            Canvas canvas2 = new Canvas(vectorDrawableCompatState2.f20111f);
            VPathRenderer vPathRenderer = vectorDrawableCompatState2.f20108b;
            vPathRenderer.a(vPathRenderer.g, VPathRenderer.p, canvas2, iMin, iMin2);
        } else if (vectorDrawableCompatState2.f20115k || vectorDrawableCompatState2.g != vectorDrawableCompatState2.f20109c || vectorDrawableCompatState2.f20112h != vectorDrawableCompatState2.d || vectorDrawableCompatState2.f20114j != vectorDrawableCompatState2.f20110e || vectorDrawableCompatState2.f20113i != vectorDrawableCompatState2.f20108b.getRootAlpha()) {
            VectorDrawableCompatState vectorDrawableCompatState3 = this.f20074c;
            vectorDrawableCompatState3.f20111f.eraseColor(0);
            Canvas canvas3 = new Canvas(vectorDrawableCompatState3.f20111f);
            VPathRenderer vPathRenderer2 = vectorDrawableCompatState3.f20108b;
            vPathRenderer2.a(vPathRenderer2.g, VPathRenderer.p, canvas3, iMin, iMin2);
            VectorDrawableCompatState vectorDrawableCompatState4 = this.f20074c;
            vectorDrawableCompatState4.g = vectorDrawableCompatState4.f20109c;
            vectorDrawableCompatState4.f20112h = vectorDrawableCompatState4.d;
            vectorDrawableCompatState4.f20113i = vectorDrawableCompatState4.f20108b.getRootAlpha();
            vectorDrawableCompatState4.f20114j = vectorDrawableCompatState4.f20110e;
            vectorDrawableCompatState4.f20115k = false;
        }
        VectorDrawableCompatState vectorDrawableCompatState5 = this.f20074c;
        if (vectorDrawableCompatState5.f20108b.getRootAlpha() >= 255 && colorFilter == null) {
            paint = null;
        } else {
            if (vectorDrawableCompatState5.l == null) {
                Paint paint2 = new Paint();
                vectorDrawableCompatState5.l = paint2;
                paint2.setFilterBitmap(true);
            }
            vectorDrawableCompatState5.l.setAlpha(vectorDrawableCompatState5.f20108b.getRootAlpha());
            vectorDrawableCompatState5.l.setColorFilter(colorFilter);
            paint = vectorDrawableCompatState5.l;
        }
        canvas.drawBitmap(vectorDrawableCompatState5.f20111f, (Rect) null, rect, paint);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.f20072b;
        return drawable != null ? drawable.getAlpha() : this.f20074c.f20108b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return this.f20074c.getChangingConfigurations() | super.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.f20072b;
        return drawable != null ? drawable.getColorFilter() : this.f20075e;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f20072b != null) {
            return new VectorDrawableDelegateState(this.f20072b.getConstantState());
        }
        this.f20074c.f20107a = getChangingConfigurations();
        return this.f20074c;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.f20072b;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f20074c.f20108b.f20104i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.f20072b;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f20074c.f20108b.f20103h;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int i2;
        int i3;
        int i4;
        int i5;
        Paint.Cap cap;
        Paint.Join join;
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
            return;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.f20074c;
        vectorDrawableCompatState.f20108b = new VPathRenderer();
        TypedArray typedArrayF = TypedArrayUtils.f(resources, theme, attributeSet, AndroidResources.f20056a);
        VectorDrawableCompatState vectorDrawableCompatState2 = this.f20074c;
        VPathRenderer vPathRenderer = vectorDrawableCompatState2.f20108b;
        int iD = TypedArrayUtils.d(typedArrayF, xmlPullParser, "tintMode", 6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        int i6 = 3;
        if (iD == 3) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (iD != 5) {
            if (iD != 9) {
                switch (iD) {
                    case 14:
                        mode = PorterDuff.Mode.MULTIPLY;
                        break;
                    case 15:
                        mode = PorterDuff.Mode.SCREEN;
                        break;
                    case 16:
                        mode = PorterDuff.Mode.ADD;
                        break;
                }
            } else {
                mode = PorterDuff.Mode.SRC_ATOP;
            }
        }
        vectorDrawableCompatState2.d = mode;
        ColorStateList colorStateListB = TypedArrayUtils.b(typedArrayF, xmlPullParser, theme);
        if (colorStateListB != null) {
            vectorDrawableCompatState2.f20109c = colorStateListB;
        }
        boolean z = vectorDrawableCompatState2.f20110e;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "autoMirrored") != null) {
            z = typedArrayF.getBoolean(5, z);
        }
        vectorDrawableCompatState2.f20110e = z;
        float f2 = vPathRenderer.f20105j;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "viewportWidth") != null) {
            f2 = typedArrayF.getFloat(7, f2);
        }
        vPathRenderer.f20105j = f2;
        float f3 = vPathRenderer.f20106k;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "viewportHeight") != null) {
            f3 = typedArrayF.getFloat(8, f3);
        }
        vPathRenderer.f20106k = f3;
        if (vPathRenderer.f20105j <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            throw new XmlPullParserException(typedArrayF.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (f3 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            throw new XmlPullParserException(typedArrayF.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        vPathRenderer.f20103h = typedArrayF.getDimension(3, vPathRenderer.f20103h);
        int i7 = 2;
        float dimension = typedArrayF.getDimension(2, vPathRenderer.f20104i);
        vPathRenderer.f20104i = dimension;
        if (vPathRenderer.f20103h <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            throw new XmlPullParserException(typedArrayF.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (dimension <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            throw new XmlPullParserException(typedArrayF.getPositionDescription() + "<vector> tag requires height > 0");
        }
        float alpha = vPathRenderer.getAlpha();
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "alpha") != null) {
            alpha = typedArrayF.getFloat(4, alpha);
        }
        vPathRenderer.setAlpha(alpha);
        String string = typedArrayF.getString(0);
        if (string != null) {
            vPathRenderer.m = string;
            vPathRenderer.o.put(string, vPathRenderer);
        }
        typedArrayF.recycle();
        vectorDrawableCompatState.f20107a = getChangingConfigurations();
        int i8 = 1;
        vectorDrawableCompatState.f20115k = true;
        VectorDrawableCompatState vectorDrawableCompatState3 = this.f20074c;
        VPathRenderer vPathRenderer2 = vectorDrawableCompatState3.f20108b;
        ArrayDeque arrayDeque = new ArrayDeque();
        VGroup vGroup = vPathRenderer2.g;
        ArrayMap arrayMap = vPathRenderer2.o;
        arrayDeque.push(vGroup);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z2 = true;
        while (eventType != i8 && (xmlPullParser.getDepth() >= depth || eventType != i6)) {
            if (eventType == i7) {
                String name = xmlPullParser.getName();
                VGroup vGroup2 = (VGroup) arrayDeque.peek();
                i2 = depth;
                if ("path".equals(name)) {
                    VFullPath vFullPath = new VFullPath();
                    vFullPath.f20080e = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    vFullPath.g = 1.0f;
                    vFullPath.f20082h = 1.0f;
                    vFullPath.f20083i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    vFullPath.f20084j = 1.0f;
                    vFullPath.f20085k = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    vFullPath.l = Paint.Cap.BUTT;
                    vFullPath.m = Paint.Join.MITER;
                    vFullPath.n = 4.0f;
                    TypedArray typedArrayF2 = TypedArrayUtils.f(resources, theme, attributeSet, AndroidResources.f20058c);
                    if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "pathData") != null) {
                        String string2 = typedArrayF2.getString(0);
                        if (string2 != null) {
                            vFullPath.f20096b = string2;
                        }
                        String string3 = typedArrayF2.getString(2);
                        if (string3 != null) {
                            vFullPath.f20095a = PathParser.b(string3);
                        }
                        vFullPath.f20081f = TypedArrayUtils.c(typedArrayF2, xmlPullParser, theme, "fillColor", 1);
                        float f4 = vFullPath.f20082h;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "fillAlpha") != null) {
                            f4 = typedArrayF2.getFloat(12, f4);
                        }
                        vFullPath.f20082h = f4;
                        int i9 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeLineCap") != null ? typedArrayF2.getInt(8, -1) : -1;
                        Paint.Cap cap2 = vFullPath.l;
                        if (i9 == 0) {
                            cap = Paint.Cap.BUTT;
                        } else if (i9 != 1) {
                            cap = i9 != 2 ? cap2 : Paint.Cap.SQUARE;
                        } else {
                            cap = Paint.Cap.ROUND;
                        }
                        vFullPath.l = cap;
                        int i10 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeLineJoin") != null ? typedArrayF2.getInt(9, -1) : -1;
                        Paint.Join join2 = vFullPath.m;
                        if (i10 == 0) {
                            join = Paint.Join.MITER;
                        } else if (i10 != 1) {
                            join = i10 != 2 ? join2 : Paint.Join.BEVEL;
                        } else {
                            join = Paint.Join.ROUND;
                        }
                        vFullPath.m = join;
                        float f5 = vFullPath.n;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeMiterLimit") != null) {
                            f5 = typedArrayF2.getFloat(10, f5);
                        }
                        vFullPath.n = f5;
                        vFullPath.d = TypedArrayUtils.c(typedArrayF2, xmlPullParser, theme, "strokeColor", 3);
                        float f6 = vFullPath.g;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeAlpha") != null) {
                            f6 = typedArrayF2.getFloat(11, f6);
                        }
                        vFullPath.g = f6;
                        float f7 = vFullPath.f20080e;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeWidth") != null) {
                            f7 = typedArrayF2.getFloat(4, f7);
                        }
                        vFullPath.f20080e = f7;
                        float f8 = vFullPath.f20084j;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathEnd") != null) {
                            f8 = typedArrayF2.getFloat(6, f8);
                        }
                        vFullPath.f20084j = f8;
                        float f9 = vFullPath.f20085k;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathOffset") != null) {
                            f9 = typedArrayF2.getFloat(7, f9);
                        }
                        vFullPath.f20085k = f9;
                        float f10 = vFullPath.f20083i;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathStart") != null) {
                            f10 = typedArrayF2.getFloat(5, f10);
                        }
                        vFullPath.f20083i = f10;
                        int i11 = vFullPath.f20097c;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "fillType") != null) {
                            i11 = typedArrayF2.getInt(13, i11);
                        }
                        vFullPath.f20097c = i11;
                    }
                    typedArrayF2.recycle();
                    vGroup2.f20087b.add(vFullPath);
                    if (vFullPath.getPathName() != null) {
                        arrayMap.put(vFullPath.getPathName(), vFullPath);
                    }
                    vectorDrawableCompatState3.f20107a = vectorDrawableCompatState3.f20107a;
                    i5 = 1;
                    z2 = false;
                } else {
                    if ("clip-path".equals(name)) {
                        VClipPath vClipPath = new VClipPath();
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "pathData") != null) {
                            TypedArray typedArrayF3 = TypedArrayUtils.f(resources, theme, attributeSet, AndroidResources.d);
                            String string4 = typedArrayF3.getString(0);
                            if (string4 != null) {
                                vClipPath.f20096b = string4;
                            }
                            String string5 = typedArrayF3.getString(1);
                            if (string5 != null) {
                                vClipPath.f20095a = PathParser.b(string5);
                            }
                            vClipPath.f20097c = !TypedArrayUtils.e(xmlPullParser, "fillType") ? 0 : typedArrayF3.getInt(2, 0);
                            typedArrayF3.recycle();
                        }
                        vGroup2.f20087b.add(vClipPath);
                        if (vClipPath.getPathName() != null) {
                            arrayMap.put(vClipPath.getPathName(), vClipPath);
                        }
                        vectorDrawableCompatState3.f20107a = vectorDrawableCompatState3.f20107a;
                    } else if ("group".equals(name)) {
                        VGroup vGroup3 = new VGroup();
                        TypedArray typedArrayF4 = TypedArrayUtils.f(resources, theme, attributeSet, AndroidResources.f20057b);
                        float f11 = vGroup3.f20088c;
                        if (TypedArrayUtils.e(xmlPullParser, "rotation")) {
                            f11 = typedArrayF4.getFloat(5, f11);
                        }
                        vGroup3.f20088c = f11;
                        i5 = 1;
                        vGroup3.d = typedArrayF4.getFloat(1, vGroup3.d);
                        vGroup3.f20089e = typedArrayF4.getFloat(2, vGroup3.f20089e);
                        float f12 = vGroup3.f20090f;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "scaleX") != null) {
                            f12 = typedArrayF4.getFloat(3, f12);
                        }
                        vGroup3.f20090f = f12;
                        float f13 = vGroup3.g;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "scaleY") != null) {
                            f13 = typedArrayF4.getFloat(4, f13);
                        }
                        vGroup3.g = f13;
                        float f14 = vGroup3.f20091h;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "translateX") != null) {
                            f14 = typedArrayF4.getFloat(6, f14);
                        }
                        vGroup3.f20091h = f14;
                        float f15 = vGroup3.f20092i;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "translateY") != null) {
                            f15 = typedArrayF4.getFloat(7, f15);
                        }
                        vGroup3.f20092i = f15;
                        String string6 = typedArrayF4.getString(0);
                        if (string6 != null) {
                            vGroup3.f20094k = string6;
                        }
                        vGroup3.c();
                        typedArrayF4.recycle();
                        vGroup2.f20087b.add(vGroup3);
                        arrayDeque.push(vGroup3);
                        if (vGroup3.getGroupName() != null) {
                            arrayMap.put(vGroup3.getGroupName(), vGroup3);
                        }
                        vectorDrawableCompatState3.f20107a = vectorDrawableCompatState3.f20107a;
                    }
                    i5 = 1;
                }
                i4 = i5;
                i3 = 3;
            } else {
                i2 = depth;
                i3 = i6;
                i4 = 1;
                if (eventType == i3 && "group".equals(xmlPullParser.getName())) {
                    arrayDeque.pop();
                }
            }
            eventType = xmlPullParser.next();
            i6 = i3;
            i8 = i4;
            depth = i2;
            i7 = 2;
        }
        if (z2) {
            throw new XmlPullParserException("no path defined");
        }
        this.d = b(vectorDrawableCompatState.f20109c, vectorDrawableCompatState.d);
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.f20072b;
        return drawable != null ? drawable.isAutoMirrored() : this.f20074c.f20110e;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            return drawable.isStateful();
        }
        if (super.isStateful()) {
            return true;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.f20074c;
        if (vectorDrawableCompatState == null) {
            return false;
        }
        VPathRenderer vPathRenderer = vectorDrawableCompatState.f20108b;
        if (vPathRenderer.n == null) {
            vPathRenderer.n = Boolean.valueOf(vPathRenderer.g.a());
        }
        if (vPathRenderer.n.booleanValue()) {
            return true;
        }
        ColorStateList colorStateList = this.f20074c.f20109c;
        return colorStateList != null && colorStateList.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f20076f && super.mutate() == this) {
            this.f20074c = new VectorDrawableCompatState(this.f20074c);
            this.f20076f = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z;
        PorterDuff.Mode mode;
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.f20074c;
        ColorStateList colorStateList = vectorDrawableCompatState.f20109c;
        if (colorStateList == null || (mode = vectorDrawableCompatState.d) == null) {
            z = false;
        } else {
            this.d = b(colorStateList, mode);
            invalidateSelf();
            z = true;
        }
        VPathRenderer vPathRenderer = vectorDrawableCompatState.f20108b;
        if (vPathRenderer.n == null) {
            vPathRenderer.n = Boolean.valueOf(vPathRenderer.g.a());
        }
        if (vPathRenderer.n.booleanValue()) {
            boolean zB = vectorDrawableCompatState.f20108b.g.b(iArr);
            vectorDrawableCompatState.f20115k |= zB;
            if (zB) {
                invalidateSelf();
                return true;
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j2) {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j2);
        } else {
            super.scheduleSelf(runnable, j2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i2) {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.setAlpha(i2);
        } else if (this.f20074c.f20108b.getRootAlpha() != i2) {
            this.f20074c.f20108b.setRootAlpha(i2);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.setAutoMirrored(z);
        } else {
            this.f20074c.f20110e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f20075e = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i2) {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.setTint(i2);
        } else {
            setTintList(ColorStateList.valueOf(i2));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
            return;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.f20074c;
        if (vectorDrawableCompatState.f20109c != colorStateList) {
            vectorDrawableCompatState.f20109c = colorStateList;
            this.d = b(colorStateList, vectorDrawableCompatState.d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.setTintMode(mode);
            return;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.f20074c;
        if (vectorDrawableCompatState.d != mode) {
            vectorDrawableCompatState.d = mode;
            this.d = b(vectorDrawableCompatState.f20109c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f20072b;
        return drawable != null ? drawable.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    public static class VectorDrawableCompatState extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f20107a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public VPathRenderer f20108b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ColorStateList f20109c;
        public PorterDuff.Mode d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f20110e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Bitmap f20111f;
        public ColorStateList g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public PorterDuff.Mode f20112h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f20113i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f20114j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f20115k;
        public Paint l;

        public VectorDrawableCompatState(VectorDrawableCompatState vectorDrawableCompatState) {
            this.f20109c = null;
            this.d = VectorDrawableCompat.f20073k;
            if (vectorDrawableCompatState != null) {
                this.f20107a = vectorDrawableCompatState.f20107a;
                VPathRenderer vPathRenderer = new VPathRenderer(vectorDrawableCompatState.f20108b);
                this.f20108b = vPathRenderer;
                if (vectorDrawableCompatState.f20108b.f20101e != null) {
                    vPathRenderer.f20101e = new Paint(vectorDrawableCompatState.f20108b.f20101e);
                }
                if (vectorDrawableCompatState.f20108b.d != null) {
                    this.f20108b.d = new Paint(vectorDrawableCompatState.f20108b.d);
                }
                this.f20109c = vectorDrawableCompatState.f20109c;
                this.d = vectorDrawableCompatState.d;
                this.f20110e = vectorDrawableCompatState.f20110e;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f20107a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new VectorDrawableCompat(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new VectorDrawableCompat(this);
        }

        public VectorDrawableCompatState() {
            this.f20109c = null;
            this.d = VectorDrawableCompat.f20073k;
            this.f20108b = new VPathRenderer();
        }
    }

    public static class VectorDrawableDelegateState extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Drawable.ConstantState f20116a;

        public VectorDrawableDelegateState(Drawable.ConstantState constantState) {
            this.f20116a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final boolean canApplyTheme() {
            return this.f20116a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f20116a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.f20072b = (VectorDrawable) this.f20116a.newDrawable();
            return vectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.f20072b = (VectorDrawable) this.f20116a.newDrawable(resources);
            return vectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.f20072b = (VectorDrawable) this.f20116a.newDrawable(resources, theme);
            return vectorDrawableCompat;
        }
    }

    public static abstract class VPath extends VObject {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public PathParser.PathDataNode[] f20095a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f20096b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f20097c;

        public VPath(VPath vPath) {
            this.f20095a = null;
            this.f20097c = 0;
            this.f20096b = vPath.f20096b;
            PathParser.PathDataNode[] pathDataNodeArr = vPath.f20095a;
            PathParser.PathDataNode[] pathDataNodeArr2 = new PathParser.PathDataNode[pathDataNodeArr.length];
            for (int i2 = 0; i2 < pathDataNodeArr.length; i2++) {
                pathDataNodeArr2[i2] = new PathParser.PathDataNode(pathDataNodeArr[i2]);
            }
            this.f20095a = pathDataNodeArr2;
        }

        public PathParser.PathDataNode[] getPathData() {
            return this.f20095a;
        }

        public String getPathName() {
            return this.f20096b;
        }

        public void setPathData(PathParser.PathDataNode[] pathDataNodeArr) {
            PathParser.PathDataNode[] pathDataNodeArr2 = this.f20095a;
            if (pathDataNodeArr2 != null && pathDataNodeArr != null && pathDataNodeArr2.length == pathDataNodeArr.length) {
                int i2 = 0;
                while (true) {
                    if (i2 >= pathDataNodeArr2.length) {
                        PathParser.PathDataNode[] pathDataNodeArr3 = this.f20095a;
                        for (int i3 = 0; i3 < pathDataNodeArr.length; i3++) {
                            pathDataNodeArr3[i3].f12058a = pathDataNodeArr[i3].f12058a;
                            int i4 = 0;
                            while (true) {
                                float[] fArr = pathDataNodeArr[i3].f12059b;
                                if (i4 < fArr.length) {
                                    pathDataNodeArr3[i3].f12059b[i4] = fArr[i4];
                                    i4++;
                                }
                            }
                        }
                        return;
                    }
                    PathParser.PathDataNode pathDataNode = pathDataNodeArr2[i2];
                    char c2 = pathDataNode.f12058a;
                    PathParser.PathDataNode pathDataNode2 = pathDataNodeArr[i2];
                    if (c2 != pathDataNode2.f12058a || pathDataNode.f12059b.length != pathDataNode2.f12059b.length) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            PathParser.PathDataNode[] pathDataNodeArr4 = new PathParser.PathDataNode[pathDataNodeArr.length];
            for (int i5 = 0; i5 < pathDataNodeArr.length; i5++) {
                pathDataNodeArr4[i5] = new PathParser.PathDataNode(pathDataNodeArr[i5]);
            }
            this.f20095a = pathDataNodeArr4;
        }

        public VPath() {
            this.f20095a = null;
            this.f20097c = 0;
        }
    }

    public VectorDrawableCompat() {
        this.g = true;
        this.f20077h = new float[9];
        this.f20078i = new Matrix();
        this.f20079j = new Rect();
        this.f20074c = new VectorDrawableCompatState();
    }

    public static class VPathRenderer {
        public static final Matrix p = new Matrix();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Path f20098a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Path f20099b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Matrix f20100c;
        public Paint d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Paint f20101e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public PathMeasure f20102f;
        public final VGroup g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f20103h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f20104i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f20105j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public float f20106k;
        public int l;
        public String m;
        public Boolean n;
        public final ArrayMap o;

        public VPathRenderer(VPathRenderer vPathRenderer) {
            this.f20100c = new Matrix();
            this.f20103h = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.f20104i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.f20105j = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.f20106k = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.l = 255;
            this.m = null;
            this.n = null;
            ArrayMap arrayMap = new ArrayMap();
            this.o = arrayMap;
            this.g = new VGroup(vPathRenderer.g, arrayMap);
            this.f20098a = new Path(vPathRenderer.f20098a);
            this.f20099b = new Path(vPathRenderer.f20099b);
            this.f20103h = vPathRenderer.f20103h;
            this.f20104i = vPathRenderer.f20104i;
            this.f20105j = vPathRenderer.f20105j;
            this.f20106k = vPathRenderer.f20106k;
            this.l = vPathRenderer.l;
            this.m = vPathRenderer.m;
            String str = vPathRenderer.m;
            if (str != null) {
                arrayMap.put(str, this);
            }
            this.n = vPathRenderer.n;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(VGroup vGroup, Matrix matrix, Canvas canvas, int i2, int i3) {
            int i4;
            float f2;
            int i5;
            Matrix matrix2 = vGroup.f20086a;
            ArrayList arrayList = vGroup.f20087b;
            matrix2.set(matrix);
            Matrix matrix3 = vGroup.f20086a;
            matrix3.preConcat(vGroup.f20093j);
            canvas.save();
            char c2 = 0;
            int i6 = 0;
            while (i6 < arrayList.size()) {
                VObject vObject = (VObject) arrayList.get(i6);
                if (vObject instanceof VGroup) {
                    a((VGroup) vObject, matrix3, canvas, i2, i3);
                } else {
                    if (vObject instanceof VPath) {
                        VPath vPath = (VPath) vObject;
                        float f3 = i2 / this.f20105j;
                        float f4 = i3 / this.f20106k;
                        float fMin = Math.min(f3, f4);
                        Matrix matrix4 = this.f20100c;
                        matrix4.set(matrix3);
                        matrix4.postScale(f3, f4);
                        float[] fArr = {Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM};
                        matrix3.mapVectors(fArr);
                        float fHypot = (float) Math.hypot(fArr[c2], fArr[1]);
                        boolean z = c2;
                        i4 = i6;
                        float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
                        float f5 = (fArr[z ? 1 : 0] * fArr[3]) - (fArr[1] * fArr[2]);
                        float fMax = Math.max(fHypot, fHypot2);
                        float fAbs = fMax > Call.Parameters.DEFAULT_CAMERA_ZOOM ? Math.abs(f5) / fMax : 0.0f;
                        if (fAbs != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            Path path = this.f20098a;
                            path.reset();
                            PathParser.PathDataNode[] pathDataNodeArr = vPath.f20095a;
                            if (pathDataNodeArr != null) {
                                PathParser.PathDataNode.b(pathDataNodeArr, path);
                            }
                            Path path2 = this.f20099b;
                            path2.reset();
                            if (vPath instanceof VClipPath) {
                                path2.setFillType(vPath.f20097c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                path2.addPath(path, matrix4);
                                canvas.clipPath(path2);
                            } else {
                                VFullPath vFullPath = (VFullPath) vPath;
                                float f6 = vFullPath.f20083i;
                                if (f6 != Call.Parameters.DEFAULT_CAMERA_ZOOM || vFullPath.f20084j != 1.0f) {
                                    float f7 = vFullPath.f20085k;
                                    float f8 = (f6 + f7) % 1.0f;
                                    float f9 = (vFullPath.f20084j + f7) % 1.0f;
                                    if (this.f20102f == null) {
                                        this.f20102f = new PathMeasure();
                                    }
                                    this.f20102f.setPath(path, z);
                                    float length = this.f20102f.getLength();
                                    float f10 = f8 * length;
                                    float f11 = f9 * length;
                                    path.reset();
                                    PathMeasure pathMeasure = this.f20102f;
                                    if (f10 > f11) {
                                        pathMeasure.getSegment(f10, length, path, true);
                                        PathMeasure pathMeasure2 = this.f20102f;
                                        f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                        pathMeasure2.getSegment(Call.Parameters.DEFAULT_CAMERA_ZOOM, f11, path, true);
                                    } else {
                                        f2 = 0.0f;
                                        pathMeasure.getSegment(f10, f11, path, true);
                                    }
                                    path.rLineTo(f2, f2);
                                }
                                path2.addPath(path, matrix4);
                                ComplexColorCompat complexColorCompat = vFullPath.f20081f;
                                float f12 = 255.0f;
                                if (complexColorCompat.f12021a == null && complexColorCompat.f12023c == 0) {
                                    f12 = 255.0f;
                                    i5 = 16777215;
                                } else {
                                    if (this.f20101e == null) {
                                        i5 = 16777215;
                                        Paint paint = new Paint(1);
                                        this.f20101e = paint;
                                        paint.setStyle(Paint.Style.FILL);
                                    } else {
                                        i5 = 16777215;
                                    }
                                    Paint paint2 = this.f20101e;
                                    Shader shader = complexColorCompat.f12021a;
                                    if (shader != null) {
                                        shader.setLocalMatrix(matrix4);
                                        paint2.setShader(shader);
                                        paint2.setAlpha(Math.round(vFullPath.f20082h * 255.0f));
                                    } else {
                                        paint2.setShader(null);
                                        paint2.setAlpha(255);
                                        int i7 = complexColorCompat.f12023c;
                                        float f13 = vFullPath.f20082h;
                                        PorterDuff.Mode mode = VectorDrawableCompat.f20073k;
                                        paint2.setColor((i7 & i5) | (((int) (Color.alpha(i7) * f13)) << 24));
                                    }
                                    paint2.setColorFilter(null);
                                    path2.setFillType(vFullPath.f20097c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                    canvas.drawPath(path2, paint2);
                                }
                                ComplexColorCompat complexColorCompat2 = vFullPath.d;
                                if (complexColorCompat2.f12021a != null || complexColorCompat2.f12023c != 0) {
                                    if (this.d == null) {
                                        Paint paint3 = new Paint(1);
                                        this.d = paint3;
                                        paint3.setStyle(Paint.Style.STROKE);
                                    }
                                    Paint paint4 = this.d;
                                    Paint.Join join = vFullPath.m;
                                    if (join != null) {
                                        paint4.setStrokeJoin(join);
                                    }
                                    Paint.Cap cap = vFullPath.l;
                                    if (cap != null) {
                                        paint4.setStrokeCap(cap);
                                    }
                                    paint4.setStrokeMiter(vFullPath.n);
                                    Shader shader2 = complexColorCompat2.f12021a;
                                    if (shader2 != null) {
                                        shader2.setLocalMatrix(matrix4);
                                        paint4.setShader(shader2);
                                        paint4.setAlpha(Math.round(vFullPath.g * f12));
                                    } else {
                                        paint4.setShader(null);
                                        paint4.setAlpha(255);
                                        int i8 = complexColorCompat2.f12023c;
                                        float f14 = vFullPath.g;
                                        PorterDuff.Mode mode2 = VectorDrawableCompat.f20073k;
                                        paint4.setColor((i8 & i5) | (((int) (Color.alpha(i8) * f14)) << 24));
                                    }
                                    paint4.setColorFilter(null);
                                    paint4.setStrokeWidth(vFullPath.f20080e * fMin * fAbs);
                                    canvas.drawPath(path2, paint4);
                                }
                            }
                        }
                    }
                    i6 = i4 + 1;
                    c2 = 0;
                }
                i4 = i6;
                i6 = i4 + 1;
                c2 = 0;
            }
            canvas.restore();
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.l;
        }

        public void setAlpha(float f2) {
            setRootAlpha((int) (f2 * 255.0f));
        }

        public void setRootAlpha(int i2) {
            this.l = i2;
        }

        public VPathRenderer() {
            this.f20100c = new Matrix();
            this.f20103h = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.f20104i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.f20105j = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.f20106k = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.l = 255;
            this.m = null;
            this.n = null;
            this.o = new ArrayMap();
            this.g = new VGroup();
            this.f20098a = new Path();
            this.f20099b = new Path();
        }
    }

    public static class VGroup extends VObject {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Matrix f20086a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f20087b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f20088c;
        public float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f20089e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f20090f;
        public float g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f20091h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f20092i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final Matrix f20093j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public String f20094k;

        public VGroup(VGroup vGroup, ArrayMap<String, Object> arrayMap) {
            VPath vClipPath;
            this.f20086a = new Matrix();
            this.f20087b = new ArrayList();
            this.f20088c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.d = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.f20089e = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.f20090f = 1.0f;
            this.g = 1.0f;
            this.f20091h = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.f20092i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            Matrix matrix = new Matrix();
            this.f20093j = matrix;
            this.f20094k = null;
            this.f20088c = vGroup.f20088c;
            this.d = vGroup.d;
            this.f20089e = vGroup.f20089e;
            this.f20090f = vGroup.f20090f;
            this.g = vGroup.g;
            this.f20091h = vGroup.f20091h;
            this.f20092i = vGroup.f20092i;
            String str = vGroup.f20094k;
            this.f20094k = str;
            if (str != null) {
                arrayMap.put(str, this);
            }
            matrix.set(vGroup.f20093j);
            ArrayList arrayList = vGroup.f20087b;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                Object obj = arrayList.get(i2);
                if (obj instanceof VGroup) {
                    this.f20087b.add(new VGroup((VGroup) obj, arrayMap));
                } else {
                    if (obj instanceof VFullPath) {
                        VFullPath vFullPath = (VFullPath) obj;
                        VFullPath vFullPath2 = new VFullPath(vFullPath);
                        vFullPath2.f20080e = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        vFullPath2.g = 1.0f;
                        vFullPath2.f20082h = 1.0f;
                        vFullPath2.f20083i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        vFullPath2.f20084j = 1.0f;
                        vFullPath2.f20085k = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        vFullPath2.l = Paint.Cap.BUTT;
                        vFullPath2.m = Paint.Join.MITER;
                        vFullPath2.n = 4.0f;
                        vFullPath2.d = vFullPath.d;
                        vFullPath2.f20080e = vFullPath.f20080e;
                        vFullPath2.g = vFullPath.g;
                        vFullPath2.f20081f = vFullPath.f20081f;
                        vFullPath2.f20097c = vFullPath.f20097c;
                        vFullPath2.f20082h = vFullPath.f20082h;
                        vFullPath2.f20083i = vFullPath.f20083i;
                        vFullPath2.f20084j = vFullPath.f20084j;
                        vFullPath2.f20085k = vFullPath.f20085k;
                        vFullPath2.l = vFullPath.l;
                        vFullPath2.m = vFullPath.m;
                        vFullPath2.n = vFullPath.n;
                        vClipPath = vFullPath2;
                    } else {
                        if (!(obj instanceof VClipPath)) {
                            md.k("Unknown object in the tree!");
                            throw null;
                        }
                        vClipPath = new VClipPath((VClipPath) obj);
                    }
                    this.f20087b.add(vClipPath);
                    String str2 = vClipPath.f20096b;
                    if (str2 != null) {
                        arrayMap.put(str2, vClipPath);
                    }
                }
            }
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        public final boolean a() {
            int i2 = 0;
            while (true) {
                ArrayList arrayList = this.f20087b;
                if (i2 >= arrayList.size()) {
                    return false;
                }
                if (((VObject) arrayList.get(i2)).a()) {
                    return true;
                }
                i2++;
            }
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        public final boolean b(int[] iArr) {
            int i2 = 0;
            boolean zB = false;
            while (true) {
                ArrayList arrayList = this.f20087b;
                if (i2 >= arrayList.size()) {
                    return zB;
                }
                zB |= ((VObject) arrayList.get(i2)).b(iArr);
                i2++;
            }
        }

        public final void c() {
            Matrix matrix = this.f20093j;
            matrix.reset();
            matrix.postTranslate(-this.d, -this.f20089e);
            matrix.postScale(this.f20090f, this.g);
            matrix.postRotate(this.f20088c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            matrix.postTranslate(this.f20091h + this.d, this.f20092i + this.f20089e);
        }

        public String getGroupName() {
            return this.f20094k;
        }

        public Matrix getLocalMatrix() {
            return this.f20093j;
        }

        public float getPivotX() {
            return this.d;
        }

        public float getPivotY() {
            return this.f20089e;
        }

        public float getRotation() {
            return this.f20088c;
        }

        public float getScaleX() {
            return this.f20090f;
        }

        public float getScaleY() {
            return this.g;
        }

        public float getTranslateX() {
            return this.f20091h;
        }

        public float getTranslateY() {
            return this.f20092i;
        }

        public void setPivotX(float f2) {
            if (f2 != this.d) {
                this.d = f2;
                c();
            }
        }

        public void setPivotY(float f2) {
            if (f2 != this.f20089e) {
                this.f20089e = f2;
                c();
            }
        }

        public void setRotation(float f2) {
            if (f2 != this.f20088c) {
                this.f20088c = f2;
                c();
            }
        }

        public void setScaleX(float f2) {
            if (f2 != this.f20090f) {
                this.f20090f = f2;
                c();
            }
        }

        public void setScaleY(float f2) {
            if (f2 != this.g) {
                this.g = f2;
                c();
            }
        }

        public void setTranslateX(float f2) {
            if (f2 != this.f20091h) {
                this.f20091h = f2;
                c();
            }
        }

        public void setTranslateY(float f2) {
            if (f2 != this.f20092i) {
                this.f20092i = f2;
                c();
            }
        }

        public VGroup() {
            this.f20086a = new Matrix();
            this.f20087b = new ArrayList();
            this.f20088c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.d = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.f20089e = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.f20090f = 1.0f;
            this.g = 1.0f;
            this.f20091h = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.f20092i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.f20093j = new Matrix();
            this.f20094k = null;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }
}
