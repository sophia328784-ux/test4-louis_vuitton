package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScopeKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/gestures/DefaultScrollableState;", "Landroidx/compose/foundation/gestures/ScrollableState;", "Lkotlin/Function1;", "", "onDelta", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class DefaultScrollableState implements ScrollableState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f4459a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DefaultScrollableState$scrollScope$1 f4460b = new ScrollScope() { // from class: androidx.compose.foundation.gestures.DefaultScrollableState$scrollScope$1
        @Override // androidx.compose.foundation.gestures.ScrollScope
        public final float e(float f2) {
            if (Float.isNaN(f2)) {
                return Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            DefaultScrollableState defaultScrollableState = this.f4470a;
            float fFloatValue = ((Number) defaultScrollableState.f4459a.invoke(Float.valueOf(f2))).floatValue();
            ((SnapshotMutableStateImpl) defaultScrollableState.f4462e).setValue(Boolean.valueOf(fFloatValue > Call.Parameters.DEFAULT_CAMERA_ZOOM));
            ((SnapshotMutableStateImpl) defaultScrollableState.f4463f).setValue(Boolean.valueOf(fFloatValue < Call.Parameters.DEFAULT_CAMERA_ZOOM));
            return fFloatValue;
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutatorMutex f4461c = new MutatorMutex();
    public final MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableState f4462e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableState f4463f;

    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.compose.foundation.gestures.DefaultScrollableState$scrollScope$1] */
    public DefaultScrollableState(Function1<? super Float, Float> function1) {
        this.f4459a = function1;
        Boolean bool = Boolean.FALSE;
        this.d = SnapshotStateKt.g(bool);
        this.f4462e = SnapshotStateKt.g(bool);
        this.f4463f = SnapshotStateKt.g(bool);
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean a() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.d).getF10755b()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final Object c(MutatePriority mutatePriority, Function2 function2, Continuation continuation) {
        Object objD = CoroutineScopeKt.d(new DefaultScrollableState$scroll$2(this, mutatePriority, function2, null), continuation);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : Unit.f71739a;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final float e(float f2) {
        return ((Number) this.f4459a.invoke(Float.valueOf(f2))).floatValue();
    }
}
