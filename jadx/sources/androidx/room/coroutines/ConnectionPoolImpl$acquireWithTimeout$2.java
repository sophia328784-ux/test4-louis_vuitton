package androidx.room.coroutines;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.room.coroutines.ConnectionPoolImpl$acquireWithTimeout$2", f = "ConnectionPoolImpl.kt", l = {171}, m = "invokeSuspend")
public final class ConnectionPoolImpl$acquireWithTimeout$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Ref$ObjectRef f19609b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f19610c;
    public final /* synthetic */ Ref$ObjectRef d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Pool f19611e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectionPoolImpl$acquireWithTimeout$2(Ref$ObjectRef<ConnectionWithLock> ref$ObjectRef, Pool pool, Continuation<? super ConnectionPoolImpl$acquireWithTimeout$2> continuation) {
        super(2, continuation);
        this.d = ref$ObjectRef;
        this.f19611e = pool;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ConnectionPoolImpl$acquireWithTimeout$2(this.d, this.f19611e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ConnectionPoolImpl$acquireWithTimeout$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Ref$ObjectRef ref$ObjectRef;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f19610c;
        if (i2 == 0) {
            ResultKt.b(obj);
            Ref$ObjectRef ref$ObjectRef2 = this.d;
            this.f19609b = ref$ObjectRef2;
            this.f19610c = 1;
            Object objA = this.f19611e.a(this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj = objA;
            ref$ObjectRef = ref$ObjectRef2;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ref$ObjectRef = this.f19609b;
            ResultKt.b(obj);
        }
        ref$ObjectRef.f71921b = obj;
        return Unit.f71739a;
    }
}
