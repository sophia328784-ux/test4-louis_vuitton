package androidx.compose.ui.node;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;", "", "Landroidx/compose/ui/node/LayoutNode;", "layoutNode", "<init>", "(Landroidx/compose/ui/node/LayoutNode;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LayoutNodeLayoutDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LayoutNode f9706a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f9707b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f9708c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f9709e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f9710f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9711h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9712i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f9713j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f9714k;
    public int l;
    public boolean m;
    public boolean n;
    public int o;
    public LookaheadPassDelegate q;
    public LayoutNode.LayoutState d = LayoutNode.LayoutState.Idle;
    public final MeasurePassDelegate p = new MeasurePassDelegate(this);

    public LayoutNodeLayoutDelegate(LayoutNode layoutNode) {
        this.f9706a = layoutNode;
    }

    public final NodeCoordinator a() {
        return this.f9706a.H.d;
    }

    public final void b() {
        LayoutNode.LayoutState layoutState = this.f9706a.I.d;
        if (layoutState == LayoutNode.LayoutState.LayingOut || layoutState == LayoutNode.LayoutState.LookaheadLayingOut) {
            if (this.p.C) {
                g(true);
            } else {
                f(true);
            }
        }
        if (layoutState == LayoutNode.LayoutState.LookaheadLayingOut) {
            LookaheadPassDelegate lookaheadPassDelegate = this.q;
            if (lookaheadPassDelegate == null || !lookaheadPassDelegate.w) {
                h(true);
            } else {
                i(true);
            }
        }
    }

    public final void c(long j2) {
        LookaheadPassDelegate lookaheadPassDelegate = this.q;
        if (lookaheadPassDelegate != null) {
            LayoutNode.LayoutState layoutState = LayoutNode.LayoutState.LookaheadMeasuring;
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = lookaheadPassDelegate.g;
            layoutNodeLayoutDelegate.d = layoutState;
            LayoutNode layoutNode = layoutNodeLayoutDelegate.f9706a;
            layoutNodeLayoutDelegate.f9709e = false;
            lookaheadPassDelegate.A = j2;
            OwnerSnapshotObserver snapshotObserver = LayoutNodeKt.a(layoutNode).getSnapshotObserver();
            Function0 function0 = lookaheadPassDelegate.B;
            snapshotObserver.f9812a.e(layoutNode, snapshotObserver.f9813b, function0);
            layoutNodeLayoutDelegate.f9710f = true;
            layoutNodeLayoutDelegate.g = true;
            boolean zA = LayoutNodeLayoutDelegateKt.a(layoutNode);
            MeasurePassDelegate measurePassDelegate = layoutNodeLayoutDelegate.p;
            if (zA) {
                measurePassDelegate.x = true;
                measurePassDelegate.y = true;
            } else {
                measurePassDelegate.w = true;
            }
            layoutNodeLayoutDelegate.d = LayoutNode.LayoutState.Idle;
        }
    }

    public final void d(int i2) {
        int i3 = this.l;
        this.l = i2;
        if ((i3 == 0) != (i2 == 0)) {
            LayoutNode layoutNodeO = this.f9706a.O();
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNodeO != null ? layoutNodeO.I : null;
            if (layoutNodeLayoutDelegate != null) {
                int i4 = layoutNodeLayoutDelegate.l;
                if (i2 == 0) {
                    layoutNodeLayoutDelegate.d(i4 - 1);
                } else {
                    layoutNodeLayoutDelegate.d(i4 + 1);
                }
            }
        }
    }

    public final void e(int i2) {
        int i3 = this.o;
        this.o = i2;
        if ((i3 == 0) != (i2 == 0)) {
            LayoutNode layoutNodeO = this.f9706a.O();
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNodeO != null ? layoutNodeO.I : null;
            if (layoutNodeLayoutDelegate != null) {
                int i4 = layoutNodeLayoutDelegate.o;
                if (i2 == 0) {
                    layoutNodeLayoutDelegate.e(i4 - 1);
                } else {
                    layoutNodeLayoutDelegate.e(i4 + 1);
                }
            }
        }
    }

    public final void f(boolean z) {
        if (this.f9714k != z) {
            this.f9714k = z;
            if (z && !this.f9713j) {
                d(this.l + 1);
            } else {
                if (z || this.f9713j) {
                    return;
                }
                d(this.l - 1);
            }
        }
    }

    public final void g(boolean z) {
        if (this.f9713j != z) {
            this.f9713j = z;
            if (z && !this.f9714k) {
                d(this.l + 1);
            } else {
                if (z || this.f9714k) {
                    return;
                }
                d(this.l - 1);
            }
        }
    }

    public final void h(boolean z) {
        if (this.n != z) {
            this.n = z;
            if (z && !this.m) {
                e(this.o + 1);
            } else {
                if (z || this.m) {
                    return;
                }
                e(this.o - 1);
            }
        }
    }

    public final void i(boolean z) {
        if (this.m != z) {
            this.m = z;
            if (z && !this.n) {
                e(this.o + 1);
            } else {
                if (z || this.n) {
                    return;
                }
                e(this.o - 1);
            }
        }
    }

    public final void j() {
        MeasurePassDelegate measurePassDelegate = this.p;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = measurePassDelegate.g;
        Object obj = measurePassDelegate.t;
        LayoutNode layoutNode = this.f9706a;
        if ((obj != null || layoutNodeLayoutDelegate.a().getZ() != null) && measurePassDelegate.s) {
            measurePassDelegate.s = false;
            measurePassDelegate.t = layoutNodeLayoutDelegate.a().getZ();
            LayoutNode layoutNodeO = layoutNode.O();
            if (layoutNodeO != null) {
                LayoutNode.m0(layoutNodeO, false, 7);
            }
        }
        LookaheadPassDelegate lookaheadPassDelegate = this.q;
        if (lookaheadPassDelegate != null) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = lookaheadPassDelegate.g;
            if (lookaheadPassDelegate.z == null) {
                LookaheadDelegate lookaheadDelegateI1 = layoutNodeLayoutDelegate2.a().getB1();
                lookaheadDelegateI1.getClass();
                if (lookaheadDelegateI1.q.getZ() == null) {
                    return;
                }
            }
            if (lookaheadPassDelegate.y) {
                lookaheadPassDelegate.y = false;
                LookaheadDelegate lookaheadDelegateI2 = layoutNodeLayoutDelegate2.a().getB1();
                lookaheadDelegateI2.getClass();
                lookaheadPassDelegate.z = lookaheadDelegateI2.q.getZ();
                if (LayoutNodeLayoutDelegateKt.a(layoutNode)) {
                    LayoutNode layoutNodeO2 = layoutNode.O();
                    if (layoutNodeO2 != null) {
                        LayoutNode.m0(layoutNodeO2, false, 7);
                        return;
                    }
                    return;
                }
                LayoutNode layoutNodeO3 = layoutNode.O();
                if (layoutNodeO3 != null) {
                    LayoutNode.k0(layoutNodeO3, false, 7);
                }
            }
        }
    }
}
