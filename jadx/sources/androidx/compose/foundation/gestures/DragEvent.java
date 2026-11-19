package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b1\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/gestures/DragEvent;", "", "DragStarted", "DragStopped", "DragCancelled", "DragDelta", "Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;", "Landroidx/compose/foundation/gestures/DragEvent$DragDelta;", "Landroidx/compose/foundation/gestures/DragEvent$DragStarted;", "Landroidx/compose/foundation/gestures/DragEvent$DragStopped;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class DragEvent {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;", "Landroidx/compose/foundation/gestures/DragEvent;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class DragCancelled extends DragEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final DragCancelled f4481a = new DragCancelled(null);
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/gestures/DragEvent$DragDelta;", "Landroidx/compose/foundation/gestures/DragEvent;", "Landroidx/compose/ui/geometry/Offset;", "delta", "", "isIndirectPointerEvent", "<init>", "(JZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class DragDelta extends DragEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f4482a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f4483b;

        public DragDelta(long j2, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            this.f4482a = j2;
            this.f4483b = z;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/gestures/DragEvent$DragStarted;", "Landroidx/compose/foundation/gestures/DragEvent;", "Landroidx/compose/ui/geometry/Offset;", "startPoint", "<init>", "(JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class DragStarted extends DragEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f4484a;

        public DragStarted(long j2, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            this.f4484a = j2;
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/gestures/DragEvent$DragStopped;", "Landroidx/compose/foundation/gestures/DragEvent;", "Landroidx/compose/ui/unit/Velocity;", "velocity", "", "isIndirectPointerEvent", "<init>", "(JZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class DragStopped extends DragEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f4485a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f4486b;

        public DragStopped(long j2, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            this.f4485a = j2;
            this.f4486b = z;
        }
    }

    public DragEvent(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
