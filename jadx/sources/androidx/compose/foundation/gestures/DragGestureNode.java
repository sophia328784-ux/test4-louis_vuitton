package androidx.compose.foundation.gestures;

import androidx.compose.foundation.GestureConnection;
import androidx.compose.foundation.GestureNodeKt;
import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.input.pointer.util.DataPointAtTime;
import androidx.compose.ui.input.pointer.util.DefaultVelocityTracker;
import androidx.compose.ui.input.pointer.util.VelocityTracker;
import androidx.compose.ui.input.pointer.util.VelocityTracker1D;
import androidx.compose.ui.input.pointer.util.VelocityTrackerKt;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import defpackage.md;
import defpackage.v40;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b!\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B7\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012\u0006\u0010\n\u001a\u00020\b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/compose/foundation/gestures/DragGestureNode;", "Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/node/PointerInputModifierNode;", "Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;", "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;", "Landroidx/compose/foundation/GestureConnection;", "Lkotlin/Function1;", "Landroidx/compose/ui/input/pointer/PointerType;", "", "canDrag", "enabled", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "interactionSource", "Landroidx/compose/foundation/gestures/Orientation;", "orientationLock", "<init>", "(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class DragGestureNode extends DelegatingNode implements PointerInputModifierNode, IndirectPointerInputModifierNode, CompositionLocalConsumerModifierNode, GestureConnection {
    public DragDetectionState.AwaitDown A;
    public DragDetectionState.Dragging B;
    public DragDetectionState.AwaitTouchSlop C;
    public DragDetectionState.AwaitGesturePickup D;
    public DragDetectionState E;
    public VelocityTracker F;
    public long G;
    public TouchSlopDetector H;
    public IndirectPointerInputDragCycleDetector I;
    public long J;
    public Orientation r;
    public Function1 s;
    public boolean t;
    public MutableInteractionSource u;
    public DelegatableNode v;
    public BufferedChannel w;
    public DragInteraction.Start x;
    public boolean y;
    public boolean z;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4538a;

        static {
            int[] iArr = new int[DragDetectionState.AwaitDown.AwaitTouchSlop.values().length];
            try {
                iArr[DragDetectionState.AwaitDown.AwaitTouchSlop.NotInitialized.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f4538a = iArr;
        }
    }

    public DragGestureNode(Function1<? super PointerType, Boolean> function1, boolean z, MutableInteractionSource mutableInteractionSource, Orientation orientation) {
        this.r = orientation;
        this.s = function1;
        this.t = z;
        this.u = mutableInteractionSource;
        Offset.Companion companion = Offset.f8806b;
        companion.getClass();
        this.G = Offset.d;
        companion.getClass();
        this.J = 0L;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object k2(DragGestureNode dragGestureNode, ContinuationImpl continuationImpl) {
        DragGestureNode$processDragCancel$1 dragGestureNode$processDragCancel$1;
        if (continuationImpl instanceof DragGestureNode$processDragCancel$1) {
            dragGestureNode$processDragCancel$1 = (DragGestureNode$processDragCancel$1) continuationImpl;
            int i2 = dragGestureNode$processDragCancel$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dragGestureNode$processDragCancel$1.d = i2 - Integer.MIN_VALUE;
            } else {
                dragGestureNode$processDragCancel$1 = new DragGestureNode$processDragCancel$1(dragGestureNode, continuationImpl);
            }
        } else {
            dragGestureNode$processDragCancel$1 = new DragGestureNode$processDragCancel$1(dragGestureNode, continuationImpl);
        }
        Object obj = dragGestureNode$processDragCancel$1.f4539b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dragGestureNode$processDragCancel$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            DragInteraction.Start start = dragGestureNode.x;
            if (start != null) {
                MutableInteractionSource mutableInteractionSource = dragGestureNode.u;
                if (mutableInteractionSource != null) {
                    DragInteraction.Cancel cancel = new DragInteraction.Cancel(start);
                    dragGestureNode$processDragCancel$1.d = 1;
                    if (mutableInteractionSource.a(cancel, dragGestureNode$processDragCancel$1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
            }
            Velocity.f11029b.getClass();
            dragGestureNode.u2(new DragEvent.DragStopped(0L, false, null));
            return Unit.f71739a;
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        dragGestureNode.x = null;
        Velocity.f11029b.getClass();
        dragGestureNode.u2(new DragEvent.DragStopped(0L, false, null));
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object l2(DragGestureNode dragGestureNode, DragEvent.DragStarted dragStarted, ContinuationImpl continuationImpl) {
        DragGestureNode$processDragStart$1 dragGestureNode$processDragStart$1;
        MutableInteractionSource mutableInteractionSource;
        DragInteraction.Start start;
        DragEvent.DragStarted dragStarted2;
        DragInteraction.Start start2;
        if (continuationImpl instanceof DragGestureNode$processDragStart$1) {
            dragGestureNode$processDragStart$1 = (DragGestureNode$processDragStart$1) continuationImpl;
            int i2 = dragGestureNode$processDragStart$1.f4544f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dragGestureNode$processDragStart$1.f4544f = i2 - Integer.MIN_VALUE;
            } else {
                dragGestureNode$processDragStart$1 = new DragGestureNode$processDragStart$1(dragGestureNode, continuationImpl);
            }
        } else {
            dragGestureNode$processDragStart$1 = new DragGestureNode$processDragStart$1(dragGestureNode, continuationImpl);
        }
        Object obj = dragGestureNode$processDragStart$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dragGestureNode$processDragStart$1.f4544f;
        if (i3 == 0) {
            ResultKt.b(obj);
            DragInteraction.Start start3 = dragGestureNode.x;
            if (start3 != null && (mutableInteractionSource = dragGestureNode.u) != null) {
                DragInteraction.Cancel cancel = new DragInteraction.Cancel(start3);
                dragGestureNode$processDragStart$1.f4541b = dragStarted;
                dragGestureNode$processDragStart$1.f4544f = 1;
                if (mutableInteractionSource.a(cancel, dragGestureNode$processDragStart$1) != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            dragGestureNode.x = start;
            dragGestureNode.t2(dragStarted.f4484a);
            return Unit.f71739a;
        }
        if (i3 == 1) {
            dragStarted = dragGestureNode$processDragStart$1.f4541b;
            ResultKt.b(obj);
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            start2 = dragGestureNode$processDragStart$1.f4542c;
            dragStarted2 = dragGestureNode$processDragStart$1.f4541b;
            ResultKt.b(obj);
        }
        start = start2;
        dragStarted = dragStarted2;
        dragGestureNode.x = start;
        dragGestureNode.t2(dragStarted.f4484a);
        return Unit.f71739a;
        start = new DragInteraction.Start();
        MutableInteractionSource mutableInteractionSource2 = dragGestureNode.u;
        if (mutableInteractionSource2 != null) {
            dragGestureNode$processDragStart$1.f4541b = dragStarted;
            dragGestureNode$processDragStart$1.f4542c = start;
            dragGestureNode$processDragStart$1.f4544f = 2;
            if (mutableInteractionSource2.a(start, dragGestureNode$processDragStart$1) != coroutineSingletons) {
                dragStarted2 = dragStarted;
                start2 = start;
                start = start2;
                dragStarted = dragStarted2;
            }
            return coroutineSingletons;
        }
        dragGestureNode.x = start;
        dragGestureNode.t2(dragStarted.f4484a);
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object m2(DragGestureNode dragGestureNode, DragEvent.DragStopped dragStopped, ContinuationImpl continuationImpl) {
        DragGestureNode$processDragStop$1 dragGestureNode$processDragStop$1;
        if (continuationImpl instanceof DragGestureNode$processDragStop$1) {
            dragGestureNode$processDragStop$1 = (DragGestureNode$processDragStop$1) continuationImpl;
            int i2 = dragGestureNode$processDragStop$1.f4547e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dragGestureNode$processDragStop$1.f4547e = i2 - Integer.MIN_VALUE;
            } else {
                dragGestureNode$processDragStop$1 = new DragGestureNode$processDragStop$1(dragGestureNode, continuationImpl);
            }
        } else {
            dragGestureNode$processDragStop$1 = new DragGestureNode$processDragStop$1(dragGestureNode, continuationImpl);
        }
        Object obj = dragGestureNode$processDragStop$1.f4546c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dragGestureNode$processDragStop$1.f4547e;
        if (i3 == 0) {
            ResultKt.b(obj);
            DragInteraction.Start start = dragGestureNode.x;
            if (start != null) {
                MutableInteractionSource mutableInteractionSource = dragGestureNode.u;
                if (mutableInteractionSource != null) {
                    DragInteraction.Stop stop = new DragInteraction.Stop(start);
                    dragGestureNode$processDragStop$1.f4545b = dragStopped;
                    dragGestureNode$processDragStop$1.f4547e = 1;
                    if (mutableInteractionSource.a(stop, dragGestureNode$processDragStop$1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
            }
            dragGestureNode.u2(dragStopped);
            return Unit.f71739a;
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        dragStopped = dragGestureNode$processDragStop$1.f4545b;
        ResultKt.b(obj);
        dragGestureNode.x = null;
        dragGestureNode.u2(dragStopped);
        return Unit.f71739a;
    }

    public static void r2(DragGestureNode dragGestureNode, PointerInputChange pointerInputChange, long j2, long j3, int i2) {
        if ((i2 & 4) != 0) {
            Offset.f8806b.getClass();
            j3 = 0;
        }
        DragDetectionState.AwaitTouchSlop awaitTouchSlop = dragGestureNode.C;
        if (awaitTouchSlop == null) {
            DragDetectionState.AwaitTouchSlop awaitTouchSlop2 = new DragDetectionState.AwaitTouchSlop(null, 0L, false, 7, null);
            dragGestureNode.C = awaitTouchSlop2;
            awaitTouchSlop = awaitTouchSlop2;
        }
        awaitTouchSlop.f4477a = pointerInputChange;
        awaitTouchSlop.f4478b = j2;
        TouchSlopDetector touchSlopDetector = dragGestureNode.H;
        Orientation orientation = dragGestureNode.r;
        if (touchSlopDetector == null) {
            dragGestureNode.H = new TouchSlopDetector(orientation, 0L, 2, null);
        } else {
            touchSlopDetector.f4807a = orientation;
            touchSlopDetector.f4808b = j3;
        }
        awaitTouchSlop.f4479c = false;
        dragGestureNode.E = awaitTouchSlop;
    }

    public final void A2() {
        this.y = true;
        if (this.w == null) {
            this.w = ChannelKt.a(Integer.MAX_VALUE, 6, null);
        }
        BuildersKt.c(V1(), null, null, new DragGestureNode$startListeningForEvents$1(this, null), 3);
    }

    public final void B2(Function1 function1, boolean z, MutableInteractionSource mutableInteractionSource, Orientation orientation, boolean z2) {
        this.s = function1;
        boolean z3 = true;
        if (this.t != z) {
            this.t = z;
            if (!z) {
                n2();
                this.I = null;
            }
            z2 = true;
        }
        if (!Intrinsics.c(this.u, mutableInteractionSource)) {
            n2();
            this.u = mutableInteractionSource;
        }
        if (this.r != orientation) {
            this.r = orientation;
        } else {
            z3 = z2;
        }
        if (z3) {
            if (this.z) {
                p2();
                if (this.y) {
                    v2().b(DragEvent.DragCancelled.f4481a);
                }
                this.F = null;
            }
            IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector = this.I;
            if (indirectPointerInputDragCycleDetector != null) {
                indirectPointerInputDragCycleDetector.a();
                DragGestureNode dragGestureNode = indirectPointerInputDragCycleDetector.f4582a;
                if (dragGestureNode.y) {
                    dragGestureNode.s2(DragEvent.DragCancelled.f4481a);
                }
                indirectPointerInputDragCycleDetector.g = null;
                OffsetSmoother offsetSmoother = indirectPointerInputDragCycleDetector.f4590k;
                offsetSmoother.f4649a = 0;
                offsetSmoother.f4650b.f3276b = 0;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public final void I(AndroidIndirectPointerEvent androidIndirectPointerEvent, PointerEventPass pointerEventPass) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        int i2 = androidIndirectPointerEvent.f9211b;
        List list = androidIndirectPointerEvent.f9210a;
        if (this.v == null) {
            DelegatableNode delegatableNodeA = GestureNodeKt.a(this);
            h2(delegatableNodeA);
            this.v = delegatableNodeA;
        }
        if (this.t) {
            if (this.I == null) {
                this.I = new IndirectPointerInputDragCycleDetector(this);
            }
            IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector = this.I;
            if (indirectPointerInputDragCycleDetector != null) {
                DragGestureNode dragGestureNode = indirectPointerInputDragCycleDetector.f4582a;
                Object[] objArr = 0;
                IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown.AwaitTouchSlop awaitTouchSlop = null;
                Object[] objArr2 = 0;
                if (indirectPointerInputDragCycleDetector.f4586f == null) {
                    IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown awaitDown = indirectPointerInputDragCycleDetector.f4583b;
                    if (awaitDown == null) {
                        awaitDown = new IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown(awaitTouchSlop, objArr == true ? 1 : 0, 3, objArr2 == true ? 1 : 0);
                        indirectPointerInputDragCycleDetector.f4583b = awaitDown;
                    }
                    indirectPointerInputDragCycleDetector.f4586f = awaitDown;
                }
                IndirectPointerInputDragCycleDetector.DragDetectionState dragDetectionState = indirectPointerInputDragCycleDetector.f4586f;
                if (dragDetectionState == null) {
                    md.n("currentDragState should not be null");
                    return;
                }
                boolean z = true;
                if (dragDetectionState instanceof IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown) {
                    IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown awaitDown2 = (IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown) dragDetectionState;
                    if (list.isEmpty()) {
                        return;
                    }
                    int size = list.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        if (!IndirectPointerInputDragCycleDetectorKt.c((IndirectPointerInputChange) list.get(i3))) {
                            return;
                        }
                    }
                    IndirectPointerInputChange indirectPointerInputChange = (IndirectPointerInputChange) CollectionsKt.B(list);
                    IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown.AwaitTouchSlop awaitTouchSlop2 = IndirectPointerInputDragCycleDetector.WhenMappings.f4599a[awaitDown2.f4591a.ordinal()] == 1 ? !dragGestureNode.getM() ? IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown.AwaitTouchSlop.Yes : IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown.AwaitTouchSlop.No : awaitDown2.f4591a;
                    awaitDown2.f4591a = awaitTouchSlop2;
                    if (pointerEventPass == PointerEventPass.Initial && awaitTouchSlop2 == IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown.AwaitTouchSlop.No) {
                        indirectPointerInputChange.f9225i = true;
                        awaitDown2.f4592b = true;
                    }
                    if (pointerEventPass == PointerEventPass.Main) {
                        if (awaitTouchSlop2 == IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown.AwaitTouchSlop.Yes) {
                            IndirectPointerInputDragCycleDetector.c(indirectPointerInputDragCycleDetector, indirectPointerInputChange, indirectPointerInputChange.f9219a, 0L, 12);
                            return;
                        }
                        if (awaitDown2.f4592b) {
                            IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis = new IndirectPointerEventPrimaryDirectionalMotionAxis(i2);
                            Offset.f8806b.getClass();
                            indirectPointerInputDragCycleDetector.f(indirectPointerInputChange, indirectPointerInputChange, indirectPointerEventPrimaryDirectionalMotionAxis, 0L);
                            indirectPointerInputDragCycleDetector.e(indirectPointerInputChange, new IndirectPointerEventPrimaryDirectionalMotionAxis(i2), 0L);
                            long j2 = indirectPointerInputChange.f9219a;
                            IndirectPointerInputDragCycleDetector.DragDetectionState.Dragging dragging = indirectPointerInputDragCycleDetector.f4584c;
                            if (dragging == null) {
                                dragging = new IndirectPointerInputDragCycleDetector.DragDetectionState.Dragging(0L, 1, null);
                                indirectPointerInputDragCycleDetector.f4584c = dragging;
                            }
                            dragging.f4598a = j2;
                            indirectPointerInputDragCycleDetector.f4586f = dragging;
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (!(dragDetectionState instanceof IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitTouchSlop)) {
                    if (dragDetectionState instanceof IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitGesturePickup) {
                        IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitGesturePickup awaitGesturePickup = (IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitGesturePickup) dragDetectionState;
                        if (pointerEventPass != PointerEventPass.Final) {
                            return;
                        }
                        int size2 = list.size();
                        for (int i4 = 0; i4 < size2; i4++) {
                            if (((IndirectPointerInputChange) list.get(i4)).f9225i) {
                                z = false;
                                break;
                            }
                        }
                        int size3 = list.size();
                        for (int i5 = 0; i5 < size3; i5++) {
                            if (((IndirectPointerInputChange) list.get(i5)).d) {
                                if (list.isEmpty()) {
                                    break;
                                }
                                if (z) {
                                    long jE = IndirectPointerInputDragCycleDetectorKt.e((IndirectPointerInputChange) CollectionsKt.B(list), dragGestureNode.r, new IndirectPointerEventPrimaryDirectionalMotionAxis(i2));
                                    IndirectPointerInputChange indirectPointerInputChange2 = awaitGesturePickup.f4593a;
                                    indirectPointerInputChange2.getClass();
                                    long jE2 = Offset.e(jE, IndirectPointerInputDragCycleDetectorKt.e(indirectPointerInputChange2, dragGestureNode.r, new IndirectPointerEventPrimaryDirectionalMotionAxis(i2)));
                                    IndirectPointerInputChange indirectPointerInputChange3 = awaitGesturePickup.f4593a;
                                    if (indirectPointerInputChange3 != null) {
                                        IndirectPointerInputDragCycleDetector.c(indirectPointerInputDragCycleDetector, indirectPointerInputChange3, awaitGesturePickup.f4594b, jE2, 8);
                                        return;
                                    } else {
                                        md.n("AwaitGesturePickup.initialDown was not initialized.");
                                        return;
                                    }
                                }
                                return;
                            }
                        }
                        indirectPointerInputDragCycleDetector.a();
                        return;
                    }
                    if (!(dragDetectionState instanceof IndirectPointerInputDragCycleDetector.DragDetectionState.Dragging)) {
                        v40.g();
                        return;
                    }
                    IndirectPointerInputDragCycleDetector.DragDetectionState.Dragging dragging2 = (IndirectPointerInputDragCycleDetector.DragDetectionState.Dragging) dragDetectionState;
                    if (pointerEventPass != PointerEventPass.Main) {
                        return;
                    }
                    long j3 = dragging2.f4598a;
                    int size4 = list.size();
                    int i6 = 0;
                    while (true) {
                        if (i6 >= size4) {
                            obj = null;
                            break;
                        }
                        Object obj6 = list.get(i6);
                        if (PointerId.a(((IndirectPointerInputChange) obj6).f9219a, j3)) {
                            obj = obj6;
                            break;
                        }
                        i6++;
                    }
                    IndirectPointerInputChange indirectPointerInputChange4 = (IndirectPointerInputChange) obj;
                    if (indirectPointerInputChange4 == null) {
                        return;
                    }
                    if (!IndirectPointerInputDragCycleDetectorKt.b(indirectPointerInputChange4)) {
                        if (indirectPointerInputChange4.f9225i) {
                            dragGestureNode.s2(DragEvent.DragCancelled.f4481a);
                            return;
                        } else {
                            if (Offset.d(IndirectPointerInputDragCycleDetectorKt.d(indirectPointerInputChange4, dragGestureNode.r, new IndirectPointerEventPrimaryDirectionalMotionAxis(i2), true)) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                return;
                            }
                            indirectPointerInputDragCycleDetector.e(indirectPointerInputChange4, new IndirectPointerEventPrimaryDirectionalMotionAxis(i2), IndirectPointerInputDragCycleDetectorKt.d(indirectPointerInputChange4, dragGestureNode.r, new IndirectPointerEventPrimaryDirectionalMotionAxis(i2), false));
                            indirectPointerInputChange4.f9225i = true;
                            return;
                        }
                    }
                    int size5 = list.size();
                    int i7 = 0;
                    while (true) {
                        if (i7 >= size5) {
                            obj2 = null;
                            break;
                        }
                        obj2 = list.get(i7);
                        if (((IndirectPointerInputChange) obj2).d) {
                            break;
                        } else {
                            i7++;
                        }
                    }
                    IndirectPointerInputChange indirectPointerInputChange5 = (IndirectPointerInputChange) obj2;
                    if (indirectPointerInputChange5 != null) {
                        dragging2.f4598a = indirectPointerInputChange5.f9219a;
                        return;
                    }
                    if (indirectPointerInputChange4.f9225i || !IndirectPointerInputDragCycleDetectorKt.b(indirectPointerInputChange4)) {
                        dragGestureNode.s2(DragEvent.DragCancelled.f4481a);
                    } else {
                        IndirectPointerInputDragCycleDetectorKt.a(indirectPointerInputDragCycleDetector.d(), indirectPointerInputChange4, dragGestureNode.r, new IndirectPointerEventPrimaryDirectionalMotionAxis(i2), indirectPointerInputDragCycleDetector.f4589j, indirectPointerInputDragCycleDetector.l);
                        float f2 = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a(dragGestureNode, CompositionLocalsKt.u)).f();
                        long jA = indirectPointerInputDragCycleDetector.d().a(VelocityKt.a(f2, f2));
                        DefaultVelocityTracker defaultVelocityTracker = indirectPointerInputDragCycleDetector.d().f9403a;
                        VelocityTracker1D velocityTracker1D = defaultVelocityTracker.f9398a;
                        DataPointAtTime[] dataPointAtTimeArr = velocityTracker1D.d;
                        ArraysKt.r(dataPointAtTimeArr, 0, dataPointAtTimeArr.length, null);
                        velocityTracker1D.f9407e = 0;
                        VelocityTracker1D velocityTracker1D2 = defaultVelocityTracker.f9399b;
                        DataPointAtTime[] dataPointAtTimeArr2 = velocityTracker1D2.d;
                        ArraysKt.r(dataPointAtTimeArr2, 0, dataPointAtTimeArr2.length, null);
                        velocityTracker1D2.f9407e = 0;
                        defaultVelocityTracker.f9400c = 0L;
                        dragGestureNode.s2(new DragEvent.DragStopped(DraggableKt.c(jA), true, null));
                    }
                    indirectPointerInputDragCycleDetector.a();
                    return;
                }
                IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitTouchSlop awaitTouchSlop3 = (IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitTouchSlop) dragDetectionState;
                if (pointerEventPass == PointerEventPass.Initial) {
                    return;
                }
                int size6 = list.size();
                int i8 = 0;
                while (true) {
                    if (i8 >= size6) {
                        obj3 = null;
                        break;
                    }
                    obj3 = list.get(i8);
                    if (PointerId.a(((IndirectPointerInputChange) obj3).f9219a, awaitTouchSlop3.f4596b)) {
                        break;
                    } else {
                        i8++;
                    }
                }
                IndirectPointerInputChange indirectPointerInputChange6 = (IndirectPointerInputChange) obj3;
                if (indirectPointerInputChange6 == null) {
                    int size7 = list.size();
                    int i9 = 0;
                    while (true) {
                        if (i9 >= size7) {
                            obj5 = null;
                            break;
                        }
                        obj5 = list.get(i9);
                        if (((IndirectPointerInputChange) obj5).d) {
                            break;
                        } else {
                            i9++;
                        }
                    }
                    indirectPointerInputChange6 = (IndirectPointerInputChange) obj5;
                    if (indirectPointerInputChange6 == null) {
                        indirectPointerInputDragCycleDetector.a();
                        return;
                    }
                    awaitTouchSlop3.f4596b = indirectPointerInputChange6.f9219a;
                }
                IndirectPointerInputChange indirectPointerInputChange7 = indirectPointerInputChange6;
                if (pointerEventPass == PointerEventPass.Main) {
                    if (indirectPointerInputChange7.f9225i) {
                        IndirectPointerInputChange indirectPointerInputChange8 = awaitTouchSlop3.f4595a;
                        if (indirectPointerInputChange8 == null) {
                            md.n("AwaitTouchSlop.initialDown was not initialized");
                            return;
                        }
                        long j4 = awaitTouchSlop3.f4596b;
                        TouchSlopDetector touchSlopDetector = indirectPointerInputDragCycleDetector.f4588i;
                        if (touchSlopDetector == null) {
                            md.n("AwaitTouchSlop.touchSlopDetector was not initialized");
                            return;
                        }
                        indirectPointerInputDragCycleDetector.b(indirectPointerInputChange8, j4, touchSlopDetector);
                    } else if (IndirectPointerInputDragCycleDetectorKt.b(indirectPointerInputChange7)) {
                        int size8 = list.size();
                        int i10 = 0;
                        while (true) {
                            if (i10 >= size8) {
                                obj4 = null;
                                break;
                            }
                            obj4 = list.get(i10);
                            if (((IndirectPointerInputChange) obj4).d) {
                                break;
                            } else {
                                i10++;
                            }
                        }
                        IndirectPointerInputChange indirectPointerInputChange9 = (IndirectPointerInputChange) obj4;
                        if (indirectPointerInputChange9 == null) {
                            indirectPointerInputDragCycleDetector.a();
                        } else {
                            awaitTouchSlop3.f4596b = indirectPointerInputChange9.f9219a;
                        }
                    } else {
                        ViewConfiguration viewConfiguration = (ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a(dragGestureNode, CompositionLocalsKt.u);
                        PointerType.f9367b.getClass();
                        float fK = DragGestureDetectorKt.k(viewConfiguration, PointerType.f9368c);
                        TouchSlopDetector touchSlopDetector2 = indirectPointerInputDragCycleDetector.f4588i;
                        if (touchSlopDetector2 == null) {
                            md.n("Touch slop detector not initialized.");
                            return;
                        }
                        long jA2 = touchSlopDetector2.a(IndirectPointerInputDragCycleDetectorKt.d(indirectPointerInputChange7, dragGestureNode.r, new IndirectPointerEventPrimaryDirectionalMotionAxis(i2), true), fK, true);
                        if ((9223372034707292159L & jA2) != 9205357640488583168L) {
                            indirectPointerInputChange7.f9225i = true;
                            IndirectPointerInputChange indirectPointerInputChange10 = awaitTouchSlop3.f4595a;
                            indirectPointerInputChange10.getClass();
                            indirectPointerInputDragCycleDetector.f(indirectPointerInputChange10, indirectPointerInputChange7, new IndirectPointerEventPrimaryDirectionalMotionAxis(i2), jA2);
                            indirectPointerInputDragCycleDetector.e(indirectPointerInputChange7, new IndirectPointerEventPrimaryDirectionalMotionAxis(i2), jA2);
                            long j5 = indirectPointerInputChange7.f9219a;
                            IndirectPointerInputDragCycleDetector.DragDetectionState.Dragging dragging3 = indirectPointerInputDragCycleDetector.f4584c;
                            if (dragging3 == null) {
                                dragging3 = new IndirectPointerInputDragCycleDetector.DragDetectionState.Dragging(0L, 1, null);
                                indirectPointerInputDragCycleDetector.f4584c = dragging3;
                            }
                            dragging3.f4598a = j5;
                            indirectPointerInputDragCycleDetector.f4586f = dragging3;
                        } else {
                            awaitTouchSlop3.f4597c = true;
                        }
                    }
                }
                if (pointerEventPass == PointerEventPass.Final && awaitTouchSlop3.f4597c) {
                    if (!indirectPointerInputChange7.f9225i) {
                        awaitTouchSlop3.f4597c = false;
                        return;
                    }
                    IndirectPointerInputChange indirectPointerInputChange11 = awaitTouchSlop3.f4595a;
                    if (indirectPointerInputChange11 == null) {
                        md.n("AwaitTouchSlop.initialDown was not initialized");
                        return;
                    }
                    long j6 = awaitTouchSlop3.f4596b;
                    TouchSlopDetector touchSlopDetector3 = indirectPointerInputDragCycleDetector.f4588i;
                    if (touchSlopDetector3 != null) {
                        indirectPointerInputDragCycleDetector.b(indirectPointerInputChange11, j6, touchSlopDetector3);
                    } else {
                        md.n("AwaitTouchSlop.touchSlopDetector was not initialized");
                    }
                }
            }
        }
    }

    @Override // androidx.compose.foundation.GestureConnection
    public final boolean a1(IndirectPointerInputChange indirectPointerInputChange) {
        return IndirectPointerInputDragCycleDetectorKt.c(indirectPointerInputChange) && this.t;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        this.y = false;
        n2();
        Offset.f8806b.getClass();
        this.J = 0L;
        DelegatableNode delegatableNode = this.v;
        if (delegatableNode != null) {
            i2(delegatableNode);
        }
        this.v = null;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public void f0(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j2) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        boolean z = true;
        this.z = true;
        if (this.v == null) {
            DelegatableNode delegatableNodeA = GestureNodeKt.a(this);
            h2(delegatableNodeA);
            this.v = delegatableNodeA;
        }
        if (this.t) {
            if (this.E == null) {
                DragDetectionState.AwaitDown awaitDown = this.A;
                if (awaitDown == null) {
                    awaitDown = new DragDetectionState.AwaitDown(null, false, 3, null);
                    this.A = awaitDown;
                }
                this.E = awaitDown;
            }
            DragDetectionState dragDetectionState = this.E;
            if (dragDetectionState == null) {
                md.n("currentDragState should not be null");
                return;
            }
            if (dragDetectionState instanceof DragDetectionState.AwaitDown) {
                DragDetectionState.AwaitDown awaitDown2 = (DragDetectionState.AwaitDown) dragDetectionState;
                if (!pointerEvent.f9305a.isEmpty() && TapGestureDetectorKt.f(pointerEvent, false)) {
                    PointerInputChange pointerInputChange = (PointerInputChange) CollectionsKt.B(pointerEvent.f9305a);
                    DragDetectionState.AwaitDown.AwaitTouchSlop awaitTouchSlop = WhenMappings.f4538a[awaitDown2.f4473a.ordinal()] == 1 ? !getM() ? DragDetectionState.AwaitDown.AwaitTouchSlop.Yes : DragDetectionState.AwaitDown.AwaitTouchSlop.No : awaitDown2.f4473a;
                    awaitDown2.f4473a = awaitTouchSlop;
                    if (pointerEventPass == PointerEventPass.Initial && awaitTouchSlop == DragDetectionState.AwaitDown.AwaitTouchSlop.No) {
                        pointerInputChange.a();
                        awaitDown2.f4474b = true;
                    }
                    if (pointerEventPass == PointerEventPass.Main) {
                        if (awaitTouchSlop == DragDetectionState.AwaitDown.AwaitTouchSlop.Yes) {
                            r2(this, pointerInputChange, pointerInputChange.f9328a, 0L, 12);
                            return;
                        }
                        if (awaitDown2.f4474b) {
                            Offset.f8806b.getClass();
                            y2(pointerInputChange, pointerInputChange, 0L);
                            x2(0L, pointerInputChange);
                            long j3 = pointerInputChange.f9328a;
                            DragDetectionState.Dragging dragging = this.B;
                            if (dragging == null) {
                                dragging = new DragDetectionState.Dragging(0L, 1, null);
                                this.B = dragging;
                            }
                            dragging.f4480a = j3;
                            this.E = dragging;
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            if (dragDetectionState instanceof DragDetectionState.AwaitTouchSlop) {
                DragDetectionState.AwaitTouchSlop awaitTouchSlop2 = (DragDetectionState.AwaitTouchSlop) dragDetectionState;
                if (pointerEventPass == PointerEventPass.Initial) {
                    return;
                }
                List list = pointerEvent.f9305a;
                List list2 = list;
                int size = list2.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        obj3 = null;
                        break;
                    }
                    obj3 = list.get(i2);
                    if (PointerId.a(((PointerInputChange) obj3).f9328a, awaitTouchSlop2.f4478b)) {
                        break;
                    } else {
                        i2++;
                    }
                }
                PointerInputChange pointerInputChange2 = (PointerInputChange) obj3;
                if (pointerInputChange2 == null) {
                    int size2 = list2.size();
                    int i3 = 0;
                    while (true) {
                        if (i3 >= size2) {
                            obj5 = null;
                            break;
                        }
                        obj5 = list.get(i3);
                        if (((PointerInputChange) obj5).d) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                    pointerInputChange2 = (PointerInputChange) obj5;
                    if (pointerInputChange2 == null) {
                        p2();
                        return;
                    }
                    awaitTouchSlop2.f4478b = pointerInputChange2.f9328a;
                }
                if (pointerEventPass == PointerEventPass.Main) {
                    if (pointerInputChange2.b()) {
                        PointerInputChange pointerInputChange3 = awaitTouchSlop2.f4477a;
                        if (pointerInputChange3 == null) {
                            md.n("AwaitTouchSlop.initialDown was not initialized");
                            return;
                        }
                        long j4 = awaitTouchSlop2.f4478b;
                        TouchSlopDetector touchSlopDetector = this.H;
                        if (touchSlopDetector == null) {
                            md.n("AwaitTouchSlop.touchSlopDetector was not initialized");
                            return;
                        }
                        q2(pointerInputChange3, j4, touchSlopDetector);
                    } else if (PointerEventKt.d(pointerInputChange2)) {
                        int size3 = list2.size();
                        int i4 = 0;
                        while (true) {
                            if (i4 >= size3) {
                                obj4 = null;
                                break;
                            }
                            obj4 = list.get(i4);
                            if (((PointerInputChange) obj4).d) {
                                break;
                            } else {
                                i4++;
                            }
                        }
                        PointerInputChange pointerInputChange4 = (PointerInputChange) obj4;
                        if (pointerInputChange4 == null) {
                            p2();
                        } else {
                            awaitTouchSlop2.f4478b = pointerInputChange4.f9328a;
                        }
                    } else {
                        float fK = DragGestureDetectorKt.k((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.u), pointerInputChange2.f9334i);
                        TouchSlopDetector touchSlopDetector2 = this.H;
                        if (touchSlopDetector2 == null) {
                            md.n("Touch slop detector not initialized.");
                            return;
                        }
                        long jA = touchSlopDetector2.a(PointerEventKt.f(pointerInputChange2, true), fK, true);
                        if ((9223372034707292159L & jA) != 9205357640488583168L) {
                            boolean zN0 = n0(pointerInputChange2);
                            GestureConnection gestureConnectionB = GestureNodeKt.b(this);
                            boolean z2 = gestureConnectionB != null && gestureConnectionB.n0(pointerInputChange2);
                            if (zN0 || !z2) {
                                pointerInputChange2.a();
                                PointerInputChange pointerInputChange5 = awaitTouchSlop2.f4477a;
                                pointerInputChange5.getClass();
                                y2(pointerInputChange5, pointerInputChange2, jA);
                                x2(jA, pointerInputChange2);
                                long j5 = pointerInputChange2.f9328a;
                                DragDetectionState.Dragging dragging2 = this.B;
                                if (dragging2 == null) {
                                    dragging2 = new DragDetectionState.Dragging(0L, 1, null);
                                    this.B = dragging2;
                                }
                                dragging2.f4480a = j5;
                                this.E = dragging2;
                            } else {
                                awaitTouchSlop2.f4479c = true;
                            }
                        } else {
                            awaitTouchSlop2.f4479c = true;
                        }
                    }
                }
                if (pointerEventPass == PointerEventPass.Final && awaitTouchSlop2.f4479c) {
                    if (!pointerInputChange2.b()) {
                        awaitTouchSlop2.f4479c = false;
                        return;
                    }
                    PointerInputChange pointerInputChange6 = awaitTouchSlop2.f4477a;
                    if (pointerInputChange6 == null) {
                        md.n("AwaitTouchSlop.initialDown was not initialized");
                        return;
                    }
                    long j6 = awaitTouchSlop2.f4478b;
                    TouchSlopDetector touchSlopDetector3 = this.H;
                    if (touchSlopDetector3 != null) {
                        q2(pointerInputChange6, j6, touchSlopDetector3);
                        return;
                    } else {
                        md.n("AwaitTouchSlop.touchSlopDetector was not initialized");
                        return;
                    }
                }
                return;
            }
            if (dragDetectionState instanceof DragDetectionState.AwaitGesturePickup) {
                DragDetectionState.AwaitGesturePickup awaitGesturePickup = (DragDetectionState.AwaitGesturePickup) dragDetectionState;
                if (pointerEventPass != PointerEventPass.Final) {
                    return;
                }
                List list3 = pointerEvent.f9305a;
                List list4 = list3;
                int size4 = list4.size();
                for (int i5 = 0; i5 < size4; i5++) {
                    if (((PointerInputChange) list3.get(i5)).b()) {
                        z = false;
                        break;
                    }
                }
                int size5 = list4.size();
                for (int i6 = 0; i6 < size5; i6++) {
                    if (((PointerInputChange) list3.get(i6)).d) {
                        if (list3.isEmpty()) {
                            break;
                        }
                        if (z) {
                            long j7 = ((PointerInputChange) CollectionsKt.B(list3)).f9330c;
                            PointerInputChange pointerInputChange7 = awaitGesturePickup.f4475a;
                            pointerInputChange7.getClass();
                            long jE = Offset.e(j7, pointerInputChange7.f9330c);
                            PointerInputChange pointerInputChange8 = awaitGesturePickup.f4475a;
                            if (pointerInputChange8 != null) {
                                r2(this, pointerInputChange8, awaitGesturePickup.f4476b, jE, 8);
                                return;
                            } else {
                                md.n("AwaitGesturePickup.initialDown was not initialized.");
                                return;
                            }
                        }
                        return;
                    }
                }
                p2();
                return;
            }
            if (!(dragDetectionState instanceof DragDetectionState.Dragging)) {
                v40.g();
                return;
            }
            DragDetectionState.Dragging dragging3 = (DragDetectionState.Dragging) dragDetectionState;
            if (pointerEventPass != PointerEventPass.Main) {
                return;
            }
            long j8 = dragging3.f4480a;
            List list5 = pointerEvent.f9305a;
            int size6 = list5.size();
            int i7 = 0;
            while (true) {
                if (i7 >= size6) {
                    obj = null;
                    break;
                }
                Object obj6 = list5.get(i7);
                if (PointerId.a(((PointerInputChange) obj6).f9328a, j8)) {
                    obj = obj6;
                    break;
                }
                i7++;
            }
            PointerInputChange pointerInputChange9 = (PointerInputChange) obj;
            if (pointerInputChange9 == null) {
                return;
            }
            if (!PointerEventKt.d(pointerInputChange9)) {
                if (pointerInputChange9.b()) {
                    v2().b(DragEvent.DragCancelled.f4481a);
                    return;
                } else {
                    if (Offset.d(PointerEventKt.f(pointerInputChange9, true)) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        return;
                    }
                    x2(PointerEventKt.f(pointerInputChange9, false), pointerInputChange9);
                    pointerInputChange9.a();
                    return;
                }
            }
            List list6 = pointerEvent.f9305a;
            int size7 = list6.size();
            int i8 = 0;
            while (true) {
                if (i8 >= size7) {
                    obj2 = null;
                    break;
                }
                obj2 = list6.get(i8);
                if (((PointerInputChange) obj2).d) {
                    break;
                } else {
                    i8++;
                }
            }
            PointerInputChange pointerInputChange10 = (PointerInputChange) obj2;
            if (pointerInputChange10 != null) {
                dragging3.f4480a = pointerInputChange10.f9328a;
                return;
            }
            if (pointerInputChange9.b() || !PointerEventKt.d(pointerInputChange9)) {
                v2().b(DragEvent.DragCancelled.f4481a);
            } else {
                VelocityTracker velocityTrackerW2 = w2();
                Offset.f8806b.getClass();
                VelocityTrackerKt.a(velocityTrackerW2, pointerInputChange9, 0L);
                float f2 = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.u)).f();
                long jA2 = w2().a(VelocityKt.a(f2, f2));
                DefaultVelocityTracker defaultVelocityTracker = w2().f9403a;
                VelocityTracker1D velocityTracker1D = defaultVelocityTracker.f9398a;
                DataPointAtTime[] dataPointAtTimeArr = velocityTracker1D.d;
                ArraysKt.r(dataPointAtTimeArr, 0, dataPointAtTimeArr.length, null);
                velocityTracker1D.f9407e = 0;
                VelocityTracker1D velocityTracker1D2 = defaultVelocityTracker.f9399b;
                DataPointAtTime[] dataPointAtTimeArr2 = velocityTracker1D2.d;
                ArraysKt.r(dataPointAtTimeArr2, 0, dataPointAtTimeArr2.length, null);
                velocityTracker1D2.f9407e = 0;
                defaultVelocityTracker.f9400c = 0L;
                v2().b(new DragEvent.DragStopped(DraggableKt.c(jA2), false, null));
                this.z = false;
            }
            p2();
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void f1() {
        if (this.z) {
            p2();
            if (this.y) {
                v2().b(DragEvent.DragCancelled.f4481a);
            }
            this.F = null;
        }
        this.z = false;
    }

    @Override // androidx.compose.foundation.GestureConnection
    public final boolean n0(PointerInputChange pointerInputChange) {
        if (PointerEventKt.b(pointerInputChange)) {
            return this.t;
        }
        if (!PointerEventKt.d(pointerInputChange)) {
            if (this.H == null) {
                this.H = new TouchSlopDetector(this.r, 0L, 2, null);
            }
            float fG = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.u)).g();
            long jF = PointerEventKt.f(pointerInputChange, false);
            TouchSlopDetector touchSlopDetector = this.H;
            if (touchSlopDetector == null) {
                md.n("Touch slop detector not initialized.");
                return false;
            }
            long jA = touchSlopDetector.a(jF, fG, false);
            Offset.f8806b.getClass();
            if (!Offset.c(jA, Offset.d)) {
                long jF2 = Offset.f(touchSlopDetector.f4808b, jF);
                double dAtan2 = ((double) (((float) Math.atan2(Math.abs(Float.intBitsToFloat((int) (jF2 & BodyPartID.bodyIdMax))), Math.abs(Float.intBitsToFloat((int) (jF2 >> 32))))) * 180.0f)) / 3.141592653589793d;
                Orientation orientation = touchSlopDetector.f4807a;
                int i2 = orientation == null ? -1 : TouchSlopDetector.WhenMappings.f4809a[orientation.ordinal()];
                if (i2 == 1 ? dAtan2 < 30.0d : !(i2 != 2 || dAtan2 <= 30.0d)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void n2() {
        DragInteraction.Start start = this.x;
        if (start != null) {
            MutableInteractionSource mutableInteractionSource = this.u;
            if (mutableInteractionSource != null) {
                mutableInteractionSource.b(new DragInteraction.Cancel(start));
            }
            this.x = null;
        }
    }

    public abstract Object o2(Function2 function2, Continuation continuation);

    public final void p2() {
        DragDetectionState.AwaitDown awaitDown = this.A;
        if (awaitDown == null) {
            awaitDown = new DragDetectionState.AwaitDown(null, false, 3, null);
            this.A = awaitDown;
        }
        awaitDown.f4473a = DragDetectionState.AwaitDown.AwaitTouchSlop.NotInitialized;
        awaitDown.f4474b = false;
        this.E = awaitDown;
    }

    public final void q2(PointerInputChange pointerInputChange, long j2, TouchSlopDetector touchSlopDetector) {
        DragDetectionState.AwaitGesturePickup awaitGesturePickup = this.D;
        if (awaitGesturePickup == null) {
            DragDetectionState.AwaitGesturePickup awaitGesturePickup2 = new DragDetectionState.AwaitGesturePickup(null, 0L, null, 7, null);
            this.D = awaitGesturePickup2;
            awaitGesturePickup = awaitGesturePickup2;
        }
        awaitGesturePickup.f4475a = pointerInputChange;
        awaitGesturePickup.f4476b = j2;
        TouchSlopDetector.c(touchSlopDetector);
        this.E = awaitGesturePickup;
    }

    public final void s2(DragEvent dragEvent) {
        if ((dragEvent instanceof DragEvent.DragStarted) && !this.y) {
            this.y = true;
            A2();
        }
        v2().b(dragEvent);
    }

    public abstract void t2(long j2);

    public abstract void u2(DragEvent.DragStopped dragStopped);

    public final Channel v2() {
        BufferedChannel bufferedChannel = this.w;
        if (bufferedChannel != null) {
            return bufferedChannel;
        }
        md.n("Events channel not initialized.");
        return null;
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public final void w1() {
        IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector = this.I;
        if (indirectPointerInputDragCycleDetector != null) {
            indirectPointerInputDragCycleDetector.a();
            DragGestureNode dragGestureNode = indirectPointerInputDragCycleDetector.f4582a;
            if (dragGestureNode.y) {
                dragGestureNode.s2(DragEvent.DragCancelled.f4481a);
            }
            indirectPointerInputDragCycleDetector.g = null;
            OffsetSmoother offsetSmoother = indirectPointerInputDragCycleDetector.f4590k;
            offsetSmoother.f4649a = 0;
            offsetSmoother.f4650b.f3276b = 0;
        }
    }

    public final VelocityTracker w2() {
        VelocityTracker velocityTracker = this.F;
        if (velocityTracker != null) {
            return velocityTracker;
        }
        md.n("Velocity Tracker not initialized.");
        return null;
    }

    public final void x2(long j2, PointerInputChange pointerInputChange) {
        long jG = LayoutCoordinatesKt.g(DelegatableNodeKt.e(this.f8608b));
        long j3 = this.G;
        Offset.f8806b.getClass();
        if (!Offset.c(j3, Offset.d) && !Offset.c(jG, this.G)) {
            this.J = Offset.f(this.J, Offset.e(jG, this.G));
        }
        this.G = jG;
        VelocityTrackerKt.a(w2(), pointerInputChange, this.J);
        v2().b(new DragEvent.DragDelta(j2, false, null));
    }

    public final void y2(PointerInputChange pointerInputChange, PointerInputChange pointerInputChange2, long j2) {
        if (this.F == null) {
            this.F = new VelocityTracker();
        }
        VelocityTracker velocityTrackerW2 = w2();
        Offset.Companion companion = Offset.f8806b;
        companion.getClass();
        VelocityTrackerKt.a(velocityTrackerW2, pointerInputChange, 0L);
        long jE = Offset.e(pointerInputChange2.f9330c, j2);
        companion.getClass();
        this.J = 0L;
        if (((Boolean) this.s.invoke(new PointerType(pointerInputChange.f9334i))).booleanValue()) {
            if (!this.y) {
                if (this.w == null) {
                    this.w = ChannelKt.a(Integer.MAX_VALUE, 6, null);
                }
                A2();
            }
            this.G = LayoutCoordinatesKt.g(DelegatableNodeKt.e(this));
            v2().b(new DragEvent.DragStarted(jE, null));
        }
    }

    /* JADX INFO: renamed from: z2 */
    public abstract boolean getM();
}
