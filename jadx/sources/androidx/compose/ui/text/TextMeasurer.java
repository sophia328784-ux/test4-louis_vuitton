package androidx.compose.ui.text;

import androidx.collection.LruCache;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\fB)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Landroidx/compose/ui/text/TextMeasurer;", "", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "defaultFontFamilyResolver", "Landroidx/compose/ui/unit/Density;", "defaultDensity", "Landroidx/compose/ui/unit/LayoutDirection;", "defaultLayoutDirection", "", "cacheSize", "<init>", "(Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;I)V", "Companion", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextMeasurer {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f10560e = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FontFamily.Resolver f10561a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Density f10562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LayoutDirection f10563c;
    public final TextLayoutCache d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/TextMeasurer$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public TextMeasurer(FontFamily.Resolver resolver, Density density, LayoutDirection layoutDirection, int i2) {
        this.f10561a = resolver;
        this.f10562b = density;
        this.f10563c = layoutDirection;
        this.d = i2 > 0 ? new TextLayoutCache(i2) : null;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0072  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:36:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:37:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:48:0x0110  */
    public static TextLayoutResult a(TextMeasurer textMeasurer, String str, TextStyle textStyle, long j2, int i2) {
        TextLayoutResult textLayoutResult;
        int iH;
        int i3;
        TextLayoutResult textLayoutResult2;
        TextOverflow.Companion companion = TextOverflow.f10989a;
        companion.getClass();
        int i4 = TextOverflow.f10990b;
        long jB = (i2 & 32) != 0 ? ConstraintsKt.b(0, 0, 0, 0, 15) : j2;
        LayoutDirection layoutDirection = textMeasurer.f10563c;
        Density density = textMeasurer.f10562b;
        FontFamily.Resolver resolver = textMeasurer.f10561a;
        textMeasurer.getClass();
        AnnotatedString annotatedString = new AnnotatedString(str, null, 2, null);
        EmptyList emptyList = EmptyList.f71768b;
        TextLayoutCache textLayoutCache = textMeasurer.d;
        TextLayoutInput textLayoutInput = new TextLayoutInput(annotatedString, textStyle, (List) emptyList, Integer.MAX_VALUE, true, i4, density, layoutDirection, resolver, jB, (DefaultConstructorMarker) null);
        if (textLayoutCache != null) {
            CacheTextLayoutInput cacheTextLayoutInput = new CacheTextLayoutInput(textLayoutInput);
            LruCache lruCache = textLayoutCache.f10540a;
            if (lruCache != null) {
                textLayoutResult2 = (TextLayoutResult) lruCache.b(cacheTextLayoutInput);
            } else if (Intrinsics.c(textLayoutCache.f10541b, cacheTextLayoutInput)) {
                textLayoutResult2 = textLayoutCache.f10542c;
            } else {
                textLayoutResult = null;
            }
            textLayoutResult = textLayoutResult2;
            if (textLayoutResult == null || textLayoutResult.f10553b.f10461a.a()) {
                textLayoutResult = null;
            }
        } else {
            textLayoutResult = null;
        }
        if (textLayoutResult != null) {
            MultiParagraph multiParagraph = textLayoutResult.f10553b;
            int iB = ParagraphKt.b(multiParagraph.d);
            long jB2 = ((long) ParagraphKt.b(multiParagraph.f10464e)) & BodyPartID.bodyIdMax;
            IntSize.Companion companion2 = IntSize.f11020b;
            return new TextLayoutResult(textLayoutInput, textLayoutResult.f10553b, ConstraintsKt.d(jB, jB2 | (((long) iB) << 32)), null);
        }
        f10560e.getClass();
        MultiParagraphIntrinsics multiParagraphIntrinsics = new MultiParagraphIntrinsics(textLayoutInput.f10543a, TextStyleKt.a(textLayoutInput.f10544b, textLayoutInput.f10548h), (List<AnnotatedString.Range<Placeholder>>) textLayoutInput.f10545c, textLayoutInput.g, textLayoutInput.f10549i);
        long j3 = textLayoutInput.f10550j;
        int iJ = Constraints.j(j3);
        int i5 = textLayoutInput.f10547f;
        boolean z = textLayoutInput.f10546e;
        if (!z) {
            companion.getClass();
            if (i5 != TextOverflow.f10991c && i5 != TextOverflow.f10992e && i5 != TextOverflow.f10993f) {
                iH = Integer.MAX_VALUE;
            } else if (Constraints.d(j3)) {
                iH = Constraints.h(j3);
            } else {
                iH = Integer.MAX_VALUE;
            }
        } else if (Constraints.d(j3)) {
            iH = Constraints.h(j3);
        } else {
            iH = Integer.MAX_VALUE;
        }
        if (z) {
            i3 = textLayoutInput.d;
        } else {
            companion.getClass();
            if (i5 == TextOverflow.f10991c || i5 == TextOverflow.f10992e || i5 == TextOverflow.f10993f) {
                i3 = 1;
            } else {
                i3 = textLayoutInput.d;
            }
        }
        if (iJ != iH) {
            iH = RangesKt.d(ParagraphKt.b(multiParagraphIntrinsics.b()), iJ, iH);
        }
        Constraints.Companion companion3 = Constraints.f10998b;
        int iG = Constraints.g(j3);
        companion3.getClass();
        MultiParagraph multiParagraph2 = new MultiParagraph(multiParagraphIntrinsics, Constraints.Companion.b(0, iH, 0, iG), i3, textLayoutInput.f10547f, (DefaultConstructorMarker) null);
        long jCeil = (BodyPartID.bodyIdMax & ((long) ((int) Math.ceil(multiParagraph2.f10464e)))) | (((long) ((int) Math.ceil(multiParagraph2.d))) << 32);
        IntSize.Companion companion4 = IntSize.f11020b;
        TextLayoutResult textLayoutResult3 = new TextLayoutResult(textLayoutInput, multiParagraph2, ConstraintsKt.d(j3, jCeil), null);
        if (textLayoutCache != null) {
            LruCache lruCache2 = textLayoutCache.f10540a;
            if (lruCache2 != null) {
                lruCache2.c(new CacheTextLayoutInput(textLayoutInput), textLayoutResult3);
                return textLayoutResult3;
            }
            textLayoutCache.f10541b = new CacheTextLayoutInput(textLayoutInput);
            textLayoutCache.f10542c = textLayoutResult3;
        }
        return textLayoutResult3;
    }

    public /* synthetic */ TextMeasurer(FontFamily.Resolver resolver, Density density, LayoutDirection layoutDirection, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(resolver, density, layoutDirection, (i3 & 8) != 0 ? 8 : i2);
    }
}
