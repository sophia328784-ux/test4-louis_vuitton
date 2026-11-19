package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextRange;
import defpackage.z21;
import defpackage.zt0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u0001:\u0001\tB\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\t\b\u0016¢\u0006\u0004\b\u0006\u0010\b¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/text/TextFieldScrollerPosition;", "", "Landroidx/compose/foundation/gestures/Orientation;", "initialOrientation", "", "initial", "<init>", "(Landroidx/compose/foundation/gestures/Orientation;F)V", "()V", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextFieldScrollerPosition {
    public static final Companion g = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final SaverKt$Saver$1 f5999h = ListSaverKt.a(new zt0(29), new z21(6));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableFloatState f6000a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableFloatState f6001b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableIntState f6002c;
    public Rect d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f6003e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableState f6004f;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public TextFieldScrollerPosition(Orientation orientation, float f2) {
        this.f6000a = PrimitiveSnapshotStateKt.a(f2);
        this.f6001b = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.f6002c = SnapshotIntStateKt.a(0);
        Rect.f8809e.getClass();
        this.d = Rect.f8810f;
        TextRange.f10564b.getClass();
        this.f6003e = TextRange.f10565c;
        this.f6004f = SnapshotStateKt.f(orientation, SnapshotStateKt.n());
    }

    public final void a(Orientation orientation, Rect rect, int i2, int i3) {
        float f2;
        float f3 = i3 - i2;
        ((SnapshotMutableFloatStateImpl) this.f6001b).w(f3);
        float f4 = rect.f8811a;
        float f5 = rect.f8812b;
        Rect rect2 = this.d;
        float f6 = rect2.f8811a;
        MutableFloatState mutableFloatState = this.f6000a;
        if (f4 != f6 || f5 != rect2.f8812b) {
            boolean z = orientation == Orientation.Vertical;
            if (z) {
                f4 = f5;
            }
            float f7 = z ? rect.d : rect.f8813c;
            SnapshotMutableFloatStateImpl snapshotMutableFloatStateImpl = (SnapshotMutableFloatStateImpl) mutableFloatState;
            float fA = snapshotMutableFloatStateImpl.a();
            float f8 = i2;
            float f9 = fA + f8;
            if (f7 <= f9 && (f4 >= fA || f7 - f4 <= f8)) {
                f2 = (f4 >= fA || f7 - f4 > f8) ? 0.0f : f4 - fA;
            } else {
                f2 = f7 - f9;
            }
            ((SnapshotMutableFloatStateImpl) mutableFloatState).w(snapshotMutableFloatStateImpl.a() + f2);
            this.d = rect;
        }
        ((SnapshotMutableFloatStateImpl) mutableFloatState).w(RangesKt.c(((SnapshotMutableFloatStateImpl) mutableFloatState).a(), Call.Parameters.DEFAULT_CAMERA_ZOOM, f3));
        ((SnapshotMutableIntStateImpl) this.f6002c).i(i2);
    }

    public /* synthetic */ TextFieldScrollerPosition(Orientation orientation, float f2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(orientation, (i2 & 2) != 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f2);
    }

    public TextFieldScrollerPosition() {
        this(Orientation.Vertical, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2, null);
    }
}
