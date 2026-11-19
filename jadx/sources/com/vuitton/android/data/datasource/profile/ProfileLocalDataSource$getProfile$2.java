package com.vuitton.android.data.datasource.profile;

import com.vuitton.foundation.model.domain.model.profile.Profile;
import defpackage.md;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/profile/Profile;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.profile.ProfileLocalDataSource$getProfile$2", f = "ProfileLocalDataSource.kt", l = {57}, m = "invokeSuspend", v = 2)
final class ProfileLocalDataSource$getProfile$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Profile>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f44248b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ProfileLocalDataSource f44249c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfileLocalDataSource$getProfile$2(ProfileLocalDataSource profileLocalDataSource, Continuation continuation) {
        super(2, continuation);
        this.f44249c = profileLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ProfileLocalDataSource$getProfile$2(this.f44249c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ProfileLocalDataSource$getProfile$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f44248b;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                ProfileLocalDataSource profileLocalDataSource = this.f44249c;
                Result.Companion companion = Result.INSTANCE;
                ProfileLocalDataSource$listenProfile$$inlined$map$1 profileLocalDataSource$listenProfile$$inlined$map$1 = new ProfileLocalDataSource$listenProfile$$inlined$map$1(profileLocalDataSource.f44238a.getD(), profileLocalDataSource);
                this.f44248b = 1;
                obj = FlowKt.p(profileLocalDataSource$listenProfile$$inlined$map$1, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            if (obj == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            failure = new Result((Profile) obj);
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return new Result(((Result) failure).f71708b);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }
}
