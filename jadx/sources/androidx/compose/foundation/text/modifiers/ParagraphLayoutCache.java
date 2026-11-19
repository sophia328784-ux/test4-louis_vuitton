package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.TextDelegateKt;
import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;", "", "", "text", "Landroidx/compose/ui/text/TextStyle;", "style", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "fontFamilyResolver", "Landroidx/compose/ui/text/style/TextOverflow;", "overflow", "", "softWrap", "", "maxLines", "minLines", "<init>", "(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ParagraphLayoutCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f6282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TextStyle f6283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FontFamily.Resolver f6284c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f6285e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6286f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f6287h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Density f6288i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public AndroidParagraph f6289j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f6290k;
    public long l;
    public MinLinesConstrainer m;
    public ParagraphIntrinsics n;
    public LayoutDirection o;
    public long p;
    public int q;
    public int r;
    public long s;

    public ParagraphLayoutCache(String str, TextStyle textStyle, FontFamily.Resolver resolver, int i2, boolean z, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this.f6282a = str;
        this.f6283b = textStyle;
        this.f6284c = resolver;
        this.d = i2;
        this.f6285e = z;
        this.f6286f = i3;
        this.g = i4;
        InlineDensity.f6256a.getClass();
        this.f6287h = InlineDensity.f6257b;
        IntSize.Companion companion = IntSize.f11020b;
        this.l = 0L;
        Constraints.f10998b.getClass();
        this.p = Constraints.Companion.c(0, 0);
        this.q = -1;
        this.r = -1;
    }

    public static long f(ParagraphLayoutCache paragraphLayoutCache, long j2, LayoutDirection layoutDirection) {
        TextStyle textStyle = paragraphLayoutCache.f6283b;
        MinLinesConstrainer.Companion companion = MinLinesConstrainer.f6261h;
        MinLinesConstrainer minLinesConstrainer = paragraphLayoutCache.m;
        Density density = paragraphLayoutCache.f6288i;
        density.getClass();
        FontFamily.Resolver resolver = paragraphLayoutCache.f6284c;
        companion.getClass();
        MinLinesConstrainer minLinesConstrainerA = MinLinesConstrainer.Companion.a(minLinesConstrainer, layoutDirection, textStyle, density, resolver);
        paragraphLayoutCache.m = minLinesConstrainerA;
        return minLinesConstrainerA.a(paragraphLayoutCache.g, j2);
    }

    public final int a(int i2, LayoutDirection layoutDirection) {
        int i3 = this.q;
        int i4 = this.r;
        if (i2 == i3 && i3 != -1) {
            return i4;
        }
        long jA = ConstraintsKt.a(0, i2, 0, Integer.MAX_VALUE);
        if (this.g > 1) {
            jA = f(this, jA, layoutDirection);
        }
        ParagraphIntrinsics paragraphIntrinsicsE = e(layoutDirection);
        long jA2 = LayoutUtilsKt.a(jA, this.f6285e, this.d, paragraphIntrinsicsE.b());
        boolean z = this.f6285e;
        int i5 = this.d;
        int i6 = this.f6286f;
        int iA = TextDelegateKt.a(new AndroidParagraph((AndroidParagraphIntrinsics) paragraphIntrinsicsE, ((z || !LayoutUtilsKt.b(i5)) && i6 >= 1) ? i6 : 1, this.d, jA2, null).getHeight());
        int i7 = Constraints.i(jA);
        if (iA < i7) {
            iA = i7;
        }
        this.q = i2;
        this.r = iA;
        return iA;
    }

    public final boolean b(long j2, LayoutDirection layoutDirection) {
        ParagraphIntrinsics paragraphIntrinsics;
        LayoutCacheOperation.f6258a.getClass();
        this.s = LayoutCacheOperation.d | (this.s << 2);
        boolean z = true;
        long jF = this.g > 1 ? f(this, j2, layoutDirection) : j2;
        AndroidParagraph androidParagraph = this.f6289j;
        boolean z2 = false;
        if (androidParagraph != null && (paragraphIntrinsics = this.n) != null && !paragraphIntrinsics.a() && layoutDirection == this.o && (Constraints.b(jF, this.p) || (Constraints.h(jF) == Constraints.h(this.p) && Constraints.j(jF) == Constraints.j(this.p) && Constraints.g(jF) >= androidParagraph.getHeight() && !androidParagraph.d.f10612e))) {
            if (!Constraints.b(jF, this.p)) {
                AndroidParagraph androidParagraph2 = this.f6289j;
                androidParagraph2.getClass();
                long jA = (((long) TextDelegateKt.a(Math.min(androidParagraph2.f10413a.f10883i.c(), androidParagraph2.getWidth()))) << 32) | (((long) TextDelegateKt.a(androidParagraph2.getHeight())) & BodyPartID.bodyIdMax);
                IntSize.Companion companion = IntSize.f11020b;
                long jD = ConstraintsKt.d(jF, jA);
                this.l = jD;
                int i2 = this.d;
                TextOverflow.f10989a.getClass();
                if (i2 == TextOverflow.d || (((int) (jD >> 32)) >= androidParagraph2.getWidth() && ((int) (BodyPartID.bodyIdMax & jD)) >= androidParagraph2.getHeight())) {
                    z = false;
                }
                this.f6290k = z;
                this.p = jF;
            }
            return false;
        }
        ParagraphIntrinsics paragraphIntrinsicsE = e(layoutDirection);
        long jA2 = LayoutUtilsKt.a(jF, this.f6285e, this.d, paragraphIntrinsicsE.b());
        boolean z3 = this.f6285e;
        int i3 = this.d;
        int i4 = this.f6286f;
        AndroidParagraph androidParagraph3 = new AndroidParagraph((AndroidParagraphIntrinsics) paragraphIntrinsicsE, ((z3 || !LayoutUtilsKt.b(i3)) && i4 >= 1) ? i4 : 1, this.d, jA2, null);
        this.p = jF;
        long jA3 = (((long) TextDelegateKt.a(androidParagraph3.getHeight())) & BodyPartID.bodyIdMax) | (((long) TextDelegateKt.a(androidParagraph3.getWidth())) << 32);
        IntSize.Companion companion2 = IntSize.f11020b;
        long jD2 = ConstraintsKt.d(jF, jA3);
        this.l = jD2;
        int i5 = this.d;
        TextOverflow.f10989a.getClass();
        if (i5 != TextOverflow.d && (((int) (jD2 >> 32)) < androidParagraph3.getWidth() || ((int) (jD2 & BodyPartID.bodyIdMax)) < androidParagraph3.getHeight())) {
            z2 = true;
        }
        this.f6290k = z2;
        this.f6289j = androidParagraph3;
        return true;
    }

    public final void c() {
        this.f6289j = null;
        this.n = null;
        this.o = null;
        this.q = -1;
        this.r = -1;
        Constraints.f10998b.getClass();
        this.p = Constraints.Companion.c(0, 0);
        IntSize.Companion companion = IntSize.f11020b;
        this.l = 0L;
        this.f6290k = false;
    }

    public final void d(Density density) {
        long jA;
        Density density2 = this.f6288i;
        InlineDensity.Companion companion = InlineDensity.f6256a;
        if (density != null) {
            jA = InlineDensity.a(density.getF11002b(), density.getF11003c());
        } else {
            companion.getClass();
            jA = InlineDensity.f6257b;
        }
        if (density2 == null) {
            this.f6288i = density;
            this.f6287h = jA;
        } else if (density == null || this.f6287h != jA) {
            this.f6288i = density;
            this.f6287h = jA;
            LayoutCacheOperation.f6258a.getClass();
            this.s = LayoutCacheOperation.f6259b | (this.s << 2);
            c();
        }
    }

    public final ParagraphIntrinsics e(LayoutDirection layoutDirection) {
        ParagraphIntrinsics androidParagraphIntrinsics = this.n;
        if (androidParagraphIntrinsics == null || layoutDirection != this.o || androidParagraphIntrinsics.a()) {
            this.o = layoutDirection;
            String str = this.f6282a;
            TextStyle textStyleA = TextStyleKt.a(this.f6283b, layoutDirection);
            EmptyList emptyList = EmptyList.f71768b;
            Density density = this.f6288i;
            density.getClass();
            androidParagraphIntrinsics = new AndroidParagraphIntrinsics(str, textStyleA, emptyList, emptyList, this.f6284c, density);
        }
        this.n = androidParagraphIntrinsics;
        return androidParagraphIntrinsics;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ParagraphLayoutCache(paragraph=");
        sb.append(this.f6289j != null ? "<paragraph>" : "null");
        sb.append(", lastDensity=");
        sb.append((Object) InlineDensity.b(this.f6287h));
        sb.append(", history=");
        return o60.j(this.s, ", constraints=$)", sb);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ParagraphLayoutCache(String str, TextStyle textStyle, FontFamily.Resolver resolver, int i2, boolean z, int i3, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i5 & 8) != 0) {
            TextOverflow.f10989a.getClass();
            i2 = TextOverflow.f10990b;
        }
        this(str, textStyle, resolver, i2, (i5 & 16) != 0 ? true : z, (i5 & 32) != 0 ? Integer.MAX_VALUE : i3, (i5 & 64) != 0 ? 1 : i4, null);
    }
}
