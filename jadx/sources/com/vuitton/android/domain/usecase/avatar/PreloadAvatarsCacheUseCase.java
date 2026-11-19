package com.vuitton.android.domain.usecase.avatar;

import com.vuitton.android.domain.repository.AvatarRepository;
import com.vuitton.foundation.model.domain.model.common.ResultStrategy;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/avatar/PreloadAvatarsCacheUseCase;", "", "Lcom/vuitton/android/domain/repository/AvatarRepository;", "avatarRepository", "<init>", "(Lcom/vuitton/android/domain/repository/AvatarRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PreloadAvatarsCacheUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AvatarRepository f49451a;

    @Inject
    public PreloadAvatarsCacheUseCase(AvatarRepository avatarRepository) {
        avatarRepository.getClass();
        this.f49451a = avatarRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        PreloadAvatarsCacheUseCase$run$1 preloadAvatarsCacheUseCase$run$1;
        if (continuationImpl instanceof PreloadAvatarsCacheUseCase$run$1) {
            preloadAvatarsCacheUseCase$run$1 = (PreloadAvatarsCacheUseCase$run$1) continuationImpl;
            int i2 = preloadAvatarsCacheUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                preloadAvatarsCacheUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                preloadAvatarsCacheUseCase$run$1 = new PreloadAvatarsCacheUseCase$run$1(this, continuationImpl);
            }
        } else {
            preloadAvatarsCacheUseCase$run$1 = new PreloadAvatarsCacheUseCase$run$1(this, continuationImpl);
        }
        Object objA = preloadAvatarsCacheUseCase$run$1.f49452b;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = preloadAvatarsCacheUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(objA);
            preloadAvatarsCacheUseCase$run$1.d = 1;
            objA = this.f49451a.a();
            if (objA != obj) {
            }
        }
        if (i3 != 1) {
            if (i3 == 2) {
                ResultKt.b(objA);
                return ((Result) objA).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(objA);
        preloadAvatarsCacheUseCase$run$1.d = 2;
        Object objB = ((ResultStrategy) objA).b(preloadAvatarsCacheUseCase$run$1);
        return objB == obj ? obj : objB;
    }
}
