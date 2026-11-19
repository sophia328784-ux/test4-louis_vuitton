package com.vuitton.android.data.repository;

import com.vuitton.android.data.datasource.avatar.AvatarLocalDataSource;
import com.vuitton.android.data.datasource.avatar.AvatarRemoteDataSource;
import com.vuitton.foundation.model.domain.model.avatar.AvatarResponse;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AvatarRepositoryImpl$getAvatars$2", f = "AvatarRepositoryImpl.kt", l = {29}, m = "invokeSuspend", v = 2)
final class AvatarRepositoryImpl$getAvatars$2 extends SuspendLambda implements Function1<Continuation<? super Result<? extends AvatarResponse>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47348b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AvatarRepositoryImpl f47349c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AvatarRepositoryImpl$getAvatars$2(AvatarRepositoryImpl avatarRepositoryImpl, Continuation continuation) {
        super(1, continuation);
        this.f47349c = avatarRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new AvatarRepositoryImpl$getAvatars$2(this.f47349c, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((AvatarRepositoryImpl$getAvatars$2) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        AvatarRepositoryImpl avatarRepositoryImpl = this.f47349c;
        AvatarLocalDataSource avatarLocalDataSource = avatarRepositoryImpl.f47345b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f47348b;
        if (i2 == 0) {
            ResultKt.b(obj);
            AvatarRemoteDataSource avatarRemoteDataSource = avatarRepositoryImpl.f47344a;
            this.f47348b = 1;
            objA = avatarRemoteDataSource.a(this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        boolean z = objA instanceof Result.Failure;
        AvatarResponse avatarResponse = (AvatarResponse) (z ? null : objA);
        if (avatarResponse != null) {
            avatarLocalDataSource.getClass();
            avatarLocalDataSource.f43860a = avatarResponse;
        }
        if (z) {
            AvatarResponse avatarResponse2 = avatarLocalDataSource.f43860a;
            Result result = avatarResponse2 != null ? new Result(avatarResponse2) : null;
            if (result != null) {
                objA = result.f71708b;
            }
        }
        return new Result(objA);
    }
}
