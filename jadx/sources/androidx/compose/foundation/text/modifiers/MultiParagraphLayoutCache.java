package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.TextAutoSize;
import androidx.compose.foundation.text.TextDelegateKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.lc0;
import defpackage.md;
import defpackage.o60;
import io.jsonwebtoken.JwtParser;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0017Bk\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\f\u0012\u0016\b\u0002\u0010\u0012\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u0010\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;", "", "Landroidx/compose/ui/text/AnnotatedString;", "text", "Landroidx/compose/ui/text/TextStyle;", "style", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "fontFamilyResolver", "Landroidx/compose/ui/text/style/TextOverflow;", "overflow", "", "softWrap", "", "maxLines", "minLines", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/Placeholder;", "placeholders", "Landroidx/compose/foundation/text/TextAutoSize;", "autoSize", "<init>", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILjava/util/List;Landroidx/compose/foundation/text/TextAutoSize;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "TextAutoSizeLayoutScopeImpl", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MultiParagraphLayoutCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AnnotatedString f6270a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public FontFamily.Resolver f6271b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6272c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6273e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6274f;
    public List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextAutoSize f6275h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public MinLinesConstrainer f6276i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f6277j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Density f6278k;
    public TextStyle l;
    public MultiParagraphIntrinsics m;
    public LayoutDirection n;
    public TextLayoutResult o;
    public int p;
    public int q;
    public TextAutoSizeLayoutScopeImpl r;
    public long s;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache$TextAutoSizeLayoutScopeImpl;", "Landroidx/compose/foundation/text/modifiers/TextAutoSizeLayoutScope;", "<init>", "(Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class TextAutoSizeLayoutScopeImpl implements TextAutoSizeLayoutScope {
        public TextAutoSizeLayoutScopeImpl() {
        }

        @Override // androidx.compose.ui.unit.Density
        public final float E0(long j2) {
            if (!TextUnit.d(j2)) {
                return getF9496c() * Z(j2);
            }
            MultiParagraphLayoutCache multiParagraphLayoutCache = MultiParagraphLayoutCache.this;
            if (TextUnit.d(multiParagraphLayoutCache.l.f10568a.fontSize)) {
                md.k("InternalAutoSize -> toPx(): Cannot convert Em to Px when style.fontSize is Em\nDeclare the composable's style.fontSize with Sp units instead.");
                return Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            long j3 = multiParagraphLayoutCache.l.f10568a.fontSize;
            TextUnit.f11023b.getClass();
            if (TextUnit.a(j3, TextUnit.d)) {
                md.k("InternalAutoSize -> toPx(): Cannot convert Em to Px when style.fontSize is not set. Please specify a font size.");
                return Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            return TextUnit.c(j2) * E0(multiParagraphLayoutCache.l.f10568a.fontSize);
        }

        @Override // androidx.compose.ui.unit.Density
        /* JADX INFO: renamed from: getDensity */
        public final float getF9496c() {
            Density density = MultiParagraphLayoutCache.this.f6278k;
            density.getClass();
            return density.getF9496c();
        }

        @Override // androidx.compose.ui.unit.FontScaling
        /* JADX INFO: renamed from: s1 */
        public final float getD() {
            Density density = MultiParagraphLayoutCache.this.f6278k;
            density.getClass();
            return density.getD();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MultiParagraphLayoutCache(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, int i2, boolean z, int i3, int i4, List list, TextAutoSize textAutoSize, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        int i6;
        if ((i5 & 8) != 0) {
            TextOverflow.f10989a.getClass();
            i6 = TextOverflow.f10990b;
        } else {
            i6 = i2;
        }
        this(annotatedString, textStyle, resolver, i6, (i5 & 16) != 0 ? true : z, (i5 & 32) != 0 ? Integer.MAX_VALUE : i3, (i5 & 64) != 0 ? 1 : i4, (i5 & 128) != 0 ? null : list, (i5 & 256) != 0 ? null : textAutoSize, null);
    }

    public final int a(int i2, LayoutDirection layoutDirection) {
        int i3 = this.p;
        int i4 = this.q;
        if (i2 == i3 && i3 != -1) {
            return i4;
        }
        long jA = ConstraintsKt.a(0, i2, 0, Integer.MAX_VALUE);
        if (this.f6274f > 1) {
            MinLinesConstrainer.Companion companion = MinLinesConstrainer.f6261h;
            MinLinesConstrainer minLinesConstrainer = this.f6276i;
            TextStyle textStyle = this.l;
            Density density = this.f6278k;
            density.getClass();
            FontFamily.Resolver resolver = this.f6271b;
            companion.getClass();
            MinLinesConstrainer minLinesConstrainerA = MinLinesConstrainer.Companion.a(minLinesConstrainer, layoutDirection, textStyle, density, resolver);
            this.f6276i = minLinesConstrainerA;
            jA = minLinesConstrainerA.a(this.f6274f, jA);
        }
        int iA = TextDelegateKt.a(b(jA, layoutDirection).f10464e);
        int i5 = Constraints.i(jA);
        if (iA < i5) {
            iA = i5;
        }
        this.p = i2;
        this.q = iA;
        return iA;
    }

    public final MultiParagraph b(long j2, LayoutDirection layoutDirection) {
        MultiParagraphIntrinsics multiParagraphIntrinsicsE = e(layoutDirection);
        long jA = LayoutUtilsKt.a(j2, this.d, this.f6272c, multiParagraphIntrinsicsE.b());
        boolean z = this.d;
        int i2 = this.f6272c;
        int i3 = this.f6273e;
        int i4 = 1;
        if ((z || !LayoutUtilsKt.b(i2)) && i3 >= 1) {
            i4 = i3;
        }
        return new MultiParagraph(multiParagraphIntrinsicsE, jA, i4, this.f6272c, (DefaultConstructorMarker) null);
    }

    public final boolean c(long j2, LayoutDirection layoutDirection) {
        long jA;
        long jD;
        LayoutCacheOperation.f6258a.getClass();
        this.s = LayoutCacheOperation.d | (this.s << 2);
        if (this.f6274f > 1) {
            MinLinesConstrainer.Companion companion = MinLinesConstrainer.f6261h;
            MinLinesConstrainer minLinesConstrainer = this.f6276i;
            TextStyle textStyle = this.l;
            Density density = this.f6278k;
            density.getClass();
            FontFamily.Resolver resolver = this.f6271b;
            companion.getClass();
            MinLinesConstrainer minLinesConstrainerA = MinLinesConstrainer.Companion.a(minLinesConstrainer, layoutDirection, textStyle, density, resolver);
            this.f6276i = minLinesConstrainerA;
            jA = minLinesConstrainerA.a(this.f6274f, j2);
        } else {
            jA = j2;
        }
        TextLayoutResult textLayoutResult = this.o;
        if (textLayoutResult != null) {
            MultiParagraph multiParagraph = textLayoutResult.f10553b;
            TextLayoutInput textLayoutInput = textLayoutResult.f10552a;
            if (!multiParagraph.f10461a.a()) {
                LayoutDirection layoutDirection2 = textLayoutInput.f10548h;
                long j3 = textLayoutInput.f10550j;
                if (layoutDirection == layoutDirection2 && (Constraints.b(jA, j3) || (Constraints.h(jA) == Constraints.h(j3) && Constraints.j(jA) == Constraints.j(j3) && Constraints.g(jA) >= multiParagraph.f10464e && !multiParagraph.f10463c))) {
                    TextLayoutResult textLayoutResult2 = this.o;
                    textLayoutResult2.getClass();
                    if (Constraints.b(jA, textLayoutResult2.f10552a.f10550j)) {
                        return false;
                    }
                    TextLayoutResult textLayoutResult3 = this.o;
                    textLayoutResult3.getClass();
                    this.o = g(layoutDirection, jA, textLayoutResult3.f10553b);
                    return true;
                }
            }
        }
        TextAutoSize textAutoSize = this.f6275h;
        if (textAutoSize != null) {
            this.n = layoutDirection;
            long j4 = this.l.f10568a.fontSize;
            if (this.r == null) {
                this.r = new TextAutoSizeLayoutScopeImpl();
            }
            this.r.getClass();
            long jA2 = textAutoSize.a();
            if (TextUnit.d(jA2)) {
                int i2 = MultiParagraphLayoutCacheKt.f6281b;
                if (!TextUnit.d(jA2)) {
                    throw new IllegalArgumentException("The multiplier must be in em, but was " + ((Object) TextUnit.e(jA2)) + JwtParser.SEPARATOR_CHAR);
                }
                if (TextUnit.d(j4)) {
                    lc0.w("Cannot convert Em to Px when style.fontSize is Em (", TextUnit.e(jA2), "). Please declare the style.fontSize with Sp units instead.");
                    return false;
                }
                long j5 = j4 & 1095216660480L;
                if (j5 == 0) {
                    long j6 = MultiParagraphLayoutCacheKt.f6280a;
                    float fC = TextUnit.c(jA2);
                    TextUnitKt.a(j6);
                    jD = TextUnitKt.d(TextUnit.c(j6) * fC, j6 & 1095216660480L);
                } else {
                    float fC2 = TextUnit.c(jA2);
                    TextUnitKt.a(j4);
                    jD = TextUnitKt.d(TextUnit.c(j4) * fC2, j5);
                }
                jA2 = jD;
            }
            if (this.r == null) {
                this.r = new TextAutoSizeLayoutScopeImpl();
            }
            this.r.getClass();
            f(TextStyle.a(this.l, 0L, jA2, null, null, 0L, null, 0, 0, 0L, null, null, 16777213));
        }
        this.o = g(layoutDirection, jA, b(jA, layoutDirection));
        return true;
    }

    public final void d(Density density) {
        long jA;
        Density density2 = this.f6278k;
        InlineDensity.Companion companion = InlineDensity.f6256a;
        if (density != null) {
            jA = InlineDensity.a(density.getF9496c(), density.getD());
        } else {
            companion.getClass();
            jA = InlineDensity.f6257b;
        }
        if (density2 == null) {
            this.f6278k = density;
            this.f6277j = jA;
            return;
        }
        if (density == null || this.f6277j != jA) {
            this.f6278k = density;
            this.f6277j = jA;
            LayoutCacheOperation.f6258a.getClass();
            this.s = LayoutCacheOperation.f6259b | (this.s << 2);
            this.m = null;
            this.o = null;
            this.q = -1;
            this.p = -1;
            this.r = null;
        }
    }

    public final MultiParagraphIntrinsics e(LayoutDirection layoutDirection) {
        MultiParagraphIntrinsics multiParagraphIntrinsics = this.m;
        if (multiParagraphIntrinsics == null || layoutDirection != this.n || multiParagraphIntrinsics.a()) {
            this.n = layoutDirection;
            AnnotatedString annotatedString = this.f6270a;
            TextStyle textStyleA = TextStyleKt.a(this.l, layoutDirection);
            Density density = this.f6278k;
            density.getClass();
            FontFamily.Resolver resolver = this.f6271b;
            List list = this.g;
            if (list == null) {
                list = EmptyList.f71768b;
            }
            multiParagraphIntrinsics = new MultiParagraphIntrinsics(annotatedString, textStyleA, (List<AnnotatedString.Range<Placeholder>>) list, density, resolver);
        }
        this.m = multiParagraphIntrinsics;
        return multiParagraphIntrinsics;
    }

    public final void f(TextStyle textStyle) {
        boolean zC = textStyle.c(this.l);
        this.l = textStyle;
        if (zC) {
            return;
        }
        LayoutCacheOperation.f6258a.getClass();
        this.s <<= 2;
        this.m = null;
        this.o = null;
        this.q = -1;
        this.p = -1;
    }

    public final TextLayoutResult g(LayoutDirection layoutDirection, long j2, MultiParagraph multiParagraph) {
        float fMin = Math.min(multiParagraph.f10461a.b(), multiParagraph.d);
        AnnotatedString annotatedString = this.f6270a;
        TextStyle textStyle = this.l;
        List list = this.g;
        if (list == null) {
            list = EmptyList.f71768b;
        }
        int i2 = this.f6273e;
        boolean z = this.d;
        int i3 = this.f6272c;
        Density density = this.f6278k;
        density.getClass();
        TextLayoutInput textLayoutInput = new TextLayoutInput(annotatedString, textStyle, list, i2, z, i3, density, layoutDirection, this.f6271b, j2, (DefaultConstructorMarker) null);
        long jA = (((long) TextDelegateKt.a(multiParagraph.f10464e)) & BodyPartID.bodyIdMax) | (((long) TextDelegateKt.a(fMin)) << 32);
        IntSize.Companion companion = IntSize.f11020b;
        return new TextLayoutResult(textLayoutInput, multiParagraph, ConstraintsKt.d(j2, jA), null);
    }

    public final void h(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, int i2, boolean z, int i3, int i4, List list, TextAutoSize textAutoSize) {
        this.f6270a = annotatedString;
        f(textStyle);
        this.f6271b = resolver;
        this.f6272c = i2;
        this.d = z;
        this.f6273e = i3;
        this.f6274f = i4;
        this.g = list;
        this.f6275h = textAutoSize;
        LayoutCacheOperation.f6258a.getClass();
        this.s = LayoutCacheOperation.f6260c | (this.s << 2);
        this.m = null;
        this.o = null;
        this.q = -1;
        this.p = -1;
        this.r = null;
    }

    public final String toString() {
        TextLayoutInput textLayoutInput;
        StringBuilder sb = new StringBuilder("MultiParagraphLayoutCache(textLayoutResult=");
        Object constraints = "null";
        sb.append(this.o != null ? "<TextLayoutResult>" : "null");
        sb.append(", lastDensity=");
        sb.append((Object) InlineDensity.b(this.f6277j));
        sb.append(", history=");
        sb.append(this.s);
        sb.append(", constraints=");
        TextLayoutResult textLayoutResult = this.o;
        if (textLayoutResult != null && (textLayoutInput = textLayoutResult.f10552a) != null) {
            constraints = new Constraints(textLayoutInput.f10550j);
        }
        return o60.r(sb, constraints, ')');
    }

    public MultiParagraphLayoutCache(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, int i2, boolean z, int i3, int i4, List list, TextAutoSize textAutoSize, DefaultConstructorMarker defaultConstructorMarker) {
        this.f6270a = annotatedString;
        this.f6271b = resolver;
        this.f6272c = i2;
        this.d = z;
        this.f6273e = i3;
        this.f6274f = i4;
        this.g = list;
        this.f6275h = textAutoSize;
        InlineDensity.f6256a.getClass();
        this.f6277j = InlineDensity.f6257b;
        this.l = textStyle;
        this.p = -1;
        this.q = -1;
    }
}
