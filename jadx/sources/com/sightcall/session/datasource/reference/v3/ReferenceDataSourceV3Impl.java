package com.sightcall.session.datasource.reference.v3;

import android.content.Context;
import android.net.Uri;
import com.appsflyer.sdk_base.referrer.Payload;
import com.sightcall.core.R;
import com.sightcall.httpclient.AuthorizationToken;
import com.sightcall.httpclient.SightCallHeaders;
import com.sightcall.pratik.Result;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.session.Reference;
import com.sightcall.session.ReferenceUpdate;
import com.sightcall.session.datasource.reference.ReferenceDataSource;
import com.sightcall.session.datasource.reference.v3.startup.ReferenceStartupMappersKt;
import com.sightcall.session.datasource.reference.v3.startup.ReferenceStartupResponseEntity;
import com.sightcall.session.datasource.reference.v3.switchRole.ReferenceSwitchMappersKt;
import com.sightcall.session.datasource.reference.v3.switchRole.ReferenceSwitchRequestEntity;
import com.sightcall.session.datasource.reference.v3.switchRole.ReferenceSwitchResponseEntity;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\"\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f2\u0006\u0010\u000f\u001a\u00020\u0010H\u0096@¢\u0006\u0002\u0010\u0011J\"\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\n0\u0014H\u0002J\"\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u000e0\f2\u0006\u0010\u0017\u001a\u00020\u0018H\u0096@¢\u0006\u0002\u0010\u0019J\"\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u000e0\f2\u0006\u0010\u0017\u001a\u00020\u0018H\u0096@¢\u0006\u0002\u0010\u0019J\"\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u000e0\f2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0014H\u0002J\b\u0010\u001d\u001a\u00020\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;", "Lcom/sightcall/session/datasource/reference/ReferenceDataSource;", "referenceApi", "Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "<init>", "(Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;Landroid/content/Context;)V", "ongoingGetReferenceCall", "Lretrofit2/Call;", "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity;", "getReference", "Lcom/sightcall/pratik/Result;", "Lcom/sightcall/session/Reference;", "", "uri", "Landroid/net/Uri;", "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onGetReferenceResponse", Payload.RESPONSE, "Lretrofit2/Response;", "switchToGuest", "Lcom/sightcall/session/ReferenceUpdate;", "token", "Lcom/sightcall/httpclient/AuthorizationToken;", "(Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "switchToAttendee", "onSwitchResponse", "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity;", "interruptGetReference", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ReferenceDataSourceV3Impl implements ReferenceDataSource {
    private final Context context;
    private Call<ReferenceStartupResponseEntity> ongoingGetReferenceCall;
    private final ReferenceApiV3 referenceApi;

    @Inject
    public ReferenceDataSourceV3Impl(ReferenceApiV3 referenceApiV3, Context context) {
        referenceApiV3.getClass();
        context.getClass();
        this.referenceApi = referenceApiV3;
        this.context = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Result<Reference, Unit> onGetReferenceResponse(Response<ReferenceStartupResponseEntity> response) {
        okhttp3.Response response2 = response.f79449a;
        Object obj = response.f79450b;
        if (!response2.r) {
            Logger logger = Logger.INSTANCE;
            Objects.toString(response.f79451c);
            logger.getTag();
            return new Result.Error(Unit.f71739a);
        }
        try {
            obj.getClass();
            return new Result.Success(ReferenceStartupMappersKt.toReference((ReferenceStartupResponseEntity) obj));
        } catch (Exception unused) {
            Logger logger2 = Logger.INSTANCE;
            Objects.toString(obj);
            logger2.getTag();
            return new Result.Error(Unit.f71739a);
        }
    }

    private final Result<ReferenceUpdate, Unit> onSwitchResponse(Response<ReferenceSwitchResponseEntity> response) {
        okhttp3.Response response2 = response.f79449a;
        Object obj = response.f79450b;
        if (!response2.r) {
            Logger logger = Logger.INSTANCE;
            Objects.toString(response.f79451c);
            logger.getTag();
            return new Result.Error(Unit.f71739a);
        }
        try {
            obj.getClass();
            return new Result.Success(ReferenceSwitchMappersKt.toReferenceUpdate((ReferenceSwitchResponseEntity) obj));
        } catch (Exception unused) {
            Logger logger2 = Logger.INSTANCE;
            Objects.toString(obj);
            logger2.getTag();
            return new Result.Error(Unit.f71739a);
        }
    }

    @Override // com.sightcall.session.datasource.reference.ReferenceDataSource
    public Object getReference(Uri uri, Continuation<? super Result<Reference, Unit>> continuation) {
        final SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.b(continuation));
        ReferenceApiV3 referenceApiV3 = this.referenceApi;
        Context context = this.context;
        String string = context.getString(R.string.universal_mobile_solution_value);
        string.getClass();
        Call<ReferenceStartupResponseEntity> reference = referenceApiV3.getReference(ReferenceApiV3ConstMappersKt.create(context, uri, string));
        reference.p(new Callback<ReferenceStartupResponseEntity>() { // from class: com.sightcall.session.datasource.reference.v3.ReferenceDataSourceV3Impl$getReference$2$1$1
            @Override // retrofit2.Callback
            public void onFailure(Call<ReferenceStartupResponseEntity> call, Throwable t) {
                call.getClass();
                t.getClass();
                Logger.INSTANCE.getTag();
                Continuation<Result<Reference, Unit>> continuation2 = safeContinuation;
                kotlin.Result.Companion companion = kotlin.Result.INSTANCE;
                continuation2.resumeWith(new Result.Error(Unit.f71739a));
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ReferenceStartupResponseEntity> call, Response<ReferenceStartupResponseEntity> response) {
                call.getClass();
                response.getClass();
                Continuation<Result<Reference, Unit>> continuation2 = safeContinuation;
                kotlin.Result.Companion companion = kotlin.Result.INSTANCE;
                continuation2.resumeWith(this.onGetReferenceResponse(response));
            }
        });
        this.ongoingGetReferenceCall = reference;
        Object objA = safeContinuation.a();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return objA;
    }

    @Override // com.sightcall.session.datasource.reference.ReferenceDataSource
    public void interruptGetReference() {
        Call<ReferenceStartupResponseEntity> call = this.ongoingGetReferenceCall;
        if (call != null) {
            call.cancel();
        }
    }

    @Override // com.sightcall.session.datasource.reference.ReferenceDataSource
    public Object switchToAttendee(AuthorizationToken authorizationToken, Continuation<? super Result<ReferenceUpdate, Unit>> continuation) {
        Response<ReferenceSwitchResponseEntity> responseExecute = this.referenceApi.switchRole(new SightCallHeaders.Authorization.External(authorizationToken), ReferenceSwitchRequestEntity.INSTANCE.create(UserRole.Attendee)).execute();
        responseExecute.getClass();
        return onSwitchResponse(responseExecute);
    }

    @Override // com.sightcall.session.datasource.reference.ReferenceDataSource
    public Object switchToGuest(AuthorizationToken authorizationToken, Continuation<? super Result<ReferenceUpdate, Unit>> continuation) {
        Response<ReferenceSwitchResponseEntity> responseExecute = this.referenceApi.switchRole(new SightCallHeaders.Authorization.External(authorizationToken), ReferenceSwitchRequestEntity.INSTANCE.create(UserRole.Guest)).execute();
        responseExecute.getClass();
        return onSwitchResponse(responseExecute);
    }
}
