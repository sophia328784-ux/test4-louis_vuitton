package com.sightcall.universal.api;

import com.sightcall.httpclient.SightCallHeaders;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.Agent;
import com.sightcall.universal.agent.RefreshTokenCallback;
import com.sightcall.universal.agent.registration.AccessTokensRequest;
import com.sightcall.universal.agent.registration.NewRegistrationMapperKt;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.sightcall.universal.api.RefreshTokenAuthenticator$authenticate$1$1", f = "RefreshTokenAuthenticator.kt", l = {24}, m = "invokeSuspend", v = 2)
public final class RefreshTokenAuthenticator$authenticate$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Ref$ObjectRef<Request> $request;
    final /* synthetic */ Response $response;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RefreshTokenAuthenticator$authenticate$1$1(Ref$ObjectRef<Request> ref$ObjectRef, Response response, Continuation<? super RefreshTokenAuthenticator$authenticate$1$1> continuation) {
        super(2, continuation);
        this.$request = ref$ObjectRef;
        this.$response = response;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RefreshTokenAuthenticator$authenticate$1$1(this.$request, this.$response, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((RefreshTokenAuthenticator$authenticate$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String strRefreshToken;
        Ref$ObjectRef<Request> ref$ObjectRef;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.label;
        if (i2 == 0) {
            ResultKt.b(obj);
            Agent agent = Universal.agent().get();
            if (agent == null || (strRefreshToken = agent.refreshToken()) == null) {
                strRefreshToken = "";
            }
            AccessTokensRequest accessTokensRequestCreateAccessTokensRequest = NewRegistrationMapperKt.createAccessTokensRequest(strRefreshToken);
            Ref$ObjectRef<Request> ref$ObjectRef2 = this.$request;
            final Response response = this.$response;
            this.L$0 = accessTokensRequestCreateAccessTokensRequest;
            this.L$1 = response;
            this.L$2 = ref$ObjectRef2;
            this.label = 1;
            final SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.b(this));
            Universal.agent().refreshToken(accessTokensRequestCreateAccessTokensRequest, new RefreshTokenCallback() { // from class: com.sightcall.universal.api.RefreshTokenAuthenticator$authenticate$1$1$1$1
                @Override // com.sightcall.universal.agent.RefreshTokenCallback
                public void onRefreshTokenError(RefreshTokenCallback.Error error) {
                    error.getClass();
                    Universal.agent().unregister(new RefreshTokenAuthenticator.UnregisterCallback());
                }

                @Override // com.sightcall.universal.agent.RefreshTokenCallback
                public void onRefreshTokenSuccess(RefreshTokenCallback.Success success) {
                    success.getClass();
                    Continuation<Request> continuation = safeContinuation;
                    Result.Companion companion = Result.INSTANCE;
                    Request request = response.f76984b;
                    request.getClass();
                    Request.Builder builder = new Request.Builder(request);
                    builder.f76976c.f(Headers.Authorization.Token);
                    builder.a(Headers.Authorization.Token, new SightCallHeaders.Authorization.Bearer(success.getRegistration().getId()).toString());
                    continuation.resumeWith(new Request(builder));
                }
            });
            obj = safeContinuation.a();
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
            ref$ObjectRef = ref$ObjectRef2;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ref$ObjectRef = (Ref$ObjectRef) this.L$2;
            ResultKt.b(obj);
        }
        ref$ObjectRef.f71921b = obj;
        return Unit.f71739a;
    }
}
