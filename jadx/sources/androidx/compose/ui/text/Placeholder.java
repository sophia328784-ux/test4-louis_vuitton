package androidx.compose.ui.text;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.TextUnit;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/text/Placeholder;", "", "Landroidx/compose/ui/unit/TextUnit;", "width", "height", "Landroidx/compose/ui/text/PlaceholderVerticalAlign;", "placeholderVerticalAlign", "<init>", "(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Placeholder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f10488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f10489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10490c;

    public Placeholder(long j2, long j3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f10488a = j2;
        this.f10489b = j3;
        this.f10490c = i2;
        TextUnit.Companion companion = TextUnit.f11023b;
        if ((j2 & 1095216660480L) == 0) {
            InlineClassHelperKt.a("width cannot be TextUnit.Unspecified");
        }
        if ((j3 & 1095216660480L) == 0) {
            InlineClassHelperKt.a("height cannot be TextUnit.Unspecified");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Placeholder)) {
            return false;
        }
        Placeholder placeholder = (Placeholder) obj;
        if (!TextUnit.a(this.f10488a, placeholder.f10488a) || !TextUnit.a(this.f10489b, placeholder.f10489b)) {
            return false;
        }
        int i2 = placeholder.f10490c;
        PlaceholderVerticalAlign.Companion companion = PlaceholderVerticalAlign.f10491a;
        return this.f10490c == i2;
    }

    public final int hashCode() {
        TextUnit.Companion companion = TextUnit.f11023b;
        int iA = fc.a(Long.hashCode(this.f10488a) * 31, 31, this.f10489b);
        PlaceholderVerticalAlign.Companion companion2 = PlaceholderVerticalAlign.f10491a;
        return Integer.hashCode(this.f10490c) + iA;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Placeholder(width=");
        sb.append((Object) TextUnit.e(this.f10488a));
        sb.append(", height=");
        sb.append((Object) TextUnit.e(this.f10489b));
        sb.append(", placeholderVerticalAlign=");
        int i2 = PlaceholderVerticalAlign.f10492b;
        int i3 = this.f10490c;
        if (i3 == i2) {
            str = "AboveBaseline";
        } else if (i3 == PlaceholderVerticalAlign.f10493c) {
            str = "Top";
        } else if (i3 == PlaceholderVerticalAlign.d) {
            str = "Bottom";
        } else if (i3 == PlaceholderVerticalAlign.f10494e) {
            str = "Center";
        } else if (i3 == PlaceholderVerticalAlign.f10495f) {
            str = "TextTop";
        } else if (i3 == PlaceholderVerticalAlign.g) {
            str = "TextBottom";
        } else {
            str = i3 == PlaceholderVerticalAlign.f10496h ? "TextCenter" : "Invalid";
        }
        sb.append((Object) str);
        sb.append(')');
        return sb.toString();
    }
}
