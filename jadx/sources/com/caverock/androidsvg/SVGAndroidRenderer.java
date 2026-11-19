package com.caverock.androidsvg;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.util.Base64;
import defpackage.d21;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.Stack;
import net.rtccloud.sdk.Call;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes2.dex */
class SVGAndroidRenderer {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static HashSet f25199h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Canvas f25200a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f25201b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SVG f25202c;
    public RendererState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Stack f25203e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Stack f25204f;
    public Stack g;

    /* JADX INFO: renamed from: com.caverock.androidsvg.SVGAndroidRenderer$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f25205a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f25206b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f25207c;

        static {
            int[] iArr = new int[SVG.Style.LineJoin.values().length];
            f25207c = iArr;
            try {
                iArr[SVG.Style.LineJoin.Miter.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f25207c[SVG.Style.LineJoin.Round.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f25207c[SVG.Style.LineJoin.Bevel.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[SVG.Style.LineCap.values().length];
            f25206b = iArr2;
            try {
                iArr2[SVG.Style.LineCap.Butt.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f25206b[SVG.Style.LineCap.Round.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f25206b[SVG.Style.LineCap.Square.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[PreserveAspectRatio.Alignment.values().length];
            f25205a = iArr3;
            try {
                iArr3[PreserveAspectRatio.Alignment.xMidYMin.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f25205a[PreserveAspectRatio.Alignment.xMidYMid.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f25205a[PreserveAspectRatio.Alignment.xMidYMax.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f25205a[PreserveAspectRatio.Alignment.xMaxYMin.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f25205a[PreserveAspectRatio.Alignment.xMaxYMid.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f25205a[PreserveAspectRatio.Alignment.xMaxYMax.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f25205a[PreserveAspectRatio.Alignment.xMinYMid.ordinal()] = 7;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f25205a[PreserveAspectRatio.Alignment.xMinYMax.ordinal()] = 8;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    public class MarkerPositionCalculator implements SVG.PathInterface {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f25208a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f25209b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f25210c;
        public MarkerVector d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f25211e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f25212f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f25213h;

        public MarkerPositionCalculator(SVGAndroidRenderer sVGAndroidRenderer, SVG.PathDefinition pathDefinition) {
            ArrayList arrayList = new ArrayList();
            this.f25208a = arrayList;
            this.d = null;
            this.f25211e = false;
            this.f25212f = true;
            this.g = -1;
            if (pathDefinition == null) {
                return;
            }
            pathDefinition.h(this);
            if (this.f25213h) {
                this.d.b((MarkerVector) arrayList.get(this.g));
                arrayList.set(this.g, this.d);
                this.f25213h = false;
            }
            MarkerVector markerVector = this.d;
            if (markerVector != null) {
                arrayList.add(markerVector);
            }
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void a(float f2, float f3) {
            boolean z = this.f25213h;
            ArrayList arrayList = this.f25208a;
            if (z) {
                this.d.b((MarkerVector) arrayList.get(this.g));
                arrayList.set(this.g, this.d);
                this.f25213h = false;
            }
            MarkerVector markerVector = this.d;
            if (markerVector != null) {
                arrayList.add(markerVector);
            }
            this.f25209b = f2;
            this.f25210c = f3;
            this.d = new MarkerVector(f2, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.g = arrayList.size();
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void b(float f2, float f3, float f4, float f5, float f6, float f7) {
            if (this.f25212f || this.f25211e) {
                this.d.a(f2, f3);
                this.f25208a.add(this.d);
                this.f25211e = false;
            }
            this.d = new MarkerVector(f6, f7, f6 - f4, f7 - f5);
            this.f25213h = false;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void c(float f2, float f3) {
            this.d.a(f2, f3);
            this.f25208a.add(this.d);
            MarkerVector markerVector = this.d;
            this.d = new MarkerVector(f2, f3, f2 - markerVector.f25214a, f3 - markerVector.f25215b);
            this.f25213h = false;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void close() {
            this.f25208a.add(this.d);
            c(this.f25209b, this.f25210c);
            this.f25213h = true;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void d(float f2, float f3, float f4, float f5) {
            this.d.a(f2, f3);
            this.f25208a.add(this.d);
            this.d = new MarkerVector(f4, f5, f4 - f2, f5 - f3);
            this.f25213h = false;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void e(float f2, float f3, float f4, boolean z, boolean z2, float f5, float f6) {
            this.f25211e = true;
            this.f25212f = false;
            MarkerVector markerVector = this.d;
            SVGAndroidRenderer.a(markerVector.f25214a, markerVector.f25215b, f2, f3, f4, z, z2, f5, f6, this);
            this.f25212f = true;
            this.f25213h = false;
        }
    }

    public class MarkerVector {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f25214a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f25215b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f25216c;
        public float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f25217e = false;

        public MarkerVector(float f2, float f3, float f4, float f5) {
            this.f25216c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.d = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.f25214a = f2;
            this.f25215b = f3;
            double dSqrt = Math.sqrt((f5 * f5) + (f4 * f4));
            if (dSqrt != 0.0d) {
                this.f25216c = (float) (((double) f4) / dSqrt);
                this.d = (float) (((double) f5) / dSqrt);
            }
        }

        public final void a(float f2, float f3) {
            float f4 = f2 - this.f25214a;
            float f5 = f3 - this.f25215b;
            double dSqrt = Math.sqrt((f5 * f5) + (f4 * f4));
            if (dSqrt != 0.0d) {
                f4 = (float) (((double) f4) / dSqrt);
                f5 = (float) (((double) f5) / dSqrt);
            }
            float f6 = this.f25216c;
            if (f4 != (-f6) || f5 != (-this.d)) {
                this.f25216c = f6 + f4;
                this.d += f5;
            } else {
                this.f25217e = true;
                this.f25216c = -f5;
                this.d = f4;
            }
        }

        public final void b(MarkerVector markerVector) {
            float f2 = markerVector.f25216c;
            float f3 = this.f25216c;
            if (f2 == (-f3)) {
                float f4 = markerVector.d;
                if (f4 == (-this.d)) {
                    this.f25217e = true;
                    this.f25216c = -f4;
                    this.d = markerVector.f25216c;
                    return;
                }
            }
            this.f25216c = f3 + f2;
            this.d += markerVector.d;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("(");
            sb.append(this.f25214a);
            sb.append(",");
            sb.append(this.f25215b);
            sb.append(" ");
            sb.append(this.f25216c);
            sb.append(",");
            return d21.e(this.d, ")", sb);
        }
    }

    public class PathConverter implements SVG.PathInterface {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Path f25218a = new Path();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f25219b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f25220c;

        public PathConverter(SVG.PathDefinition pathDefinition) {
            if (pathDefinition == null) {
                return;
            }
            pathDefinition.h(this);
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void a(float f2, float f3) {
            this.f25218a.moveTo(f2, f3);
            this.f25219b = f2;
            this.f25220c = f3;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void b(float f2, float f3, float f4, float f5, float f6, float f7) {
            this.f25218a.cubicTo(f2, f3, f4, f5, f6, f7);
            this.f25219b = f6;
            this.f25220c = f7;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void c(float f2, float f3) {
            this.f25218a.lineTo(f2, f3);
            this.f25219b = f2;
            this.f25220c = f3;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void close() {
            this.f25218a.close();
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void d(float f2, float f3, float f4, float f5) {
            this.f25218a.quadTo(f2, f3, f4, f5);
            this.f25219b = f4;
            this.f25220c = f5;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void e(float f2, float f3, float f4, boolean z, boolean z2, float f5, float f6) {
            SVGAndroidRenderer.a(this.f25219b, this.f25220c, f2, f3, f4, z, z2, f5, f6, this);
            this.f25219b = f5;
            this.f25220c = f6;
        }
    }

    public class PathTextDrawer extends PlainTextDrawer {
        public final Path d;

        public PathTextDrawer(Path path, float f2) {
            super(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.d = path;
        }

        @Override // com.caverock.androidsvg.SVGAndroidRenderer.PlainTextDrawer, com.caverock.androidsvg.SVGAndroidRenderer.TextProcessor
        public final void b(String str) {
            SVGAndroidRenderer sVGAndroidRenderer = SVGAndroidRenderer.this;
            if (sVGAndroidRenderer.T()) {
                RendererState rendererState = sVGAndroidRenderer.d;
                if (rendererState.f25229b) {
                    sVGAndroidRenderer.f25200a.drawTextOnPath(str, this.d, this.f25222a, this.f25223b, rendererState.d);
                }
                RendererState rendererState2 = sVGAndroidRenderer.d;
                if (rendererState2.f25230c) {
                    sVGAndroidRenderer.f25200a.drawTextOnPath(str, this.d, this.f25222a, this.f25223b, rendererState2.f25231e);
                }
            }
            this.f25222a = sVGAndroidRenderer.d.d.measureText(str) + this.f25222a;
        }
    }

    public class PlainTextDrawer extends TextProcessor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f25222a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f25223b;

        public PlainTextDrawer(float f2, float f3) {
            this.f25222a = f2;
            this.f25223b = f3;
        }

        @Override // com.caverock.androidsvg.SVGAndroidRenderer.TextProcessor
        public void b(String str) {
            SVGAndroidRenderer sVGAndroidRenderer = SVGAndroidRenderer.this;
            Canvas canvas = sVGAndroidRenderer.f25200a;
            if (sVGAndroidRenderer.T()) {
                RendererState rendererState = sVGAndroidRenderer.d;
                if (rendererState.f25229b) {
                    canvas.drawText(str, this.f25222a, this.f25223b, rendererState.d);
                }
                RendererState rendererState2 = sVGAndroidRenderer.d;
                if (rendererState2.f25230c) {
                    canvas.drawText(str, this.f25222a, this.f25223b, rendererState2.f25231e);
                }
            }
            this.f25222a = sVGAndroidRenderer.d.d.measureText(str) + this.f25222a;
        }
    }

    public class PlainTextToPath extends TextProcessor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f25225a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f25226b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Path f25227c;

        public PlainTextToPath(float f2, float f3, Path path) {
            this.f25225a = f2;
            this.f25226b = f3;
            this.f25227c = path;
        }

        @Override // com.caverock.androidsvg.SVGAndroidRenderer.TextProcessor
        public final boolean a(SVG.TextContainer textContainer) {
            return !(textContainer instanceof SVG.TextPath);
        }

        @Override // com.caverock.androidsvg.SVGAndroidRenderer.TextProcessor
        public final void b(String str) {
            String str2;
            SVGAndroidRenderer sVGAndroidRenderer = SVGAndroidRenderer.this;
            if (sVGAndroidRenderer.T()) {
                Path path = new Path();
                str2 = str;
                sVGAndroidRenderer.d.d.getTextPath(str2, 0, str.length(), this.f25225a, this.f25226b, path);
                this.f25227c.addPath(path);
            } else {
                str2 = str;
            }
            this.f25225a = sVGAndroidRenderer.d.d.measureText(str2) + this.f25225a;
        }
    }

    public class TextBoundsCalculator extends TextProcessor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f25234a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f25235b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final RectF f25236c = new RectF();

        public TextBoundsCalculator(float f2, float f3) {
            this.f25234a = f2;
            this.f25235b = f3;
        }

        @Override // com.caverock.androidsvg.SVGAndroidRenderer.TextProcessor
        public final boolean a(SVG.TextContainer textContainer) {
            if (!(textContainer instanceof SVG.TextPath)) {
                return true;
            }
            SVG.SvgElementBase svgElementBaseE = textContainer.f25196a.e(((SVG.TextPath) textContainer).n);
            if (svgElementBaseE == null) {
                return false;
            }
            SVG.Path path = (SVG.Path) svgElementBaseE;
            PathConverter pathConverter = new PathConverter(path.o);
            Matrix matrix = path.n;
            Path path2 = pathConverter.f25218a;
            if (matrix != null) {
                path2.transform(matrix);
            }
            RectF rectF = new RectF();
            path2.computeBounds(rectF, true);
            this.f25236c.union(rectF);
            return false;
        }

        @Override // com.caverock.androidsvg.SVGAndroidRenderer.TextProcessor
        public final void b(String str) {
            SVGAndroidRenderer sVGAndroidRenderer = SVGAndroidRenderer.this;
            if (sVGAndroidRenderer.T()) {
                Rect rect = new Rect();
                sVGAndroidRenderer.d.d.getTextBounds(str, 0, str.length(), rect);
                RectF rectF = new RectF(rect);
                rectF.offset(this.f25234a, this.f25235b);
                this.f25236c.union(rectF);
            }
            this.f25234a = sVGAndroidRenderer.d.d.measureText(str) + this.f25234a;
        }
    }

    public abstract class TextProcessor {
        public boolean a(SVG.TextContainer textContainer) {
            return true;
        }

        public abstract void b(String str);
    }

    public class TextWidthCalculator extends TextProcessor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f25237a = Call.Parameters.DEFAULT_CAMERA_ZOOM;

        public TextWidthCalculator() {
        }

        @Override // com.caverock.androidsvg.SVGAndroidRenderer.TextProcessor
        public final void b(String str) {
            this.f25237a = SVGAndroidRenderer.this.d.d.measureText(str) + this.f25237a;
        }
    }

    public static void L(RendererState rendererState, boolean z, SVG.SvgPaint svgPaint) {
        int i2;
        SVG.Style style = rendererState.f25228a;
        float fFloatValue = (z ? style.f25180e : style.g).floatValue();
        if (svgPaint instanceof SVG.Colour) {
            i2 = ((SVG.Colour) svgPaint).f25164b;
        } else if (!(svgPaint instanceof SVG.CurrentColor)) {
            return;
        } else {
            i2 = rendererState.f25228a.o.f25164b;
        }
        int i3 = i(fFloatValue, i2);
        if (z) {
            rendererState.d.setColor(i3);
        } else {
            rendererState.f25231e.setColor(i3);
        }
    }

    public static void a(float f2, float f3, float f4, float f5, float f6, boolean z, boolean z2, float f7, float f8, SVG.PathInterface pathInterface) {
        if (f2 == f7 && f3 == f8) {
            return;
        }
        if (f4 == Call.Parameters.DEFAULT_CAMERA_ZOOM || f5 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            pathInterface.c(f7, f8);
            return;
        }
        float fAbs = Math.abs(f4);
        float fAbs2 = Math.abs(f5);
        double radians = Math.toRadians(((double) f6) % 360.0d);
        double dCos = Math.cos(radians);
        double dSin = Math.sin(radians);
        double d = ((double) (f2 - f7)) / 2.0d;
        double d2 = ((double) (f3 - f8)) / 2.0d;
        double d3 = (dSin * d2) + (dCos * d);
        double d4 = (dCos * d2) + ((-dSin) * d);
        double d5 = fAbs * fAbs;
        double d6 = fAbs2 * fAbs2;
        double d7 = d3 * d3;
        double d8 = d4 * d4;
        double d9 = (d8 / d6) + (d7 / d5);
        if (d9 > 0.99999d) {
            double dSqrt = Math.sqrt(d9) * 1.00001d;
            fAbs = (float) (((double) fAbs) * dSqrt);
            fAbs2 = (float) (dSqrt * ((double) fAbs2));
            d5 = fAbs * fAbs;
            d6 = fAbs2 * fAbs2;
        }
        double d10 = z == z2 ? -1.0d : 1.0d;
        double d11 = d5 * d6;
        double d12 = d5 * d8;
        double d13 = d6 * d7;
        double d14 = ((d11 - d12) - d13) / (d12 + d13);
        if (d14 < 0.0d) {
            d14 = 0.0d;
        }
        double dSqrt2 = Math.sqrt(d14) * d10;
        double d15 = fAbs;
        double d16 = fAbs2;
        double d17 = ((d15 * d4) / d16) * dSqrt2;
        double d18 = dSqrt2 * (-((d16 * d3) / d15));
        double d19 = ((dCos * d17) - (dSin * d18)) + (((double) (f2 + f7)) / 2.0d);
        double d20 = (dCos * d18) + (dSin * d17) + (((double) (f3 + f8)) / 2.0d);
        double d21 = (d3 - d17) / d15;
        double d22 = (d4 - d18) / d16;
        double d23 = ((-d3) - d17) / d15;
        double d24 = ((-d4) - d18) / d16;
        double d25 = (d22 * d22) + (d21 * d21);
        double dAcos = Math.acos(d21 / Math.sqrt(d25)) * (d22 < 0.0d ? -1.0d : 1.0d);
        double dSqrt3 = Math.sqrt(((d24 * d24) + (d23 * d23)) * d25);
        double d26 = (d22 * d24) + (d21 * d23);
        double d27 = d26 / dSqrt3;
        double dAcos2 = ((d21 * d24) - (d22 * d23) < 0.0d ? -1.0d : 1.0d) * (d27 < -1.0d ? 3.141592653589793d : d27 > 1.0d ? 0.0d : Math.acos(d27));
        if (!z2 && dAcos2 > 0.0d) {
            dAcos2 -= 6.283185307179586d;
        } else if (z2 && dAcos2 < 0.0d) {
            dAcos2 += 6.283185307179586d;
        }
        double d28 = dAcos2 % 6.283185307179586d;
        double d29 = dAcos % 6.283185307179586d;
        int iCeil = (int) Math.ceil((Math.abs(d28) * 2.0d) / 3.141592653589793d);
        double d30 = d28 / ((double) iCeil);
        double d31 = d30 / 2.0d;
        double dSin2 = (Math.sin(d31) * 1.3333333333333333d) / (Math.cos(d31) + 1.0d);
        int i2 = iCeil * 6;
        float[] fArr = new float[i2];
        int i3 = 0;
        int i4 = 0;
        while (i3 < iCeil) {
            double d32 = d29;
            double d33 = (((double) i3) * d30) + d32;
            double dCos2 = Math.cos(d33);
            double dSin3 = Math.sin(d33);
            int i5 = i3;
            int i6 = i4;
            fArr[i6] = (float) (dCos2 - (dSin2 * dSin3));
            fArr[i4 + 1] = (float) ((dCos2 * dSin2) + dSin3);
            double d34 = d33 + d30;
            double dCos3 = Math.cos(d34);
            double dSin4 = Math.sin(d34);
            fArr[i6 + 2] = (float) ((dSin2 * dSin4) + dCos3);
            fArr[i6 + 3] = (float) (dSin4 - (dSin2 * dCos3));
            fArr[i6 + 4] = (float) dCos3;
            i4 = i6 + 6;
            fArr[i6 + 5] = (float) dSin4;
            i3 = i5 + 1;
            d29 = d32;
            iCeil = iCeil;
        }
        Matrix matrix = new Matrix();
        matrix.postScale(fAbs, fAbs2);
        matrix.postRotate(f6);
        matrix.postTranslate((float) d19, (float) d20);
        matrix.mapPoints(fArr);
        fArr[i2 - 2] = f7;
        fArr[i2 - 1] = f8;
        for (int i7 = 0; i7 < i2; i7 += 6) {
            pathInterface.b(fArr[i7], fArr[i7 + 1], fArr[i7 + 2], fArr[i7 + 3], fArr[i7 + 4], fArr[i7 + 5]);
        }
    }

    public static SVG.Box c(Path path) {
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        return new SVG.Box(rectF.left, rectF.top, rectF.width(), rectF.height());
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0069  */
    /* JADX WARN: Code duplicated, block: B:25:0x006c  */
    /* JADX WARN: Code duplicated, block: B:27:0x006f  */
    /* JADX WARN: Code duplicated, block: B:29:0x0072  */
    /* JADX WARN: Code duplicated, block: B:31:0x0075  */
    /* JADX WARN: Code duplicated, block: B:36:0x007f  */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0077, code lost:
    
