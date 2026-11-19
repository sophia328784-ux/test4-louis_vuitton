package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/text/style/ColorStyle;", "Landroidx/compose/ui/text/style/TextForegroundStyle;", "Landroidx/compose/ui/graphics/Color;", "value", "<init>", "(JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class ColorStyle implements TextForegroundStyle {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f10927a;

    public ColorStyle(long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f10927a = j2;
        if (j2 != 16) {
            return;
        }
        InlineClassHelperKt.a("ColorStyle value must be specified, use TextForegroundStyle.Unspecified instead.");
    }

    @Override // androidx.compose.ui.text.style.TextForegroundStyle
    /* JADX INFO: renamed from: a */
    public final float getF10926b() {
        return Color.d(this.f10927a);
    }

    @Override // androidx.compose.ui.text.style.TextForegroundStyle
    /* JADX INFO: renamed from: b, reason: from getter */
    public final long getF10927a() {
        return this.f10927a;
    }

    @Override // androidx.compose.ui.text.style.TextForegroundStyle
    public final Brush e() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ColorStyle) && Color.c(this.f10927a, ((ColorStyle) obj).f10927a);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return Long.hashCode(this.f10927a);
    }

    public final String toString() {
        return "ColorStyle(value=" + ((Object) Color.i(this.f10927a)) + ')';
    }
}
