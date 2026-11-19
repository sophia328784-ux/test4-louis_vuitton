package androidx.compose.ui.text;

import android.graphics.Matrix;
import android.graphics.Shader;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.BrushKt$ShaderBrush$1;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.font.DelegatingFontLoaderForDeprecatedUsage_androidKt;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.platform.AndroidMultiParagraphDraw_androidKt;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import defpackage.fc;
import defpackage.v40;
import defpackage.wg;
import java.util.ArrayList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$IntRef;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.CryptoServicesPermission;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B-\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bB[\b\u0017\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00110\u0010\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\n\u0010\u0018B[\b\u0017\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00110\u0010\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u001bB+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b\n\u0010 B-\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010!B[\b\u0017\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00110\u0010\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\"B[\b\u0016\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00110\u0010\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b\n\u0010#¨\u0006$"}, d2 = {"Landroidx/compose/ui/text/MultiParagraph;", "", "Landroidx/compose/ui/text/MultiParagraphIntrinsics;", "intrinsics", "", "maxLines", "", "ellipsis", "", "width", "<init>", "(Landroidx/compose/ui/text/MultiParagraphIntrinsics;IZF)V", "Landroidx/compose/ui/text/AnnotatedString;", "annotatedString", "Landroidx/compose/ui/text/TextStyle;", "style", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/Placeholder;", "placeholders", "Landroidx/compose/ui/unit/Density;", "density", "Landroidx/compose/ui/text/font/Font$ResourceLoader;", "resourceLoader", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZFLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/Font$ResourceLoader;)V", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "fontFamilyResolver", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;FLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;IZ)V", "Landroidx/compose/ui/unit/Constraints;", CryptoServicesPermission.CONSTRAINTS, "Landroidx/compose/ui/text/style/TextOverflow;", "overflow", "(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JIILkotlin/jvm/internal/DefaultConstructorMarker;)V", "(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JIZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;IZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MultiParagraph {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MultiParagraphIntrinsics f10461a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10462b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f10463c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f10464e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f10465f;
    public final ArrayList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f10466h;

    public MultiParagraph(MultiParagraphIntrinsics multiParagraphIntrinsics, long j2, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        boolean z;
        int iG;
        this.f10461a = multiParagraphIntrinsics;
        this.f10462b = i2;
        if (Constraints.j(j2) != 0 || Constraints.i(j2) != 0) {
            InlineClassHelperKt.a("Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead.");
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = multiParagraphIntrinsics.f10470e;
        int size = arrayList2.size();
        int i4 = 0;
        float f2 = 0.0f;
        int i5 = 0;
        while (true) {
            if (i5 >= size) {
                z = false;
                break;
            }
            ParagraphIntrinsicInfo paragraphIntrinsicInfo = (ParagraphIntrinsicInfo) arrayList2.get(i5);
            ParagraphIntrinsics paragraphIntrinsics = paragraphIntrinsicInfo.f10476a;
            int iH = Constraints.h(j2);
            if (Constraints.c(j2)) {
                iG = Constraints.g(j2) - ParagraphKt.b(f2);
                if (iG < 0) {
                    iG = 0;
                }
            } else {
                iG = Constraints.g(j2);
            }
            long jB = ConstraintsKt.b(0, iH, 0, iG, 5);
            int i6 = this.f10462b - i4;
            paragraphIntrinsics.getClass();
            AndroidParagraph androidParagraph = new AndroidParagraph((AndroidParagraphIntrinsics) paragraphIntrinsics, i6, i3, jB, null);
            float height = androidParagraph.getHeight() + f2;
            TextLayout textLayout = androidParagraph.d;
            int i7 = i4 + textLayout.f10614h;
            arrayList.add(new ParagraphInfo(androidParagraph, paragraphIntrinsicInfo.f10477b, paragraphIntrinsicInfo.f10478c, i4, i7, f2, height));
            if (textLayout.f10612e || (i7 == this.f10462b && i5 != CollectionsKt.F(this.f10461a.f10470e))) {
                z = true;
                i4 = i7;
                f2 = height;
                break;
            } else {
                i5++;
                i4 = i7;
                f2 = height;
            }
        }
        this.f10464e = f2;
        this.f10465f = i4;
        this.f10463c = z;
        this.f10466h = arrayList;
        this.d = Constraints.h(j2);
        ArrayList arrayList3 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        for (int i8 = 0; i8 < size2; i8++) {
            ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i8);
            List listX = paragraphInfo.f10471a.getF10417f();
            ArrayList arrayList4 = new ArrayList(listX.size());
            int size3 = listX.size();
            for (int i9 = 0; i9 < size3; i9++) {
                Rect rect = (Rect) listX.get(i9);
                arrayList4.add(rect != null ? paragraphInfo.a(rect) : null);
            }
            CollectionsKt.j(arrayList3, arrayList4);
        }
        if (arrayList3.size() < this.f10461a.f10468b.size()) {
            int size4 = this.f10461a.f10468b.size() - arrayList3.size();
            ArrayList arrayList5 = new ArrayList(size4);
            for (int i10 = 0; i10 < size4; i10++) {
                arrayList5.add(null);
            }
            arrayList3 = CollectionsKt.Y(arrayList3, arrayList5);
        }
        this.g = arrayList3;
    }

    public static void i(MultiParagraph multiParagraph, Canvas canvas, long j2, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle) {
        DrawScope.a0.getClass();
        int i2 = DrawScope.Companion.f9007b;
        multiParagraph.getClass();
        canvas.p();
        ArrayList arrayList = multiParagraph.f10466h;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i3);
            paragraphInfo.f10471a.d(canvas, j2, shadow, textDecoration, drawStyle, i2);
            canvas.j(Call.Parameters.DEFAULT_CAMERA_ZOOM, paragraphInfo.f10471a.getHeight());
        }
        canvas.restore();
    }

    public static void j(MultiParagraph multiParagraph, Canvas canvas, Brush brush, float f2, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle) {
        DrawScope.a0.getClass();
        int i2 = DrawScope.Companion.f9007b;
        multiParagraph.getClass();
        canvas.p();
        ArrayList arrayList = multiParagraph.f10466h;
        if (arrayList.size() <= 1 || (brush instanceof SolidColor)) {
            AndroidMultiParagraphDraw_androidKt.a(multiParagraph, canvas, brush, f2, shadow, textDecoration, drawStyle, i2);
        } else {
            if (!(brush instanceof ShaderBrush)) {
                v40.g();
                return;
            }
            int size = arrayList.size();
            float fMax = 0.0f;
            float height = 0.0f;
            for (int i3 = 0; i3 < size; i3++) {
                ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i3);
                height += paragraphInfo.f10471a.getHeight();
                fMax = Math.max(fMax, paragraphInfo.f10471a.getWidth());
            }
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fMax)) << 32) | (((long) Float.floatToRawIntBits(height)) & BodyPartID.bodyIdMax);
            Size.Companion companion = Size.f8820b;
            Shader shaderB = ((ShaderBrush) brush).b(jFloatToRawIntBits);
            Matrix matrix = new Matrix();
            shaderB.getLocalMatrix(matrix);
            int size2 = arrayList.size();
            for (int i4 = 0; i4 < size2; i4++) {
                Paragraph paragraph = ((ParagraphInfo) arrayList.get(i4)).f10471a;
                int i5 = i2;
                paragraph.p(canvas, new BrushKt$ShaderBrush$1(shaderB), f2, shadow, textDecoration, drawStyle, i5);
                i2 = i5;
                canvas.j(Call.Parameters.DEFAULT_CAMERA_ZOOM, paragraph.getHeight());
                matrix.setTranslate(Call.Parameters.DEFAULT_CAMERA_ZOOM, -paragraph.getHeight());
                shaderB.setLocalMatrix(matrix);
            }
        }
        canvas.restore();
    }

    public final void a(long j2, float[] fArr) {
        k(TextRange.f(j2));
        l(TextRange.e(j2));
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.f71919b = 0;
        MultiParagraphKt.d(this.f10466h, j2, new wg(j2, fArr, ref$IntRef, new Ref$FloatRef()));
    }

    public final float b(int i2) {
        m(i2);
        ArrayList arrayList = this.f10466h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(MultiParagraphKt.b(i2, arrayList));
        return paragraphInfo.f10471a.v(i2 - paragraphInfo.d) + paragraphInfo.f10475f;
    }

    public final int c(int i2, boolean z) {
        m(i2);
        ArrayList arrayList = this.f10466h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(MultiParagraphKt.b(i2, arrayList));
        return paragraphInfo.f10471a.i(i2 - paragraphInfo.d, z) + paragraphInfo.f10472b;
    }

    public final int d(int i2) {
        int iA;
        int length = this.f10461a.f10467a.f10420c.length();
        ArrayList arrayList = this.f10466h;
        if (i2 >= length) {
            iA = CollectionsKt.F(arrayList);
        } else {
            iA = i2 < 0 ? 0 : MultiParagraphKt.a(i2, arrayList);
        }
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(iA);
        return paragraphInfo.f10471a.s(paragraphInfo.d(i2)) + paragraphInfo.d;
    }

    public final int e(float f2) {
        ArrayList arrayList = this.f10466h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(MultiParagraphKt.c(arrayList, f2));
        int i2 = paragraphInfo.f10473c - paragraphInfo.f10472b;
        int i3 = paragraphInfo.d;
        return i2 == 0 ? i3 : paragraphInfo.f10471a.l(f2 - paragraphInfo.f10475f) + i3;
    }

    public final float f(int i2) {
        m(i2);
        ArrayList arrayList = this.f10466h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(MultiParagraphKt.b(i2, arrayList));
        return paragraphInfo.f10471a.b(i2 - paragraphInfo.d) + paragraphInfo.f10475f;
    }

    public final int g(long j2) {
        int i2 = (int) (j2 & BodyPartID.bodyIdMax);
        float fIntBitsToFloat = Float.intBitsToFloat(i2);
        ArrayList arrayList = this.f10466h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(MultiParagraphKt.c(arrayList, fIntBitsToFloat));
        int i3 = paragraphInfo.f10473c;
        int i4 = paragraphInfo.f10472b;
        if (i3 - i4 == 0) {
            return i4;
        }
        Paragraph paragraph = paragraphInfo.f10471a;
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j2 >> 32));
        float fIntBitsToFloat3 = Float.intBitsToFloat(i2) - paragraphInfo.f10475f;
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) << 32) | (BodyPartID.bodyIdMax & ((long) Float.floatToRawIntBits(fIntBitsToFloat3)));
        Offset.Companion companion = Offset.f8806b;
        return paragraph.g(jFloatToRawIntBits) + i4;
    }

    public final long h(Rect rect, int i2, TextInclusionStrategy textInclusionStrategy) {
        long jB;
        long j2;
        float f2 = rect.f8812b;
        ArrayList arrayList = this.f10466h;
        int iC = MultiParagraphKt.c(arrayList, f2);
        float f3 = ((ParagraphInfo) arrayList.get(iC)).g;
        float f4 = rect.d;
        if (f3 >= f4 || iC == CollectionsKt.F(arrayList)) {
            ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(iC);
            return paragraphInfo.b(paragraphInfo.f10471a.t(paragraphInfo.c(rect), i2, textInclusionStrategy), true);
        }
        int iC2 = MultiParagraphKt.c(arrayList, f4);
        TextRange.f10564b.getClass();
        long jB2 = TextRange.f10565c;
        while (true) {
            TextRange.f10564b.getClass();
            jB = TextRange.f10565c;
            if (!TextRange.b(jB2, jB) || iC > iC2) {
                break;
            }
            ParagraphInfo paragraphInfo2 = (ParagraphInfo) arrayList.get(iC);
            jB2 = paragraphInfo2.b(paragraphInfo2.f10471a.t(paragraphInfo2.c(rect), i2, textInclusionStrategy), true);
            iC++;
        }
        if (TextRange.b(jB2, jB)) {
            return jB;
        }
        while (true) {
            TextRange.f10564b.getClass();
            j2 = TextRange.f10565c;
            if (!TextRange.b(jB, j2) || iC > iC2) {
                break;
            }
            ParagraphInfo paragraphInfo3 = (ParagraphInfo) arrayList.get(iC2);
            jB = paragraphInfo3.b(paragraphInfo3.f10471a.t(paragraphInfo3.c(rect), i2, textInclusionStrategy), true);
            iC2--;
        }
        return TextRange.b(jB, j2) ? jB2 : TextRangeKt.a((int) (jB2 >> 32), (int) (BodyPartID.bodyIdMax & jB));
    }

    public final void k(int i2) {
        boolean z = false;
        MultiParagraphIntrinsics multiParagraphIntrinsics = this.f10461a;
        if (i2 >= 0 && i2 < multiParagraphIntrinsics.f10467a.f10420c.length()) {
            z = true;
        }
        if (z) {
            return;
        }
        StringBuilder sbQ = fc.q(i2, "offset(", ") is out of bounds [0, ");
        sbQ.append(multiParagraphIntrinsics.f10467a.f10420c.length());
        sbQ.append(')');
        InlineClassHelperKt.a(sbQ.toString());
    }

    public final void l(int i2) {
        boolean z = false;
        MultiParagraphIntrinsics multiParagraphIntrinsics = this.f10461a;
        if (i2 >= 0 && i2 <= multiParagraphIntrinsics.f10467a.f10420c.length()) {
            z = true;
        }
        if (z) {
            return;
        }
        StringBuilder sbQ = fc.q(i2, "offset(", ") is out of bounds [0, ");
        sbQ.append(multiParagraphIntrinsics.f10467a.f10420c.length());
        sbQ.append(']');
        InlineClassHelperKt.a(sbQ.toString());
    }

    public final void m(int i2) {
        boolean z = false;
        int i3 = this.f10465f;
        if (i2 >= 0 && i2 < i3) {
            z = true;
        }
        if (z) {
            return;
        }
        InlineClassHelperKt.a("lineIndex(" + i2 + ") is out of bounds [0, " + i3 + ')');
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MultiParagraph(MultiParagraphIntrinsics multiParagraphIntrinsics, long j2, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        int i5 = (i4 & 4) != 0 ? Integer.MAX_VALUE : i2;
        if ((i4 & 8) != 0) {
            TextOverflow.f10989a.getClass();
            i3 = TextOverflow.f10990b;
        }
        this(multiParagraphIntrinsics, j2, i5, i3, (DefaultConstructorMarker) null);
    }

    public MultiParagraph(AnnotatedString annotatedString, TextStyle textStyle, float f2, Density density, FontFamily.Resolver resolver, List list, int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, textStyle, f2, density, resolver, (List<AnnotatedString.Range<Placeholder>>) ((i3 & 32) != 0 ? EmptyList.f71768b : list), (i3 & 64) != 0 ? Integer.MAX_VALUE : i2, (i3 & 128) != 0 ? false : z);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MultiParagraph(AnnotatedString annotatedString, TextStyle textStyle, long j2, Density density, FontFamily.Resolver resolver, List list, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        int i5;
        List list2 = (i4 & 32) != 0 ? EmptyList.f71768b : list;
        int i6 = (i4 & 64) != 0 ? Integer.MAX_VALUE : i2;
        if ((i4 & 128) != 0) {
            TextOverflow.f10989a.getClass();
            i5 = TextOverflow.f10990b;
        } else {
            i5 = i3;
        }
        this(annotatedString, textStyle, j2, density, resolver, list2, i6, i5, (DefaultConstructorMarker) null);
    }

    public MultiParagraph(AnnotatedString annotatedString, TextStyle textStyle, long j2, Density density, FontFamily.Resolver resolver, List list, int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, textStyle, j2, density, resolver, (i3 & 32) != 0 ? EmptyList.f71768b : list, (i3 & 64) != 0 ? Integer.MAX_VALUE : i2, (i3 & 128) != 0 ? false : z, (DefaultConstructorMarker) null);
    }

    public MultiParagraph(AnnotatedString annotatedString, TextStyle textStyle, List list, int i2, boolean z, float f2, Density density, Font.ResourceLoader resourceLoader, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, textStyle, (List<AnnotatedString.Range<Placeholder>>) ((i3 & 4) != 0 ? EmptyList.f71768b : list), (i3 & 8) != 0 ? Integer.MAX_VALUE : i2, (i3 & 16) != 0 ? false : z, f2, density, resourceLoader);
    }

    public /* synthetic */ MultiParagraph(MultiParagraphIntrinsics multiParagraphIntrinsics, long j2, int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(multiParagraphIntrinsics, j2, (i3 & 4) != 0 ? Integer.MAX_VALUE : i2, (i3 & 8) != 0 ? false : z, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public MultiParagraph(MultiParagraphIntrinsics multiParagraphIntrinsics, long j2, int i2, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        int i3;
        if (z) {
            TextOverflow.f10989a.getClass();
            i3 = TextOverflow.f10991c;
        } else {
            TextOverflow.f10989a.getClass();
            i3 = TextOverflow.f10990b;
        }
        this(multiParagraphIntrinsics, j2, i2, i3, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ MultiParagraph(MultiParagraphIntrinsics multiParagraphIntrinsics, int i2, boolean z, float f2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(multiParagraphIntrinsics, (i3 & 2) != 0 ? Integer.MAX_VALUE : i2, (i3 & 4) != 0 ? false : z, f2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public MultiParagraph(MultiParagraphIntrinsics multiParagraphIntrinsics, int i2, boolean z, float f2) {
        int i3;
        long jB = ConstraintsKt.b(0, ParagraphKt.b(f2), 0, 0, 13);
        if (z) {
            TextOverflow.f10989a.getClass();
            i3 = TextOverflow.f10991c;
        } else {
            TextOverflow.f10989a.getClass();
            i3 = TextOverflow.f10990b;
        }
        this(multiParagraphIntrinsics, jB, i2, i3, (DefaultConstructorMarker) null);
    }

    @Deprecated
    public MultiParagraph(AnnotatedString annotatedString, TextStyle textStyle, List<AnnotatedString.Range<Placeholder>> list, int i2, boolean z, float f2, Density density, Font.ResourceLoader resourceLoader) {
        int i3;
        MultiParagraphIntrinsics multiParagraphIntrinsics = new MultiParagraphIntrinsics(annotatedString, textStyle, list, density, DelegatingFontLoaderForDeprecatedUsage_androidKt.a(resourceLoader));
        TextOverflow.f10989a.getClass();
        if (z) {
            i3 = TextOverflow.f10991c;
        } else {
            i3 = TextOverflow.f10990b;
        }
        this(multiParagraphIntrinsics, ConstraintsKt.b(0, ParagraphKt.b(f2), 0, 0, 13), i2, i3, (DefaultConstructorMarker) null);
    }

    @Deprecated
    public MultiParagraph(AnnotatedString annotatedString, TextStyle textStyle, float f2, Density density, FontFamily.Resolver resolver, List<AnnotatedString.Range<Placeholder>> list, int i2, boolean z) {
        int i3;
        MultiParagraphIntrinsics multiParagraphIntrinsics = new MultiParagraphIntrinsics(annotatedString, textStyle, list, density, resolver);
        TextOverflow.f10989a.getClass();
        if (z) {
            i3 = TextOverflow.f10991c;
        } else {
            i3 = TextOverflow.f10990b;
        }
        this(multiParagraphIntrinsics, ConstraintsKt.b(0, ParagraphKt.b(f2), 0, 0, 13), i2, i3, (DefaultConstructorMarker) null);
    }

    @Deprecated
    public MultiParagraph(AnnotatedString annotatedString, TextStyle textStyle, long j2, Density density, FontFamily.Resolver resolver, List list, int i2, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        int i3;
        MultiParagraphIntrinsics multiParagraphIntrinsics = new MultiParagraphIntrinsics(annotatedString, textStyle, (List<AnnotatedString.Range<Placeholder>>) list, density, resolver);
        TextOverflow.f10989a.getClass();
        if (z) {
            i3 = TextOverflow.f10991c;
        } else {
            i3 = TextOverflow.f10990b;
        }
        this(multiParagraphIntrinsics, j2, i2, i3, (DefaultConstructorMarker) null);
    }

    public MultiParagraph(AnnotatedString annotatedString, TextStyle textStyle, long j2, Density density, FontFamily.Resolver resolver, List list, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(new MultiParagraphIntrinsics(annotatedString, textStyle, (List<AnnotatedString.Range<Placeholder>>) list, density, resolver), j2, i2, i3, (DefaultConstructorMarker) null);
    }
}