        if (r1 != 8) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Matrix e(com.caverock.androidsvg.SVG.Box r9, com.caverock.androidsvg.SVG.Box r10, com.caverock.androidsvg.PreserveAspectRatio r11) {
        /*
            android.graphics.Matrix r0 = new android.graphics.Matrix
            r0.<init>()
            if (r11 == 0) goto L91
            com.caverock.androidsvg.PreserveAspectRatio$Alignment r1 = r11.f25150a
            if (r1 != 0) goto Ld
            goto L91
        Ld:
            float r2 = r9.f25159c
            float r3 = r10.f25159c
            float r2 = r2 / r3
            float r3 = r9.d
            float r4 = r10.d
            float r3 = r3 / r4
            float r4 = r10.f25157a
            float r4 = -r4
            float r5 = r10.f25158b
            float r5 = -r5
            com.caverock.androidsvg.PreserveAspectRatio r6 = com.caverock.androidsvg.PreserveAspectRatio.f25149c
            boolean r6 = r11.equals(r6)
            if (r6 == 0) goto L33
            float r10 = r9.f25157a
            float r9 = r9.f25158b
            r0.preTranslate(r10, r9)
            r0.preScale(r2, r3)
            r0.preTranslate(r4, r5)
            return r0
        L33:
            com.caverock.androidsvg.PreserveAspectRatio$Scale r11 = r11.f25151b
            com.caverock.androidsvg.PreserveAspectRatio$Scale r6 = com.caverock.androidsvg.PreserveAspectRatio.Scale.slice
            if (r11 != r6) goto L3e
            float r11 = java.lang.Math.max(r2, r3)
            goto L42
        L3e:
            float r11 = java.lang.Math.min(r2, r3)
        L42:
            float r2 = r9.f25159c
            float r2 = r2 / r11
            float r3 = r9.d
            float r3 = r3 / r11
            int[] r6 = com.caverock.androidsvg.SVGAndroidRenderer.AnonymousClass1.f25205a
            int r7 = r1.ordinal()
            r7 = r6[r7]
            r8 = 1073741824(0x40000000, float:2.0)
            switch(r7) {
                case 1: goto L5b;
                case 2: goto L5b;
                case 3: goto L5b;
                case 4: goto L56;
                case 5: goto L56;
                case 6: goto L56;
                default: goto L55;
            }
        L55:
            goto L60
        L56:
            float r7 = r10.f25159c
            float r7 = r7 - r2
        L59:
            float r4 = r4 - r7
            goto L60
        L5b:
            float r7 = r10.f25159c
            float r7 = r7 - r2
            float r7 = r7 / r8
            goto L59
        L60:
            int r1 = r1.ordinal()
            r1 = r6[r1]
            r2 = 2
            if (r1 == r2) goto L7f
            r2 = 3
            if (r1 == r2) goto L7a
            r2 = 5
            if (r1 == r2) goto L7f
            r2 = 6
            if (r1 == r2) goto L7a
            r2 = 7
            if (r1 == r2) goto L7f
            r2 = 8
            if (r1 == r2) goto L7a
            goto L84
        L7a:
            float r10 = r10.d
            float r10 = r10 - r3
        L7d:
            float r5 = r5 - r10
            goto L84
        L7f:
            float r10 = r10.d
            float r10 = r10 - r3
            float r10 = r10 / r8
            goto L7d
        L84:
            float r10 = r9.f25157a
            float r9 = r9.f25158b
            r0.preTranslate(r10, r9)
            r0.preScale(r11, r11)
            r0.preTranslate(r4, r5)
        L91:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGAndroidRenderer.e(com.caverock.androidsvg.SVG$Box, com.caverock.androidsvg.SVG$Box, com.caverock.androidsvg.PreserveAspectRatio):android.graphics.Matrix");
    }

    public static Typeface h(String str, Integer num, SVG.Style.FontStyle fontStyle) {
        int i2;
        boolean z = fontStyle == SVG.Style.FontStyle.Italic;
        if (num.intValue() > 500) {
            i2 = z ? 3 : 1;
        } else {
            i2 = z ? 2 : 0;
        }
        str.getClass();
        switch (str) {
            case "sans-serif":
                return Typeface.create(Typeface.SANS_SERIF, i2);
            case "monospace":
                return Typeface.create(Typeface.MONOSPACE, i2);
            case "fantasy":
                return Typeface.create(Typeface.SANS_SERIF, i2);
            case "serif":
                return Typeface.create(Typeface.SERIF, i2);
            case "cursive":
                return Typeface.create(Typeface.SANS_SERIF, i2);
            default:
                return null;
        }
    }

    public static int i(float f2, int i2) {
        int i3 = 255;
        int iRound = Math.round(((i2 >> 24) & 255) * f2);
        if (iRound < 0) {
            i3 = 0;
        } else if (iRound <= 255) {
            i3 = iRound;
        }
        return (i3 << 24) | (i2 & 16777215);
    }

    public static void p(SVG.GradientElement gradientElement, String str) {
        SVG.SvgElementBase svgElementBaseE = gradientElement.f25196a.e(str);
        if (svgElementBaseE == null || !(svgElementBaseE instanceof SVG.GradientElement) || svgElementBaseE == gradientElement) {
            return;
        }
        SVG.GradientElement gradientElement2 = (SVG.GradientElement) svgElementBaseE;
        if (gradientElement.f25167i == null) {
            gradientElement.f25167i = gradientElement2.f25167i;
        }
        if (gradientElement.f25168j == null) {
            gradientElement.f25168j = gradientElement2.f25168j;
        }
        if (gradientElement.f25169k == null) {
            gradientElement.f25169k = gradientElement2.f25169k;
        }
        if (gradientElement.f25166h.isEmpty()) {
            gradientElement.f25166h = gradientElement2.f25166h;
        }
        try {
            if (gradientElement instanceof SVG.SvgLinearGradient) {
                SVG.SvgLinearGradient svgLinearGradient = (SVG.SvgLinearGradient) gradientElement;
                SVG.SvgLinearGradient svgLinearGradient2 = (SVG.SvgLinearGradient) svgElementBaseE;
                if (svgLinearGradient.m == null) {
                    svgLinearGradient.m = svgLinearGradient2.m;
                }
                if (svgLinearGradient.n == null) {
                    svgLinearGradient.n = svgLinearGradient2.n;
                }
                if (svgLinearGradient.o == null) {
                    svgLinearGradient.o = svgLinearGradient2.o;
                }
                if (svgLinearGradient.p == null) {
                    svgLinearGradient.p = svgLinearGradient2.p;
                }
            } else {
                q((SVG.SvgRadialGradient) gradientElement, (SVG.SvgRadialGradient) svgElementBaseE);
            }
        } catch (ClassCastException unused) {
        }
        String str2 = gradientElement2.l;
        if (str2 != null) {
            p(gradientElement, str2);
        }
    }

    public static void q(SVG.SvgRadialGradient svgRadialGradient, SVG.SvgRadialGradient svgRadialGradient2) {
        if (svgRadialGradient.m == null) {
            svgRadialGradient.m = svgRadialGradient2.m;
        }
        if (svgRadialGradient.n == null) {
            svgRadialGradient.n = svgRadialGradient2.n;
        }
        if (svgRadialGradient.o == null) {
            svgRadialGradient.o = svgRadialGradient2.o;
        }
        if (svgRadialGradient.p == null) {
            svgRadialGradient.p = svgRadialGradient2.p;
        }
        if (svgRadialGradient.q == null) {
            svgRadialGradient.q = svgRadialGradient2.q;
        }
    }

    public static void r(SVG.Pattern pattern, String str) {
        SVG.SvgElementBase svgElementBaseE = pattern.f25196a.e(str);
        if (svgElementBaseE == null || !(svgElementBaseE instanceof SVG.Pattern) || svgElementBaseE == pattern) {
            return;
        }
        SVG.Pattern pattern2 = (SVG.Pattern) svgElementBaseE;
        if (pattern.p == null) {
            pattern.p = pattern2.p;
        }
        if (pattern.q == null) {
            pattern.q = pattern2.q;
        }
        if (pattern.r == null) {
            pattern.r = pattern2.r;
        }
        if (pattern.s == null) {
            pattern.s = pattern2.s;
        }
        if (pattern.t == null) {
            pattern.t = pattern2.t;
        }
        if (pattern.u == null) {
            pattern.u = pattern2.u;
        }
        if (pattern.v == null) {
            pattern.v = pattern2.v;
        }
        if (pattern.f25186i.isEmpty()) {
            pattern.f25186i = pattern2.f25186i;
        }
        if (pattern.o == null) {
            pattern.o = pattern2.o;
        }
        if (pattern.n == null) {
            pattern.n = pattern2.n;
        }
        String str2 = pattern2.w;
        if (str2 != null) {
            r(pattern, str2);
        }
    }

    public static boolean v(SVG.Style style, long j2) {
        return (style.f25178b & j2) != 0;
    }

    public static Path y(SVG.PolyLine polyLine) {
        Path path = new Path();
        float[] fArr = polyLine.o;
        path.moveTo(fArr[0], fArr[1]);
        int i2 = 2;
        while (true) {
            float[] fArr2 = polyLine.o;
            if (i2 >= fArr2.length) {
                break;
            }
            path.lineTo(fArr2[i2], fArr2[i2 + 1]);
            i2 += 2;
        }
        if (polyLine instanceof SVG.Polygon) {
            path.close();
        }
        if (polyLine.f25192h == null) {
            polyLine.f25192h = c(path);
        }
        return path;
    }

    public final SVG.Box A(SVG.Length length, SVG.Length length2, SVG.Length length3, SVG.Length length4) {
        float fE = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fD = length != null ? length.d(this) : 0.0f;
        if (length2 != null) {
            fE = length2.e(this);
        }
        RendererState rendererState = this.d;
        SVG.Box box = rendererState.g;
        if (box == null) {
            box = rendererState.f25232f;
        }
        return new SVG.Box(fD, fE, length3 != null ? length3.d(this) : box.f25159c, length4 != null ? length4.e(this) : box.d);
    }

    /* JADX WARN: Code duplicated, block: B:112:0x01c3  */
    public final Path B(SVG.SvgElement svgElement) {
        Path path;
        Path pathB;
        this.f25203e.push(this.d);
        RendererState rendererState = new RendererState(this.d);
        this.d = rendererState;
        R(rendererState, svgElement);
        if (!k() || !T()) {
            this.d = (RendererState) this.f25203e.pop();
            return null;
        }
        if (svgElement instanceof SVG.Use) {
            SVG.Use use = (SVG.Use) svgElement;
            SVG.SvgElementBase svgElementBaseE = svgElement.f25196a.e(use.o);
            if (svgElementBaseE == null) {
                this.d = (RendererState) this.f25203e.pop();
                return null;
            }
            if (!(svgElementBaseE instanceof SVG.SvgElement)) {
                this.d = (RendererState) this.f25203e.pop();
                return null;
            }
            path = B((SVG.SvgElement) svgElementBaseE);
            if (path != null) {
                if (use.f25192h == null) {
                    use.f25192h = c(path);
                }
                Matrix matrix = use.n;
                if (matrix != null) {
                    path.transform(matrix);
                }
                if (this.d.f25228a.F != null && (pathB = b(svgElement, svgElement.f25192h)) != null) {
                    path.op(pathB, Path.Op.INTERSECT);
                }
                this.d = (RendererState) this.f25203e.pop();
                return path;
            }
            return null;
        }
        if (svgElement instanceof SVG.GraphicsElement) {
            SVG.GraphicsElement graphicsElement = (SVG.GraphicsElement) svgElement;
            if (svgElement instanceof SVG.Path) {
                PathConverter pathConverter = new PathConverter(((SVG.Path) svgElement).o);
                SVG.Box box = svgElement.f25192h;
                Path path2 = pathConverter.f25218a;
                if (box == null) {
                    svgElement.f25192h = c(path2);
                }
                path = path2;
            } else if (svgElement instanceof SVG.Rect) {
                path = z((SVG.Rect) svgElement);
            } else if (svgElement instanceof SVG.Circle) {
                path = w((SVG.Circle) svgElement);
            } else if (svgElement instanceof SVG.Ellipse) {
                path = x((SVG.Ellipse) svgElement);
            } else {
                path = svgElement instanceof SVG.PolyLine ? y((SVG.PolyLine) svgElement) : null;
            }
            if (path != null) {
                if (graphicsElement.f25192h == null) {
                    graphicsElement.f25192h = c(path);
                }
                Matrix matrix2 = graphicsElement.n;
                if (matrix2 != null) {
                    path.transform(matrix2);
                }
                SVG.Style.FillRule fillRule = this.d.f25228a.G;
                path.setFillType((fillRule == null || fillRule != SVG.Style.FillRule.EvenOdd) ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                if (this.d.f25228a.F != null) {
                    path.op(pathB, Path.Op.INTERSECT);
                }
                this.d = (RendererState) this.f25203e.pop();
                return path;
            }
            return null;
        }
        if (svgElement instanceof SVG.Text) {
            SVG.Text text = (SVG.Text) svgElement;
            ArrayList arrayList = text.n;
            float fE = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            float fD = (arrayList == null || arrayList.size() == 0) ? 0.0f : ((SVG.Length) text.n.get(0)).d(this);
            ArrayList arrayList2 = text.o;
            float fE2 = (arrayList2 == null || arrayList2.size() == 0) ? 0.0f : ((SVG.Length) text.o.get(0)).e(this);
            ArrayList arrayList3 = text.p;
            float fD2 = (arrayList3 == null || arrayList3.size() == 0) ? 0.0f : ((SVG.Length) text.p.get(0)).d(this);
            ArrayList arrayList4 = text.q;
            if (arrayList4 != null && arrayList4.size() != 0) {
                fE = ((SVG.Length) text.q.get(0)).e(this);
            }
            if (this.d.f25228a.v != SVG.Style.TextAnchor.Start) {
                float fD3 = d(text);
                if (this.d.f25228a.v == SVG.Style.TextAnchor.Middle) {
                    fD3 /= 2.0f;
                }
                fD -= fD3;
            }
            if (text.f25192h == null) {
                TextBoundsCalculator textBoundsCalculator = new TextBoundsCalculator(fD, fE2);
                n(text, textBoundsCalculator);
                RectF rectF = textBoundsCalculator.f25236c;
                text.f25192h = new SVG.Box(rectF.left, rectF.top, rectF.width(), rectF.height());
            }
            path = new Path();
            n(text, new PlainTextToPath(fD + fD2, fE2 + fE, path));
            Matrix matrix3 = text.r;
            if (matrix3 != null) {
                path.transform(matrix3);
            }
            SVG.Style.FillRule fillRule2 = this.d.f25228a.G;
            path.setFillType((fillRule2 == null || fillRule2 != SVG.Style.FillRule.EvenOdd) ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
            if (this.d.f25228a.F != null) {
                path.op(pathB, Path.Op.INTERSECT);
            }
            this.d = (RendererState) this.f25203e.pop();
            return path;
        }
        return null;
    }

    public final void C(SVG.Box box) {
        Canvas canvas = this.f25200a;
        if (this.d.f25228a.H != null) {
            Paint paint = new Paint();
            PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
            paint.setXfermode(new PorterDuffXfermode(mode));
            canvas.saveLayer(null, paint, 31);
            Paint paint2 = new Paint();
            paint2.setColorFilter(new ColorMatrixColorFilter(new ColorMatrix(new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.2127f, 0.7151f, 0.0722f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM})));
            canvas.saveLayer(null, paint2, 31);
            SVG.Mask mask = (SVG.Mask) this.f25202c.e(this.d.f25228a.H);
            J(mask, box);
            canvas.restore();
            Paint paint3 = new Paint();
            paint3.setXfermode(new PorterDuffXfermode(mode));
            canvas.saveLayer(null, paint3, 31);
            J(mask, box);
            canvas.restore();
            canvas.restore();
        }
        M();
    }

    public final boolean D() {
        SVG.SvgElementBase svgElementBaseE;
        int i2 = 0;
        if (this.d.f25228a.n.floatValue() >= 1.0f && this.d.f25228a.H == null) {
            return false;
        }
        Canvas canvas = this.f25200a;
        int iFloatValue = (int) (this.d.f25228a.n.floatValue() * 256.0f);
        if (iFloatValue >= 0) {
            i2 = 255;
            if (iFloatValue <= 255) {
                i2 = iFloatValue;
            }
        }
        canvas.saveLayerAlpha(null, i2, 31);
        this.f25203e.push(this.d);
        RendererState rendererState = new RendererState(this.d);
        this.d = rendererState;
        String str = rendererState.f25228a.H;
        if (str != null && ((svgElementBaseE = this.f25202c.e(str)) == null || !(svgElementBaseE instanceof SVG.Mask))) {
            SVG.Style style = this.d.f25228a;
            String str2 = style.H;
            style.H = null;
        }
        return true;
    }

    public final void E(SVG.Svg svg, SVG.Box box, SVG.Box box2, PreserveAspectRatio preserveAspectRatio) {
        if (box.f25159c == Call.Parameters.DEFAULT_CAMERA_ZOOM || box.d == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        if (preserveAspectRatio == null && (preserveAspectRatio = svg.n) == null) {
            preserveAspectRatio = PreserveAspectRatio.d;
        }
        R(this.d, svg);
        if (k()) {
            RendererState rendererState = this.d;
            rendererState.f25232f = box;
            if (!rendererState.f25228a.w.booleanValue()) {
                SVG.Box box3 = this.d.f25232f;
                K(box3.f25157a, box3.f25158b, box3.f25159c, box3.d);
            }
            f(svg, this.d.f25232f);
            Canvas canvas = this.f25200a;
            RendererState rendererState2 = this.d;
            if (box2 != null) {
                canvas.concat(e(rendererState2.f25232f, box2, preserveAspectRatio));
                this.d.g = svg.o;
            } else {
                SVG.Box box4 = rendererState2.f25232f;
                canvas.translate(box4.f25157a, box4.f25158b);
            }
            boolean zD = D();
            S();
            G(svg, true);
            if (zD) {
                C(svg.f25192h);
            }
            P(svg);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void F(SVG.SvgObject svgObject) {
        SVG.Length length;
        String str;
        int iIndexOf;
        Set setA;
        SVG.Length length2;
        SVG.SvgObject svgObjectE;
        Boolean bool;
        if (svgObject instanceof SVG.NotDirectlyRendered) {
            return;
        }
        N();
        if ((svgObject instanceof SVG.SvgElementBase) && (bool = ((SVG.SvgElementBase) svgObject).d) != null) {
            this.d.f25233h = bool.booleanValue();
        }
        if (svgObject instanceof SVG.Svg) {
            SVG.Svg svg = (SVG.Svg) svgObject;
            E(svg, A(svg.p, svg.q, svg.r, svg.s), svg.o, svg.n);
        } else {
            boolean z = svgObject instanceof SVG.Use;
            Bitmap bitmapDecodeByteArray = null;
            float fE = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            if (z) {
                SVG.Use use = (SVG.Use) svgObject;
                Canvas canvas = this.f25200a;
                SVG.Length length3 = use.r;
                if ((length3 == null || !length3.g()) && ((length2 = use.s) == null || !length2.g())) {
                    R(this.d, use);
                    if (k() && (svgObjectE = use.f25196a.e(use.o)) != null) {
                        Matrix matrix = use.n;
                        if (matrix != null) {
                            canvas.concat(matrix);
                        }
                        SVG.Length length4 = use.p;
                        float fD = length4 != null ? length4.d(this) : 0.0f;
                        SVG.Length length5 = use.q;
                        canvas.translate(fD, length5 != null ? length5.e(this) : 0.0f);
                        f(use, use.f25192h);
                        boolean zD = D();
                        this.f25204f.push(use);
                        this.g.push(this.f25200a.getMatrix());
                        if (svgObjectE instanceof SVG.Svg) {
                            SVG.Svg svg2 = (SVG.Svg) svgObjectE;
                            SVG.Box boxA = A(null, null, use.r, use.s);
                            N();
                            E(svg2, boxA, svg2.o, svg2.n);
                            M();
                        } else if (svgObjectE instanceof SVG.Symbol) {
                            SVG.Length length6 = use.r;
                            if (length6 == null) {
                                length6 = new SVG.Length(100.0f, SVG.Unit.percent);
                            }
                            SVG.Length length7 = use.s;
                            if (length7 == null) {
                                length7 = new SVG.Length(100.0f, SVG.Unit.percent);
                            }
                            SVG.Box boxA2 = A(null, null, length6, length7);
                            N();
                            SVG.Symbol symbol = (SVG.Symbol) svgObjectE;
                            if (boxA2.f25159c != Call.Parameters.DEFAULT_CAMERA_ZOOM && boxA2.d != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                PreserveAspectRatio preserveAspectRatio = symbol.n;
                                if (preserveAspectRatio == null) {
                                    preserveAspectRatio = PreserveAspectRatio.d;
                                }
                                R(this.d, symbol);
                                RendererState rendererState = this.d;
                                rendererState.f25232f = boxA2;
                                if (!rendererState.f25228a.w.booleanValue()) {
                                    SVG.Box box = this.d.f25232f;
                                    K(box.f25157a, box.f25158b, box.f25159c, box.d);
                                }
                                SVG.Box box2 = symbol.o;
                                RendererState rendererState2 = this.d;
                                if (box2 != null) {
                                    canvas.concat(e(rendererState2.f25232f, box2, preserveAspectRatio));
                                    this.d.g = symbol.o;
                                } else {
                                    SVG.Box box3 = rendererState2.f25232f;
                                    canvas.translate(box3.f25157a, box3.f25158b);
                                }
                                boolean zD2 = D();
                                G(symbol, true);
                                if (zD2) {
                                    C(symbol.f25192h);
                                }
                                P(symbol);
                            }
                            M();
                        } else {
                            F(svgObjectE);
                        }
                        this.f25204f.pop();
                        this.g.pop();
                        if (zD) {
                            C(use.f25192h);
                        }
                        P(use);
                    }
                }
            } else if (svgObject instanceof SVG.Switch) {
                SVG.Switch r14 = (SVG.Switch) svgObject;
                R(this.d, r14);
                if (k()) {
                    Matrix matrix2 = r14.n;
                    if (matrix2 != null) {
                        this.f25200a.concat(matrix2);
                    }
                    f(r14, r14.f25192h);
                    boolean zD3 = D();
                    String language = Locale.getDefault().getLanguage();
                    for (SVG.SvgObject svgObject2 : r14.f25186i) {
                        if (svgObject2 instanceof SVG.SvgConditional) {
                            SVG.SvgConditional svgConditional = (SVG.SvgConditional) svgObject2;
                            if (svgConditional.b() == null && ((setA = svgConditional.a()) == null || (!setA.isEmpty() && setA.contains(language)))) {
                                Set setE = svgConditional.e();
                                if (setE != null) {
                                    if (f25199h == null) {
                                        synchronized (SVGAndroidRenderer.class) {
                                            HashSet hashSet = new HashSet();
                                            f25199h = hashSet;
                                            hashSet.add("Structure");
                                            f25199h.add("BasicStructure");
                                            f25199h.add("ConditionalProcessing");
                                            f25199h.add("Image");
                                            f25199h.add("Style");
                                            f25199h.add("ViewportAttribute");
                                            f25199h.add("Shape");
                                            f25199h.add("BasicText");
                                            f25199h.add("PaintAttribute");
                                            f25199h.add("BasicPaintAttribute");
                                            f25199h.add("OpacityAttribute");
                                            f25199h.add("BasicGraphicsAttribute");
                                            f25199h.add("Marker");
                                            f25199h.add("Gradient");
                                            f25199h.add("Pattern");
                                            f25199h.add("Clip");
                                            f25199h.add("BasicClip");
                                            f25199h.add("Mask");
                                            f25199h.add("View");
                                        }
                                    }
                                    if (setE.isEmpty() || !f25199h.containsAll(setE)) {
                                    }
                                }
                                Set setL = svgConditional.l();
                                if (setL == null) {
                                    Set setM = svgConditional.m();
                                    if (setM == null) {
                                        F(svgObject2);
                                        break;
                                    }
                                    setM.isEmpty();
                                } else {
                                    setL.isEmpty();
                                }
                            }
                        }
                    }
                    if (zD3) {
                        C(r14.f25192h);
                    }
                    P(r14);
                }
            } else if (svgObject instanceof SVG.Group) {
                SVG.Group group = (SVG.Group) svgObject;
                R(this.d, group);
                if (k()) {
                    Matrix matrix3 = group.n;
                    if (matrix3 != null) {
                        this.f25200a.concat(matrix3);
                    }
                    f(group, group.f25192h);
                    boolean zD4 = D();
                    G(group, true);
                    if (zD4) {
                        C(group.f25192h);
                    }
                    P(group);
                }
            } else if (svgObject instanceof SVG.Image) {
                SVG.Image image = (SVG.Image) svgObject;
                Canvas canvas2 = this.f25200a;
                SVG.Length length8 = image.r;
                if (length8 != null && !length8.g() && (length = image.s) != null && !length.g() && (str = image.o) != null) {
                    PreserveAspectRatio preserveAspectRatio2 = image.n;
                    if (preserveAspectRatio2 == null) {
                        preserveAspectRatio2 = PreserveAspectRatio.d;
                    }
                    if (str.startsWith("data:") && str.length() >= 14 && (iIndexOf = str.indexOf(44)) >= 12 && ";base64".equals(str.substring(iIndexOf - 7, iIndexOf))) {
                        try {
                            byte[] bArrDecode = Base64.decode(str.substring(iIndexOf + 1), 0);
                            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                        } catch (Exception unused) {
                        }
                    }
                    if (bitmapDecodeByteArray != null) {
                        SVG.Box box4 = new SVG.Box(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight());
                        R(this.d, image);
                        if (k() && T()) {
                            Matrix matrix4 = image.t;
                            if (matrix4 != null) {
                                canvas2.concat(matrix4);
                            }
                            SVG.Length length9 = image.p;
                            float fD2 = length9 != null ? length9.d(this) : 0.0f;
                            SVG.Length length10 = image.q;
                            float fE2 = length10 != null ? length10.e(this) : 0.0f;
                            float fD3 = image.r.d(this);
                            float fD4 = image.s.d(this);
                            RendererState rendererState3 = this.d;
                            rendererState3.f25232f = new SVG.Box(fD2, fE2, fD3, fD4);
                            if (!rendererState3.f25228a.w.booleanValue()) {
                                SVG.Box box5 = this.d.f25232f;
                                K(box5.f25157a, box5.f25158b, box5.f25159c, box5.d);
                            }
                            image.f25192h = this.d.f25232f;
                            P(image);
                            f(image, image.f25192h);
                            boolean zD5 = D();
                            S();
                            canvas2.save();
                            canvas2.concat(e(this.d.f25232f, box4, preserveAspectRatio2));
                            canvas2.drawBitmap(bitmapDecodeByteArray, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, new Paint(this.d.f25228a.N != SVG.Style.RenderQuality.optimizeSpeed ? 2 : 0));
                            canvas2.restore();
                            if (zD5) {
                                C(image.f25192h);
                            }
                        }
                    }
                }
            } else if (svgObject instanceof SVG.Path) {
                SVG.Path path = (SVG.Path) svgObject;
                if (path.o != null) {
                    R(this.d, path);
                    if (k() && T()) {
                        RendererState rendererState4 = this.d;
                        if (rendererState4.f25230c || rendererState4.f25229b) {
                            Matrix matrix5 = path.n;
                            if (matrix5 != null) {
                                this.f25200a.concat(matrix5);
                            }
                            Path path2 = new PathConverter(path.o).f25218a;
                            if (path.f25192h == null) {
                                path.f25192h = c(path2);
                            }
                            P(path);
                            g(path);
                            f(path, path.f25192h);
                            boolean zD6 = D();
                            RendererState rendererState5 = this.d;
                            if (rendererState5.f25229b) {
                                SVG.Style.FillRule fillRule = rendererState5.f25228a.d;
                                path2.setFillType((fillRule == null || fillRule != SVG.Style.FillRule.EvenOdd) ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                l(path, path2);
                            }
                            if (this.d.f25230c) {
                                m(path2);
                            }
                            I(path);
                            if (zD6) {
                                C(path.f25192h);
                            }
                        }
                    }
                }
            } else if (svgObject instanceof SVG.Rect) {
                SVG.Rect rect = (SVG.Rect) svgObject;
                SVG.Length length11 = rect.q;
                if (length11 != null && rect.r != null && !length11.g() && !rect.r.g()) {
                    R(this.d, rect);
                    if (k() && T()) {
                        Matrix matrix6 = rect.n;
                        if (matrix6 != null) {
                            this.f25200a.concat(matrix6);
                        }
                        Path pathZ = z(rect);
                        P(rect);
                        g(rect);
                        f(rect, rect.f25192h);
                        boolean zD7 = D();
                        if (this.d.f25229b) {
                            l(rect, pathZ);
                        }
                        if (this.d.f25230c) {
                            m(pathZ);
                        }
                        if (zD7) {
                            C(rect.f25192h);
                        }
                    }
                }
            } else if (svgObject instanceof SVG.Circle) {
                SVG.Circle circle = (SVG.Circle) svgObject;
                SVG.Length length12 = circle.q;
                if (length12 != null && !length12.g()) {
                    R(this.d, circle);
                    if (k() && T()) {
                        Matrix matrix7 = circle.n;
                        if (matrix7 != null) {
                            this.f25200a.concat(matrix7);
                        }
                        Path pathW = w(circle);
                        P(circle);
                        g(circle);
                        f(circle, circle.f25192h);
                        boolean zD8 = D();
                        if (this.d.f25229b) {
                            l(circle, pathW);
                        }
                        if (this.d.f25230c) {
                            m(pathW);
                        }
                        if (zD8) {
                            C(circle.f25192h);
                        }
                    }
                }
            } else if (svgObject instanceof SVG.Ellipse) {
                SVG.Ellipse ellipse = (SVG.Ellipse) svgObject;
                SVG.Length length13 = ellipse.q;
                if (length13 != null && ellipse.r != null && !length13.g() && !ellipse.r.g()) {
                    R(this.d, ellipse);
                    if (k() && T()) {
                        Matrix matrix8 = ellipse.n;
                        if (matrix8 != null) {
                            this.f25200a.concat(matrix8);
                        }
                        Path pathX = x(ellipse);
                        P(ellipse);
                        g(ellipse);
                        f(ellipse, ellipse.f25192h);
                        boolean zD9 = D();
                        if (this.d.f25229b) {
                            l(ellipse, pathX);
                        }
                        if (this.d.f25230c) {
                            m(pathX);
                        }
                        if (zD9) {
                            C(ellipse.f25192h);
                        }
                    }
                }
            } else if (svgObject instanceof SVG.Line) {
                SVG.Line line = (SVG.Line) svgObject;
                R(this.d, line);
                if (k() && T() && this.d.f25230c) {
                    Matrix matrix9 = line.n;
                    if (matrix9 != null) {
                        this.f25200a.concat(matrix9);
                    }
                    SVG.Length length14 = line.o;
                    float fD5 = length14 == null ? 0.0f : length14.d(this);
                    SVG.Length length15 = line.p;
                    float fE3 = length15 == null ? 0.0f : length15.e(this);
                    SVG.Length length16 = line.q;
                    float fD6 = length16 == null ? 0.0f : length16.d(this);
                    SVG.Length length17 = line.r;
                    if (length17 != null) {
                        fE = length17.e(this);
                    }
                    if (line.f25192h == null) {
                        line.f25192h = new SVG.Box(Math.min(fD5, fD6), Math.min(fE3, fE), Math.abs(fD6 - fD5), Math.abs(fE - fE3));
                    }
                    Path path3 = new Path();
                    path3.moveTo(fD5, fE3);
                    path3.lineTo(fD6, fE);
                    P(line);
                    g(line);
                    f(line, line.f25192h);
                    boolean zD10 = D();
                    m(path3);
                    I(line);
                    if (zD10) {
                        C(line.f25192h);
                    }
                }
            } else if (svgObject instanceof SVG.Polygon) {
                SVG.Polygon polygon = (SVG.Polygon) svgObject;
                R(this.d, polygon);
                if (k() && T()) {
                    RendererState rendererState6 = this.d;
                    if (rendererState6.f25230c || rendererState6.f25229b) {
                        Matrix matrix10 = polygon.n;
                        if (matrix10 != null) {
                            this.f25200a.concat(matrix10);
                        }
                        if (polygon.o.length >= 2) {
                            Path pathY = y(polygon);
                            P(polygon);
                            g(polygon);
                            f(polygon, polygon.f25192h);
                            boolean zD11 = D();
                            if (this.d.f25229b) {
                                l(polygon, pathY);
                            }
                            if (this.d.f25230c) {
                                m(pathY);
                            }
                            I(polygon);
                            if (zD11) {
                                C(polygon.f25192h);
                            }
                        }
                    }
                }
            } else if (svgObject instanceof SVG.PolyLine) {
                SVG.PolyLine polyLine = (SVG.PolyLine) svgObject;
                R(this.d, polyLine);
                if (k() && T()) {
                    RendererState rendererState7 = this.d;
                    if (rendererState7.f25230c || rendererState7.f25229b) {
                        Matrix matrix11 = polyLine.n;
                        if (matrix11 != null) {
                            this.f25200a.concat(matrix11);
                        }
                        if (polyLine.o.length >= 2) {
                            Path pathY2 = y(polyLine);
                            P(polyLine);
                            SVG.Style.FillRule fillRule2 = this.d.f25228a.d;
                            pathY2.setFillType((fillRule2 == null || fillRule2 != SVG.Style.FillRule.EvenOdd) ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                            g(polyLine);
                            f(polyLine, polyLine.f25192h);
                            boolean zD12 = D();
                            if (this.d.f25229b) {
                                l(polyLine, pathY2);
                            }
                            if (this.d.f25230c) {
                                m(pathY2);
                            }
                            I(polyLine);
                            if (zD12) {
                                C(polyLine.f25192h);
                            }
                        }
                    }
                }
            } else if (svgObject instanceof SVG.Text) {
                SVG.Text text = (SVG.Text) svgObject;
                R(this.d, text);
                if (k()) {
                    Matrix matrix12 = text.r;
                    if (matrix12 != null) {
                        this.f25200a.concat(matrix12);
                    }
                    ArrayList arrayList = text.n;
                    float fD7 = (arrayList == null || arrayList.size() == 0) ? 0.0f : ((SVG.Length) text.n.get(0)).d(this);
                    ArrayList arrayList2 = text.o;
                    float fE4 = (arrayList2 == null || arrayList2.size() == 0) ? 0.0f : ((SVG.Length) text.o.get(0)).e(this);
                    ArrayList arrayList3 = text.p;
                    float fD8 = (arrayList3 == null || arrayList3.size() == 0) ? 0.0f : ((SVG.Length) text.p.get(0)).d(this);
                    ArrayList arrayList4 = text.q;
                    if (arrayList4 != null && arrayList4.size() != 0) {
                        fE = ((SVG.Length) text.q.get(0)).e(this);
                    }
                    SVG.Style.TextAnchor textAnchorU = u();
                    if (textAnchorU != SVG.Style.TextAnchor.Start) {
                        float fD9 = d(text);
                        if (textAnchorU == SVG.Style.TextAnchor.Middle) {
                            fD9 /= 2.0f;
                        }
                        fD7 -= fD9;
                    }
                    if (text.f25192h == null) {
                        TextBoundsCalculator textBoundsCalculator = new TextBoundsCalculator(fD7, fE4);
                        n(text, textBoundsCalculator);
                        RectF rectF = textBoundsCalculator.f25236c;
                        text.f25192h = new SVG.Box(rectF.left, rectF.top, rectF.width(), textBoundsCalculator.f25236c.height());
                    }
                    P(text);
                    g(text);
                    f(text, text.f25192h);
                    boolean zD13 = D();
                    n(text, new PlainTextDrawer(fD7 + fD8, fE4 + fE));
                    if (zD13) {
                        C(text.f25192h);
                    }
                }
            }
        }
        M();
    }

    public final void G(SVG.SvgConditionalContainer svgConditionalContainer, boolean z) {
        if (z) {
            this.f25204f.push(svgConditionalContainer);
            this.g.push(this.f25200a.getMatrix());
        }
        Iterator it = svgConditionalContainer.f25186i.iterator();
        while (it.hasNext()) {
            F((SVG.SvgObject) it.next());
        }
        if (z) {
            this.f25204f.pop();
            this.g.pop();
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0035  */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00f9, code lost:
    
        if (r8 != 8) goto L68;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void H(com.caverock.androidsvg.SVG.Marker r13, com.caverock.androidsvg.SVGAndroidRenderer.MarkerVector r14) {
        /*
            Method dump skipped, instruction units count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGAndroidRenderer.H(com.caverock.androidsvg.SVG$Marker, com.caverock.androidsvg.SVGAndroidRenderer$MarkerVector):void");
    }

    public final void I(SVG.GraphicsElement graphicsElement) {
        SVG.Marker marker;
        SVG.Marker marker2;
        SVG.Marker marker3;
        int i2;
        float f2;
        float f3;
        float f4;
        ArrayList arrayList;
        int size;
        SVG.Style style = this.d.f25228a;
        String str = style.y;
        if (str == null && style.z == null && style.A == null) {
            return;
        }
        if (str == null) {
            marker = null;
        } else {
            SVG.SvgElementBase svgElementBaseE = graphicsElement.f25196a.e(str);
            if (svgElementBaseE != null) {
                marker = (SVG.Marker) svgElementBaseE;
            } else {
                String str2 = this.d.f25228a.y;
                marker = null;
            }
        }
        String str3 = this.d.f25228a.z;
        if (str3 == null) {
            marker2 = null;
        } else {
            SVG.SvgElementBase svgElementBaseE2 = graphicsElement.f25196a.e(str3);
            if (svgElementBaseE2 != null) {
                marker2 = (SVG.Marker) svgElementBaseE2;
            } else {
                String str4 = this.d.f25228a.z;
                marker2 = null;
            }
        }
        String str5 = this.d.f25228a.A;
        if (str5 == null) {
            marker3 = null;
        } else {
            SVG.SvgElementBase svgElementBaseE3 = graphicsElement.f25196a.e(str5);
            if (svgElementBaseE3 != null) {
                marker3 = (SVG.Marker) svgElementBaseE3;
            } else {
                String str6 = this.d.f25228a.A;
                marker3 = null;
            }
        }
        boolean z = graphicsElement instanceof SVG.Path;
        float f5 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (z) {
            arrayList = new MarkerPositionCalculator(this, ((SVG.Path) graphicsElement).o).f25208a;
            f3 = 0.0f;
            i2 = 1;
        } else if (graphicsElement instanceof SVG.Line) {
            SVG.Line line = (SVG.Line) graphicsElement;
            SVG.Length length = line.o;
            float fD = length != null ? length.d(this) : 0.0f;
            SVG.Length length2 = line.p;
            float fE = length2 != null ? length2.e(this) : 0.0f;
            SVG.Length length3 = line.q;
            float fD2 = length3 != null ? length3.d(this) : 0.0f;
            SVG.Length length4 = line.r;
            float fE2 = length4 != null ? length4.e(this) : 0.0f;
            ArrayList arrayList2 = new ArrayList(2);
            float f6 = fD2 - fD;
            i2 = 1;
            float f7 = fE2 - fE;
            arrayList2.add(new MarkerVector(fD, fE, f6, f7));
            arrayList2.add(new MarkerVector(fD2, fE2, f6, f7));
            f3 = 0.0f;
            arrayList = arrayList2;
        } else {
            i2 = 1;
            SVG.PolyLine polyLine = (SVG.PolyLine) graphicsElement;
            int length5 = polyLine.o.length;
            if (length5 < 2) {
                arrayList = null;
                f3 = 0.0f;
            } else {
                ArrayList arrayList3 = new ArrayList();
                float[] fArr = polyLine.o;
                MarkerVector markerVector = new MarkerVector(fArr[0], fArr[1], Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                int i3 = 2;
                float f8 = 0.0f;
                float f9 = 0.0f;
                while (true) {
                    f2 = markerVector.f25215b;
                    f3 = f5;
                    f4 = markerVector.f25214a;
                    if (i3 >= length5) {
                        break;
                    }
                    float[] fArr2 = polyLine.o;
                    float f10 = fArr2[i3];
                    float f11 = fArr2[i3 + 1];
                    markerVector.a(f10, f11);
                    arrayList3.add(markerVector);
                    markerVector = new MarkerVector(f10, f11, f10 - f4, f11 - f2);
                    i3 += 2;
                    f9 = f11;
                    f8 = f10;
                    f5 = f3;
                }
                if (polyLine instanceof SVG.Polygon) {
                    float[] fArr3 = polyLine.o;
                    float f12 = fArr3[0];
                    if (f8 != f12) {
                        float f13 = fArr3[1];
                        if (f9 != f13) {
                            markerVector.a(f12, f13);
                            arrayList3.add(markerVector);
                            MarkerVector markerVector2 = new MarkerVector(f12, f13, f12 - f4, f13 - f2);
                            markerVector2.b((MarkerVector) arrayList3.get(0));
                            arrayList3.add(markerVector2);
                            arrayList3.set(0, markerVector2);
                        }
                    }
                } else {
                    arrayList3.add(markerVector);
                }
                arrayList = arrayList3;
            }
        }
        if (arrayList == null || (size = arrayList.size()) == 0) {
            return;
        }
        SVG.Style style2 = this.d.f25228a;
        style2.A = null;
        style2.z = null;
        style2.y = null;
        if (marker != null) {
            H(marker, (MarkerVector) arrayList.get(0));
        }
        if (marker2 != null && arrayList.size() > 2) {
            MarkerVector markerVector3 = (MarkerVector) arrayList.get(0);
            MarkerVector markerVector4 = (MarkerVector) arrayList.get(i2);
            int i4 = 1;
            while (i4 < size - 1) {
                i4++;
                MarkerVector markerVector5 = (MarkerVector) arrayList.get(i4);
                if (markerVector4.f25217e) {
                    float f14 = markerVector4.f25216c;
                    float f15 = markerVector4.d;
                    float f16 = markerVector4.f25214a;
                    float f17 = f16 - markerVector3.f25214a;
                    float f18 = markerVector4.f25215b;
                    float f19 = ((f18 - markerVector3.f25215b) * f15) + (f17 * f14);
                    if (f19 == f3) {
                        f19 = ((markerVector5.f25214a - f16) * f14) + ((markerVector5.f25215b - f18) * f15);
                    }
                    if (f19 <= f3 && (f19 != f3 || (f14 <= f3 && f15 < f3))) {
                        markerVector4.f25216c = -f14;
                        markerVector4.d = -f15;
                    }
                }
                H(marker2, markerVector4);
                markerVector3 = markerVector4;
                markerVector4 = markerVector5;
            }
        }
        if (marker3 != null) {
            H(marker3, (MarkerVector) arrayList.get(size - 1));
        }
    }

    public final void J(SVG.Mask mask, SVG.Box box) {
        float fD;
        float fE;
        Canvas canvas = this.f25200a;
        Boolean bool = mask.n;
        if (bool == null || !bool.booleanValue()) {
            SVG.Length length = mask.p;
            float fC = length != null ? length.c(this, 1.0f) : 1.2f;
            SVG.Length length2 = mask.q;
            float fC2 = length2 != null ? length2.c(this, 1.0f) : 1.2f;
            fD = fC * box.f25159c;
            fE = fC2 * box.d;
        } else {
            SVG.Length length3 = mask.p;
            fD = length3 != null ? length3.d(this) : box.f25159c;
            SVG.Length length4 = mask.q;
            fE = length4 != null ? length4.e(this) : box.d;
        }
        if (fD == Call.Parameters.DEFAULT_CAMERA_ZOOM || fE == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        N();
        RendererState rendererStateS = s(mask);
        this.d = rendererStateS;
        rendererStateS.f25228a.n = Float.valueOf(1.0f);
        boolean zD = D();
        canvas.save();
        Boolean bool2 = mask.o;
        if (bool2 != null && !bool2.booleanValue()) {
            canvas.translate(box.f25157a, box.f25158b);
            canvas.scale(box.f25159c, box.d);
        }
        G(mask, false);
        canvas.restore();
        if (zD) {
            C(box);
        }
        M();
    }

    public final void K(float f2, float f3, float f4, float f5) {
        float fD = f4 + f2;
        float fE = f5 + f3;
        SVG.CSSClipRect cSSClipRect = this.d.f25228a.x;
        if (cSSClipRect != null) {
            f2 += cSSClipRect.d.d(this);
            f3 += this.d.f25228a.x.f25160a.e(this);
            fD -= this.d.f25228a.x.f25161b.d(this);
            fE -= this.d.f25228a.x.f25162c.e(this);
        }
        this.f25200a.clipRect(f2, f3, fD, fE);
    }

    public final void M() {
        this.f25200a.restore();
        this.d = (RendererState) this.f25203e.pop();
    }

    public final void N() {
        this.f25200a.save();
        this.f25203e.push(this.d);
        this.d = new RendererState(this.d);
    }

    public final String O(String str, boolean z, boolean z2) {
        if (this.d.f25233h) {
            return str.replaceAll("[\\n\\t]", " ");
        }
        String strReplaceAll = str.replaceAll("\\n", "").replaceAll("\\t", " ");
        if (z) {
            strReplaceAll = strReplaceAll.replaceAll("^\\s+", "");
        }
        if (z2) {
            strReplaceAll = strReplaceAll.replaceAll("\\s+$", "");
        }
        return strReplaceAll.replaceAll("\\s{2,}", " ");
    }

    public final void P(SVG.SvgElement svgElement) {
        if (svgElement.f25197b == null || svgElement.f25192h == null) {
            return;
        }
        Matrix matrix = new Matrix();
        if (((Matrix) this.g.peek()).invert(matrix)) {
            SVG.Box box = svgElement.f25192h;
            float f2 = box.f25157a;
            float f3 = box.f25158b;
            float fA = box.a();
            SVG.Box box2 = svgElement.f25192h;
            float f4 = box2.f25158b;
            float fA2 = box2.a();
            float fB = svgElement.f25192h.b();
            SVG.Box box3 = svgElement.f25192h;
            float[] fArr = {f2, f3, fA, f4, fA2, fB, box3.f25157a, box3.b()};
            matrix.preConcat(this.f25200a.getMatrix());
            matrix.mapPoints(fArr);
            float f5 = fArr[0];
            float f6 = fArr[1];
            RectF rectF = new RectF(f5, f6, f5, f6);
            for (int i2 = 2; i2 <= 6; i2 += 2) {
                float f7 = fArr[i2];
                if (f7 < rectF.left) {
                    rectF.left = f7;
                }
                if (f7 > rectF.right) {
                    rectF.right = f7;
                }
                float f8 = fArr[i2 + 1];
                if (f8 < rectF.top) {
                    rectF.top = f8;
                }
                if (f8 > rectF.bottom) {
                    rectF.bottom = f8;
                }
            }
            SVG.SvgElement svgElement2 = (SVG.SvgElement) this.f25204f.peek();
            SVG.Box box4 = svgElement2.f25192h;
            float f9 = rectF.left;
            float f10 = rectF.top;
            if (box4 == null) {
                svgElement2.f25192h = new SVG.Box(f9, f10, rectF.right - f9, rectF.bottom - f10);
                return;
            }
            SVG.Box box5 = new SVG.Box(f9, f10, rectF.right - f9, rectF.bottom - f10);
            if (f9 < box4.f25157a) {
                box4.f25157a = f9;
            }
            if (f10 < box4.f25158b) {
                box4.f25158b = f10;
            }
            if (box5.a() > box4.a()) {
                box4.f25159c = box5.a() - box4.f25157a;
            }
            if (box5.b() > box4.b()) {
                box4.d = box5.b() - box4.f25158b;
            }
        }
    }

    public final void Q(RendererState rendererState, SVG.Style style) {
        if (v(style, 4096L)) {
            rendererState.f25228a.o = style.o;
        }
        if (v(style, 2048L)) {
            rendererState.f25228a.n = style.n;
        }
        boolean zV = v(style, 1L);
        SVG.Colour colour = SVG.Colour.d;
        if (zV) {
            rendererState.f25228a.f25179c = style.f25179c;
            SVG.SvgPaint svgPaint = style.f25179c;
            rendererState.f25229b = (svgPaint == null || svgPaint == colour) ? false : true;
        }
        if (v(style, 4L)) {
            rendererState.f25228a.f25180e = style.f25180e;
        }
        if (v(style, 6149L)) {
            L(rendererState, true, rendererState.f25228a.f25179c);
        }
        if (v(style, 2L)) {
            rendererState.f25228a.d = style.d;
        }
        if (v(style, 8L)) {
            rendererState.f25228a.f25181f = style.f25181f;
            SVG.SvgPaint svgPaint2 = style.f25181f;
            rendererState.f25230c = (svgPaint2 == null || svgPaint2 == colour) ? false : true;
        }
        if (v(style, 16L)) {
            rendererState.f25228a.g = style.g;
        }
        if (v(style, 6168L)) {
            L(rendererState, false, rendererState.f25228a.f25181f);
        }
        if (v(style, 34359738368L)) {
            rendererState.f25228a.M = style.M;
        }
        if (v(style, 32L)) {
            SVG.Style style2 = rendererState.f25228a;
            SVG.Length length = style.f25182h;
            style2.f25182h = length;
            rendererState.f25231e.setStrokeWidth(length.b(this));
        }
        if (v(style, 64L)) {
            SVG.Style style3 = rendererState.f25228a;
            Paint paint = rendererState.f25231e;
            style3.f25183i = style.f25183i;
            int i2 = AnonymousClass1.f25206b[style.f25183i.ordinal()];
            if (i2 == 1) {
                paint.setStrokeCap(Paint.Cap.BUTT);
            } else if (i2 == 2) {
                paint.setStrokeCap(Paint.Cap.ROUND);
            } else if (i2 == 3) {
                paint.setStrokeCap(Paint.Cap.SQUARE);
            }
        }
        if (v(style, 128L)) {
            SVG.Style style4 = rendererState.f25228a;
            Paint paint2 = rendererState.f25231e;
            style4.f25184j = style.f25184j;
            int i3 = AnonymousClass1.f25207c[style.f25184j.ordinal()];
            if (i3 == 1) {
                paint2.setStrokeJoin(Paint.Join.MITER);
            } else if (i3 == 2) {
                paint2.setStrokeJoin(Paint.Join.ROUND);
            } else if (i3 == 3) {
                paint2.setStrokeJoin(Paint.Join.BEVEL);
            }
        }
        if (v(style, 256L)) {
            rendererState.f25228a.f25185k = style.f25185k;
            rendererState.f25231e.setStrokeMiter(style.f25185k.floatValue());
        }
        if (v(style, 512L)) {
            rendererState.f25228a.l = style.l;
        }
        if (v(style, RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE)) {
            rendererState.f25228a.m = style.m;
        }
        Typeface typefaceH = null;
        if (v(style, 1536L)) {
            SVG.Style style5 = rendererState.f25228a;
            Paint paint3 = rendererState.f25231e;
            SVG.Length[] lengthArr = style5.l;
            if (lengthArr == null) {
                paint3.setPathEffect(null);
            } else {
                int length2 = lengthArr.length;
                int i4 = length2 % 2 == 0 ? length2 : length2 * 2;
                float[] fArr = new float[i4];
                float f2 = 0.0f;
                for (int i5 = 0; i5 < i4; i5++) {
                    float fB = style5.l[i5 % length2].b(this);
                    fArr[i5] = fB;
                    f2 += fB;
                }
                if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    paint3.setPathEffect(null);
                } else {
                    float fB2 = style5.m.b(this);
                    if (fB2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        fB2 = (fB2 % f2) + f2;
                    }
                    paint3.setPathEffect(new DashPathEffect(fArr, fB2));
                }
            }
        }
        if (v(style, 16384L)) {
            float textSize = this.d.d.getTextSize();
            rendererState.f25228a.q = style.q;
            rendererState.d.setTextSize(style.q.c(this, textSize));
            rendererState.f25231e.setTextSize(style.q.c(this, textSize));
        }
        if (v(style, 8192L)) {
            rendererState.f25228a.p = style.p;
        }
        if (v(style, 32768L)) {
            if (style.r.intValue() == -1 && rendererState.f25228a.r.intValue() > 100) {
                SVG.Style style6 = rendererState.f25228a;
                style6.r = Integer.valueOf(style6.r.intValue() - 100);
            } else if (style.r.intValue() != 1 || rendererState.f25228a.r.intValue() >= 900) {
                rendererState.f25228a.r = style.r;
            } else {
                SVG.Style style7 = rendererState.f25228a;
                style7.r = Integer.valueOf(style7.r.intValue() + 100);
            }
        }
        if (v(style, 65536L)) {
            rendererState.f25228a.s = style.s;
        }
        if (v(style, 106496L)) {
            SVG.Style style8 = rendererState.f25228a;
            ArrayList arrayList = style8.p;
            if (arrayList != null && this.f25202c != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext() && (typefaceH = h((String) it.next(), style8.r, style8.s)) == null) {
                }
            }
            if (typefaceH == null) {
                typefaceH = h("serif", style8.r, style8.s);
            }
            rendererState.d.setTypeface(typefaceH);
            rendererState.f25231e.setTypeface(typefaceH);
        }
        if (v(style, 131072L)) {
            SVG.Style style9 = rendererState.f25228a;
            Paint paint4 = rendererState.f25231e;
            Paint paint5 = rendererState.d;
            style9.t = style.t;
            SVG.Style.TextDecoration textDecoration = style.t;
            SVG.Style.TextDecoration textDecoration2 = SVG.Style.TextDecoration.LineThrough;
            paint5.setStrikeThruText(textDecoration == textDecoration2);
            SVG.Style.TextDecoration textDecoration3 = style.t;
            SVG.Style.TextDecoration textDecoration4 = SVG.Style.TextDecoration.Underline;
            paint5.setUnderlineText(textDecoration3 == textDecoration4);
            paint4.setStrikeThruText(style.t == textDecoration2);
            paint4.setUnderlineText(style.t == textDecoration4);
        }
        if (v(style, 68719476736L)) {
            rendererState.f25228a.u = style.u;
        }
        if (v(style, 262144L)) {
            rendererState.f25228a.v = style.v;
        }
        if (v(style, 524288L)) {
            rendererState.f25228a.w = style.w;
        }
        if (v(style, 2097152L)) {
            rendererState.f25228a.y = style.y;
        }
        if (v(style, 4194304L)) {
            rendererState.f25228a.z = style.z;
        }
        if (v(style, 8388608L)) {
            rendererState.f25228a.A = style.A;
        }
        if (v(style, 16777216L)) {
            rendererState.f25228a.B = style.B;
        }
        if (v(style, 33554432L)) {
            rendererState.f25228a.C = style.C;
        }
        if (v(style, 1048576L)) {
            rendererState.f25228a.x = style.x;
        }
        if (v(style, 268435456L)) {
            rendererState.f25228a.F = style.F;
        }
        if (v(style, 536870912L)) {
            rendererState.f25228a.G = style.G;
        }
        if (v(style, 1073741824L)) {
            rendererState.f25228a.H = style.H;
        }
        if (v(style, 67108864L)) {
            rendererState.f25228a.D = style.D;
        }
        if (v(style, 134217728L)) {
            rendererState.f25228a.E = style.E;
        }
        if (v(style, 8589934592L)) {
            rendererState.f25228a.K = style.K;
        }
        if (v(style, 17179869184L)) {
            rendererState.f25228a.L = style.L;
        }
        if (v(style, 137438953472L)) {
            rendererState.f25228a.N = style.N;
        }
    }

    public final void R(RendererState rendererState, SVG.SvgElementBase svgElementBase) {
        boolean z = svgElementBase.f25197b == null;
        SVG.Style style = rendererState.f25228a;
        Float fValueOf = Float.valueOf(1.0f);
        Boolean bool = Boolean.TRUE;
        style.B = bool;
        if (!z) {
            bool = Boolean.FALSE;
        }
        style.w = bool;
        style.x = null;
        style.F = null;
        style.n = fValueOf;
        style.D = SVG.Colour.f25163c;
        style.E = fValueOf;
        style.H = null;
        style.I = null;
        style.J = fValueOf;
        style.K = null;
        style.L = fValueOf;
        style.M = SVG.Style.VectorEffect.None;
        SVG.Style style2 = svgElementBase.f25194e;
        if (style2 != null) {
            Q(rendererState, style2);
        }
        ArrayList arrayList = this.f25202c.f25154b.f25138a;
        if (arrayList != null && !arrayList.isEmpty()) {
            for (CSSParser.Rule rule : this.f25202c.f25154b.f25138a) {
                if (CSSParser.g(rule.f25135a, svgElementBase)) {
                    Q(rendererState, rule.f25136b);
                }
            }
        }
        SVG.Style style3 = svgElementBase.f25195f;
        if (style3 != null) {
            Q(rendererState, style3);
        }
    }

    public final void S() {
        int i2;
        SVG.Style style = this.d.f25228a;
        SVG.SvgPaint svgPaint = style.K;
        if (svgPaint instanceof SVG.Colour) {
            i2 = ((SVG.Colour) svgPaint).f25164b;
        } else if (!(svgPaint instanceof SVG.CurrentColor)) {
            return;
        } else {
            i2 = style.o.f25164b;
        }
        Float f2 = style.L;
        if (f2 != null) {
            i2 = i(f2.floatValue(), i2);
        }
        this.f25200a.drawColor(i2);
    }

    public final boolean T() {
        Boolean bool = this.d.f25228a.C;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    public final Path b(SVG.SvgElement svgElement, SVG.Box box) {
        Path pathB;
        SVG.SvgElementBase svgElementBaseE = svgElement.f25196a.e(this.d.f25228a.F);
        if (svgElementBaseE == null) {
            String str = this.d.f25228a.F;
            return null;
        }
        SVG.ClipPath clipPath = (SVG.ClipPath) svgElementBaseE;
        this.f25203e.push(this.d);
        this.d = s(clipPath);
        Boolean bool = clipPath.o;
        boolean z = bool == null || bool.booleanValue();
        Matrix matrix = new Matrix();
        if (!z) {
            matrix.preTranslate(box.f25157a, box.f25158b);
            matrix.preScale(box.f25159c, box.d);
        }
        Matrix matrix2 = clipPath.n;
        if (matrix2 != null) {
            matrix.preConcat(matrix2);
        }
        Path path = new Path();
        for (SVG.SvgObject svgObject : clipPath.f25186i) {
            if ((svgObject instanceof SVG.SvgElement) && (pathB = B((SVG.SvgElement) svgObject)) != null) {
                path.op(pathB, Path.Op.UNION);
            }
        }
        if (this.d.f25228a.F != null) {
            if (clipPath.f25192h == null) {
                clipPath.f25192h = c(path);
            }
            Path pathB2 = b(clipPath, clipPath.f25192h);
            if (pathB2 != null) {
                path.op(pathB2, Path.Op.INTERSECT);
            }
        }
        path.transform(matrix);
        this.d = (RendererState) this.f25203e.pop();
        return path;
    }

    public final float d(SVG.TextContainer textContainer) {
        TextWidthCalculator textWidthCalculator = new TextWidthCalculator();
        n(textContainer, textWidthCalculator);
        return textWidthCalculator.f25237a;
    }

    public final void f(SVG.SvgElement svgElement, SVG.Box box) {
        Path pathB;
        if (this.d.f25228a.F == null || (pathB = b(svgElement, box)) == null) {
            return;
        }
        this.f25200a.clipPath(pathB);
    }

    public final void g(SVG.SvgElement svgElement) {
        SVG.SvgPaint svgPaint = this.d.f25228a.f25179c;
        if (svgPaint instanceof SVG.PaintReference) {
            j(true, svgElement.f25192h, (SVG.PaintReference) svgPaint);
        }
        SVG.SvgPaint svgPaint2 = this.d.f25228a.f25181f;
        if (svgPaint2 instanceof SVG.PaintReference) {
            j(false, svgElement.f25192h, (SVG.PaintReference) svgPaint2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0084 A[PHI: r6 r13 r15 r28
      0x0084: PHI (r6v13 float) = (r6v9 float), (r6v19 float) binds: [B:64:0x00b2, B:47:0x007d] A[DONT_GENERATE, DONT_INLINE]
      0x0084: PHI (r13v15 float) = (r13v13 float), (r13v28 float) binds: [B:64:0x00b2, B:47:0x007d] A[DONT_GENERATE, DONT_INLINE]
      0x0084: PHI (r15v14 float) = (r15v12 float), (r15v28 float) binds: [B:64:0x00b2, B:47:0x007d] A[DONT_GENERATE, DONT_INLINE]
      0x0084: PHI (r28v3 float) = (r28v2 float), (r28v5 float) binds: [B:64:0x00b2, B:47:0x007d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    public final void j(boolean z, SVG.Box box, SVG.PaintReference paintReference) {
        float f2;
        float fC;
        float f3;
        float f4;
        float fC2;
        float fC3;
        float fC4;
        float fC5;
        SVG.SvgElementBase svgElementBaseE = this.f25202c.e(paintReference.f25172b);
        int i2 = 0;
        int i3 = 0;
        if (svgElementBaseE == null) {
            SVG.SvgPaint svgPaint = paintReference.f25173c;
            RendererState rendererState = this.d;
            if (svgPaint != null) {
                L(rendererState, z, svgPaint);
                return;
            } else if (z) {
                rendererState.f25229b = false;
                return;
            } else {
                rendererState.f25230c = false;
                return;
            }
        }
        boolean z2 = svgElementBaseE instanceof SVG.SvgLinearGradient;
        SVG.Colour colour = SVG.Colour.f25163c;
        if (z2) {
            SVG.SvgLinearGradient svgLinearGradient = (SVG.SvgLinearGradient) svgElementBaseE;
            String str = svgLinearGradient.l;
            if (str != null) {
                p(svgLinearGradient, str);
            }
            Boolean bool = svgLinearGradient.f25167i;
            Object[] objArr = bool != null && bool.booleanValue();
            RendererState rendererState2 = this.d;
            Paint paint = z ? rendererState2.d : rendererState2.f25231e;
            if (objArr == true) {
                SVG.Box box2 = rendererState2.g;
                if (box2 == null) {
                    box2 = rendererState2.f25232f;
                }
                SVG.Length length = svgLinearGradient.m;
                fC2 = length != null ? length.d(this) : 0.0f;
                SVG.Length length2 = svgLinearGradient.n;
                fC3 = length2 != null ? length2.e(this) : 0.0f;
                f4 = 256.0f;
                SVG.Length length3 = svgLinearGradient.o;
                fC4 = length3 != null ? length3.d(this) : box2.f25159c;
                SVG.Length length4 = svgLinearGradient.p;
                if (length4 != null) {
                    fC5 = length4.e(this);
                } else {
                    fC5 = 0.0f;
                }
            } else {
                f4 = 256.0f;
                SVG.Length length5 = svgLinearGradient.m;
                fC2 = length5 != null ? length5.c(this, 1.0f) : 0.0f;
                SVG.Length length6 = svgLinearGradient.n;
                fC3 = length6 != null ? length6.c(this, 1.0f) : 0.0f;
                SVG.Length length7 = svgLinearGradient.o;
                fC4 = length7 != null ? length7.c(this, 1.0f) : 1.0f;
                SVG.Length length8 = svgLinearGradient.p;
                if (length8 != null) {
                    fC5 = length8.c(this, 1.0f);
                } else {
                    fC5 = 0.0f;
                }
            }
            float f5 = fC4;
            float f6 = fC5;
            float f7 = fC2;
            float f8 = fC3;
            N();
            this.d = s(svgLinearGradient);
            Matrix matrix = new Matrix();
            if (objArr == false) {
                matrix.preTranslate(box.f25157a, box.f25158b);
                matrix.preScale(box.f25159c, box.d);
            }
            Matrix matrix2 = svgLinearGradient.f25168j;
            if (matrix2 != null) {
                matrix.preConcat(matrix2);
            }
            int size = svgLinearGradient.f25166h.size();
            if (size == 0) {
                M();
                RendererState rendererState3 = this.d;
                if (z) {
                    rendererState3.f25229b = false;
                    return;
                } else {
                    rendererState3.f25230c = false;
                    return;
                }
            }
            int[] iArr = new int[size];
            float[] fArr = new float[size];
            Iterator it = svgLinearGradient.f25166h.iterator();
            int i4 = 0;
            float f9 = -1.0f;
            while (it.hasNext()) {
                SVG.Stop stop = (SVG.Stop) ((SVG.SvgObject) it.next());
                Float f10 = stop.f25177h;
                float fFloatValue = f10 != null ? f10.floatValue() : 0.0f;
                if (i4 == 0 || fFloatValue >= f9) {
                    fArr[i4] = fFloatValue;
                    f9 = fFloatValue;
                } else {
                    fArr[i4] = f9;
                }
                N();
                R(this.d, stop);
                SVG.Style style = this.d.f25228a;
                SVG.Colour colour2 = (SVG.Colour) style.D;
                if (colour2 == null) {
                    colour2 = colour;
                }
                iArr[i4] = i(style.E.floatValue(), colour2.f25164b);
                i4++;
                M();
            }
            if ((f7 == f5 && f8 == f6) || size == 1) {
                M();
                paint.setColor(iArr[size - 1]);
                return;
            }
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            SVG.GradientSpread gradientSpread = svgLinearGradient.f25169k;
            if (gradientSpread != null) {
                if (gradientSpread == SVG.GradientSpread.reflect) {
                    tileMode = Shader.TileMode.MIRROR;
                } else if (gradientSpread == SVG.GradientSpread.repeat) {
                    tileMode = Shader.TileMode.REPEAT;
                }
            }
            Shader.TileMode tileMode2 = tileMode;
            M();
            LinearGradient linearGradient = new LinearGradient(f7, f8, f5, f6, iArr, fArr, tileMode2);
            linearGradient.setLocalMatrix(matrix);
            paint.setShader(linearGradient);
            int iFloatValue = (int) (this.d.f25228a.f25180e.floatValue() * f4);
            if (iFloatValue >= 0) {
                i2 = iFloatValue > 255 ? 255 : iFloatValue;
            }
            paint.setAlpha(i2);
            return;
        }
        if (!(svgElementBaseE instanceof SVG.SvgRadialGradient)) {
            if (svgElementBaseE instanceof SVG.SolidColor) {
                SVG.SolidColor solidColor = (SVG.SolidColor) svgElementBaseE;
                SVG.Style style2 = solidColor.f25194e;
                if (z) {
                    if (v(style2, 2147483648L)) {
                        RendererState rendererState4 = this.d;
                        SVG.Style style3 = rendererState4.f25228a;
                        SVG.SvgPaint svgPaint2 = solidColor.f25194e.I;
                        style3.f25179c = svgPaint2;
                        rendererState4.f25229b = svgPaint2 != null;
                    }
                    if (v(solidColor.f25194e, 4294967296L)) {
                        this.d.f25228a.f25180e = solidColor.f25194e.J;
                    }
                    if (v(solidColor.f25194e, 6442450944L)) {
                        RendererState rendererState5 = this.d;
                        L(rendererState5, z, rendererState5.f25228a.f25179c);
                        return;
                    }
                    return;
                }
                if (v(style2, 2147483648L)) {
                    RendererState rendererState6 = this.d;
                    SVG.Style style4 = rendererState6.f25228a;
                    SVG.SvgPaint svgPaint3 = solidColor.f25194e.I;
                    style4.f25181f = svgPaint3;
                    rendererState6.f25230c = svgPaint3 != null;
                }
                if (v(solidColor.f25194e, 4294967296L)) {
                    this.d.f25228a.g = solidColor.f25194e.J;
                }
                if (v(solidColor.f25194e, 6442450944L)) {
                    RendererState rendererState7 = this.d;
                    L(rendererState7, z, rendererState7.f25228a.f25181f);
                    return;
                }
                return;
            }
            return;
        }
        SVG.SvgRadialGradient svgRadialGradient = (SVG.SvgRadialGradient) svgElementBaseE;
        String str2 = svgRadialGradient.l;
        if (str2 != null) {
            p(svgRadialGradient, str2);
        }
        Boolean bool2 = svgRadialGradient.f25167i;
        Object[] objArr2 = bool2 != null && bool2.booleanValue();
        RendererState rendererState8 = this.d;
        Paint paint2 = z ? rendererState8.d : rendererState8.f25231e;
        if (objArr2 == true) {
            SVG.Length length9 = new SVG.Length(50.0f, SVG.Unit.percent);
            SVG.Length length10 = svgRadialGradient.m;
            float fD = length10 != null ? length10.d(this) : length9.d(this);
            SVG.Length length11 = svgRadialGradient.n;
            float fE = length11 != null ? length11.e(this) : length9.e(this);
            SVG.Length length12 = svgRadialGradient.o;
            fC = length12 != null ? length12.b(this) : length9.b(this);
            f2 = fD;
            f3 = fE;
        } else {
            SVG.Length length13 = svgRadialGradient.m;
            float fC6 = length13 != null ? length13.c(this, 1.0f) : 0.5f;
            SVG.Length length14 = svgRadialGradient.n;
            float fC7 = length14 != null ? length14.c(this, 1.0f) : 0.5f;
            SVG.Length length15 = svgRadialGradient.o;
            f2 = fC6;
            fC = length15 != null ? length15.c(this, 1.0f) : 0.5f;
            f3 = fC7;
        }
        N();
        this.d = s(svgRadialGradient);
        Matrix matrix3 = new Matrix();
        if (objArr2 == false) {
            matrix3.preTranslate(box.f25157a, box.f25158b);
            matrix3.preScale(box.f25159c, box.d);
        }
        Matrix matrix4 = svgRadialGradient.f25168j;
        if (matrix4 != null) {
            matrix3.preConcat(matrix4);
        }
        int size2 = svgRadialGradient.f25166h.size();
        if (size2 == 0) {
            M();
            RendererState rendererState9 = this.d;
            if (z) {
                rendererState9.f25229b = false;
                return;
            } else {
                rendererState9.f25230c = false;
                return;
            }
        }
        int[] iArr2 = new int[size2];
        float[] fArr2 = new float[size2];
        Iterator it2 = svgRadialGradient.f25166h.iterator();
        int i5 = 0;
        float f11 = -1.0f;
        while (it2.hasNext()) {
            SVG.Stop stop2 = (SVG.Stop) ((SVG.SvgObject) it2.next());
            Float f12 = stop2.f25177h;
            float fFloatValue2 = f12 != null ? f12.floatValue() : 0.0f;
            if (i5 == 0 || fFloatValue2 >= f11) {
                fArr2[i5] = fFloatValue2;
                f11 = fFloatValue2;
            } else {
                fArr2[i5] = f11;
            }
            N();
            R(this.d, stop2);
            SVG.Style style5 = this.d.f25228a;
            SVG.Colour colour3 = (SVG.Colour) style5.D;
            if (colour3 == null) {
                colour3 = colour;
            }
            iArr2[i5] = i(style5.E.floatValue(), colour3.f25164b);
            i5++;
            M();
        }
        if (fC == Call.Parameters.DEFAULT_CAMERA_ZOOM || size2 == 1) {
            M();
            paint2.setColor(iArr2[size2 - 1]);
            return;
        }
        Shader.TileMode tileMode3 = Shader.TileMode.CLAMP;
        SVG.GradientSpread gradientSpread2 = svgRadialGradient.f25169k;
        if (gradientSpread2 != null) {
            if (gradientSpread2 == SVG.GradientSpread.reflect) {
                tileMode3 = Shader.TileMode.MIRROR;
            } else if (gradientSpread2 == SVG.GradientSpread.repeat) {
                tileMode3 = Shader.TileMode.REPEAT;
            }
        }
        Shader.TileMode tileMode4 = tileMode3;
        M();
        RadialGradient radialGradient = new RadialGradient(f2, f3, fC, iArr2, fArr2, tileMode4);
        radialGradient.setLocalMatrix(matrix3);
        paint2.setShader(radialGradient);
        int iFloatValue2 = (int) (this.d.f25228a.f25180e.floatValue() * 256.0f);
        if (iFloatValue2 >= 0) {
            i3 = iFloatValue2 > 255 ? 255 : iFloatValue2;
        }
        paint2.setAlpha(i3);
    }

    public final boolean k() {
        Boolean bool = this.d.f25228a.B;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:78:0x0170  */
    public final void l(SVG.SvgElement svgElement, Path path) {
        float fE;
        float fD;
        float fE2;
        float fD2;
        boolean z;
        boolean z2;
        Canvas canvas = this.f25200a;
        SVG.SvgPaint svgPaint = this.d.f25228a.f25179c;
        if (svgPaint instanceof SVG.PaintReference) {
            SVG.SvgElementBase svgElementBaseE = this.f25202c.e(((SVG.PaintReference) svgPaint).f25172b);
            if (svgElementBaseE instanceof SVG.Pattern) {
                SVG.Pattern pattern = (SVG.Pattern) svgElementBaseE;
                Boolean bool = pattern.p;
                boolean z3 = bool != null && bool.booleanValue();
                String str = pattern.w;
                if (str != null) {
                    r(pattern, str);
                }
                SVG.Length length = pattern.s;
                if (z3) {
                    fD = length != null ? length.d(this) : 0.0f;
                    SVG.Length length2 = pattern.t;
                    fE2 = length2 != null ? length2.e(this) : 0.0f;
                    SVG.Length length3 = pattern.u;
                    fD2 = length3 != null ? length3.d(this) : 0.0f;
                    SVG.Length length4 = pattern.v;
                    fE = length4 != null ? length4.e(this) : 0.0f;
                } else {
                    float fC = length != null ? length.c(this, 1.0f) : 0.0f;
                    SVG.Length length5 = pattern.t;
                    float fC2 = length5 != null ? length5.c(this, 1.0f) : 0.0f;
                    SVG.Length length6 = pattern.u;
                    float fC3 = length6 != null ? length6.c(this, 1.0f) : 0.0f;
                    SVG.Length length7 = pattern.v;
                    float fC4 = length7 != null ? length7.c(this, 1.0f) : 0.0f;
                    SVG.Box box = svgElement.f25192h;
                    float f2 = box.f25157a;
                    float f3 = box.f25159c;
                    float f4 = (fC * f3) + f2;
                    float f5 = box.f25158b;
                    float f6 = box.d;
                    float f7 = fC3 * f3;
                    fE = fC4 * f6;
                    fD = f4;
                    fE2 = (fC2 * f6) + f5;
                    fD2 = f7;
                }
                if (fD2 == Call.Parameters.DEFAULT_CAMERA_ZOOM || fE == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    return;
                }
                PreserveAspectRatio preserveAspectRatio = pattern.n;
                if (preserveAspectRatio == null) {
                    preserveAspectRatio = PreserveAspectRatio.d;
                }
                N();
                canvas.clipPath(path);
                RendererState rendererState = new RendererState();
                Q(rendererState, SVG.Style.a());
                rendererState.f25228a.w = Boolean.FALSE;
                t(pattern, rendererState);
                this.d = rendererState;
                SVG.Box box2 = svgElement.f25192h;
                Matrix matrix = pattern.r;
                if (matrix != null) {
                    canvas.concat(matrix);
                    Matrix matrix2 = new Matrix();
                    if (pattern.r.invert(matrix2)) {
                        SVG.Box box3 = svgElement.f25192h;
                        float f8 = box3.f25157a;
                        float f9 = box3.f25158b;
                        float fA = box3.a();
                        z = true;
                        SVG.Box box4 = svgElement.f25192h;
                        z2 = false;
                        float f10 = box4.f25158b;
                        float fA2 = box4.a();
                        float fB = svgElement.f25192h.b();
                        SVG.Box box5 = svgElement.f25192h;
                        float[] fArr = {f8, f9, fA, f10, fA2, fB, box5.f25157a, box5.b()};
                        matrix2.mapPoints(fArr);
                        float f11 = fArr[0];
                        float f12 = fArr[1];
                        RectF rectF = new RectF(f11, f12, f11, f12);
                        for (int i2 = 2; i2 <= 6; i2 += 2) {
                            float f13 = fArr[i2];
                            if (f13 < rectF.left) {
                                rectF.left = f13;
                            }
                            if (f13 > rectF.right) {
                                rectF.right = f13;
                            }
                            float f14 = fArr[i2 + 1];
                            if (f14 < rectF.top) {
                                rectF.top = f14;
                            }
                            if (f14 > rectF.bottom) {
                                rectF.bottom = f14;
                            }
                        }
                        float f15 = rectF.left;
                        float f16 = rectF.top;
                        box2 = new SVG.Box(f15, f16, rectF.right - f15, rectF.bottom - f16);
                    } else {
                        z = true;
                        z2 = false;
                    }
                } else {
                    z = true;
                    z2 = false;
                }
                float fFloor = (((float) Math.floor((box2.f25157a - fD) / fD2)) * fD2) + fD;
                float fA3 = box2.a();
                float fB2 = box2.b();
                SVG.Box box6 = new SVG.Box(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, fD2, fE);
                boolean zD = D();
                for (float fFloor2 = (((float) Math.floor((box2.f25158b - fE2) / fE)) * fE) + fE2; fFloor2 < fB2; fFloor2 += fE) {
                    float f17 = fFloor;
                    while (f17 < fA3) {
                        box6.f25157a = f17;
                        box6.f25158b = fFloor2;
                        N();
                        if (!this.d.f25228a.w.booleanValue()) {
                            K(box6.f25157a, box6.f25158b, box6.f25159c, box6.d);
                        }
                        SVG.Box box7 = pattern.o;
                        if (box7 != null) {
                            canvas.concat(e(box6, box7, preserveAspectRatio));
                        } else {
                            Boolean bool2 = pattern.q;
                            boolean z4 = (bool2 == null || bool2.booleanValue()) ? z : z2;
                            canvas.translate(f17, fFloor2);
                            if (!z4) {
                                SVG.Box box8 = svgElement.f25192h;
                                canvas.scale(box8.f25159c, box8.d);
                            }
                        }
                        Iterator it = pattern.f25186i.iterator();
                        while (it.hasNext()) {
                            F((SVG.SvgObject) it.next());
                        }
                        M();
                        f17 += fD2;
                        fB2 = fB2;
                        fFloor = fFloor;
                    }
                }
                if (zD) {
                    C(pattern.f25192h);
                }
                M();
                return;
            }
        }
        canvas.drawPath(path, this.d.d);
    }

    public final void m(Path path) {
        RendererState rendererState = this.d;
        SVG.Style.VectorEffect vectorEffect = rendererState.f25228a.M;
        SVG.Style.VectorEffect vectorEffect2 = SVG.Style.VectorEffect.NonScalingStroke;
        Canvas canvas = this.f25200a;
        if (vectorEffect != vectorEffect2) {
            canvas.drawPath(path, rendererState.f25231e);
            return;
        }
        Matrix matrix = canvas.getMatrix();
        Path path2 = new Path();
        path.transform(matrix, path2);
        canvas.setMatrix(new Matrix());
        Shader shader = this.d.f25231e.getShader();
        Matrix matrix2 = new Matrix();
        if (shader != null) {
            shader.getLocalMatrix(matrix2);
            Matrix matrix3 = new Matrix(matrix2);
            matrix3.postConcat(matrix);
            shader.setLocalMatrix(matrix3);
        }
        canvas.drawPath(path2, this.d.f25231e);
        canvas.setMatrix(matrix);
        if (shader != null) {
            shader.setLocalMatrix(matrix2);
        }
    }

    public final void n(SVG.TextContainer textContainer, TextProcessor textProcessor) {
        float f2;
        float fE;
        float fD;
        SVG.Style.TextAnchor textAnchorU;
        SVG.SvgElementBase svgElementBaseE;
        if (k()) {
            Iterator it = textContainer.f25186i.iterator();
            boolean z = true;
            while (it.hasNext()) {
                SVG.SvgObject svgObject = (SVG.SvgObject) it.next();
                if (svgObject instanceof SVG.TextSequence) {
                    textProcessor.b(O(((SVG.TextSequence) svgObject).f25198c, z, !it.hasNext()));
                } else if (textProcessor.a((SVG.TextContainer) svgObject)) {
                    boolean z2 = svgObject instanceof SVG.TextPath;
                    float fE2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    if (z2) {
                        N();
                        SVG.TextPath textPath = (SVG.TextPath) svgObject;
                        R(this.d, textPath);
                        if (k() && T() && (svgElementBaseE = textPath.f25196a.e(textPath.n)) != null) {
                            SVG.Path path = (SVG.Path) svgElementBaseE;
                            PathConverter pathConverter = new PathConverter(path.o);
                            Matrix matrix = path.n;
                            Path path2 = pathConverter.f25218a;
                            if (matrix != null) {
                                path2.transform(matrix);
                            }
                            PathMeasure pathMeasure = new PathMeasure(path2, false);
                            SVG.Length length = textPath.o;
                            if (length != null) {
                                fE2 = length.c(this, pathMeasure.getLength());
                            }
                            SVG.Style.TextAnchor textAnchorU2 = u();
                            if (textAnchorU2 != SVG.Style.TextAnchor.Start) {
                                float fD2 = d(textPath);
                                if (textAnchorU2 == SVG.Style.TextAnchor.Middle) {
                                    fD2 /= 2.0f;
                                }
                                fE2 -= fD2;
                            }
                            g((SVG.SvgElement) textPath.p);
                            boolean zD = D();
                            n(textPath, new PathTextDrawer(path2, fE2));
                            if (zD) {
                                C(textPath.f25192h);
                            }
                        }
                        M();
                    } else if (svgObject instanceof SVG.TSpan) {
                        N();
                        SVG.TSpan tSpan = (SVG.TSpan) svgObject;
                        R(this.d, tSpan);
                        if (k()) {
                            ArrayList arrayList = tSpan.n;
                            boolean z3 = arrayList != null && arrayList.size() > 0;
                            boolean z4 = textProcessor instanceof PlainTextDrawer;
                            if (z4) {
                                float fD3 = !z3 ? ((PlainTextDrawer) textProcessor).f25222a : ((SVG.Length) tSpan.n.get(0)).d(this);
                                ArrayList arrayList2 = tSpan.o;
                                fE = (arrayList2 == null || arrayList2.size() == 0) ? ((PlainTextDrawer) textProcessor).f25223b : ((SVG.Length) tSpan.o.get(0)).e(this);
                                ArrayList arrayList3 = tSpan.p;
                                fD = (arrayList3 == null || arrayList3.size() == 0) ? 0.0f : ((SVG.Length) tSpan.p.get(0)).d(this);
                                ArrayList arrayList4 = tSpan.q;
                                if (arrayList4 != null && arrayList4.size() != 0) {
                                    fE2 = ((SVG.Length) tSpan.q.get(0)).e(this);
                                }
                                float f3 = fD3;
                                f2 = fE2;
                                fE2 = f3;
                            } else {
                                f2 = 0.0f;
                                fE = 0.0f;
                                fD = 0.0f;
                            }
                            if (z3 && (textAnchorU = u()) != SVG.Style.TextAnchor.Start) {
                                float fD4 = d(tSpan);
                                if (textAnchorU == SVG.Style.TextAnchor.Middle) {
                                    fD4 /= 2.0f;
                                }
                                fE2 -= fD4;
                            }
                            g((SVG.SvgElement) tSpan.r);
                            if (z4) {
                                PlainTextDrawer plainTextDrawer = (PlainTextDrawer) textProcessor;
                                plainTextDrawer.f25222a = fE2 + fD;
                                plainTextDrawer.f25223b = fE + f2;
                            }
                            boolean zD2 = D();
                            n(tSpan, textProcessor);
                            if (zD2) {
                                C(tSpan.f25192h);
                            }
                        }
                        M();
                    } else if (svgObject instanceof SVG.TRef) {
                        N();
                        SVG.TRef tRef = (SVG.TRef) svgObject;
                        R(this.d, tRef);
                        if (k()) {
                            g((SVG.SvgElement) tRef.o);
                            SVG.SvgElementBase svgElementBaseE2 = svgObject.f25196a.e(tRef.n);
                            if (svgElementBaseE2 != null && (svgElementBaseE2 instanceof SVG.TextContainer)) {
                                StringBuilder sb = new StringBuilder();
                                o((SVG.TextContainer) svgElementBaseE2, sb);
                                if (sb.length() > 0) {
                                    textProcessor.b(sb.toString());
                                }
                            }
                        }
                        M();
                    }
                }
                z = false;
            }
        }
    }

    public final void o(SVG.TextContainer textContainer, StringBuilder sb) {
        Iterator it = textContainer.f25186i.iterator();
        boolean z = true;
        while (it.hasNext()) {
            SVG.SvgObject svgObject = (SVG.SvgObject) it.next();
            if (svgObject instanceof SVG.TextContainer) {
                o((SVG.TextContainer) svgObject, sb);
            } else if (svgObject instanceof SVG.TextSequence) {
                sb.append(O(((SVG.TextSequence) svgObject).f25198c, z, !it.hasNext()));
            }
            z = false;
        }
    }

    public final RendererState s(SVG.SvgElementBase svgElementBase) {
        RendererState rendererState = new RendererState();
        Q(rendererState, SVG.Style.a());
        t(svgElementBase, rendererState);
        return rendererState;
    }

    public final void t(SVG.SvgObject svgObject, RendererState rendererState) {
        ArrayList arrayList = new ArrayList();
        while (true) {
            if (svgObject instanceof SVG.SvgElementBase) {
                arrayList.add(0, (SVG.SvgElementBase) svgObject);
            }
            Object obj = svgObject.f25197b;
            if (obj == null) {
                break;
            } else {
                svgObject = (SVG.SvgObject) obj;
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            R(rendererState, (SVG.SvgElementBase) it.next());
        }
        RendererState rendererState2 = this.d;
        rendererState.g = rendererState2.g;
        rendererState.f25232f = rendererState2.f25232f;
    }

    public final SVG.Style.TextAnchor u() {
        SVG.Style.TextAnchor textAnchor;
        SVG.Style style = this.d.f25228a;
        if (style.u == SVG.Style.TextDirection.LTR || (textAnchor = style.v) == SVG.Style.TextAnchor.Middle) {
            return style.v;
        }
        SVG.Style.TextAnchor textAnchor2 = SVG.Style.TextAnchor.Start;
        return textAnchor == textAnchor2 ? SVG.Style.TextAnchor.End : textAnchor2;
    }

    public final Path w(SVG.Circle circle) {
        SVG.Length length = circle.o;
        float fE = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fD = length != null ? length.d(this) : 0.0f;
        SVG.Length length2 = circle.p;
        if (length2 != null) {
            fE = length2.e(this);
        }
        float f2 = fE;
        float fB = circle.q.b(this);
        float f3 = fD - fB;
        float f4 = f2 - fB;
        float f5 = fD + fB;
        float f6 = f2 + fB;
        if (circle.f25192h == null) {
            float f7 = 2.0f * fB;
            circle.f25192h = new SVG.Box(f3, f4, f7, f7);
        }
        float f8 = fB * 0.5522848f;
        Path path = new Path();
        path.moveTo(fD, f4);
        float f9 = fD + f8;
        float f10 = f2 - f8;
        path.cubicTo(f9, f4, f5, f10, f5, f2);
        float f11 = f2 + f8;
        path.cubicTo(f5, f11, f9, f6, fD, f6);
        float f12 = fD - f8;
        path.cubicTo(f12, f6, f3, f11, f3, f2);
        path.cubicTo(f3, f10, f12, f4, fD, f4);
        path.close();
        return path;
    }

    public final Path x(SVG.Ellipse ellipse) {
        SVG.Length length = ellipse.o;
        float fE = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fD = length != null ? length.d(this) : 0.0f;
        SVG.Length length2 = ellipse.p;
        if (length2 != null) {
            fE = length2.e(this);
        }
        float f2 = fE;
        float fD2 = ellipse.q.d(this);
        float fE2 = ellipse.r.e(this);
        float f3 = fD - fD2;
        float f4 = f2 - fE2;
        float f5 = fD + fD2;
        float f6 = f2 + fE2;
        if (ellipse.f25192h == null) {
            ellipse.f25192h = new SVG.Box(f3, f4, fD2 * 2.0f, 2.0f * fE2);
        }
        float f7 = fD2 * 0.5522848f;
        float f8 = fE2 * 0.5522848f;
        Path path = new Path();
        path.moveTo(fD, f4);
        float f9 = fD + f7;
        float f10 = f2 - f8;
        path.cubicTo(f9, f4, f5, f10, f5, f2);
        float f11 = f2 + f8;
        path.cubicTo(f5, f11, f9, f6, fD, f6);
        float f12 = fD - f7;
        path.cubicTo(f12, f6, f3, f11, f3, f2);
        path.cubicTo(f3, f10, f12, f4, fD, f4);
        path.close();
        return path;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0046  */
    /* JADX WARN: Code duplicated, block: B:17:0x004c  */
    /* JADX WARN: Code duplicated, block: B:20:0x0051  */
    /* JADX WARN: Code duplicated, block: B:21:0x0057  */
    /* JADX WARN: Code duplicated, block: B:24:0x0068  */
    /* JADX WARN: Code duplicated, block: B:29:0x007f  */
    public final Path z(SVG.Rect rect) {
        float fD;
        float fE;
        float fMin;
        SVG.Length length;
        float fD2;
        SVG.Length length2;
        float fE2;
        float fD3;
        float fE3;
        float f2;
        float f3;
        Path path;
        SVG.Length length3 = rect.s;
        if (length3 == null && rect.t == null) {
            fD = 0.0f;
        } else {
            SVG.Length length4 = rect.t;
            if (length3 != null) {
                if (length4 == null) {
                    fD = length3.d(this);
                } else {
                    fD = length3.d(this);
                    fE = rect.t.e(this);
                }
                fMin = Math.min(fD, rect.q.d(this) / 2.0f);
                float fMin2 = Math.min(fE, rect.r.e(this) / 2.0f);
                length = rect.o;
                if (length != null) {
                    fD2 = length.d(this);
                } else {
                    fD2 = 0.0f;
                }
                length2 = rect.p;
                if (length2 != null) {
                    fE2 = length2.e(this);
                } else {
                    fE2 = 0.0f;
                }
                fD3 = rect.q.d(this);
                fE3 = rect.r.e(this);
                if (rect.f25192h == null) {
                    rect.f25192h = new SVG.Box(fD2, fE2, fD3, fE3);
                }
                f2 = fD3 + fD2;
                f3 = fE2 + fE3;
                path = new Path();
                if (fMin != Call.Parameters.DEFAULT_CAMERA_ZOOM || fMin2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    path.moveTo(fD2, fE2);
                    path.lineTo(f2, fE2);
                    path.lineTo(f2, f3);
                    path.lineTo(fD2, f3);
                    path.lineTo(fD2, fE2);
                } else {
                    float f4 = fMin * 0.5522848f;
                    float f5 = 0.5522848f * fMin2;
                    float f6 = fE2 + fMin2;
                    path.moveTo(fD2, f6);
                    float f7 = f6 - f5;
                    float f8 = fD2 + fMin;
                    float f9 = f8 - f4;
                    path.cubicTo(fD2, f7, f9, fE2, f8, fE2);
                    float f10 = f2 - fMin;
                    path.lineTo(f10, fE2);
                    float f11 = f10 + f4;
                    path.cubicTo(f11, fE2, f2, f7, f2, f6);
                    float f12 = f3 - fMin2;
                    path.lineTo(f2, f12);
                    float f13 = f12 + f5;
                    path.cubicTo(f2, f13, f11, f3, f10, f3);
                    path.lineTo(f8, f3);
                    float f14 = fD2;
                    path.cubicTo(f9, f3, f14, f13, fD2, f12);
                    path.lineTo(f14, f6);
                }
                path.close();
                return path;
            }
            fD = length4.e(this);
        }
        fE = fD;
        fMin = Math.min(fD, rect.q.d(this) / 2.0f);
        float fMin3 = Math.min(fE, rect.r.e(this) / 2.0f);
        length = rect.o;
        if (length != null) {
            fD2 = length.d(this);
        } else {
            fD2 = 0.0f;
        }
        length2 = rect.p;
        if (length2 != null) {
            fE2 = length2.e(this);
        } else {
            fE2 = 0.0f;
        }
        fD3 = rect.q.d(this);
        fE3 = rect.r.e(this);
        if (rect.f25192h == null) {
            rect.f25192h = new SVG.Box(fD2, fE2, fD3, fE3);
        }
        f2 = fD3 + fD2;
        f3 = fE2 + fE3;
        path = new Path();
        if (fMin != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            path.moveTo(fD2, fE2);
            path.lineTo(f2, fE2);
            path.lineTo(f2, f3);
            path.lineTo(fD2, f3);
            path.lineTo(fD2, fE2);
        } else {
            path.moveTo(fD2, fE2);
            path.lineTo(f2, fE2);
            path.lineTo(f2, f3);
            path.lineTo(fD2, f3);
            path.lineTo(fD2, fE2);
        }
        path.close();
        return path;
    }

    public class RendererState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SVG.Style f25228a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f25229b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f25230c;
        public final Paint d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Paint f25231e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public SVG.Box f25232f;
        public SVG.Box g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f25233h;

        public RendererState(RendererState rendererState) {
            this.f25229b = rendererState.f25229b;
            this.f25230c = rendererState.f25230c;
            this.d = new Paint(rendererState.d);
            this.f25231e = new Paint(rendererState.f25231e);
            SVG.Box box = rendererState.f25232f;
            if (box != null) {
                this.f25232f = new SVG.Box(box);
            }
            SVG.Box box2 = rendererState.g;
            if (box2 != null) {
                this.g = new SVG.Box(box2);
            }
            this.f25233h = rendererState.f25233h;
            try {
                this.f25228a = (SVG.Style) rendererState.f25228a.clone();
            } catch (CloneNotSupportedException unused) {
                this.f25228a = SVG.Style.a();
            }
        }

        public RendererState() {
            Paint paint = new Paint();
            this.d = paint;
            paint.setFlags(193);
            paint.setHinting(0);
            paint.setStyle(Paint.Style.FILL);
            Typeface typeface = Typeface.DEFAULT;
            paint.setTypeface(typeface);
            Paint paint2 = new Paint();
            this.f25231e = paint2;
            paint2.setFlags(193);
            paint2.setHinting(0);
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setTypeface(typeface);
            this.f25228a = SVG.Style.a();
        }
    }
}
