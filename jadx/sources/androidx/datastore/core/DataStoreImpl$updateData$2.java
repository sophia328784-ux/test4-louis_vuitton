package androidx.datastore.core;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.ClosedSendChannelException;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "T", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$updateData$2", f = "DataStoreImpl.kt", l = {169}, m = "invokeSuspend")
final class DataStoreImpl$updateData$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f12726c;
    public final /* synthetic */ DataStoreImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function2 f12727e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$updateData$2(DataStoreImpl dataStoreImpl, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.d = dataStoreImpl;
        this.f12727e = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DataStoreImpl$updateData$2 dataStoreImpl$updateData$2 = new DataStoreImpl$updateData$2(this.d, this.f12727e, continuation);
        dataStoreImpl$updateData$2.f12726c = obj;
        return dataStoreImpl$updateData$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DataStoreImpl$updateData$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f12725b;
        if (i2 != 0) {
            if (i2 == 1) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.f12726c;
        CompletableDeferred completableDeferredA = CompletableDeferredKt.a();
        DataStoreImpl dataStoreImpl = this.d;
        Message.Update update = new Message.Update(this.f12727e, completableDeferredA, dataStoreImpl.f12631h.a(), coroutineScope.getF50528e());
        SimpleActor simpleActor = dataStoreImpl.l;
        Object objB = simpleActor.f12825c.b(update);
        if (objB instanceof ChannelResult.Closed) {
            ChannelResult.Companion companion = ChannelResult.f74759b;
            Throwable th = ((ChannelResult.Closed) objB).f74762a;
            if (th == null) {
                throw new ClosedSendChannelException("Channel was closed normally");
            }
            throw th;
        }
        ChannelResult.Companion companion2 = ChannelResult.f74759b;
        if (objB instanceof ChannelResult.Failed) {
            md.k("Check failed.");
            return null;
        }
        if (simpleActor.d.f12609a.getAndIncrement() == 0) {
            BuildersKt.c(simpleActor.f12823a, null, null, new SimpleActor$offer$2(simpleActor, null), 3);
        }
        this.f12725b = 1;
        Object objK = completableDeferredA.k(this);
        return objK == coroutineSingletons ? coroutineSingletons : objK;
    }
}
