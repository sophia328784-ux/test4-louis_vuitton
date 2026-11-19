package androidx.compose.animation;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.graphics.Path;
import defpackage.md;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/animation/SharedTransitionScopeKt$ParentClip$1", "Landroidx/compose/animation/SharedTransitionScope$OverlayClip;", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SharedTransitionScopeKt$ParentClip$1 implements SharedTransitionScope.OverlayClip {
    @Override // androidx.compose.animation.SharedTransitionScope.OverlayClip
    public final Path a(SharedTransitionScope.SharedContentState sharedContentState) {
        SharedElementEntry sharedElementEntry = (SharedElementEntry) ((SnapshotMutableStateImpl) sharedContentState.f3681c).getF10755b();
        if (sharedElementEntry == null) {
            md.n("Error: SharedContentState has not been added to a sharedElement/sharedBoundsmodifier yet. Therefore the internal state has not been initialized.");
            return null;
        }
        SharedElementEntry sharedElementEntry2 = sharedElementEntry.l;
        SharedTransitionScope.SharedContentState sharedContentState2 = sharedElementEntry2 != null ? (SharedTransitionScope.SharedContentState) ((SnapshotMutableStateImpl) sharedElementEntry2.f3670j).getF10755b() : null;
        if (sharedContentState2 != null) {
            SharedElementEntry sharedElementEntry3 = (SharedElementEntry) ((SnapshotMutableStateImpl) sharedContentState2.f3681c).getF10755b();
            if (sharedElementEntry3 != null) {
                return sharedElementEntry3.f3671k;
            }
            md.n("Error: SharedContentState has not been added to a sharedElement/sharedBoundsmodifier yet. Therefore the internal state has not been initialized.");
        }
        return null;
    }
}
