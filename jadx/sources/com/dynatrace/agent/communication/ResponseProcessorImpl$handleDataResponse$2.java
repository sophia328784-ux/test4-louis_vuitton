package com.dynatrace.agent.communication;

import com.dynatrace.agent.communication.api.ServerDataUpdate;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lcom/dynatrace/agent/communication/CommunicationContext;", "serverDataUpdate", "Lcom/dynatrace/agent/communication/api/ServerDataUpdate;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.communication.ResponseProcessorImpl$handleDataResponse$2", f = "ResponseProcessorImpl.kt", l = {134}, m = "invokeSuspend")
final class ResponseProcessorImpl$handleDataResponse$2 extends SuspendLambda implements Function2<ServerDataUpdate, Continuation<? super CommunicationContext>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f26581b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f26582c;
    public final /* synthetic */ ResponseProcessorImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ List f26583e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f26584f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResponseProcessorImpl$handleDataResponse$2(ResponseProcessorImpl responseProcessorImpl, List list, boolean z, Continuation continuation) {
        super(2, continuation);
        this.d = responseProcessorImpl;
        this.f26583e = list;
        this.f26584f = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ResponseProcessorImpl$handleDataResponse$2 responseProcessorImpl$handleDataResponse$2 = new ResponseProcessorImpl$handleDataResponse$2(this.d, this.f26583e, this.f26584f, continuation);
        responseProcessorImpl$handleDataResponse$2.f26582c = obj;
        return responseProcessorImpl$handleDataResponse$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ResponseProcessorImpl$handleDataResponse$2) create((ServerDataUpdate) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f26581b;
        if (i2 != 0) {
            if (i2 == 1) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        ServerDataUpdate serverDataUpdate = (ServerDataUpdate) this.f26582c;
        this.f26581b = 1;
        Object objD = ResponseProcessorImpl.d(this.d, serverDataUpdate, this.f26583e, this.f26584f, this);
        return objD == coroutineSingletons ? coroutineSingletons : objD;
    }
}
