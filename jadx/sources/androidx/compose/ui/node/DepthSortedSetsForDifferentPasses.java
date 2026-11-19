package androidx.compose.ui.node;

import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;", "", "", "extraAssertions", "<init>", "(Z)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DepthSortedSetsForDifferentPasses {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DepthSortedSet f9659a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DepthSortedSet f9660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DepthSortedSet f9661c;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9662a;

        static {
            int[] iArr = new int[Invalidation.values().length];
            try {
                iArr[Invalidation.LookaheadMeasurement.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Invalidation.LookaheadPlacement.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Invalidation.Measurement.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Invalidation.Placement.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f9662a = iArr;
        }
    }

    public DepthSortedSetsForDifferentPasses(boolean z) {
        this.f9659a = new DepthSortedSet(z);
        this.f9660b = new DepthSortedSet(z);
        this.f9661c = new DepthSortedSet(z);
    }

    public final void a(LayoutNode layoutNode, Invalidation invalidation) {
        int i2 = WhenMappings.f9662a[invalidation.ordinal()];
        DepthSortedSet depthSortedSet = this.f9659a;
        DepthSortedSet depthSortedSet2 = this.f9661c;
        if (i2 == 1) {
            depthSortedSet.a(layoutNode);
            depthSortedSet2.a(layoutNode);
            return;
        }
        DepthSortedSet depthSortedSet3 = this.f9660b;
        if (i2 == 2) {
            depthSortedSet3.a(layoutNode);
            depthSortedSet2.a(layoutNode);
            return;
        }
        if (i2 == 3) {
            if (layoutNode.f9694j != null) {
                depthSortedSet2.a(layoutNode);
                return;
            } else {
                depthSortedSet.a(layoutNode);
                return;
            }
        }
        if (i2 != 4) {
            v40.g();
        } else if (layoutNode.f9694j != null) {
            depthSortedSet2.a(layoutNode);
        } else {
            depthSortedSet3.a(layoutNode);
        }
    }

    public final boolean b(LayoutNode layoutNode) {
        return !(layoutNode.f9694j == null) && (this.f9659a.b(layoutNode) || this.f9660b.b(layoutNode));
    }

    public final boolean c() {
        return !(this.f9659a.f9657c.isEmpty() && this.f9661c.f9657c.isEmpty() && this.f9660b.f9657c.isEmpty());
    }
}
