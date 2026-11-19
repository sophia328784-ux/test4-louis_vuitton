package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.layout.PinnableContainer;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0019\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;", "Landroidx/compose/ui/layout/PinnableContainer;", "Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList$PinnedItem;", "", ConfigurationName.KEY, "Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;", "pinnedItemList", "<init>", "(Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class LazyLayoutPinnableItem implements PinnableContainer, PinnableContainer.PinnedHandle, LazyLayoutPinnedItemList.PinnedItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f5495a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LazyLayoutPinnedItemList f5496b;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public PinnableContainer.PinnedHandle f5498e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5499f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5497c = -1;
    public final MutableState g = SnapshotStateKt.g(null);

    public LazyLayoutPinnableItem(Object obj, LazyLayoutPinnedItemList lazyLayoutPinnedItemList) {
        this.f5495a = obj;
        this.f5496b = lazyLayoutPinnedItemList;
    }

    @Override // androidx.compose.ui.layout.PinnableContainer
    public final PinnableContainer.PinnedHandle a() {
        if (this.f5499f) {
            InlineClassHelperKt.c("Pin should not be called on an already disposed item ");
        }
        if (this.d == 0) {
            this.f5496b.f5501b.add(this);
            PinnableContainer pinnableContainer = (PinnableContainer) ((SnapshotMutableStateImpl) this.g).getF10755b();
            this.f5498e = pinnableContainer != null ? pinnableContainer.a() : null;
        }
        this.d++;
        return this;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList.PinnedItem
    /* JADX INFO: renamed from: getIndex, reason: from getter */
    public final int getF5497c() {
        return this.f5497c;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList.PinnedItem
    /* JADX INFO: renamed from: getKey, reason: from getter */
    public final Object getF5495a() {
        return this.f5495a;
    }

    @Override // androidx.compose.ui.layout.PinnableContainer.PinnedHandle
    public final void release() {
        if (this.f5499f) {
            return;
        }
        if (this.d <= 0) {
            InlineClassHelperKt.c("Release should only be called once");
        }
        int i2 = this.d - 1;
        this.d = i2;
        if (i2 == 0) {
            this.f5496b.f5501b.remove(this);
            PinnableContainer.PinnedHandle pinnedHandle = this.f5498e;
            if (pinnedHandle != null) {
                pinnedHandle.release();
            }
            this.f5498e = null;
        }
    }
}
