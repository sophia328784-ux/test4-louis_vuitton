package androidx.compose.material3;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.gestures.DragScope;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.util.MathHelpersKt;
import defpackage.hv0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScopeKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\rB=\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0005\u001a\u00020\u0004\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Landroidx/compose/material3/SliderState;", "Landroidx/compose/foundation/gestures/DraggableState;", "", "value", "", "steps", "Lkotlin/Function0;", "", "onValueChangeFinished", "Lkotlin/ranges/ClosedFloatingPointRange;", "valueRange", "<init>", "(FILkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;)V", "Companion", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SliderState implements DraggableState {
    public static final int t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f7262a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Function0 f7263b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ClosedFloatingPointRange f7264c;
    public final MutableFloatState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Function1 f7265e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f7266f;
    public final float[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableIntState f7267h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableIntState f7268i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f7269j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableIntState f7270k;
    public final MutableIntState l;
    public final Orientation m;
    public final MutableState n;
    public final hv0 o;
    public final MutableFloatState p;
    public final MutableFloatState q;
    public final SliderState$dragScope$1 r;
    public final MutatorMutex s;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/SliderState$Companion;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        t = 8;
    }

    /* JADX WARN: Type inference failed for: r6v8, types: [androidx.compose.material3.SliderState$dragScope$1] */
    public SliderState(float f2, int i2, Function0<Unit> function0, ClosedFloatingPointRange<Float> closedFloatingPointRange) {
        float[] fArr;
        this.f7262a = i2;
        this.f7263b = function0;
        this.f7264c = closedFloatingPointRange;
        this.d = PrimitiveSnapshotStateKt.a(f2);
        this.f7266f = true;
        float f3 = SliderKt.f7242a;
        if (i2 == 0) {
            fArr = new float[0];
        } else {
            int i3 = i2 + 2;
            float[] fArr2 = new float[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                fArr2[i4] = i4 / (i2 + 1);
            }
            fArr = fArr2;
        }
        this.g = fArr;
        this.f7267h = SnapshotIntStateKt.a(0);
        this.f7268i = SnapshotIntStateKt.a(0);
        this.f7270k = SnapshotIntStateKt.a(0);
        this.l = SnapshotIntStateKt.a(0);
        this.m = Orientation.Horizontal;
        this.n = SnapshotStateKt.g(Boolean.FALSE);
        this.o = new hv0(this, 6);
        ClosedFloatingPointRange closedFloatingPointRange2 = this.f7264c;
        float fFloatValue = closedFloatingPointRange2.i().floatValue();
        float fFloatValue2 = closedFloatingPointRange2.f().floatValue() - fFloatValue;
        this.p = PrimitiveSnapshotStateKt.a(MathHelpersKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, RangesKt.c(fFloatValue2 == Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0.0f : (f2 - fFloatValue) / fFloatValue2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f)));
        this.q = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.r = new DragScope() { // from class: androidx.compose.material3.SliderState$dragScope$1
            @Override // androidx.compose.foundation.gestures.DragScope
            public final void a(float f4) {
                this.f7274a.b(f4);
            }
        };
        this.s = new MutatorMutex();
    }

    @Override // androidx.compose.foundation.gestures.DraggableState
    public final Object a(MutatePriority mutatePriority, Function2 function2, Continuation continuation) {
        Object objD = CoroutineScopeKt.d(new SliderState$drag$2(this, mutatePriority, function2, null), continuation);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : Unit.f71739a;
    }

    public final void b(float f2) {
        float fMax;
        float fMin;
        if (this.m == Orientation.Vertical) {
            float f3 = ((SnapshotMutableIntStateImpl) this.f7268i).f();
            SnapshotMutableIntStateImpl snapshotMutableIntStateImpl = (SnapshotMutableIntStateImpl) this.l;
            fMax = Math.max(f3 - (snapshotMutableIntStateImpl.f() / 2.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM);
            fMin = Math.min(snapshotMutableIntStateImpl.f() / 2.0f, fMax);
        } else {
            float f4 = ((SnapshotMutableIntStateImpl) this.f7267h).f();
            SnapshotMutableIntStateImpl snapshotMutableIntStateImpl2 = (SnapshotMutableIntStateImpl) this.f7270k;
            fMax = Math.max(f4 - (snapshotMutableIntStateImpl2.f() / 2.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM);
            fMin = Math.min(snapshotMutableIntStateImpl2.f() / 2.0f, fMax);
        }
        SnapshotMutableFloatStateImpl snapshotMutableFloatStateImpl = (SnapshotMutableFloatStateImpl) this.p;
        float fA = snapshotMutableFloatStateImpl.a() + f2;
        MutableFloatState mutableFloatState = this.q;
        snapshotMutableFloatStateImpl.w(((SnapshotMutableFloatStateImpl) mutableFloatState).a() + fA);
        ((SnapshotMutableFloatStateImpl) mutableFloatState).w(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        float fD = SliderKt.d(snapshotMutableFloatStateImpl.a(), this.g, fMin, fMax);
        ClosedFloatingPointRange closedFloatingPointRange = this.f7264c;
        float f5 = fMax - fMin;
        float fB = MathHelpersKt.b(closedFloatingPointRange.i().floatValue(), closedFloatingPointRange.f().floatValue(), RangesKt.c(f5 == Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0.0f : (fD - fMin) / f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f));
        if (fB == d()) {
            return;
        }
        Function1 function1 = this.f7265e;
        if (function1 != null) {
            function1.invoke(Float.valueOf(fB));
        } else {
            e(fB);
        }
    }

    public final float c() {
        ClosedFloatingPointRange closedFloatingPointRange = this.f7264c;
        float fFloatValue = closedFloatingPointRange.i().floatValue();
        float fFloatValue2 = closedFloatingPointRange.f().floatValue();
        float fC = RangesKt.c(d(), closedFloatingPointRange.i().floatValue(), closedFloatingPointRange.f().floatValue());
        float f2 = SliderKt.f7242a;
        float f3 = fFloatValue2 - fFloatValue;
        return RangesKt.c(f3 == Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0.0f : (fC - fFloatValue) / f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
    }

    public final float d() {
        return ((SnapshotMutableFloatStateImpl) this.d).a();
    }

    public final void e(float f2) {
        if (this.f7266f) {
            ClosedFloatingPointRange closedFloatingPointRange = this.f7264c;
            f2 = SliderKt.d(RangesKt.c(f2, closedFloatingPointRange.i().floatValue(), closedFloatingPointRange.f().floatValue()), this.g, closedFloatingPointRange.i().floatValue(), closedFloatingPointRange.f().floatValue());
        }
        ((SnapshotMutableFloatStateImpl) this.d).w(f2);
    }

    public SliderState() {
        this(Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, null, 15, null);
    }

    public /* synthetic */ SliderState(float f2, int i2, Function0 function0, ClosedFloatingPointRange closedFloatingPointRange, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0.0f : f2, (i3 & 2) != 0 ? 0 : i2, (i3 & 4) != 0 ? null : function0, (i3 & 8) != 0 ? RangesKt.h(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f) : closedFloatingPointRange);
    }
}
