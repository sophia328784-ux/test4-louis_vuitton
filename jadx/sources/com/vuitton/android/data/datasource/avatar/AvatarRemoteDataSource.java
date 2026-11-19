package com.vuitton.android.data.datasource.avatar;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.publication.AvatarApi;
import com.vuitton.android.data.dto.avatar.AvatarResponseDto;
import com.vuitton.android.data.dto.avatar.mapper.AvatarMapperKt;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/datasource/avatar/AvatarRemoteDataSource;", "", "Lcom/vuitton/android/data/api/bff/publication/AvatarApi;", "avatarApi", "<init>", "(Lcom/vuitton/android/data/api/bff/publication/AvatarApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AvatarRemoteDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AvatarApi f43861a;

    @Inject
    public AvatarRemoteDataSource(AvatarApi avatarApi) {
        avatarApi.getClass();
        this.f43861a = avatarApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        AvatarRemoteDataSource$getAvatars$1 avatarRemoteDataSource$getAvatars$1;
        Object failure;
        if (continuationImpl instanceof AvatarRemoteDataSource$getAvatars$1) {
            avatarRemoteDataSource$getAvatars$1 = (AvatarRemoteDataSource$getAvatars$1) continuationImpl;
            int i2 = avatarRemoteDataSource$getAvatars$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                avatarRemoteDataSource$getAvatars$1.d = i2 - Integer.MIN_VALUE;
            } else {
                avatarRemoteDataSource$getAvatars$1 = new AvatarRemoteDataSource$getAvatars$1(this, continuationImpl);
            }
        } else {
            avatarRemoteDataSource$getAvatars$1 = new AvatarRemoteDataSource$getAvatars$1(this, continuationImpl);
        }
        Object avatars = avatarRemoteDataSource$getAvatars$1.f43862b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = avatarRemoteDataSource$getAvatars$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(avatars);
                Result.Companion companion = Result.INSTANCE;
                AvatarApi avatarApi = this.f43861a;
                avatarRemoteDataSource$getAvatars$1.d = 1;
                avatars = avatarApi.getAvatars(avatarRemoteDataSource$getAvatars$1);
                if (avatars == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(avatars);
            }
            AvatarResponseDto avatarResponseDto = (AvatarResponseDto) ((Response) avatars).f79450b;
            if (avatarResponseDto == null) {
                throw new IllegalStateException("Failed to retrieve avatars");
            }
            failure = new Result(AvatarMapperKt.a(avatarResponseDto));
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return ((Result) failure).f71708b;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }
}
