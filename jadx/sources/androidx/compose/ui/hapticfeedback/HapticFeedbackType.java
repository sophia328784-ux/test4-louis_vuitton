package androidx.compose.ui.hapticfeedback;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;", "", "Companion", "value", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class HapticFeedbackType {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f9193b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f9194a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof HapticFeedbackType) {
            return this.f9194a == ((HapticFeedbackType) obj).f9194a;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f9194a);
    }

    public final String toString() {
        f9193b.getClass();
        int i2 = PlatformHapticFeedbackType.f9196a;
        int i3 = this.f9194a;
        if (i3 == i2) {
            return "Confirm";
        }
        if (i3 == PlatformHapticFeedbackType.f9197b) {
            return "ContextClick";
        }
        if (i3 == PlatformHapticFeedbackType.f9198c) {
            return "GestureEnd";
        }
        if (i3 == PlatformHapticFeedbackType.d) {
            return "GestureThresholdActivate";
        }
        if (i3 == PlatformHapticFeedbackType.f9199e) {
            return "KeyboardTap";
        }
        if (i3 == 0) {
            return "LongPress";
        }
        if (i3 == PlatformHapticFeedbackType.f9200f) {
            return "Reject";
        }
        if (i3 == PlatformHapticFeedbackType.g) {
            return "SegmentFrequentTick";
        }
        if (i3 == PlatformHapticFeedbackType.f9201h) {
            return "SegmentTick";
        }
        if (i3 == PlatformHapticFeedbackType.f9202i) {
            return "TextHandleMove";
        }
        if (i3 == PlatformHapticFeedbackType.f9203j) {
            return "ToggleOff";
        }
        if (i3 == PlatformHapticFeedbackType.f9204k) {
            return "ToggleOn";
        }
        return i3 == PlatformHapticFeedbackType.l ? "VirtualKey" : "Invalid";
    }
}
