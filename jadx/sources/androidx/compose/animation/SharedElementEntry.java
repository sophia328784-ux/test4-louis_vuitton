package androidx.compose.animation;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.StateListIterator;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerKt;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import defpackage.pq0;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002BG\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\t\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Landroidx/compose/animation/SharedElementEntry;", "Landroidx/compose/animation/LayerRenderer;", "Landroidx/compose/runtime/RememberObserver;", "Landroidx/compose/animation/SharedElement;", "sharedElement", "Landroidx/compose/animation/BoundsAnimation;", "boundsAnimation", "Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;", "placeholderSize", "", "renderOnlyWhenVisible", "Landroidx/compose/animation/SharedTransitionScope$OverlayClip;", "overlayClip", "renderInOverlayDuringTransition", "Landroidx/compose/animation/SharedTransitionScope$SharedContentState;", "userState", "", "zIndex", "<init>", "(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsAnimation;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZLandroidx/compose/animation/SharedTransitionScope$OverlayClip;ZLandroidx/compose/animation/SharedTransitionScope$SharedContentState;F)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SharedElementEntry implements LayerRenderer, RememberObserver {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableFloatState f3665c;
    public final MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableState f3666e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableState f3667f;
    public final MutableState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableState f3668h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableState f3669i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableState f3670j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Path f3671k;
    public SharedElementEntry l;
    public SharedBoundsNode m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f3664b = SnapshotStateKt.g(Boolean.FALSE);
    public final MutableState n = SnapshotStateKt.g(null);

    public SharedElementEntry(SharedElement sharedElement, BoundsAnimation boundsAnimation, SharedTransitionScope.PlaceholderSize placeholderSize, boolean z, SharedTransitionScope.OverlayClip overlayClip, boolean z2, SharedTransitionScope.SharedContentState sharedContentState, float f2) {
        this.f3665c = PrimitiveSnapshotStateKt.a(f2);
        this.d = SnapshotStateKt.g(Boolean.valueOf(z2));
        this.f3666e = SnapshotStateKt.g(sharedElement);
        this.f3667f = SnapshotStateKt.g(boundsAnimation);
        this.g = SnapshotStateKt.g(placeholderSize);
        this.f3668h = SnapshotStateKt.g(Boolean.valueOf(z));
        this.f3669i = SnapshotStateKt.g(overlayClip);
        this.f3670j = SnapshotStateKt.g(sharedContentState);
    }

    @Override // androidx.compose.animation.LayerRenderer
    public final float a() {
        return this.f3665c.a();
    }

    @Override // androidx.compose.animation.LayerRenderer
    public final void b(LayoutNodeDrawScope layoutNodeDrawScope) {
        Rect rectC;
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.f9701b;
        GraphicsLayer graphicsLayer = (GraphicsLayer) ((SnapshotMutableStateImpl) this.n).getF10755b();
        if (graphicsLayer == null || (rectC = e().f3655c.a().c()) == null || !h()) {
            return;
        }
        long jD = rectC.d();
        float fIntBitsToFloat = Float.intBitsToFloat((int) (jD >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jD & BodyPartID.bodyIdMax));
        Path path = this.f3671k;
        if (path == null) {
            canvasDrawScope.f8996c.f9001a.g(fIntBitsToFloat, fIntBitsToFloat2);
            try {
                GraphicsLayerKt.a(layoutNodeDrawScope, graphicsLayer);
                return;
            } finally {
                canvasDrawScope.f8996c.f9001a.g(-fIntBitsToFloat, -fIntBitsToFloat2);
            }
        }
        ClipOp.f8864a.getClass();
        int i2 = ClipOp.f8865b;
        CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.f8996c;
        long jD2 = canvasDrawScope$drawContext$1.d();
        canvasDrawScope$drawContext$1.a().p();
        try {
            canvasDrawScope$drawContext$1.f9001a.c(path, i2);
            canvasDrawScope.f8996c.f9001a.g(fIntBitsToFloat, fIntBitsToFloat2);
            try {
                GraphicsLayerKt.a(layoutNodeDrawScope, graphicsLayer);
                canvasDrawScope.f8996c.f9001a.g(-fIntBitsToFloat, -fIntBitsToFloat2);
                pq0.y(canvasDrawScope$drawContext$1, jD2);
            } catch (Throwable th) {
                canvasDrawScope.f8996c.f9001a.g(-fIntBitsToFloat, -fIntBitsToFloat2);
                throw th;
            }
        } catch (Throwable th2) {
            pq0.y(canvasDrawScope$drawContext$1, jD2);
            throw th2;
        }
    }

    public final BoundsAnimation c() {
        return (BoundsAnimation) ((SnapshotMutableStateImpl) this.f3667f).getF10755b();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void d() {
        SharedTransitionScopeImpl sharedTransitionScopeImpl = e().f3654b;
        sharedTransitionScopeImpl.getClass();
        SharedElement sharedElementE = e();
        ((SnapshotMutableStateImpl) sharedElementE.d).setValue(CollectionsKt.X(this, sharedElementE.b()));
        sharedElementE.e();
        sharedTransitionScopeImpl.a();
        SnapshotStateList snapshotStateList = sharedTransitionScopeImpl.f3687h;
        ListIterator listIterator = snapshotStateList.listIterator();
        int i2 = 0;
        while (true) {
            StateListIterator stateListIterator = (StateListIterator) listIterator;
            if (!stateListIterator.hasNext()) {
                i2 = -1;
                break;
            }
            LayerRenderer layerRenderer = (LayerRenderer) stateListIterator.next();
            SharedElementEntry sharedElementEntry = layerRenderer instanceof SharedElementEntry ? (SharedElementEntry) layerRenderer : null;
            if (Intrinsics.c(sharedElementEntry != null ? sharedElementEntry.e() : null, e())) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 == snapshotStateList.size() - 1 || i2 == -1) {
            snapshotStateList.add(this);
        } else {
            snapshotStateList.add(i2 + 1, this);
        }
        e().f3655c.b();
    }

    public final SharedElement e() {
        return (SharedElement) ((SnapshotMutableStateImpl) this.f3666e).getF10755b();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void f() {
    }

    public final boolean g() {
        if (c().b()) {
            return true;
        }
        return (e().f3655c.a().d() && !e().f3655c.a().b()) || !((Boolean) ((SnapshotMutableStateImpl) this.f3668h).getF10755b()).booleanValue();
    }

    public final boolean h() {
        return g() && e().f3655c.a().d() && j() && ((Boolean) ((SnapshotMutableStateImpl) this.d).getF10755b()).booleanValue() && e().f3654b.j();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void i() {
        SharedTransitionScopeImpl sharedTransitionScopeImpl = e().f3654b;
        sharedTransitionScopeImpl.getClass();
        SharedElement sharedElementE = e();
        ((SnapshotMutableStateImpl) sharedElementE.d).setValue(CollectionsKt.S(sharedElementE.b(), this));
        ((SnapshotMutableStateImpl) sharedElementE.f3656e).setValue(CollectionsKt.S(sharedElementE.c(), this));
        sharedElementE.e();
        sharedTransitionScopeImpl.a();
        sharedTransitionScopeImpl.f3687h.remove(this);
        if (sharedElementE.b().isEmpty()) {
            BuildersKt.c(sharedElementE.f3654b.f3684c, null, null, new SharedTransitionScopeImpl$onEntryRemoved$2$1(sharedElementE, this, null), 3);
        }
        e().f3655c.b();
    }

    public final boolean j() {
        SharedTransitionScope.SharedContentState sharedContentState = (SharedTransitionScope.SharedContentState) ((SnapshotMutableStateImpl) this.f3670j).getF10755b();
        if (!((Boolean) ((SnapshotMutableStateImpl) this.f3664b).getF10755b()).booleanValue()) {
            return false;
        }
        ((SharedTransitionScope.SharedContentConfig) ((SnapshotMutableStateImpl) sharedContentState.f3680b).getF10755b()).getClass();
        return true;
    }
}
