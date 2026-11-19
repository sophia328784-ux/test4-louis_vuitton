package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\fB)\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;", "", "Landroidx/compose/ui/unit/LayoutDirection;", "layoutDirection", "Landroidx/compose/ui/text/TextStyle;", "inputTextStyle", "Landroidx/compose/ui/unit/Density;", "density", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "fontFamilyResolver", "<init>", "(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MinLinesConstrainer {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Companion f6261h = new Companion(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static MinLinesConstrainer f6262i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LayoutDirection f6263a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextStyle f6264b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Density f6265c;
    public final FontFamily.Resolver d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextStyle f6266e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f6267f = Float.NaN;
    public float g = Float.NaN;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer$Companion;", "", "Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;", "last", "Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static MinLinesConstrainer a(MinLinesConstrainer minLinesConstrainer, LayoutDirection layoutDirection, TextStyle textStyle, Density density, FontFamily.Resolver resolver) {
            if (minLinesConstrainer != null && layoutDirection == minLinesConstrainer.f6263a && TextStyleKt.a(textStyle, layoutDirection).equals(minLinesConstrainer.f6264b) && density.getF11002b() == minLinesConstrainer.f6265c.getF11002b() && resolver == minLinesConstrainer.d) {
                return minLinesConstrainer;
            }
            MinLinesConstrainer minLinesConstrainer2 = MinLinesConstrainer.f6262i;
            if (minLinesConstrainer2 != null && layoutDirection == minLinesConstrainer2.f6263a && TextStyleKt.a(textStyle, layoutDirection).equals(minLinesConstrainer2.f6264b) && density.getF11002b() == minLinesConstrainer2.f6265c.getF11002b() && resolver == minLinesConstrainer2.d) {
                return minLinesConstrainer2;
            }
            MinLinesConstrainer minLinesConstrainer3 = new MinLinesConstrainer(layoutDirection, TextStyleKt.a(textStyle, layoutDirection), DensityKt.a(density.getF11002b(), density.getF11003c()), resolver);
            MinLinesConstrainer.f6262i = minLinesConstrainer3;
            return minLinesConstrainer3;
        }
    }

    public MinLinesConstrainer(LayoutDirection layoutDirection, TextStyle textStyle, Density density, FontFamily.Resolver resolver) {
        this.f6263a = layoutDirection;
        this.f6264b = textStyle;
        this.f6265c = density;
        this.d = resolver;
        this.f6266e = TextStyleKt.a(textStyle, layoutDirection);
    }

    public final long a(int i2, long j2) {
        int i3;
        float f2 = this.g;
        float f3 = this.f6267f;
        if (Float.isNaN(f2) || Float.isNaN(f3)) {
            String str = MinLinesConstrainerKt.f6268a;
            long jB = ConstraintsKt.b(0, 0, 0, 0, 15);
            TextOverflow.f10989a.getClass();
            int i4 = TextOverflow.f10990b;
            float height = ParagraphKt.a(str, this.f6266e, jB, this.f6265c, this.d, null, 1, i4, 96).getHeight();
            float height2 = ParagraphKt.a(MinLinesConstrainerKt.f6269b, this.f6266e, ConstraintsKt.b(0, 0, 0, 0, 15), this.f6265c, this.d, null, 2, i4, 96).getHeight() - height;
            this.g = height;
            this.f6267f = height2;
            f3 = height2;
            f2 = height;
        }
        if (i2 != 1) {
            int iRound = Math.round((f3 * (i2 - 1)) + f2);
            i3 = iRound >= 0 ? iRound : 0;
            int iG = Constraints.g(j2);
            if (i3 > iG) {
                i3 = iG;
            }
        } else {
            i3 = Constraints.i(j2);
        }
        return ConstraintsKt.a(Constraints.j(j2), Constraints.h(j2), i3, Constraints.g(j2));
    }
}
