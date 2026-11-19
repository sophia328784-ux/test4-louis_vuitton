package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerInputChange;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b1\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/gestures/LongPressResult;", "", "Success", "Released", "Canceled", "Landroidx/compose/foundation/gestures/LongPressResult$Canceled;", "Landroidx/compose/foundation/gestures/LongPressResult$Released;", "Landroidx/compose/foundation/gestures/LongPressResult$Success;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class LongPressResult {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/gestures/LongPressResult$Canceled;", "Landroidx/compose/foundation/gestures/LongPressResult;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Canceled extends LongPressResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Canceled f4603a = new Canceled(null);
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/gestures/LongPressResult$Released;", "Landroidx/compose/foundation/gestures/LongPressResult;", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "finalUpChange", "<init>", "(Landroidx/compose/ui/input/pointer/PointerInputChange;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Released extends LongPressResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PointerInputChange f4604a;

        public Released(PointerInputChange pointerInputChange) {
            super(null);
            this.f4604a = pointerInputChange;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/gestures/LongPressResult$Success;", "Landroidx/compose/foundation/gestures/LongPressResult;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Success extends LongPressResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Success f4605a = new Success(null);
    }

    public LongPressResult(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
