package androidx.compose.foundation.gestures;

import androidx.collection.MutableLongList;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.input.pointer.util.VelocityTracker;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import defpackage.az;
import defpackage.md;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;", "", "Landroidx/compose/foundation/gestures/DragGestureNode;", "node", "<init>", "(Landroidx/compose/foundation/gestures/DragGestureNode;)V", "DragDetectionState", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class IndirectPointerInputDragCycleDetector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DragGestureNode f4582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public DragDetectionState.AwaitDown f4583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DragDetectionState.Dragging f4584c;
    public DragDetectionState.AwaitTouchSlop d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public DragDetectionState.AwaitGesturePickup f4585e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public DragDetectionState f4586f;
    public VelocityTracker g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f4587h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TouchSlopDetector f4588i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final IndirectPointerInputEventSmoother f4589j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final OffsetSmoother f4590k;
    public long l;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4599a;

        static {
            int[] iArr = new int[DragDetectionState.AwaitDown.AwaitTouchSlop.values().length];
            try {
                iArr[DragDetectionState.AwaitDown.AwaitTouchSlop.NotInitialized.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f4599a = iArr;
        }
    }

    public IndirectPointerInputDragCycleDetector(DragGestureNode dragGestureNode) {
        this.f4582a = dragGestureNode;
        Offset.f8806b.getClass();
        this.f4587h = Offset.d;
        this.f4589j = new IndirectPointerInputEventSmoother();
        this.f4590k = new OffsetSmoother();
        this.l = 0L;
    }

    public static void c(IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector, IndirectPointerInputChange indirectPointerInputChange, long j2, long j3, int i2) {
        if ((i2 & 4) != 0) {
            Offset.f8806b.getClass();
            j3 = 0;
        }
        DragGestureNode dragGestureNode = indirectPointerInputDragCycleDetector.f4582a;
        DragDetectionState.AwaitTouchSlop awaitTouchSlop = indirectPointerInputDragCycleDetector.d;
        if (awaitTouchSlop == null) {
            DragDetectionState.AwaitTouchSlop awaitTouchSlop2 = new DragDetectionState.AwaitTouchSlop(null, 0L, false, 7, null);
            indirectPointerInputDragCycleDetector.d = awaitTouchSlop2;
            awaitTouchSlop = awaitTouchSlop2;
        }
        awaitTouchSlop.f4595a = indirectPointerInputChange;
        awaitTouchSlop.f4596b = j2;
        TouchSlopDetector touchSlopDetector = indirectPointerInputDragCycleDetector.f4588i;
        if (touchSlopDetector == null) {
            indirectPointerInputDragCycleDetector.f4588i = new TouchSlopDetector(dragGestureNode.r, 0L, 2, null);
        } else {
            touchSlopDetector.f4807a = dragGestureNode.r;
            touchSlopDetector.f4808b = j3;
        }
        awaitTouchSlop.f4597c = false;
        indirectPointerInputDragCycleDetector.f4586f = awaitTouchSlop;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a() {
        DragDetectionState.AwaitDown awaitDown = this.f4583b;
        boolean z = false;
        if (awaitDown == null) {
            awaitDown = new DragDetectionState.AwaitDown(null, z, 3, 0 == true ? 1 : 0);
            this.f4583b = awaitDown;
        }
        awaitDown.f4591a = DragDetectionState.AwaitDown.AwaitTouchSlop.NotInitialized;
        awaitDown.f4592b = false;
        this.f4586f = awaitDown;
    }

    public final void b(IndirectPointerInputChange indirectPointerInputChange, long j2, TouchSlopDetector touchSlopDetector) {
        DragDetectionState.AwaitGesturePickup awaitGesturePickup = this.f4585e;
        if (awaitGesturePickup == null) {
            DragDetectionState.AwaitGesturePickup awaitGesturePickup2 = new DragDetectionState.AwaitGesturePickup(null, 0L, null, 7, null);
            this.f4585e = awaitGesturePickup2;
            awaitGesturePickup = awaitGesturePickup2;
        }
        awaitGesturePickup.f4593a = indirectPointerInputChange;
        awaitGesturePickup.f4594b = j2;
        TouchSlopDetector.c(touchSlopDetector);
        this.f4586f = awaitGesturePickup;
    }

    public final VelocityTracker d() {
        VelocityTracker velocityTracker = this.g;
        if (velocityTracker != null) {
            return velocityTracker;
        }
        md.n("Velocity Tracker not initialized.");
        return null;
    }

    public final void e(IndirectPointerInputChange indirectPointerInputChange, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, long j2) {
        DragGestureNode dragGestureNode = this.f4582a;
        long jG = LayoutCoordinatesKt.g(DelegatableNodeKt.e(dragGestureNode));
        long j3 = this.f4587h;
        Offset.f8806b.getClass();
        if (!Offset.c(j3, Offset.d) && !Offset.c(jG, this.f4587h)) {
            this.l = Offset.f(this.l, Offset.e(jG, this.f4587h));
        }
        this.f4587h = jG;
        Orientation orientation = dragGestureNode.r;
        orientation.getClass();
        Function3 function3 = DraggableKt.f4565a;
        if (Math.abs(Float.intBitsToFloat((int) (orientation == Orientation.Vertical ? j2 & BodyPartID.bodyIdMax : j2 >> 32))) > 2.0f) {
            IndirectPointerInputDragCycleDetectorKt.a(d(), indirectPointerInputChange, dragGestureNode.r, indirectPointerEventPrimaryDirectionalMotionAxis, this.f4589j, this.l);
            OffsetSmoother offsetSmoother = this.f4590k;
            MutableLongList mutableLongList = offsetSmoother.f4650b;
            int i2 = mutableLongList.f3276b;
            if (i2 == 3) {
                int i3 = offsetSmoother.f4649a;
                offsetSmoother.f4649a = i3 + 1;
                if (i3 < 0 || i3 >= i2) {
                    az.v("Index must be between 0 and size");
                    return;
                } else {
                    long[] jArr = mutableLongList.f3275a;
                    long j4 = jArr[i3];
                    jArr[i3] = j2;
                }
            } else {
                mutableLongList.a(j2);
            }
            if (offsetSmoother.f4649a == 3) {
                offsetSmoother.f4649a = 0;
            }
            long[] jArr2 = mutableLongList.f3275a;
            int i4 = mutableLongList.f3276b;
            float fIntBitsToFloat = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            float fIntBitsToFloat2 = 0.0f;
            for (int i5 = 0; i5 < i4; i5++) {
                long j5 = jArr2[i5];
                Offset.Companion companion = Offset.f8806b;
                fIntBitsToFloat2 += Float.intBitsToFloat((int) (j5 >> 32));
            }
            int i6 = mutableLongList.f3276b;
            float f2 = fIntBitsToFloat2 / i6;
            long[] jArr3 = mutableLongList.f3275a;
            for (int i7 = 0; i7 < i6; i7++) {
                long j6 = jArr3[i7];
                Offset.Companion companion2 = Offset.f8806b;
                fIntBitsToFloat += Float.intBitsToFloat((int) (j6 & BodyPartID.bodyIdMax));
            }
            dragGestureNode.s2(new DragEvent.DragDelta((((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat / mutableLongList.f3276b)) & BodyPartID.bodyIdMax), true, null));
        }
    }

    public final void f(IndirectPointerInputChange indirectPointerInputChange, IndirectPointerInputChange indirectPointerInputChange2, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, long j2) {
        if (this.g == null) {
            this.g = new VelocityTracker();
        }
        Offset.f8806b.getClass();
        this.l = 0L;
        VelocityTracker velocityTrackerD = d();
        DragGestureNode dragGestureNode = this.f4582a;
        IndirectPointerInputDragCycleDetectorKt.a(velocityTrackerD, indirectPointerInputChange, dragGestureNode.r, indirectPointerEventPrimaryDirectionalMotionAxis, this.f4589j, this.l);
        long jE = Offset.e(IndirectPointerInputDragCycleDetectorKt.e(indirectPointerInputChange2, dragGestureNode.r, indirectPointerEventPrimaryDirectionalMotionAxis), j2);
        Function1 function1 = dragGestureNode.s;
        PointerType.f9367b.getClass();
        if (((Boolean) function1.invoke(new PointerType(PointerType.f9368c))).booleanValue()) {
            this.f4587h = LayoutCoordinatesKt.g(DelegatableNodeKt.e(dragGestureNode));
            dragGestureNode.s2(new DragEvent.DragStarted(jE, null));
        }
        OffsetSmoother offsetSmoother = this.f4590k;
        offsetSmoother.f4649a = 0;
        offsetSmoother.f4650b.f3276b = 0;
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;", "", "AwaitDown", "AwaitTouchSlop", "AwaitGesturePickup", "Dragging", "Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;", "Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;", "Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;", "Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static abstract class DragDetectionState {
        public DragDetectionState(DefaultConstructorMarker defaultConstructorMarker) {
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;", "Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;", "Landroidx/compose/ui/input/pointer/PointerId;", "pointerId", "<init>", "(JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Dragging extends DragDetectionState {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public long f4598a;

            public Dragging(long j2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this((i2 & 1) != 0 ? Long.MAX_VALUE : j2, null);
            }

            public Dragging(long j2, DefaultConstructorMarker defaultConstructorMarker) {
                super(null);
                this.f4598a = j2;
            }
        }

        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\bB\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;", "Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;", "Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;", "awaitTouchSlop", "", "consumedOnInitial", "<init>", "(Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;Z)V", "AwaitTouchSlop", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class AwaitDown extends DragDetectionState {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public AwaitTouchSlop f4591a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f4592b;

            /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
            /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;", "", "Yes", "No", "NotInitialized", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
            public static final class AwaitTouchSlop {
                private static final /* synthetic */ EnumEntries $ENTRIES;
                private static final /* synthetic */ AwaitTouchSlop[] $VALUES;
                public static final AwaitTouchSlop No;
                public static final AwaitTouchSlop NotInitialized;
                public static final AwaitTouchSlop Yes;

                static {
                    AwaitTouchSlop awaitTouchSlop = new AwaitTouchSlop("Yes", 0);
                    Yes = awaitTouchSlop;
                    AwaitTouchSlop awaitTouchSlop2 = new AwaitTouchSlop("No", 1);
                    No = awaitTouchSlop2;
                    AwaitTouchSlop awaitTouchSlop3 = new AwaitTouchSlop("NotInitialized", 2);
                    NotInitialized = awaitTouchSlop3;
                    AwaitTouchSlop[] awaitTouchSlopArr = {awaitTouchSlop, awaitTouchSlop2, awaitTouchSlop3};
                    $VALUES = awaitTouchSlopArr;
                    $ENTRIES = EnumEntriesKt.a(awaitTouchSlopArr);
                }

                public static AwaitTouchSlop valueOf(String str) {
                    return (AwaitTouchSlop) Enum.valueOf(AwaitTouchSlop.class, str);
                }

                public static AwaitTouchSlop[] values() {
                    return (AwaitTouchSlop[]) $VALUES.clone();
                }
            }

            public /* synthetic */ AwaitDown(AwaitTouchSlop awaitTouchSlop, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this((i2 & 1) != 0 ? AwaitTouchSlop.NotInitialized : awaitTouchSlop, (i2 & 2) != 0 ? false : z);
            }

            public AwaitDown(AwaitTouchSlop awaitTouchSlop, boolean z) {
                super(null);
                this.f4591a = awaitTouchSlop;
                this.f4592b = z;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public AwaitDown() {
                this(null, false, 3, 0 == true ? 1 : 0);
            }
        }

        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;", "Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;", "Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;", "initialDown", "Landroidx/compose/ui/input/pointer/PointerId;", "pointerId", "Landroidx/compose/foundation/gestures/TouchSlopDetector;", "touchSlopDetector", "<init>", "(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class AwaitGesturePickup extends DragDetectionState {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IndirectPointerInputChange f4593a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public long f4594b;

            public AwaitGesturePickup(IndirectPointerInputChange indirectPointerInputChange, long j2, TouchSlopDetector touchSlopDetector, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this((i2 & 1) != 0 ? null : indirectPointerInputChange, (i2 & 2) != 0 ? Long.MAX_VALUE : j2, (i2 & 4) != 0 ? null : touchSlopDetector, null);
            }

            public AwaitGesturePickup(IndirectPointerInputChange indirectPointerInputChange, long j2, TouchSlopDetector touchSlopDetector, DefaultConstructorMarker defaultConstructorMarker) {
                super(null);
                this.f4593a = indirectPointerInputChange;
                this.f4594b = j2;
            }
        }

        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;", "Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;", "Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;", "initialDown", "Landroidx/compose/ui/input/pointer/PointerId;", "pointerId", "", "verifyConsumptionInFinalPass", "<init>", "(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class AwaitTouchSlop extends DragDetectionState {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IndirectPointerInputChange f4595a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public long f4596b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f4597c;

            public AwaitTouchSlop(IndirectPointerInputChange indirectPointerInputChange, long j2, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this((i2 & 1) != 0 ? null : indirectPointerInputChange, (i2 & 2) != 0 ? Long.MAX_VALUE : j2, (i2 & 4) != 0 ? false : z, null);
            }

            public AwaitTouchSlop(IndirectPointerInputChange indirectPointerInputChange, long j2, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
                super(null);
                this.f4595a = indirectPointerInputChange;
                this.f4596b = j2;
                this.f4597c = z;
            }
        }
    }
}
