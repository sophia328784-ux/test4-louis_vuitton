package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import defpackage.a;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\nB%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/graphics/Shadow;", "", "Landroidx/compose/ui/graphics/Color;", "color", "Landroidx/compose/ui/geometry/Offset;", "offset", "", "blurRadius", "<init>", "(JJFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Shadow {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Shadow f8925e = new Shadow(0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f8926a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f8927b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f8928c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/graphics/Shadow$Companion;", "", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Shadow(long j2, long j3, float f2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        long jC = (i2 & 1) != 0 ? ColorKt.c(4278190080L) : j2;
        if ((i2 & 2) != 0) {
            Offset.f8806b.getClass();
            j3 = 0;
        }
        this(jC, j3, (i2 & 4) != 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f2, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Shadow)) {
            return false;
        }
        Shadow shadow = (Shadow) obj;
        return Color.c(this.f8926a, shadow.f8926a) && Offset.c(this.f8927b, shadow.f8927b) && this.f8928c == shadow.f8928c;
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        int iHashCode = Long.hashCode(this.f8926a) * 31;
        Offset.Companion companion3 = Offset.f8806b;
        return Float.hashCode(this.f8928c) + fc.a(iHashCode, 31, this.f8927b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Shadow(color=");
        o60.y(this.f8926a, ", offset=", sb);
        sb.append((Object) Offset.h(this.f8927b));
        sb.append(", blurRadius=");
        return a.m(sb, this.f8928c, ')');
    }

    public Shadow(long j2, long j3, float f2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f8926a = j2;
        this.f8927b = j3;
        this.f8928c = f2;
    }
}
