package androidx.compose.ui.layout;

import androidx.collection.MutableScatterMap;
import androidx.compose.foundation.lazy.layout.a;
import androidx.compose.foundation.lazy.layout.k;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import defpackage.md;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\n\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\t\b\u0016¢\u0006\u0004\b\u0004\u0010\u0006B\u0011\b\u0017\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\t¨\u0006\f"}, d2 = {"Landroidx/compose/ui/layout/SubcomposeLayoutState;", "", "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;", "slotReusePolicy", "<init>", "(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V", "()V", "", "maxSlotsToRetainForReuse", "(I)V", "PausedPrecomposition", "PrecomposedSlotHandle", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SubcomposeLayoutState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SubcomposeSlotReusePolicy f9578a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LayoutNodeSubcompositionsState f9579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function2 f9580c;
    public final Function2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function2 f9581e;

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001\u0082\u0001\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/layout/SubcomposeLayoutState$PausedPrecomposition;", "", "Landroidx/compose/ui/layout/PausedPrecompositionImpl;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface PausedPrecomposition {
        boolean a();

        PrecomposedSlotHandle apply();

        boolean b(k kVar);

        void cancel();
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface PrecomposedSlotHandle {
        default long a(int i2) {
            IntSize.f11020b.getClass();
            return 0L;
        }

        default int b() {
            return 0;
        }

        default void c(a aVar) {
        }

        default void d(int i2, long j2) {
        }

        void dispose();
    }

    public SubcomposeLayoutState(SubcomposeSlotReusePolicy subcomposeSlotReusePolicy) {
        this.f9578a = subcomposeSlotReusePolicy;
        this.f9580c = new Function2<LayoutNode, SubcomposeLayoutState, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$setRoot$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                LayoutNode layoutNode = (LayoutNode) obj;
                SubcomposeLayoutState subcomposeLayoutState = this.f9584c;
                SubcomposeSlotReusePolicy subcomposeSlotReusePolicy2 = subcomposeLayoutState.f9578a;
                LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = layoutNode.J;
                if (layoutNodeSubcompositionsState == null) {
                    layoutNodeSubcompositionsState = new LayoutNodeSubcompositionsState(layoutNode, subcomposeSlotReusePolicy2);
                    layoutNode.J = layoutNodeSubcompositionsState;
                }
                subcomposeLayoutState.f9579b = layoutNodeSubcompositionsState;
                subcomposeLayoutState.a().i();
                LayoutNodeSubcompositionsState layoutNodeSubcompositionsStateA = subcomposeLayoutState.a();
                if (layoutNodeSubcompositionsStateA.d != subcomposeSlotReusePolicy2) {
                    layoutNodeSubcompositionsStateA.d = subcomposeSlotReusePolicy2;
                    layoutNodeSubcompositionsStateA.j(false);
                    LayoutNode.m0(layoutNodeSubcompositionsStateA.f9479b, false, 7);
                }
                return Unit.f71739a;
            }
        };
        this.d = new Function2<LayoutNode, CompositionContext, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$setCompositionContext$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                this.f9582c.a().f9480c = (CompositionContext) obj2;
                return Unit.f71739a;
            }
        };
        this.f9581e = new Function2<LayoutNode, Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult>, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$setMeasurePolicy$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                final Function2 function2 = (Function2) obj2;
                final LayoutNodeSubcompositionsState layoutNodeSubcompositionsStateA = this.f9583c.a();
                ((LayoutNode) obj).l(new LayoutNode.NoIntrinsicsMeasurePolicy(layoutNodeSubcompositionsStateA.q) { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    /* JADX INFO: renamed from: measure-3p2s80s */
                    public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, List list, long j2) {
                        final LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = layoutNodeSubcompositionsStateA;
                        LayoutNodeSubcompositionsState.Scope scope = layoutNodeSubcompositionsState.f9484i;
                        scope.f9495b = measureScope.getF9495b();
                        scope.f9496c = measureScope.getF9567e();
                        scope.d = measureScope.getF9568f();
                        boolean zU0 = measureScope.u0();
                        Function2 function3 = function2;
                        if (zU0 || layoutNodeSubcompositionsState.f9479b.f9694j == null) {
                            layoutNodeSubcompositionsState.f9481e = 0;
                            final MeasureResult measureResult = (MeasureResult) function3.invoke(scope, new Constraints(j2));
                            final int i2 = layoutNodeSubcompositionsState.f9481e;
                            return new MeasureResult() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$2
                                @Override // androidx.compose.ui.layout.MeasureResult
                                /* JADX INFO: renamed from: getHeight */
                                public final int getF9531b() {
                                    return measureResult.getF9531b();
                                }

                                @Override // androidx.compose.ui.layout.MeasureResult
                                /* JADX INFO: renamed from: getWidth */
                                public final int getF9530a() {
                                    return measureResult.getF9530a();
                                }

                                @Override // androidx.compose.ui.layout.MeasureResult
                                /* JADX INFO: renamed from: j */
                                public final Map getF9532c() {
                                    return measureResult.getF9532c();
                                }

                                @Override // androidx.compose.ui.layout.MeasureResult
                                public final void k() {
                                    int i3 = i2;
                                    LayoutNodeSubcompositionsState layoutNodeSubcompositionsState2 = layoutNodeSubcompositionsState;
                                    layoutNodeSubcompositionsState2.f9481e = i3;
                                    measureResult.k();
                                    if (layoutNodeSubcompositionsState2.f9479b.f9694j == null) {
                                        layoutNodeSubcompositionsState2.g(layoutNodeSubcompositionsState2.f9481e);
                                    }
                                }

                                @Override // androidx.compose.ui.layout.MeasureResult
                                /* JADX INFO: renamed from: l */
                                public final Function1 getD() {
                                    return measureResult.getD();
                                }
                            };
                        }
                        layoutNodeSubcompositionsState.f9482f = 0;
                        final MeasureResult measureResult2 = (MeasureResult) function3.invoke(layoutNodeSubcompositionsState.f9485j, new Constraints(j2));
                        final int i3 = layoutNodeSubcompositionsState.f9482f;
                        return new MeasureResult() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1
                            @Override // androidx.compose.ui.layout.MeasureResult
                            /* JADX INFO: renamed from: getHeight */
                            public final int getF9531b() {
                                return measureResult2.getF9531b();
                            }

                            @Override // androidx.compose.ui.layout.MeasureResult
                            /* JADX INFO: renamed from: getWidth */
                            public final int getF9530a() {
                                return measureResult2.getF9530a();
                            }

                            @Override // androidx.compose.ui.layout.MeasureResult
                            /* JADX INFO: renamed from: j */
                            public final Map getF9532c() {
                                return measureResult2.getF9532c();
                            }

                            /* JADX WARN: Code duplicated, block: B:23:0x0073 A[DONT_INVERT] */
                            /* JADX WARN: Code duplicated, block: B:24:0x0075 A[LOOP:0: B:5:0x0019->B:24:0x0075, LOOP_END] */
                            /* JADX WARN: Code duplicated, block: B:28:0x0078 A[EDGE_INSN: B:28:0x0078->B:25:0x0078 BREAK  A[LOOP:0: B:5:0x0019->B:24:0x0075], SYNTHETIC] */
                            @Override // androidx.compose.ui.layout.MeasureResult
                            public final void k() {
                                int i4 = i3;
                                LayoutNodeSubcompositionsState layoutNodeSubcompositionsState2 = layoutNodeSubcompositionsState;
                                layoutNodeSubcompositionsState2.f9482f = i4;
                                measureResult2.k();
                                MutableVector mutableVector = layoutNodeSubcompositionsState2.n;
                                MutableScatterMap mutableScatterMap = layoutNodeSubcompositionsState2.m;
                                long[] jArr = mutableScatterMap.f3361a;
                                int length = jArr.length - 2;
                                if (length >= 0) {
                                    int i5 = 0;
                                    while (true) {
                                        long j3 = jArr[i5];
                                        if ((((~j3) << 7) & j3 & (-9187201950435737472L)) == -9187201950435737472L) {
                                            if (i5 != length) {
                                                break;
                                                break;
                                            }
                                            i5++;
                                        } else {
                                            int i6 = 8 - ((~(i5 - length)) >>> 31);
                                            for (int i7 = 0; i7 < i6; i7++) {
                                                if ((255 & j3) < 128) {
                                                    int i8 = (i5 << 3) + i7;
                                                    Object obj3 = mutableScatterMap.f3362b[i8];
                                                    SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = (SubcomposeLayoutState.PrecomposedSlotHandle) mutableScatterMap.f3363c[i8];
                                                    int iM = mutableVector.m(obj3);
                                                    if (iM < 0 || iM >= layoutNodeSubcompositionsState2.f9482f) {
                                                        if (iM >= 0) {
                                                            Object[] objArr = mutableVector.f8165b;
                                                            Object obj4 = objArr[iM];
                                                            objArr[iM] = SubcomposeLayoutKt.f9570b;
                                                        }
                                                        if (layoutNodeSubcompositionsState2.f9486k.b(obj3)) {
                                                            precomposedSlotHandle.dispose();
                                                        }
                                                        mutableScatterMap.n(i8);
                                                    }
                                                }
                                                j3 >>= 8;
                                            }
                                            if (i6 != 8) {
                                                break;
                                            } else if (i5 != length) {
                                                break;
                                            } else {
                                                i5++;
                                            }
                                        }
                                    }
                                }
                                layoutNodeSubcompositionsState2.g(layoutNodeSubcompositionsState2.f9481e);
                            }

                            @Override // androidx.compose.ui.layout.MeasureResult
                            /* JADX INFO: renamed from: l */
                            public final Function1 getD() {
                                return measureResult2.getD();
                            }
                        };
                    }
                });
                return Unit.f71739a;
            }
        };
    }

    public final LayoutNodeSubcompositionsState a() {
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.f9579b;
        if (layoutNodeSubcompositionsState != null) {
            return layoutNodeSubcompositionsState;
        }
        md.n("SubcomposeLayoutState is not attached to SubcomposeLayout");
        return null;
    }

    public SubcomposeLayoutState() {
        this(NoOpSubcomposeSlotReusePolicy.f9541a);
    }

    @Deprecated
    public SubcomposeLayoutState(int i2) {
        this(new FixedCountSubcomposeSlotReusePolicy(i2));
    }
}
