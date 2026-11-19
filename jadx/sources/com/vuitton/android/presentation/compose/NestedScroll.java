package com.vuitton.android.presentation.compose;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Velocity;
import defpackage.dd0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018\u00002\u00020\u0001B5\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/compose/NestedScroll;", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "", "scrollOffset", "Lkotlin/Function1;", "", "", "onScrollUpLimitReached", "Lkotlin/Function0;", "onScrollStopped", "<init>", "(FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public class NestedScroll implements NestedScrollConnection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f50929b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f50930c;
    public final Function0 d;

    public /* synthetic */ NestedScroll(float f2, Function1 function1, Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f2, function1, (i2 & 4) != 0 ? new dd0(25) : function0);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final Object P(long j2, long j3, Continuation continuation) {
        if (Math.abs(Velocity.c(j2)) > Math.abs(Velocity.b(j2))) {
            this.d.mo47invoke();
        }
        return super.P(j2, j3, continuation);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final long l0(int i2, long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
        int i3 = (int) (j2 & BodyPartID.bodyIdMax);
        if (Math.abs(Float.intBitsToFloat(i3)) <= Math.abs(fIntBitsToFloat)) {
            Offset.f8806b.getClass();
            return 0L;
        }
        float fIntBitsToFloat2 = this.f50929b + Float.intBitsToFloat(i3);
        this.f50929b = fIntBitsToFloat2;
        float fC = RangesKt.c(fIntBitsToFloat2, -30.0f, 30.0f);
        this.f50929b = fC;
        Function1 function1 = this.f50930c;
        if (fC == 30.0f) {
            function1.invoke(Boolean.TRUE);
        } else if (fC == -30.0f) {
            function1.invoke(Boolean.FALSE);
        }
        Offset.f8806b.getClass();
        return 0L;
    }

    public NestedScroll(float f2, Function1<? super Boolean, Unit> function1, Function0<Unit> function0) {
        function1.getClass();
        function0.getClass();
        this.f50929b = f2;
        this.f50930c = function1;
        this.d = function0;
    }
}
