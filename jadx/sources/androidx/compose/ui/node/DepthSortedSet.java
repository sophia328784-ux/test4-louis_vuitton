package androidx.compose.ui.node;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.ui.internal.InlineClassHelperKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/node/DepthSortedSet;", "", "", "extraAssertions", "<init>", "(Z)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DepthSortedSet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f9655a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutableObjectIntMap f9656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SortedSet f9657c = new SortedSet(DepthSortedSetKt.f9658a);

    public DepthSortedSet(boolean z) {
        this.f9655a = z;
    }

    public final void a(LayoutNode layoutNode) {
        if (!layoutNode.c()) {
            InlineClassHelperKt.c("DepthSortedSet.add called on an unattached node");
        }
        if (this.f9655a) {
            if (this.f9656b == null) {
                this.f9656b = ObjectIntMapKt.a();
            }
            MutableObjectIntMap mutableObjectIntMap = this.f9656b;
            mutableObjectIntMap.getClass();
            int iA = mutableObjectIntMap.a(layoutNode);
            int i2 = iA >= 0 ? mutableObjectIntMap.f3342c[iA] : Integer.MAX_VALUE;
            int i3 = layoutNode.r;
            if (i2 == Integer.MAX_VALUE) {
                mutableObjectIntMap.h(i3, layoutNode);
            } else if (i2 != i3) {
                InlineClassHelperKt.c("invalid node depth");
            }
        }
        this.f9657c.add(layoutNode);
    }

    public final boolean b(LayoutNode layoutNode) {
        boolean zContains = this.f9657c.contains(layoutNode);
        if (this.f9655a) {
            if (this.f9656b == null) {
                this.f9656b = ObjectIntMapKt.a();
            }
            MutableObjectIntMap mutableObjectIntMap = this.f9656b;
            mutableObjectIntMap.getClass();
            if (zContains == (mutableObjectIntMap.a(layoutNode) >= 0)) {
                return zContains;
            }
            InlineClassHelperKt.c("inconsistency in TreeSet");
        }
        return zContains;
    }

    public final boolean c(LayoutNode layoutNode) {
        if (!layoutNode.c()) {
            InlineClassHelperKt.c("DepthSortedSet.remove called on an unattached node");
        }
        boolean zRemove = this.f9657c.remove(layoutNode);
        if (this.f9655a) {
            if (this.f9656b == null) {
                this.f9656b = ObjectIntMapKt.a();
            }
            MutableObjectIntMap mutableObjectIntMap = this.f9656b;
            mutableObjectIntMap.getClass();
            if (mutableObjectIntMap.a(layoutNode) >= 0) {
                int iB = mutableObjectIntMap.b(layoutNode);
                int iA = mutableObjectIntMap.a(layoutNode);
                if (iA >= 0) {
                    mutableObjectIntMap.g(iA);
                }
                if (iB == (zRemove ? layoutNode.r : Integer.MAX_VALUE)) {
                    return zRemove;
                }
                InlineClassHelperKt.c("invalid node depth");
            }
        }
        return zRemove;
    }

    public final String toString() {
        return this.f9657c.toString();
    }
}
