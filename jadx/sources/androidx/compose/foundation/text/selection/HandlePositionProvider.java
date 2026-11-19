package androidx.compose.foundation.text.selection;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/text/selection/HandlePositionProvider;", "Landroidx/compose/ui/window/PopupPositionProvider;", "Landroidx/compose/ui/Alignment;", "handleReferencePoint", "Landroidx/compose/foundation/text/selection/OffsetProvider;", "positionProvider", "<init>", "(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/text/selection/OffsetProvider;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HandlePositionProvider implements PopupPositionProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Alignment f6348a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OffsetProvider f6349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f6350c;

    public HandlePositionProvider(Alignment alignment, OffsetProvider offsetProvider) {
        this.f6348a = alignment;
        this.f6349b = offsetProvider;
        Offset.f8806b.getClass();
        this.f6350c = 0L;
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    public final long a(IntRect intRect, long j2, LayoutDirection layoutDirection, long j3) {
        long jA = this.f6349b.a();
        if ((9223372034707292159L & jA) == 9205357640488583168L) {
            jA = this.f6350c;
        }
        this.f6350c = jA;
        IntSize.f11020b.getClass();
        return IntOffset.d(IntOffset.d(intRect.c(), IntOffsetKt.b(jA)), this.f6348a.a(j3, 0L, layoutDirection));
    }
}
