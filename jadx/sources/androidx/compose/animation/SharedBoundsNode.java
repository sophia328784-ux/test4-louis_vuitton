package androidx.compose.animation;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerKt;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.ApproachLayoutModifierNode;
import androidx.compose.ui.layout.ApproachMeasureScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.modifier.EmptyMap;
import androidx.compose.ui.modifier.ModifierLocal;
import androidx.compose.ui.modifier.ModifierLocalMap;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.modifier.SingleLocalMap;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.dw0;
import defpackage.lc0;
import defpackage.md;
import defpackage.tg0;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u0007B\u000f\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/animation/SharedBoundsNode;", "Landroidx/compose/ui/layout/ApproachLayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/DrawModifierNode;", "Landroidx/compose/ui/modifier/ModifierLocalModifierNode;", "Landroidx/compose/ui/node/ObserverModifierNode;", "Landroidx/compose/animation/BoundsProvider;", "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;", "Landroidx/compose/animation/SharedElementEntry;", "state", "<init>", "(Landroidx/compose/animation/SharedElementEntry;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SharedBoundsNode extends Modifier.Node implements ApproachLayoutModifierNode, DrawModifierNode, ModifierLocalModifierNode, ObserverModifierNode, BoundsProvider, CompositionLocalConsumerModifierNode {
    public Rect p;
    public boolean q;
    public SharedElementEntry r;
    public GraphicsLayer s;
    public final SingleLocalMap t;

    public SharedBoundsNode(SharedElementEntry sharedElementEntry) {
        this.r = sharedElementEntry;
        this.s = (GraphicsLayer) ((SnapshotMutableStateImpl) sharedElementEntry.n).getF10755b();
        Pair pair = new Pair(SharedContentNodeKt.f3651a, sharedElementEntry);
        ModifierLocal modifierLocal = (ModifierLocal) pair.f71705b;
        SingleLocalMap singleLocalMap = new SingleLocalMap(modifierLocal);
        if (modifierLocal != singleLocalMap.f9620a) {
            InlineClassHelperKt.c("Check failed.");
        }
        ((SnapshotMutableStateImpl) singleLocalMap.f9621b).setValue(pair.f71706c);
        this.t = singleLocalMap;
    }

    @Override // androidx.compose.ui.layout.ApproachLayoutModifierNode
    public final MeasureResult I0(ApproachMeasureScope approachMeasureScope, Measurable measurable, long j2) {
        long jA;
        Rect rectC = this.r.c().c();
        if (rectC == null) {
            SharedTransitionStateMachine sharedTransitionStateMachine = this.r.e().f3655c;
            sharedTransitionStateMachine.c();
            rectC = sharedTransitionStateMachine.a().f(sharedTransitionStateMachine.f3715a);
        }
        if (rectC != null) {
            long jB = IntSizeKt.b(rectC.c());
            int i2 = (int) (jB >> 32);
            int i3 = (int) (jB & BodyPartID.bodyIdMax);
            if (i2 == Integer.MAX_VALUE || i3 == Integer.MAX_VALUE) {
                StringBuilder sb = new StringBuilder("Error: Infinite width/height is invalid. animated bounds: ");
                sb.append(this.r.c().c());
                lc0.s(sb, ", current bounds: ", this.r.e().f3655c.a().c());
                return null;
            }
            Constraints.Companion companion = Constraints.f10998b;
            if (i2 < 0) {
                i2 = 0;
            }
            if (i3 < 0) {
                i3 = 0;
            }
            companion.getClass();
            j2 = Constraints.Companion.c(i2, i3);
        }
        final Placeable placeableT = measurable.T(j2);
        if (this.r.e().f3655c.a().d()) {
            SharedTransitionScope.PlaceholderSize placeholderSize = (SharedTransitionScope.PlaceholderSize) ((SnapshotMutableStateImpl) this.r.g).getF10755b();
            long jA2 = this.r.e().f3654b.f3683b.y(DelegatableNodeKt.e(this)).a();
            long j3 = (((long) placeableT.f9548b) << 32) | (((long) placeableT.f9549c) & BodyPartID.bodyIdMax);
            IntSize.Companion companion2 = IntSize.f11020b;
            jA = placeholderSize.a(jA2, j3);
        } else {
            jA = (((long) placeableT.f9549c) & BodyPartID.bodyIdMax) | (((long) placeableT.f9548b) << 32);
            IntSize.Companion companion3 = IntSize.f11020b;
        }
        return approachMeasureScope.V0((int) (jA >> 32), (int) (jA & BodyPartID.bodyIdMax), MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.SharedBoundsNode$approachPlace$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                long j4;
                char c2;
                long j5;
                Rect rectA;
                long jD;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                SharedBoundsNode sharedBoundsNode = this.f3647c;
                sharedBoundsNode.q = true;
                Offset offset = null;
                sharedBoundsNode.p = null;
                SharedTransitionStateMachine.State stateA = sharedBoundsNode.r.e().f3655c.a();
                boolean zJ = sharedBoundsNode.r.j();
                Placeable placeable = placeableT;
                if (zJ && stateA.d()) {
                    TargetData f3409a = stateA.getF3409a();
                    if (f3409a == null) {
                        tg0.n(stateA, "Match State is configured, but target data is null. State = ");
                        return null;
                    }
                    Rect rectC2 = stateA.c();
                    if (rectC2 == null) {
                        tg0.n(stateA, "Match State is configured, but current bounds is null. State = ");
                        return null;
                    }
                    long jB2 = 0;
                    if (sharedBoundsNode.r.e().f3654b.j()) {
                        LayoutCoordinates layoutCoordinatesW = placementScope.w();
                        if (layoutCoordinatesW == null) {
                            placementScope.j(placeable, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            boolean zB = sharedBoundsNode.r.e().f3655c.a().b();
                            LayoutCoordinates layoutCoordinatesH2 = sharedBoundsNode.h2();
                            Offset.f8806b.getClass();
                            long jY = layoutCoordinatesH2.y(layoutCoordinatesW, 0L);
                            SharedTransitionStateMachineKt.c(f3409a);
                            SharedElementEntry sharedElementEntry = sharedBoundsNode.r;
                            if (zB) {
                                j4 = BodyPartID.bodyIdMax;
                                sharedElementEntry.c().a(rectC2, SharedTransitionStateMachineKt.c(f3409a), null);
                            } else {
                                BoundsAnimation boundsAnimationC = sharedElementEntry.c();
                                j4 = BodyPartID.bodyIdMax;
                                boundsAnimationC.a(rectC2, SharedTransitionStateMachineKt.c(f3409a), new dw0(0));
                            }
                            Rect rectC3 = sharedBoundsNode.r.c().c();
                            if (rectC3 != null) {
                                c2 = ' ';
                                offset = new Offset(Offset.f(Offset.e(rectC3.d(), ((Offset) ((SnapshotMutableStateImpl) f3409a.f3751b).getF10755b()).f8808a), ((Offset) ((SnapshotMutableStateImpl) f3409a.d).getF10755b()).f8808a));
                            } else {
                                c2 = ' ';
                            }
                            if (sharedBoundsNode.r.c().b() || !zB) {
                                long j6 = offset != null ? offset.f8808a : jY;
                                if (offset == null) {
                                    j5 = jY;
                                    rectA = RectKt.a(j5, IntSizeKt.d(layoutCoordinatesW.a()));
                                } else {
                                    j5 = jY;
                                    rectA = RectKt.a(offset.f8808a, rectC3.c());
                                }
                                sharedBoundsNode.r.e().f3655c.a().i(rectA);
                                jD = j6;
                            } else {
                                jD = offset != null ? offset.f8808a : rectC2.d();
                                j5 = jY;
                            }
                            long jE = Offset.e(jD, j5);
                            placementScope.j(placeable, Math.round(Float.intBitsToFloat((int) (jE >> c2))), Math.round(Float.intBitsToFloat((int) (jE & j4))), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        }
                    } else if (sharedBoundsNode.r.c().b()) {
                        placementScope.j(placeable, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    } else {
                        LayoutCoordinates layoutCoordinatesW2 = placementScope.w();
                        if (layoutCoordinatesW2 != null) {
                            LayoutCoordinates layoutCoordinatesH3 = sharedBoundsNode.h2();
                            Offset.f8806b.getClass();
                            jB2 = IntOffsetKt.b(Offset.e(rectC2.d(), layoutCoordinatesH3.y(layoutCoordinatesW2, 0L)));
                        } else {
                            IntOffset.f11012b.getClass();
                        }
                        IntOffset.Companion companion4 = IntOffset.f11012b;
                        placementScope.j(placeable, (int) (jB2 >> 32), (int) (jB2 & BodyPartID.bodyIdMax), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    }
                } else {
                    placementScope.j(placeable, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
                return Unit.f71739a;
            }
        });
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Z1() {
        ObserverModifierNodeKt.a(this, this.r.e().f3659i);
        j2();
        ((SnapshotMutableStateImpl) this.r.f3664b).setValue(Boolean.TRUE);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        LayoutCoordinates layoutCoordinates = this.r.e().f3654b.f3686f;
        if (layoutCoordinates != null) {
            this.p = (layoutCoordinates.c() && this.q) ? RectKt.a(Offset.e(LayoutCoordinatesKt.e(DelegatableNodeKt.e(this)), LayoutCoordinatesKt.e(layoutCoordinates)), IntSizeKt.d(DelegatableNodeKt.e(this).d)) : null;
        }
        i2(null);
        SharedElementEntry sharedElementEntry = this.r;
        sharedElementEntry.l = null;
        sharedElementEntry.m = null;
        ((SnapshotMutableStateImpl) sharedElementEntry.f3664b).setValue(Boolean.FALSE);
        this.q = false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void b2() {
        this.p = null;
        GraphicsLayer graphicsLayer = this.s;
        if (graphicsLayer != null) {
            DelegatableNodeKt.g(this).getGraphicsContext().b(graphicsLayer);
        }
        i2(DelegatableNodeKt.g(this).getGraphicsContext().a());
    }

    @Override // androidx.compose.animation.BoundsProvider
    public final Rect d0(Rect rect) {
        SharedElementEntry sharedElementEntry = this.r;
        SharedTransitionScope.SharedContentConfig sharedContentConfig = (SharedTransitionScope.SharedContentConfig) ((SnapshotMutableStateImpl) ((SharedTransitionScope.SharedContentState) ((SnapshotMutableStateImpl) sharedElementEntry.f3670j).getF10755b()).f3680b).getF10755b();
        LayoutCoordinates layoutCoordinates = sharedElementEntry.e().f3654b.g;
        if (layoutCoordinates == null) {
            md.n("Error: Uninitialized LayoutCoordinates. Please make sure when using the SharedTransitionScope composable function, the modifier passed to the child content is being used, or use SharedTransitionLayout instead.");
            return null;
        }
        IntSizeKt.d(layoutCoordinates.a());
        sharedContentConfig.getClass();
        return null;
    }

    @Override // androidx.compose.ui.layout.ApproachLayoutModifierNode, androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        final Placeable placeableT = measurable.T(j2);
        return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>(this) { // from class: androidx.compose.animation.SharedBoundsNode$measure$1
            public final /* synthetic */ SharedBoundsNode d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.d = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LayoutCoordinates layoutCoordinatesW;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                placementScope.j(placeableT, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                SharedBoundsNode sharedBoundsNode = this.d;
                SharedElement sharedElementE = sharedBoundsNode.r.e();
                SharedElementEntry sharedElementEntry = sharedBoundsNode.r;
                SharedTransitionStateMachine sharedTransitionStateMachine = sharedElementE.f3655c;
                sharedTransitionStateMachine.c();
                if (!Intrinsics.c(sharedTransitionStateMachine.a(), NoMatchFound.f3641a) && sharedElementEntry.j()) {
                    SharedTransitionStateMachine.State stateA = sharedTransitionStateMachine.a();
                    if (sharedElementEntry.c().b() && stateA.b() && (layoutCoordinatesW = placementScope.w()) != null) {
                        long jD = IntSizeKt.d(layoutCoordinatesW.a());
                        SharedTransitionScopeImpl sharedTransitionScopeImpl = sharedElementEntry.e().f3654b;
                        LayoutCoordinates layoutCoordinates = sharedElementEntry.e().f3654b.g;
                        if (layoutCoordinates == null) {
                            md.n("Error: Uninitialized LayoutCoordinates. Please make sure when using the SharedTransitionScope composable function, the modifier passed to the child content is being used, or use SharedTransitionLayout instead.");
                            return null;
                        }
                        Offset.f8806b.getClass();
                        long jC = sharedTransitionScopeImpl.f3683b.c(layoutCoordinates, layoutCoordinatesW);
                        SharedTransitionScopeImpl sharedTransitionScopeImpl2 = sharedElementEntry.e().f3654b;
                        LayoutCoordinates layoutCoordinates2 = sharedElementEntry.e().f3654b.g;
                        if (layoutCoordinates2 == null) {
                            md.n("Error: Uninitialized LayoutCoordinates. Please make sure when using the SharedTransitionScope composable function, the modifier passed to the child content is being used, or use SharedTransitionLayout instead.");
                            return null;
                        }
                        long jF0 = LayoutCoordinates.f0(layoutCoordinates2, layoutCoordinatesW, 2);
                        SharedTransitionStateMachine.State stateA2 = sharedTransitionStateMachine.a();
                        SharedElement sharedElement = sharedTransitionStateMachine.f3715a;
                        BoundsProvider boundsProvider = sharedTransitionStateMachine.f3719f;
                        boundsProvider.getClass();
                        ((SnapshotMutableStateImpl) sharedTransitionStateMachine.f3716b).setValue(stateA2.a(sharedElement, boundsProvider, jD, jC, jF0));
                    }
                }
                return Unit.f71739a;
            }
        });
    }

    @Override // androidx.compose.ui.layout.ApproachLayoutModifierNode
    public final boolean e1() {
        return this.r.j() && this.r.e().a() && this.r.e().f3654b.j();
    }

    public final LayoutCoordinates h2() {
        LayoutCoordinates layoutCoordinates = this.r.e().f3654b.f3686f;
        if (layoutCoordinates != null) {
            return layoutCoordinates;
        }
        md.n("Error: Uninitialized LayoutCoordinates. Please make sure when using the SharedTransitionScope composable function, the modifier passed to the child content is being used, or use SharedTransitionLayout instead.");
        return null;
    }

    public final void i2(GraphicsLayer graphicsLayer) {
        if (graphicsLayer == null) {
            GraphicsLayer graphicsLayer2 = this.s;
            if (graphicsLayer2 != null) {
                DelegatableNodeKt.g(this).getGraphicsContext().b(graphicsLayer2);
            }
        } else {
            ((SnapshotMutableStateImpl) this.r.n).setValue(graphicsLayer);
        }
        this.s = graphicsLayer;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void j(final LayoutNodeDrawScope layoutNodeDrawScope) {
        Path pathA;
        final SharedElement sharedElementE = this.r.e();
        final Rect rectC = sharedElementE.f3655c.a().c();
        SharedElementEntry sharedElementEntry = this.r;
        if (!sharedElementEntry.h() || rectC == null) {
            pathA = null;
        } else {
            SharedTransitionScope.OverlayClip overlayClip = (SharedTransitionScope.OverlayClip) ((SnapshotMutableStateImpl) this.r.f3669i).getF10755b();
            SharedTransitionScope.SharedContentState sharedContentState = (SharedTransitionScope.SharedContentState) ((SnapshotMutableStateImpl) this.r.f3670j).getF10755b();
            layoutNodeDrawScope.getLayoutDirection();
            Density density = DelegatableNodeKt.f(this).A;
            pathA = overlayClip.a(sharedContentState);
        }
        sharedElementEntry.f3671k = pathA;
        GraphicsLayer graphicsLayer = (GraphicsLayer) ((SnapshotMutableStateImpl) this.r.n).getF10755b();
        if (graphicsLayer == null) {
            StringBuilder sb = new StringBuilder("Error: Layer is null when accessed for shared bounds/element : ");
            sb.append(sharedElementE.f3653a);
            boolean zB = this.r.c().b();
            boolean z = this.o;
            sb.append(",target: ");
            sb.append(zB);
            sb.append(", is attached: ");
            sb.append(z);
            throw new IllegalArgumentException(sb.toString().toString());
        }
        Function1<DrawScope, Unit> function1 = new Function1<DrawScope, Unit>(rectC, sharedElementE) { // from class: androidx.compose.animation.SharedBoundsNode$draw$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                this.f3648c.R1();
                return Unit.f71739a;
            }
        };
        DrawScope.Companion companion = DrawScope.a0;
        layoutNodeDrawScope.e(IntSizeKt.c(layoutNodeDrawScope.f9701b.b()), graphicsLayer, function1);
        SharedElementEntry sharedElementEntry2 = this.r;
        if (!sharedElementEntry2.e().f3655c.a().d() || (!sharedElementEntry2.h() && sharedElementEntry2.g())) {
            GraphicsLayerKt.a(layoutNodeDrawScope, graphicsLayer);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v10, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r8v6 */
    public final void j2() {
        Object objMo47invoke;
        NodeChain nodeChain;
        ProvidableModifierLocal providableModifierLocal = SharedContentNodeKt.f3651a;
        SharedElementEntry sharedElementEntry = this.r;
        EmptyMap emptyMap = EmptyMap.f9612a;
        SingleLocalMap singleLocalMap = this.t;
        if (singleLocalMap == emptyMap) {
            InlineClassHelperKt.a("In order to provide locals you must override providedValues: ModifierLocalMap");
        }
        if (!singleLocalMap.a(providableModifierLocal)) {
            InlineClassHelperKt.a("Any provided key must be initially provided in the overridden providedValues: ModifierLocalMap property. Key " + providableModifierLocal + " was not found.");
        }
        if (providableModifierLocal != singleLocalMap.f9620a) {
            InlineClassHelperKt.c("Check failed.");
        }
        ((SnapshotMutableStateImpl) singleLocalMap.f9621b).setValue(sharedElementEntry);
        SharedElementEntry sharedElementEntry2 = this.r;
        if (!this.f8608b.o) {
            InlineClassHelperKt.a("ModifierLocal accessed from an unattached node");
        }
        if (!this.f8608b.o) {
            InlineClassHelperKt.c("visitAncestors called on an unattached node");
        }
        Modifier.Node node = this.f8608b.f8611f;
        LayoutNode layoutNodeF = DelegatableNodeKt.f(this);
        while (layoutNodeF != null) {
            if ((layoutNodeF.H.f9774f.f8610e & 32) != 0) {
                while (node != null) {
                    if ((node.d & 32) != 0) {
                        ?? B = node;
                        ?? mutableVector = 0;
                        while (B != 0) {
                            if (B instanceof ModifierLocalModifierNode) {
                                ModifierLocalModifierNode modifierLocalModifierNode = (ModifierLocalModifierNode) B;
                                if (modifierLocalModifierNode.s0().a(providableModifierLocal)) {
                                    objMo47invoke = modifierLocalModifierNode.s0().b(providableModifierLocal);
                                    sharedElementEntry2.l = (SharedElementEntry) objMo47invoke;
                                    i2(DelegatableNodeKt.g(this).getGraphicsContext().a());
                                    this.q = false;
                                    this.r.m = this;
                                }
                            } else if ((B.d & 32) != 0 && (B instanceof DelegatingNode)) {
                                Modifier.Node node2 = ((DelegatingNode) B).q;
                                int i2 = 0;
                                B = B;
                                mutableVector = mutableVector;
                                while (node2 != null) {
                                    if ((node2.d & 32) != 0) {
                                        i2++;
                                        if (i2 == 1) {
                                            mutableVector = mutableVector;
                                            B = node2;
                                        } else {
                                            if (mutableVector == 0) {
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (B != 0) {
                                                mutableVector.b(B);
                                                B = 0;
                                            }
                                            mutableVector.b(node2);
                                        }
                                    }
                                    node2 = node2.g;
                                    B = B;
                                    mutableVector = mutableVector;
                                }
                                if (i2 == 1) {
                                }
                            }
                            B = DelegatableNodeKt.b(mutableVector);
                        }
                    }
                    node = node.f8611f;
                }
            }
            layoutNodeF = layoutNodeF.O();
            node = (layoutNodeF == null || (nodeChain = layoutNodeF.H) == null) ? null : nodeChain.f9773e;
        }
        objMo47invoke = providableModifierLocal.f9613a.mo47invoke();
        sharedElementEntry2.l = (SharedElementEntry) objMo47invoke;
        i2(DelegatableNodeKt.g(this).getGraphicsContext().a());
        this.q = false;
        this.r.m = this;
    }

    @Override // androidx.compose.animation.BoundsProvider
    public final Rect p1() {
        if (this.o) {
            return !this.q ? this.p : RectKt.a(LayoutCoordinates.f0(h2(), DelegatableNodeKt.e(this), 6), IntSizeKt.d(DelegatableNodeKt.e(this).d));
        }
        return null;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalModifierNode
    public final ModifierLocalMap s0() {
        return this.t;
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void y0() {
        this.r.e().e();
        ObserverModifierNodeKt.a(this, this.r.e().f3659i);
    }
}
