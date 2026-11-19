package androidx.compose.foundation.text.contextmenu.provider;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.BufferedChannel;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider$showTextContextMenu$2", f = "BasicTextContextMenuProvider.kt", l = {130}, m = "invokeSuspend", v = 1)
final class BasicTextContextMenuProvider$showTextContextMenu$2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BasicTextContextMenuProvider f6151c;
    public final /* synthetic */ BasicTextContextMenuProvider.SessionImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BasicTextContextMenuProvider$showTextContextMenu$2(BasicTextContextMenuProvider basicTextContextMenuProvider, BasicTextContextMenuProvider.SessionImpl sessionImpl, Continuation continuation) {
        super(1, continuation);
        this.f6151c = basicTextContextMenuProvider;
        this.d = sessionImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new BasicTextContextMenuProvider$showTextContextMenu$2(this.f6151c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((BasicTextContextMenuProvider$showTextContextMenu$2) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        BasicTextContextMenuProvider.SessionImpl sessionImpl = this.d;
        MutableState mutableState = this.f6151c.f6147c;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f6150b;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                ((SnapshotMutableStateImpl) mutableState).setValue(sessionImpl);
                this.f6150b = 1;
                BufferedChannel bufferedChannel = sessionImpl.f6149b;
                bufferedChannel.getClass();
                Object objL = BufferedChannel.L(bufferedChannel, this);
                if (objL != obj2) {
                    objL = Unit.f71739a;
                }
                if (objL == obj2) {
                    return obj2;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            ((SnapshotMutableStateImpl) mutableState).setValue(null);
            return Unit.f71739a;
        } catch (Throwable th) {
            ((SnapshotMutableStateImpl) mutableState).setValue(null);
            throw th;
        }
    }
}
