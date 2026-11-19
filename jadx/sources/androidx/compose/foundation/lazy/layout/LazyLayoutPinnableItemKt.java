package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.layout.PinnableContainer;
import androidx.compose.ui.layout.PinnableContainerKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyLayoutPinnableItemKt {
    public static final void a(Object obj, int i2, LazyLayoutPinnedItemList lazyLayoutPinnedItemList, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i3) {
        int i4;
        GapComposer gapComposerH = composer.h(872548579);
        if ((i3 & 6) == 0) {
            i4 = (gapComposerH.y(obj) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.d(i2) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(lazyLayoutPinnedItemList) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= gapComposerH.y(composableLambdaImpl) ? 2048 : 1024;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zK = gapComposerH.K(obj) | gapComposerH.K(lazyLayoutPinnedItemList);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = new LazyLayoutPinnableItem(obj, lazyLayoutPinnedItemList);
                gapComposerH.q(objX);
            }
            LazyLayoutPinnableItem lazyLayoutPinnableItem = (LazyLayoutPinnableItem) objX;
            lazyLayoutPinnableItem.f5497c = i2;
            MutableState mutableState = lazyLayoutPinnableItem.g;
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = PinnableContainerKt.f9546a;
            PinnableContainer pinnableContainer = (PinnableContainer) gapComposerH.k(dynamicProvidableCompositionLocal);
            Snapshot.f8462e.getClass();
            Snapshot snapshotA = Snapshot.Companion.a();
            Function1 f8547i = snapshotA != null ? snapshotA.getF8461f() : null;
            Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
            try {
                if (pinnableContainer != ((PinnableContainer) ((SnapshotMutableStateImpl) mutableState).getF10755b())) {
                    ((SnapshotMutableStateImpl) mutableState).setValue(pinnableContainer);
                    if (lazyLayoutPinnableItem.d > 0) {
                        PinnableContainer.PinnedHandle pinnedHandle = lazyLayoutPinnableItem.f5498e;
                        if (pinnedHandle != null) {
                            pinnedHandle.release();
                        }
                        lazyLayoutPinnableItem.f5498e = pinnableContainer != null ? pinnableContainer.a() : null;
                    }
                }
                Snapshot.Companion.e(snapshotA, snapshotB, f8547i);
                boolean zK2 = gapComposerH.K(lazyLayoutPinnableItem);
                Object objX2 = gapComposerH.x();
                if (zK2 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new a(lazyLayoutPinnableItem, 1);
                    gapComposerH.q(objX2);
                }
                EffectsKt.c(lazyLayoutPinnableItem, (Function1) objX2, gapComposerH);
                CompositionLocalKt.a(dynamicProvidableCompositionLocal.c(lazyLayoutPinnableItem), composableLambdaImpl, gapComposerH, ((i4 >> 6) & 112) | 8);
            } catch (Throwable th) {
                Snapshot.Companion.e(snapshotA, snapshotB, f8547i);
                throw th;
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new defpackage.h(obj, i2, lazyLayoutPinnedItemList, composableLambdaImpl, i3, 6);
        }
    }
}
