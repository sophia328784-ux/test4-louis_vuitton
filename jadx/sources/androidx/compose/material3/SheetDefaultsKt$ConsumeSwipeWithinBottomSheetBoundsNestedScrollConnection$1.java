package androidx.compose.material3;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.unit.Velocity;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/material3/SheetDefaultsKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SheetDefaultsKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1 implements NestedScrollConnection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SheetState f7203b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f7204c;
    public final /* synthetic */ Orientation d;

    public SheetDefaultsKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1(SheetState sheetState, Function1 function1, Orientation orientation) {
        this.f7203b = sheetState;
        this.f7204c = function1;
        this.d = orientation;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final long A0(int i2, long j2, long j3) {
        NestedScrollSource.f9260a.getClass();
        if (i2 == NestedScrollSource.f9261b) {
            return a(this.f7203b.f7211e.d(Float.intBitsToFloat((int) (this.d == Orientation.Horizontal ? j3 >> 32 : BodyPartID.bodyIdMax & j3))));
        }
        Offset.f8806b.getClass();
        return 0L;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final Object P(long j2, long j3, Continuation continuation) {
        this.f7204c.invoke(new Float(this.d == Orientation.Horizontal ? Velocity.b(j3) : Velocity.c(j3)));
        return new Velocity(j3);
    }

    public final long a(float f2) {
        Orientation orientation = Orientation.Horizontal;
        Orientation orientation2 = this.d;
        float f3 = orientation2 == orientation ? f2 : 0.0f;
        if (orientation2 != Orientation.Vertical) {
            f2 = 0.0f;
        }
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f2)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(f3)) << 32);
        Offset.Companion companion = Offset.f8806b;
        return jFloatToRawIntBits;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final long l0(int i2, long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (this.d == Orientation.Horizontal ? j2 >> 32 : j2 & BodyPartID.bodyIdMax));
        if (fIntBitsToFloat < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            NestedScrollSource.f9260a.getClass();
            if (i2 == NestedScrollSource.f9261b) {
                return a(this.f7203b.f7211e.d(fIntBitsToFloat));
            }
        }
        Offset.f8806b.getClass();
        return 0L;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final Object y1(long j2, Continuation continuation) {
        float fB = this.d == Orientation.Horizontal ? Velocity.b(j2) : Velocity.c(j2);
        SheetState sheetState = this.f7203b;
        float fG = sheetState.f7211e.g();
        float fE = sheetState.f7211e.e().e();
        if (fB >= Call.Parameters.DEFAULT_CAMERA_ZOOM || fG <= fE) {
            Velocity.f11029b.getClass();
            j2 = 0;
        } else {
            this.f7204c.invoke(new Float(fB));
        }
        return new Velocity(j2);
    }
}
