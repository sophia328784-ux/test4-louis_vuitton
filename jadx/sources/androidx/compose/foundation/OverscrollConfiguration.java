package androidx.compose.foundation;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import defpackage.o60;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/OverscrollConfiguration;", "", "Landroidx/compose/ui/graphics/Color;", "glowColor", "Landroidx/compose/foundation/layout/PaddingValues;", "drawPadding", "<init>", "(JLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class OverscrollConfiguration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f4282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PaddingValues f4283b;

    public /* synthetic */ OverscrollConfiguration(long j2, PaddingValues paddingValues, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? ColorKt.c(4284900966L) : j2, (i2 & 2) != 0 ? PaddingKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, 3) : paddingValues, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!OverscrollConfiguration.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        OverscrollConfiguration overscrollConfiguration = (OverscrollConfiguration) obj;
        return Color.c(this.f4282a, overscrollConfiguration.f4282a) && Intrinsics.c(this.f4283b, overscrollConfiguration.f4283b);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return this.f4283b.hashCode() + (Long.hashCode(this.f4282a) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OverscrollConfiguration(glowColor=");
        o60.y(this.f4282a, ", drawPadding=", sb);
        sb.append(this.f4283b);
        sb.append(')');
        return sb.toString();
    }

    public OverscrollConfiguration(long j2, PaddingValues paddingValues, DefaultConstructorMarker defaultConstructorMarker) {
        this.f4282a = j2;
        this.f4283b = paddingValues;
    }
}
