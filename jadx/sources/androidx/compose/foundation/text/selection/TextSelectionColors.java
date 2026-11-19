package androidx.compose.foundation.text.selection;

import androidx.compose.ui.graphics.Color;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/text/selection/TextSelectionColors;", "", "Landroidx/compose/ui/graphics/Color;", "handleColor", "backgroundColor", "<init>", "(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextSelectionColors {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f6501a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f6502b;

    public TextSelectionColors(long j2, long j3, DefaultConstructorMarker defaultConstructorMarker) {
        this.f6501a = j2;
        this.f6502b = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextSelectionColors)) {
            return false;
        }
        TextSelectionColors textSelectionColors = (TextSelectionColors) obj;
        return Color.c(this.f6501a, textSelectionColors.f6501a) && Color.c(this.f6502b, textSelectionColors.f6502b);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return Long.hashCode(this.f6502b) + (Long.hashCode(this.f6501a) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SelectionColors(selectionHandleColor=");
        o60.y(this.f6501a, ", selectionBackgroundColor=", sb);
        sb.append((Object) Color.i(this.f6502b));
        sb.append(')');
        return sb.toString();
    }
}
