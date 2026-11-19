package androidx.compose.foundation.text;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0017Be\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0014\b\u0002\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00120\u0011¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Landroidx/compose/foundation/text/TextDelegate;", "", "Landroidx/compose/ui/text/AnnotatedString;", "text", "Landroidx/compose/ui/text/TextStyle;", "style", "", "maxLines", "minLines", "", "softWrap", "Landroidx/compose/ui/text/style/TextOverflow;", "overflow", "Landroidx/compose/ui/unit/Density;", "density", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "fontFamilyResolver", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/Placeholder;", "placeholders", "<init>", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IIZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnnotatedString f5950a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextStyle f5951b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5952c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f5953e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f5954f;
    public final Density g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FontFamily.Resolver f5955h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f5956i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public MultiParagraphIntrinsics f5957j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public LayoutDirection f5958k;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/text/TextDelegate$Companion;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TextDelegate(AnnotatedString annotatedString, TextStyle textStyle, int i2, int i3, boolean z, int i4, Density density, FontFamily.Resolver resolver, List list, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        int i6;
        int i7 = (i5 & 4) != 0 ? Integer.MAX_VALUE : i2;
        int i8 = (i5 & 8) != 0 ? 1 : i3;
        boolean z2 = (i5 & 16) != 0 ? true : z;
        if ((i5 & 32) != 0) {
            TextOverflow.f10989a.getClass();
            i6 = TextOverflow.f10990b;
        } else {
            i6 = i4;
        }
        this(annotatedString, textStyle, i7, i8, z2, i6, density, resolver, (i5 & 256) != 0 ? EmptyList.f71768b : list, null);
    }

    public final void a(LayoutDirection layoutDirection) {
        MultiParagraphIntrinsics multiParagraphIntrinsics = this.f5957j;
        if (multiParagraphIntrinsics == null || layoutDirection != this.f5958k || multiParagraphIntrinsics.a()) {
            this.f5958k = layoutDirection;
            multiParagraphIntrinsics = new MultiParagraphIntrinsics(this.f5950a, TextStyleKt.a(this.f5951b, layoutDirection), (List<AnnotatedString.Range<Placeholder>>) this.f5956i, this.g, this.f5955h);
        }
        this.f5957j = multiParagraphIntrinsics;
    }

    public TextDelegate(AnnotatedString annotatedString, TextStyle textStyle, int i2, int i3, boolean z, int i4, Density density, FontFamily.Resolver resolver, List list, DefaultConstructorMarker defaultConstructorMarker) {
        this.f5950a = annotatedString;
        this.f5951b = textStyle;
        this.f5952c = i2;
        this.d = i3;
        this.f5953e = z;
        this.f5954f = i4;
        this.g = density;
        this.f5955h = resolver;
        this.f5956i = list;
        if (i2 <= 0) {
            InlineClassHelperKt.a("no maxLines");
        }
        if (i3 <= 0) {
            InlineClassHelperKt.a("no minLines");
        }
        if (i3 <= i2) {
            return;
        }
        InlineClassHelperKt.a("minLines greater than maxLines");
    }
}
