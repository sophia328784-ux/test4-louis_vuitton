package com.caverock.androidsvg;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Picture;
import com.android.wiimu.model.WiimuPendingMask;
import com.batch.android.q0.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.d21;
import defpackage.n00;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.Stack;
import java.util.zip.GZIPInputStream;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class SVG {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Svg f25153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CSSParser.Ruleset f25154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public HashMap f25155c;

    /* JADX INFO: renamed from: com.caverock.androidsvg.SVG$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f25156a;

        static {
            int[] iArr = new int[Unit.values().length];
            f25156a = iArr;
            try {
                iArr[Unit.px.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f25156a[Unit.em.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f25156a[Unit.ex.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f25156a[Unit.in.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f25156a[Unit.cm.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f25156a[Unit.mm.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f25156a[Unit.pt.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f25156a[Unit.pc.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f25156a[Unit.percent.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public static class CSSClipRect {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Length f25160a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Length f25161b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Length f25162c;
        public Length d;
    }

    public static class Circle extends GraphicsElement {
        public Length o;
        public Length p;
        public Length q;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "circle";
        }
    }

    public static class ClipPath extends Group implements NotDirectlyRendered {
        public Boolean o;

        @Override // com.caverock.androidsvg.SVG.Group, com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "clipPath";
        }
    }

    public static class Colour extends SvgPaint {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Colour f25163c = new Colour(b.v);
        public static final Colour d = new Colour(0);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f25164b;

        public Colour(int i2) {
            this.f25164b = i2;
        }

        public final String toString() {
            return String.format("#%08x", Integer.valueOf(this.f25164b));
        }
    }

    public static class CurrentColor extends SvgPaint {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final CurrentColor f25165b = new CurrentColor();
    }

    public static class Defs extends Group implements NotDirectlyRendered {
        @Override // com.caverock.androidsvg.SVG.Group, com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "defs";
        }
    }

    public static class Ellipse extends GraphicsElement {
        public Length o;
        public Length p;
        public Length q;
        public Length r;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "ellipse";
        }
    }

    public static abstract class GradientElement extends SvgElementBase implements SvgContainer {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public List f25166h = new ArrayList();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Boolean f25167i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Matrix f25168j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public GradientSpread f25169k;
        public String l;

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public final void g(SvgObject svgObject) throws SVGParseException {
            if (svgObject instanceof Stop) {
                this.f25166h.add(svgObject);
                return;
            }
            throw new SVGParseException("Gradient elements cannot contain " + svgObject + " elements.");
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public final List getChildren() {
            return this.f25166h;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class GradientSpread {
        private static final /* synthetic */ GradientSpread[] $VALUES;
        public static final GradientSpread pad;
        public static final GradientSpread reflect;
        public static final GradientSpread repeat;

        static {
            GradientSpread gradientSpread = new GradientSpread("pad", 0);
            pad = gradientSpread;
            GradientSpread gradientSpread2 = new GradientSpread("reflect", 1);
            reflect = gradientSpread2;
            GradientSpread gradientSpread3 = new GradientSpread(ConfigurationName.TCP_PING_REPEAT, 2);
            repeat = gradientSpread3;
            $VALUES = new GradientSpread[]{gradientSpread, gradientSpread2, gradientSpread3};
        }

        public static GradientSpread valueOf(String str) {
            return (GradientSpread) Enum.valueOf(GradientSpread.class, str);
        }

        public static GradientSpread[] values() {
            return (GradientSpread[]) $VALUES.clone();
        }
    }

    public static abstract class GraphicsElement extends SvgConditionalElement implements HasTransform {
        public Matrix n;

        public GraphicsElement() {
            this.f25189i = null;
            this.f25190j = null;
            this.f25191k = null;
            this.l = null;
            this.m = null;
        }

        @Override // com.caverock.androidsvg.SVG.HasTransform
        public final void k(Matrix matrix) {
            this.n = matrix;
        }
    }

    public static class Group extends SvgConditionalContainer implements HasTransform {
        public Matrix n;

        @Override // com.caverock.androidsvg.SVG.HasTransform
        public final void k(Matrix matrix) {
            this.n = matrix;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String n() {
            return "group";
        }
    }

    public interface HasTransform {
        void k(Matrix matrix);
    }

    public static class Image extends SvgPreserveAspectRatioContainer implements HasTransform {
        public String o;
        public Length p;
        public Length q;
        public Length r;
        public Length s;
        public Matrix t;

        @Override // com.caverock.androidsvg.SVG.HasTransform
        public final void k(Matrix matrix) {
            this.t = matrix;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "image";
        }
    }

    public static class Line extends GraphicsElement {
        public Length o;
        public Length p;
        public Length q;
        public Length r;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "line";
        }
    }

    public static class Marker extends SvgViewBoxContainer implements NotDirectlyRendered {
        public boolean p;
        public Length q;
        public Length r;
        public Length s;
        public Length t;
        public Float u;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "marker";
        }
    }

    public static class Mask extends SvgConditionalContainer implements NotDirectlyRendered {
        public Boolean n;
        public Boolean o;
        public Length p;
        public Length q;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return WiimuPendingMask.Mask;
        }
    }

    public interface NotDirectlyRendered {
    }

    public static class PaintReference extends SvgPaint {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f25172b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SvgPaint f25173c;

        public PaintReference(String str, SvgPaint svgPaint) {
            this.f25172b = str;
            this.f25173c = svgPaint;
        }

        public final String toString() {
            return this.f25172b + " " + this.f25173c;
        }
    }

    public static class Path extends GraphicsElement {
        public PathDefinition o;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "path";
        }
    }

    public static class PathDefinition implements PathInterface {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[] f25174a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f25175b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float[] f25176c;
        public int d;

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void a(float f2, float f3) {
            f((byte) 0);
            g(2);
            float[] fArr = this.f25176c;
            int i2 = this.d;
            int i3 = i2 + 1;
            this.d = i3;
            fArr[i2] = f2;
            this.d = i2 + 2;
            fArr[i3] = f3;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void b(float f2, float f3, float f4, float f5, float f6, float f7) {
            f((byte) 2);
            g(6);
            float[] fArr = this.f25176c;
            int i2 = this.d;
            int i3 = i2 + 1;
            this.d = i3;
            fArr[i2] = f2;
            int i4 = i2 + 2;
            this.d = i4;
            fArr[i3] = f3;
            int i5 = i2 + 3;
            this.d = i5;
            fArr[i4] = f4;
            int i6 = i2 + 4;
            this.d = i6;
            fArr[i5] = f5;
            int i7 = i2 + 5;
            this.d = i7;
            fArr[i6] = f6;
            this.d = i2 + 6;
            fArr[i7] = f7;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void c(float f2, float f3) {
            f((byte) 1);
            g(2);
            float[] fArr = this.f25176c;
            int i2 = this.d;
            int i3 = i2 + 1;
            this.d = i3;
            fArr[i2] = f2;
            this.d = i2 + 2;
            fArr[i3] = f3;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void close() {
            f((byte) 8);
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void d(float f2, float f3, float f4, float f5) {
            f((byte) 3);
            g(4);
            float[] fArr = this.f25176c;
            int i2 = this.d;
            int i3 = i2 + 1;
            this.d = i3;
            fArr[i2] = f2;
            int i4 = i2 + 2;
            this.d = i4;
            fArr[i3] = f3;
            int i5 = i2 + 3;
            this.d = i5;
            fArr[i4] = f4;
            this.d = i2 + 4;
            fArr[i5] = f5;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void e(float f2, float f3, float f4, boolean z, boolean z2, float f5, float f6) {
            f((byte) ((z ? 2 : 0) | 4 | (z2 ? 1 : 0)));
            g(5);
            float[] fArr = this.f25176c;
            int i2 = this.d;
            int i3 = i2 + 1;
            this.d = i3;
            fArr[i2] = f2;
            int i4 = i2 + 2;
            this.d = i4;
            fArr[i3] = f3;
            int i5 = i2 + 3;
            this.d = i5;
            fArr[i4] = f4;
            int i6 = i2 + 4;
            this.d = i6;
            fArr[i5] = f5;
            this.d = i2 + 5;
            fArr[i6] = f6;
        }

        public final void f(byte b2) {
            int i2 = this.f25175b;
            byte[] bArr = this.f25174a;
            if (i2 == bArr.length) {
                byte[] bArr2 = new byte[bArr.length * 2];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                this.f25174a = bArr2;
            }
            byte[] bArr3 = this.f25174a;
            int i3 = this.f25175b;
            this.f25175b = i3 + 1;
            bArr3[i3] = b2;
        }

        public final void g(int i2) {
            float[] fArr = this.f25176c;
            if (fArr.length < this.d + i2) {
                float[] fArr2 = new float[fArr.length * 2];
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                this.f25176c = fArr2;
            }
        }

        public final void h(PathInterface pathInterface) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.f25175b; i3++) {
                byte b2 = this.f25174a[i3];
                if (b2 == 0) {
                    float[] fArr = this.f25176c;
                    int i4 = i2 + 1;
                    float f2 = fArr[i2];
                    i2 += 2;
                    pathInterface.a(f2, fArr[i4]);
                } else if (b2 == 1) {
                    float[] fArr2 = this.f25176c;
                    int i5 = i2 + 1;
                    float f3 = fArr2[i2];
                    i2 += 2;
                    pathInterface.c(f3, fArr2[i5]);
                } else if (b2 == 2) {
                    float[] fArr3 = this.f25176c;
                    pathInterface.b(fArr3[i2], fArr3[i2 + 1], fArr3[i2 + 2], fArr3[i2 + 3], fArr3[i2 + 4], fArr3[i2 + 5]);
                    i2 += 6;
                } else if (b2 == 3) {
                    float[] fArr4 = this.f25176c;
                    float f4 = fArr4[i2];
                    float f5 = fArr4[i2 + 1];
                    int i6 = i2 + 3;
                    float f6 = fArr4[i2 + 2];
                    i2 += 4;
                    pathInterface.d(f4, f5, f6, fArr4[i6]);
                } else if (b2 != 8) {
                    boolean z = (b2 & 2) != 0;
                    boolean z2 = (b2 & 1) != 0;
                    float[] fArr5 = this.f25176c;
                    pathInterface.e(fArr5[i2], fArr5[i2 + 1], fArr5[i2 + 2], z, z2, fArr5[i2 + 3], fArr5[i2 + 4]);
                    i2 += 5;
                } else {
                    pathInterface.close();
                }
            }
        }
    }

    public interface PathInterface {
        void a(float f2, float f3);

        void b(float f2, float f3, float f4, float f5, float f6, float f7);

        void c(float f2, float f3);

        void close();

        void d(float f2, float f3, float f4, float f5);

        void e(float f2, float f3, float f4, boolean z, boolean z2, float f5, float f6);
    }

    public static class Pattern extends SvgViewBoxContainer implements NotDirectlyRendered {
        public Boolean p;
        public Boolean q;
        public Matrix r;
        public Length s;
        public Length t;
        public Length u;
        public Length v;
        public String w;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "pattern";
        }
    }

    public static class PolyLine extends GraphicsElement {
        public float[] o;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String n() {
            return "polyline";
        }
    }

    public static class Polygon extends PolyLine {
        @Override // com.caverock.androidsvg.SVG.PolyLine, com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "polygon";
        }
    }

    public static class Rect extends GraphicsElement {
        public Length o;
        public Length p;
        public Length q;
        public Length r;
        public Length s;
        public Length t;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "rect";
        }
    }

    public static class SolidColor extends SvgElementBase implements SvgContainer {
        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public final void g(SvgObject svgObject) {
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public final List getChildren() {
            return Collections.EMPTY_LIST;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "solidColor";
        }
    }

    public static class Stop extends SvgElementBase implements SvgContainer {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Float f25177h;

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public final void g(SvgObject svgObject) {
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public final List getChildren() {
            return Collections.EMPTY_LIST;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "stop";
        }
    }

    public static class Style implements Cloneable {
        public String A;
        public Boolean B;
        public Boolean C;
        public SvgPaint D;
        public Float E;
        public String F;
        public FillRule G;
        public String H;
        public SvgPaint I;
        public Float J;
        public SvgPaint K;
        public Float L;
        public VectorEffect M;
        public RenderQuality N;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f25178b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SvgPaint f25179c;
        public FillRule d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Float f25180e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public SvgPaint f25181f;
        public Float g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Length f25182h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public LineCap f25183i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public LineJoin f25184j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Float f25185k;
        public Length[] l;
        public Length m;
        public Float n;
        public Colour o;
        public ArrayList p;
        public Length q;
        public Integer r;
        public FontStyle s;
        public TextDecoration t;
        public TextDirection u;
        public TextAnchor v;
        public Boolean w;
        public CSSClipRect x;
        public String y;
        public String z;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class FillRule {
            private static final /* synthetic */ FillRule[] $VALUES;
            public static final FillRule EvenOdd;
            public static final FillRule NonZero;

            static {
                FillRule fillRule = new FillRule("NonZero", 0);
                NonZero = fillRule;
                FillRule fillRule2 = new FillRule("EvenOdd", 1);
                EvenOdd = fillRule2;
                $VALUES = new FillRule[]{fillRule, fillRule2};
            }

            public static FillRule valueOf(String str) {
                return (FillRule) Enum.valueOf(FillRule.class, str);
            }

            public static FillRule[] values() {
                return (FillRule[]) $VALUES.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class FontStyle {
            private static final /* synthetic */ FontStyle[] $VALUES;
            public static final FontStyle Italic;
            public static final FontStyle Normal;
            public static final FontStyle Oblique;

            static {
                FontStyle fontStyle = new FontStyle("Normal", 0);
                Normal = fontStyle;
                FontStyle fontStyle2 = new FontStyle("Italic", 1);
                Italic = fontStyle2;
                FontStyle fontStyle3 = new FontStyle("Oblique", 2);
                Oblique = fontStyle3;
                $VALUES = new FontStyle[]{fontStyle, fontStyle2, fontStyle3};
            }

            public static FontStyle valueOf(String str) {
                return (FontStyle) Enum.valueOf(FontStyle.class, str);
            }

            public static FontStyle[] values() {
                return (FontStyle[]) $VALUES.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class LineCap {
            private static final /* synthetic */ LineCap[] $VALUES;
            public static final LineCap Butt;
            public static final LineCap Round;
            public static final LineCap Square;

            static {
                LineCap lineCap = new LineCap("Butt", 0);
                Butt = lineCap;
                LineCap lineCap2 = new LineCap("Round", 1);
                Round = lineCap2;
                LineCap lineCap3 = new LineCap("Square", 2);
                Square = lineCap3;
                $VALUES = new LineCap[]{lineCap, lineCap2, lineCap3};
            }

            public static LineCap valueOf(String str) {
                return (LineCap) Enum.valueOf(LineCap.class, str);
            }

            public static LineCap[] values() {
                return (LineCap[]) $VALUES.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class LineJoin {
            private static final /* synthetic */ LineJoin[] $VALUES;
            public static final LineJoin Bevel;
            public static final LineJoin Miter;
            public static final LineJoin Round;

            static {
                LineJoin lineJoin = new LineJoin("Miter", 0);
                Miter = lineJoin;
                LineJoin lineJoin2 = new LineJoin("Round", 1);
                Round = lineJoin2;
                LineJoin lineJoin3 = new LineJoin("Bevel", 2);
                Bevel = lineJoin3;
                $VALUES = new LineJoin[]{lineJoin, lineJoin2, lineJoin3};
            }

            public static LineJoin valueOf(String str) {
                return (LineJoin) Enum.valueOf(LineJoin.class, str);
            }

            public static LineJoin[] values() {
                return (LineJoin[]) $VALUES.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class RenderQuality {
            private static final /* synthetic */ RenderQuality[] $VALUES;
            public static final RenderQuality auto;
            public static final RenderQuality optimizeQuality;
            public static final RenderQuality optimizeSpeed;

            static {
                RenderQuality renderQuality = new RenderQuality("auto", 0);
                auto = renderQuality;
                RenderQuality renderQuality2 = new RenderQuality("optimizeQuality", 1);
                optimizeQuality = renderQuality2;
                RenderQuality renderQuality3 = new RenderQuality("optimizeSpeed", 2);
                optimizeSpeed = renderQuality3;
                $VALUES = new RenderQuality[]{renderQuality, renderQuality2, renderQuality3};
            }

            public static RenderQuality valueOf(String str) {
                return (RenderQuality) Enum.valueOf(RenderQuality.class, str);
            }

            public static RenderQuality[] values() {
                return (RenderQuality[]) $VALUES.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class TextAnchor {
            private static final /* synthetic */ TextAnchor[] $VALUES;
            public static final TextAnchor End;
            public static final TextAnchor Middle;
            public static final TextAnchor Start;

            static {
                TextAnchor textAnchor = new TextAnchor("Start", 0);
                Start = textAnchor;
                TextAnchor textAnchor2 = new TextAnchor("Middle", 1);
                Middle = textAnchor2;
                TextAnchor textAnchor3 = new TextAnchor("End", 2);
                End = textAnchor3;
                $VALUES = new TextAnchor[]{textAnchor, textAnchor2, textAnchor3};
            }

            public static TextAnchor valueOf(String str) {
                return (TextAnchor) Enum.valueOf(TextAnchor.class, str);
            }

            public static TextAnchor[] values() {
                return (TextAnchor[]) $VALUES.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class TextDecoration {
            private static final /* synthetic */ TextDecoration[] $VALUES;
            public static final TextDecoration Blink;
            public static final TextDecoration LineThrough;
            public static final TextDecoration None;
            public static final TextDecoration Overline;
            public static final TextDecoration Underline;

            static {
                TextDecoration textDecoration = new TextDecoration("None", 0);
                None = textDecoration;
                TextDecoration textDecoration2 = new TextDecoration("Underline", 1);
                Underline = textDecoration2;
                TextDecoration textDecoration3 = new TextDecoration("Overline", 2);
                Overline = textDecoration3;
                TextDecoration textDecoration4 = new TextDecoration("LineThrough", 3);
                LineThrough = textDecoration4;
                TextDecoration textDecoration5 = new TextDecoration("Blink", 4);
                Blink = textDecoration5;
                $VALUES = new TextDecoration[]{textDecoration, textDecoration2, textDecoration3, textDecoration4, textDecoration5};
            }

            public static TextDecoration valueOf(String str) {
                return (TextDecoration) Enum.valueOf(TextDecoration.class, str);
            }

            public static TextDecoration[] values() {
                return (TextDecoration[]) $VALUES.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class TextDirection {
            private static final /* synthetic */ TextDirection[] $VALUES;
            public static final TextDirection LTR;
            public static final TextDirection RTL;

            static {
                TextDirection textDirection = new TextDirection("LTR", 0);
                LTR = textDirection;
                TextDirection textDirection2 = new TextDirection("RTL", 1);
                RTL = textDirection2;
                $VALUES = new TextDirection[]{textDirection, textDirection2};
            }

            public static TextDirection valueOf(String str) {
                return (TextDirection) Enum.valueOf(TextDirection.class, str);
            }

            public static TextDirection[] values() {
                return (TextDirection[]) $VALUES.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class VectorEffect {
            private static final /* synthetic */ VectorEffect[] $VALUES;
            public static final VectorEffect NonScalingStroke;
            public static final VectorEffect None;

            static {
                VectorEffect vectorEffect = new VectorEffect("None", 0);
                None = vectorEffect;
                VectorEffect vectorEffect2 = new VectorEffect("NonScalingStroke", 1);
                NonScalingStroke = vectorEffect2;
                $VALUES = new VectorEffect[]{vectorEffect, vectorEffect2};
            }

            public static VectorEffect valueOf(String str) {
                return (VectorEffect) Enum.valueOf(VectorEffect.class, str);
            }

            public static VectorEffect[] values() {
                return (VectorEffect[]) $VALUES.clone();
            }
        }

        public static Style a() {
            Style style = new Style();
            style.f25178b = -1L;
            Colour colour = Colour.f25163c;
            style.f25179c = colour;
            FillRule fillRule = FillRule.NonZero;
            style.d = fillRule;
            Float fValueOf = Float.valueOf(1.0f);
            style.f25180e = fValueOf;
            style.f25181f = null;
            style.g = fValueOf;
            style.f25182h = new Length(1.0f);
            style.f25183i = LineCap.Butt;
            style.f25184j = LineJoin.Miter;
            style.f25185k = Float.valueOf(4.0f);
            style.l = null;
            style.m = new Length(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            style.n = fValueOf;
            style.o = colour;
            style.p = null;
            style.q = new Length(12.0f, Unit.pt);
            style.r = 400;
            style.s = FontStyle.Normal;
            style.t = TextDecoration.None;
            style.u = TextDirection.LTR;
            style.v = TextAnchor.Start;
            Boolean bool = Boolean.TRUE;
            style.w = bool;
            style.x = null;
            style.y = null;
            style.z = null;
            style.A = null;
            style.B = bool;
            style.C = bool;
            style.D = colour;
            style.E = fValueOf;
            style.F = null;
            style.G = fillRule;
            style.H = null;
            style.I = null;
            style.J = fValueOf;
            style.K = null;
            style.L = fValueOf;
            style.M = VectorEffect.None;
            style.N = RenderQuality.auto;
            return style;
        }

        public final Object clone() {
            Style style = (Style) super.clone();
            Length[] lengthArr = this.l;
            if (lengthArr != null) {
                style.l = (Length[]) lengthArr.clone();
            }
            return style;
        }
    }

    public static class Svg extends SvgViewBoxContainer {
        public Length p;
        public Length q;
        public Length r;
        public Length s;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "svg";
        }
    }

    public interface SvgConditional {
        Set a();

        String b();

        void d(HashSet hashSet);

        Set e();

        void f(HashSet hashSet);

        void h(HashSet hashSet);

        void i(String str);

        void j(HashSet hashSet);

        Set l();

        Set m();
    }

    public static abstract class SvgConditionalContainer extends SvgElement implements SvgContainer, SvgConditional {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public List f25186i = new ArrayList();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public HashSet f25187j = null;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public String f25188k = null;
        public HashSet l = null;
        public HashSet m = null;

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set a() {
            return null;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final String b() {
            return this.f25188k;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void d(HashSet hashSet) {
            this.f25187j = hashSet;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set e() {
            return this.f25187j;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void f(HashSet hashSet) {
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public void g(SvgObject svgObject) {
            this.f25186i.add(svgObject);
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public final List getChildren() {
            return this.f25186i;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void h(HashSet hashSet) {
            this.m = hashSet;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void i(String str) {
            this.f25188k = str;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void j(HashSet hashSet) {
            this.l = hashSet;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set l() {
            return this.l;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set m() {
            return this.m;
        }
    }

    public static abstract class SvgConditionalElement extends SvgElement implements SvgConditional {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public HashSet f25189i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public String f25190j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public HashSet f25191k;
        public HashSet l;
        public HashSet m;

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set a() {
            return this.f25191k;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final String b() {
            return this.f25190j;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void d(HashSet hashSet) {
            this.f25189i = hashSet;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set e() {
            return this.f25189i;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void f(HashSet hashSet) {
            this.f25191k = hashSet;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void h(HashSet hashSet) {
            this.m = hashSet;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void i(String str) {
            this.f25190j = str;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void j(HashSet hashSet) {
            this.l = hashSet;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set l() {
            return this.l;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set m() {
            return this.m;
        }
    }

    public interface SvgContainer {
        void g(SvgObject svgObject);

        List getChildren();
    }

    public static abstract class SvgElement extends SvgElementBase {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Box f25192h = null;
    }

    public static abstract class SvgElementBase extends SvgObject {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f25193c = null;
        public Boolean d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Style f25194e = null;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Style f25195f = null;
        public ArrayList g = null;

        public final String toString() {
            return n();
        }
    }

    public static class SvgLinearGradient extends GradientElement {
        public Length m;
        public Length n;
        public Length o;
        public Length p;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "linearGradient";
        }
    }

    public static class SvgObject {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SVG f25196a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SvgContainer f25197b;

        public abstract String n();
    }

    public static abstract class SvgPaint implements Cloneable {
    }

    public static abstract class SvgPreserveAspectRatioContainer extends SvgConditionalContainer {
        public PreserveAspectRatio n = null;
    }

    public static class SvgRadialGradient extends GradientElement {
        public Length m;
        public Length n;
        public Length o;
        public Length p;
        public Length q;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "radialGradient";
        }
    }

    public static abstract class SvgViewBoxContainer extends SvgPreserveAspectRatioContainer {
        public Box o;
    }

    public static class Switch extends Group {
        @Override // com.caverock.androidsvg.SVG.Group, com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "switch";
        }
    }

    public static class Symbol extends SvgViewBoxContainer implements NotDirectlyRendered {
        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "symbol";
        }
    }

    public static class TRef extends TextContainer implements TextChild {
        public String n;
        public TextRoot o;

        @Override // com.caverock.androidsvg.SVG.TextChild
        public final TextRoot c() {
            return this.o;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "tref";
        }
    }

    public static class TSpan extends TextPositionedContainer implements TextChild {
        public TextRoot r;

        @Override // com.caverock.androidsvg.SVG.TextChild
        public final TextRoot c() {
            return this.r;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "tspan";
        }
    }

    public static class Text extends TextPositionedContainer implements TextRoot, HasTransform {
        public Matrix r;

        @Override // com.caverock.androidsvg.SVG.HasTransform
        public final void k(Matrix matrix) {
            this.r = matrix;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "text";
        }
    }

    public interface TextChild {
        TextRoot c();
    }

    public static abstract class TextContainer extends SvgConditionalContainer {
        @Override // com.caverock.androidsvg.SVG.SvgConditionalContainer, com.caverock.androidsvg.SVG.SvgContainer
        public final void g(SvgObject svgObject) throws SVGParseException {
            if (svgObject instanceof TextChild) {
                this.f25186i.add(svgObject);
                return;
            }
            throw new SVGParseException("Text content elements cannot contain " + svgObject + " elements.");
        }
    }

    public static class TextPath extends TextContainer implements TextChild {
        public String n;
        public Length o;
        public TextRoot p;

        @Override // com.caverock.androidsvg.SVG.TextChild
        public final TextRoot c() {
            return this.p;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "textPath";
        }
    }

    public static abstract class TextPositionedContainer extends TextContainer {
        public ArrayList n;
        public ArrayList o;
        public ArrayList p;
        public ArrayList q;
    }

    public interface TextRoot {
    }

    public static class TextSequence extends SvgObject implements TextChild {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f25198c;

        @Override // com.caverock.androidsvg.SVG.TextChild
        public final TextRoot c() {
            return null;
        }

        public final String toString() {
            return n00.r(this.f25198c, "'", new StringBuilder("TextChild: '"));
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Unit {
        private static final /* synthetic */ Unit[] $VALUES;
        public static final Unit cm;
        public static final Unit em;
        public static final Unit ex;
        public static final Unit in;
        public static final Unit mm;
        public static final Unit pc;
        public static final Unit percent;
        public static final Unit pt;
        public static final Unit px;

        static {
            Unit unit = new Unit("px", 0);
            px = unit;
            Unit unit2 = new Unit("em", 1);
            em = unit2;
            Unit unit3 = new Unit("ex", 2);
            ex = unit3;
            Unit unit4 = new Unit("in", 3);
            in = unit4;
            Unit unit5 = new Unit("cm", 4);
            cm = unit5;
            Unit unit6 = new Unit("mm", 5);
            mm = unit6;
            Unit unit7 = new Unit("pt", 6);
            pt = unit7;
            Unit unit8 = new Unit("pc", 7);
            pc = unit8;
            Unit unit9 = new Unit("percent", 8);
            percent = unit9;
            $VALUES = new Unit[]{unit, unit2, unit3, unit4, unit5, unit6, unit7, unit8, unit9};
        }

        public static Unit valueOf(String str) {
            return (Unit) Enum.valueOf(Unit.class, str);
        }

        public static Unit[] values() {
            return (Unit[]) $VALUES.clone();
        }
    }

    public static class Use extends Group {
        public String o;
        public Length p;
        public Length q;
        public Length r;
        public Length s;

        @Override // com.caverock.androidsvg.SVG.Group, com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "use";
        }
    }

    public static class View extends SvgViewBoxContainer implements NotDirectlyRendered {
        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "view";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static SvgElementBase a(SvgContainer svgContainer, String str) {
        SvgElementBase svgElementBaseA;
        SvgElementBase svgElementBase = (SvgElementBase) svgContainer;
        if (str.equals(svgElementBase.f25193c)) {
            return svgElementBase;
        }
        for (Object obj : svgContainer.getChildren()) {
            if (obj instanceof SvgElementBase) {
                SvgElementBase svgElementBase2 = (SvgElementBase) obj;
                if (str.equals(svgElementBase2.f25193c)) {
                    return svgElementBase2;
                }
                if ((obj instanceof SvgContainer) && (svgElementBaseA = a((SvgContainer) obj, str)) != null) {
                    return svgElementBaseA;
                }
            }
        }
        return null;
    }

    public static SVG b(String str) {
        SVGParser sVGParser = new SVGParser();
        sVGParser.f25239a = null;
        sVGParser.f25240b = null;
        sVGParser.f25241c = false;
        sVGParser.f25242e = false;
        sVGParser.f25243f = null;
        sVGParser.g = null;
        sVGParser.f25244h = false;
        sVGParser.f25245i = null;
        InputStream byteArrayInputStream = new ByteArrayInputStream(str.getBytes());
        if (!byteArrayInputStream.markSupported()) {
            byteArrayInputStream = new BufferedInputStream(byteArrayInputStream);
        }
        try {
            byteArrayInputStream.mark(3);
            int i2 = byteArrayInputStream.read() + (byteArrayInputStream.read() << 8);
            byteArrayInputStream.reset();
            if (i2 == 35615) {
                byteArrayInputStream = new BufferedInputStream(new GZIPInputStream(byteArrayInputStream));
            }
        } catch (IOException unused) {
        }
        try {
            byteArrayInputStream.mark(4096);
            sVGParser.B(byteArrayInputStream);
            return sVGParser.f25239a;
        } finally {
            try {
                byteArrayInputStream.close();
            } catch (IOException unused2) {
            }
        }
    }

    public final Picture c() {
        Length length;
        Svg svg = this.f25153a;
        Box box = svg.o;
        Length length2 = svg.r;
        if (length2 != null) {
            Unit unit = length2.f25171c;
            Unit unit2 = Unit.percent;
            if (unit != unit2 && (length = svg.s) != null && length.f25171c != unit2) {
                return d((int) Math.ceil(length2.a(96.0f)), (int) Math.ceil(this.f25153a.s.a(96.0f)));
            }
        }
        if (length2 != null && box != null) {
            float fA = length2.a(96.0f);
            return d((int) Math.ceil(fA), (int) Math.ceil((box.d * fA) / box.f25159c));
        }
        Length length3 = svg.s;
        if (length3 == null || box == null) {
            return d(512, 512);
        }
        float fA2 = length3.a(96.0f);
        return d((int) Math.ceil((box.f25159c * fA2) / box.d), (int) Math.ceil(fA2));
    }

    public final Picture d(int i2, int i3) {
        Picture picture = new Picture();
        Canvas canvasBeginRecording = picture.beginRecording(i2, i3);
        RenderOptions renderOptions = new RenderOptions();
        renderOptions.f25152a = new Box(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, i2, i3);
        SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer();
        sVGAndroidRenderer.f25200a = canvasBeginRecording;
        sVGAndroidRenderer.f25201b = 96.0f;
        sVGAndroidRenderer.f25202c = this;
        Svg svg = this.f25153a;
        if (svg != null) {
            Box box = svg.o;
            PreserveAspectRatio preserveAspectRatio = svg.n;
            sVGAndroidRenderer.d = new SVGAndroidRenderer.RendererState();
            sVGAndroidRenderer.f25203e = new Stack();
            sVGAndroidRenderer.Q(sVGAndroidRenderer.d, Style.a());
            SVGAndroidRenderer.RendererState rendererState = sVGAndroidRenderer.d;
            rendererState.f25232f = null;
            rendererState.f25233h = false;
            sVGAndroidRenderer.f25203e.push(new SVGAndroidRenderer.RendererState(rendererState));
            sVGAndroidRenderer.g = new Stack();
            sVGAndroidRenderer.f25204f = new Stack();
            Boolean bool = svg.d;
            if (bool != null) {
                sVGAndroidRenderer.d.f25233h = bool.booleanValue();
            }
            sVGAndroidRenderer.N();
            Box box2 = new Box(renderOptions.f25152a);
            Length length = svg.r;
            if (length != null) {
                box2.f25159c = length.c(sVGAndroidRenderer, box2.f25159c);
            }
            Length length2 = svg.s;
            if (length2 != null) {
                box2.d = length2.c(sVGAndroidRenderer, box2.d);
            }
            sVGAndroidRenderer.E(svg, box2, box, preserveAspectRatio);
            sVGAndroidRenderer.M();
        }
        picture.endRecording();
        return picture;
    }

    public final SvgElementBase e(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("\"") && str.endsWith("\"")) {
            str = str.substring(1, str.length() - 1).replace("\\\"", "\"");
        } else if (str.startsWith("'") && str.endsWith("'")) {
            str = str.substring(1, str.length() - 1).replace("\\'", "'");
        }
        String strReplace = str.replace("\\\n", "").replace("\\A", "\n");
        if (strReplace.length() <= 1 || !strReplace.startsWith("#")) {
            return null;
        }
        String strSubstring = strReplace.substring(1);
        HashMap map = this.f25155c;
        if (strSubstring == null || strSubstring.length() == 0) {
            return null;
        }
        if (strSubstring.equals(this.f25153a.f25193c)) {
            return this.f25153a;
        }
        if (map.containsKey(strSubstring)) {
            return (SvgElementBase) map.get(strSubstring);
        }
        SvgElementBase svgElementBaseA = a(this.f25153a, strSubstring);
        map.put(strSubstring, svgElementBaseA);
        return svgElementBaseA;
    }

    public static class Length implements Cloneable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f25170b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Unit f25171c;

        public Length(float f2) {
            this.f25170b = f2;
            this.f25171c = Unit.px;
        }

        public final float a(float f2) {
            float f3;
            float f4;
            int i2 = AnonymousClass1.f25156a[this.f25171c.ordinal()];
            float f5 = this.f25170b;
            if (i2 == 1) {
                return f5;
            }
            switch (i2) {
                case 4:
                    return f5 * f2;
                case 5:
                    f3 = f5 * f2;
                    f4 = 2.54f;
                    break;
                case 6:
                    f3 = f5 * f2;
                    f4 = 25.4f;
                    break;
                case 7:
                    f3 = f5 * f2;
                    f4 = 72.0f;
                    break;
                case 8:
                    f3 = f5 * f2;
                    f4 = 6.0f;
                    break;
                default:
                    return f5;
            }
            return f3 / f4;
        }

        public final float b(SVGAndroidRenderer sVGAndroidRenderer) {
            if (this.f25171c != Unit.percent) {
                return d(sVGAndroidRenderer);
            }
            SVGAndroidRenderer.RendererState rendererState = sVGAndroidRenderer.d;
            Box box = rendererState.g;
            if (box == null) {
                box = rendererState.f25232f;
            }
            float f2 = this.f25170b;
            if (box == null) {
                return f2;
            }
            float fSqrt = box.f25159c;
            float f3 = box.d;
            if (fSqrt != f3) {
                fSqrt = (float) (Math.sqrt((f3 * f3) + (fSqrt * fSqrt)) / 1.414213562373095d);
            }
            return (f2 * fSqrt) / 100.0f;
        }

        public final float c(SVGAndroidRenderer sVGAndroidRenderer, float f2) {
            return this.f25171c == Unit.percent ? (this.f25170b * f2) / 100.0f : d(sVGAndroidRenderer);
        }

        public final float d(SVGAndroidRenderer sVGAndroidRenderer) {
            float textSize;
            int i2 = AnonymousClass1.f25156a[this.f25171c.ordinal()];
            float f2 = this.f25170b;
            switch (i2) {
                case 2:
                    textSize = sVGAndroidRenderer.d.d.getTextSize();
                    break;
                case 3:
                    textSize = sVGAndroidRenderer.d.d.getTextSize() / 2.0f;
                    break;
                case 4:
                    return f2 * sVGAndroidRenderer.f25201b;
                case 5:
                    return (f2 * sVGAndroidRenderer.f25201b) / 2.54f;
                case 6:
                    return (f2 * sVGAndroidRenderer.f25201b) / 25.4f;
                case 7:
                    return (f2 * sVGAndroidRenderer.f25201b) / 72.0f;
                case 8:
                    return (f2 * sVGAndroidRenderer.f25201b) / 6.0f;
                case 9:
                    SVGAndroidRenderer.RendererState rendererState = sVGAndroidRenderer.d;
                    Box box = rendererState.g;
                    if (box == null) {
                        box = rendererState.f25232f;
                    }
                    if (box != null) {
                        return (f2 * box.f25159c) / 100.0f;
                    }
                default:
                    return f2;
            }
            return textSize * f2;
        }

        public final float e(SVGAndroidRenderer sVGAndroidRenderer) {
            if (this.f25171c != Unit.percent) {
                return d(sVGAndroidRenderer);
            }
            SVGAndroidRenderer.RendererState rendererState = sVGAndroidRenderer.d;
            Box box = rendererState.g;
            if (box == null) {
                box = rendererState.f25232f;
            }
            float f2 = this.f25170b;
            return box == null ? f2 : (f2 * box.d) / 100.0f;
        }

        public final boolean f() {
            return this.f25170b < Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }

        public final boolean g() {
            return this.f25170b == Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }

        public final String toString() {
            return String.valueOf(this.f25170b) + this.f25171c;
        }

        public Length(float f2, Unit unit) {
            this.f25170b = f2;
            this.f25171c = unit;
        }
    }

    public static class Box {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f25157a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f25158b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f25159c;
        public float d;

        public Box(Box box) {
            this.f25157a = box.f25157a;
            this.f25158b = box.f25158b;
            this.f25159c = box.f25159c;
            this.d = box.d;
        }

        public final float a() {
            return this.f25157a + this.f25159c;
        }

        public final float b() {
            return this.f25158b + this.d;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("[");
            sb.append(this.f25157a);
            sb.append(" ");
            sb.append(this.f25158b);
            sb.append(" ");
            sb.append(this.f25159c);
            sb.append(" ");
            return d21.e(this.d, "]", sb);
        }

        public Box(float f2, float f3, float f4, float f5) {
            this.f25157a = f2;
            this.f25158b = f3;
            this.f25159c = f4;
            this.d = f5;
        }
    }
}
