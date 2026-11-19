package androidx.compose.ui.text;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/text/TextLinkStyles;", "", "Landroidx/compose/ui/text/SpanStyle;", "style", "focusedStyle", "hoveredStyle", "pressedStyle", "<init>", "(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextLinkStyles {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SpanStyle f10557a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SpanStyle f10558b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SpanStyle f10559c;
    public final SpanStyle d;

    public /* synthetic */ TextLinkStyles(SpanStyle spanStyle, SpanStyle spanStyle2, SpanStyle spanStyle3, SpanStyle spanStyle4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : spanStyle, (i2 & 2) != 0 ? null : spanStyle2, (i2 & 4) != 0 ? null : spanStyle3, (i2 & 8) != 0 ? null : spanStyle4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof TextLinkStyles)) {
            return false;
        }
        TextLinkStyles textLinkStyles = (TextLinkStyles) obj;
        return Intrinsics.c(this.f10557a, textLinkStyles.f10557a) && Intrinsics.c(this.f10558b, textLinkStyles.f10558b) && Intrinsics.c(this.f10559c, textLinkStyles.f10559c) && Intrinsics.c(this.d, textLinkStyles.d);
    }

    public final int hashCode() {
        SpanStyle spanStyle = this.f10557a;
        int iHashCode = (spanStyle != null ? spanStyle.hashCode() : 0) * 31;
        SpanStyle spanStyle2 = this.f10558b;
        int iHashCode2 = (iHashCode + (spanStyle2 != null ? spanStyle2.hashCode() : 0)) * 31;
        SpanStyle spanStyle3 = this.f10559c;
        int iHashCode3 = (iHashCode2 + (spanStyle3 != null ? spanStyle3.hashCode() : 0)) * 31;
        SpanStyle spanStyle4 = this.d;
        return iHashCode3 + (spanStyle4 != null ? spanStyle4.hashCode() : 0);
    }

    public TextLinkStyles(SpanStyle spanStyle, SpanStyle spanStyle2, SpanStyle spanStyle3, SpanStyle spanStyle4) {
        this.f10557a = spanStyle;
        this.f10558b = spanStyle2;
        this.f10559c = spanStyle3;
        this.d = spanStyle4;
    }

    public TextLinkStyles() {
        this(null, null, null, null, 15, null);
    }
}
