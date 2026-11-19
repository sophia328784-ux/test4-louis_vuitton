package androidx.compose.foundation.interaction;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "<init>", "()V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class MutableInteractionSourceImpl implements MutableInteractionSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedFlowImpl f4891a = SharedFlowKt.b(0, 16, BufferOverflow.DROP_OLDEST, 1);

    @Override // androidx.compose.foundation.interaction.MutableInteractionSource
    public final Object a(Interaction interaction, Continuation continuation) throws Throwable {
        Object objEmit = this.f4891a.emit(interaction, continuation);
        return objEmit == CoroutineSingletons.COROUTINE_SUSPENDED ? objEmit : Unit.f71739a;
    }

    @Override // androidx.compose.foundation.interaction.MutableInteractionSource
    public final boolean b(Interaction interaction) {
        return this.f4891a.a(interaction);
    }

    @Override // androidx.compose.foundation.interaction.InteractionSource
    /* JADX INFO: renamed from: c, reason: from getter */
    public final SharedFlowImpl getF4891a() {
        return this.f4891a;
    }
}
