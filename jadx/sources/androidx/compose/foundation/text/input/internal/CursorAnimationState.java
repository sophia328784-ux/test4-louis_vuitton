package androidx.compose.foundation.text.input.internal;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.CoroutineScopeKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/text/input/internal/CursorAnimationState;", "", "", "animate", "<init>", "(Z)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CursorAnimationState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f6200a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference f6201b = new AtomicReference(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableFloatState f6202c = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);

    public CursorAnimationState(boolean z) {
        this.f6200a = z;
    }

    public final Object a(Continuation continuation) {
        Object objD = CoroutineScopeKt.d(new CursorAnimationState$snapToVisibleAndAnimate$2(this, null), continuation);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : Unit.f71739a;
    }
}
