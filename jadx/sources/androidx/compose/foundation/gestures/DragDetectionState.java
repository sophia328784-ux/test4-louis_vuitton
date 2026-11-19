package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerInputChange;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b2\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/gestures/DragDetectionState;", "", "AwaitDown", "AwaitTouchSlop", "AwaitGesturePickup", "Dragging", "Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;", "Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;", "Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;", "Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
abstract class DragDetectionState {
    public DragDetectionState(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;", "Landroidx/compose/foundation/gestures/DragDetectionState;", "Landroidx/compose/ui/input/pointer/PointerId;", "pointerId", "<init>", "(JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Dragging extends DragDetectionState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f4480a;

        public Dragging(long j2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? Long.MAX_VALUE : j2, null);
        }

        public Dragging(long j2, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            this.f4480a = j2;
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\bB\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;", "Landroidx/compose/foundation/gestures/DragDetectionState;", "Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;", "awaitTouchSlop", "", "consumedOnInitial", "<init>", "(Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;Z)V", "AwaitTouchSlop", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AwaitDown extends DragDetectionState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public AwaitTouchSlop f4473a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f4474b;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;", "", "Yes", "No", "NotInitialized", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
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
            this.f4473a = awaitTouchSlop;
            this.f4474b = z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public AwaitDown() {
            this(null, false, 3, 0 == true ? 1 : 0);
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;", "Landroidx/compose/foundation/gestures/DragDetectionState;", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "initialDown", "Landroidx/compose/ui/input/pointer/PointerId;", "pointerId", "Landroidx/compose/foundation/gestures/TouchSlopDetector;", "touchSlopDetector", "<init>", "(Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AwaitGesturePickup extends DragDetectionState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public PointerInputChange f4475a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f4476b;

        public AwaitGesturePickup(PointerInputChange pointerInputChange, long j2, TouchSlopDetector touchSlopDetector, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : pointerInputChange, (i2 & 2) != 0 ? Long.MAX_VALUE : j2, (i2 & 4) != 0 ? null : touchSlopDetector, null);
        }

        public AwaitGesturePickup(PointerInputChange pointerInputChange, long j2, TouchSlopDetector touchSlopDetector, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            this.f4475a = pointerInputChange;
            this.f4476b = j2;
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;", "Landroidx/compose/foundation/gestures/DragDetectionState;", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "initialDown", "Landroidx/compose/ui/input/pointer/PointerId;", "pointerId", "", "verifyConsumptionInFinalPass", "<init>", "(Landroidx/compose/ui/input/pointer/PointerInputChange;JZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AwaitTouchSlop extends DragDetectionState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public PointerInputChange f4477a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f4478b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f4479c;

        public AwaitTouchSlop(PointerInputChange pointerInputChange, long j2, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : pointerInputChange, (i2 & 2) != 0 ? Long.MAX_VALUE : j2, (i2 & 4) != 0 ? false : z, null);
        }

        public AwaitTouchSlop(PointerInputChange pointerInputChange, long j2, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            this.f4477a = pointerInputChange;
            this.f4478b = j2;
            this.f4479c = z;
        }
    }
}
