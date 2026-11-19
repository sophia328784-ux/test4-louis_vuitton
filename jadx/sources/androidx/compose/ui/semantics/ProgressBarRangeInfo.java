package androidx.compose.ui.semantics;

import defpackage.md;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\nB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/semantics/ProgressBarRangeInfo;", "", "", "current", "Lkotlin/ranges/ClosedFloatingPointRange;", "range", "", "steps", "<init>", "(FLkotlin/ranges/ClosedFloatingPointRange;I)V", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ProgressBarRangeInfo {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ProgressBarRangeInfo f10285e = new ProgressBarRangeInfo(Call.Parameters.DEFAULT_CAMERA_ZOOM, RangesKt.h(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM), 0, 4, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f10286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ClosedFloatingPointRange f10287b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10288c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/semantics/ProgressBarRangeInfo$Companion;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public ProgressBarRangeInfo(float f2, ClosedFloatingPointRange<Float> closedFloatingPointRange, int i2) {
        this.f10286a = f2;
        this.f10287b = closedFloatingPointRange;
        this.f10288c = i2;
        if (Float.isNaN(f2)) {
            md.n("current must not be NaN");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProgressBarRangeInfo)) {
            return false;
        }
        ProgressBarRangeInfo progressBarRangeInfo = (ProgressBarRangeInfo) obj;
        return this.f10286a == progressBarRangeInfo.f10286a && Intrinsics.c(this.f10287b, progressBarRangeInfo.f10287b) && this.f10288c == progressBarRangeInfo.f10288c;
    }

    public final int hashCode() {
        return ((this.f10287b.hashCode() + (Float.hashCode(this.f10286a) * 31)) * 31) + this.f10288c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ProgressBarRangeInfo(current=");
        sb.append(this.f10286a);
        sb.append(", range=");
        sb.append(this.f10287b);
        sb.append(", steps=");
        return tr.k(sb, this.f10288c, ')');
    }

    public /* synthetic */ ProgressBarRangeInfo(float f2, ClosedFloatingPointRange closedFloatingPointRange, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(f2, closedFloatingPointRange, (i3 & 4) != 0 ? 0 : i2);
    }
}
