package com.vuitton.android.designkit.ui.theme.molecules;

import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001¨\u0006\u0004"}, d2 = {"com/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$Companion$Saver$1", "Landroidx/compose/runtime/saveable/Saver;", "Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;", "Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SegmentedControlState$Companion$Saver$1 implements Saver<SegmentedControlState, SegmentedControlState.SegmentedControlStateBundle> {
    @Override // androidx.compose.runtime.saveable.Saver
    public final Object a(SaverScope saverScope, Object obj) {
        SegmentedControlState segmentedControlState = (SegmentedControlState) obj;
        saverScope.getClass();
        segmentedControlState.getClass();
        return new SegmentedControlState.SegmentedControlStateBundle(((SnapshotMutableIntStateImpl) segmentedControlState.f48699b).f(), segmentedControlState.f48698a);
    }

    @Override // androidx.compose.runtime.saveable.Saver
    public final Object b(Object obj) {
        SegmentedControlState.SegmentedControlStateBundle segmentedControlStateBundle = (SegmentedControlState.SegmentedControlStateBundle) obj;
        segmentedControlStateBundle.getClass();
        return new SegmentedControlState(segmentedControlStateBundle.f48702c, segmentedControlStateBundle.f48701b);
    }
}
