package androidx.compose.foundation.contextmenu;

import androidx.compose.ui.graphics.Color;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0001\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/contextmenu/ContextMenuColors;", "", "Landroidx/compose/ui/graphics/Color;", "backgroundColor", "textColor", "iconColor", "disabledTextColor", "disabledIconColor", "<init>", "(JJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ContextMenuColors {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f4316a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f4317b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f4318c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f4319e;

    public ContextMenuColors(long j2, long j3, long j4, long j5, long j6, DefaultConstructorMarker defaultConstructorMarker) {
        this.f4316a = j2;
        this.f4317b = j3;
        this.f4318c = j4;
        this.d = j5;
        this.f4319e = j6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ContextMenuColors)) {
            return false;
        }
        ContextMenuColors contextMenuColors = (ContextMenuColors) obj;
        return Color.c(this.f4316a, contextMenuColors.f4316a) && Color.c(this.f4317b, contextMenuColors.f4317b) && Color.c(this.f4318c, contextMenuColors.f4318c) && Color.c(this.d, contextMenuColors.d) && Color.c(this.f4319e, contextMenuColors.f4319e);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return Long.hashCode(this.f4319e) + fc.a(fc.a(fc.a(Long.hashCode(this.f4316a) * 31, 31, this.f4317b), 31, this.f4318c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ContextMenuColors(backgroundColor=");
        o60.y(this.f4316a, ", textColor=", sb);
        o60.y(this.f4317b, ", iconColor=", sb);
        o60.y(this.f4318c, ", disabledTextColor=", sb);
        o60.y(this.d, ", disabledIconColor=", sb);
        sb.append((Object) Color.i(this.f4319e));
        sb.append(')');
        return sb.toString();
    }
}
