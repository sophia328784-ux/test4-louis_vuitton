package androidx.compose.foundation.lazy;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutNearestRangeState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/lazy/LazyListScrollPosition;", "", "", "initialIndex", "initialScrollOffset", "<init>", "(II)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyListScrollPosition {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableIntState f5226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableIntState f5227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5228c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LazyLayoutNearestRangeState f5229e;

    public LazyListScrollPosition(int i2, int i3) {
        this.f5226a = SnapshotIntStateKt.a(i2);
        this.f5227b = SnapshotIntStateKt.a(i3);
        this.f5229e = new LazyLayoutNearestRangeState(i2, 30, 100);
    }

    public final void a(int i2, int i3) {
        if (i2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            InlineClassHelperKt.a("Index should be non-negative (" + i2 + ')');
        }
        ((SnapshotMutableIntStateImpl) this.f5226a).i(i2);
        this.f5229e.h(i2);
        ((SnapshotMutableIntStateImpl) this.f5227b).i(i3);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public LazyListScrollPosition() {
        int i2 = 0;
        this(i2, i2, 3, null);
    }

    public /* synthetic */ LazyListScrollPosition(int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 0 : i2, (i4 & 2) != 0 ? 0 : i3);
    }
}
