package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.data.datasource.avatar.AvatarLocalDataSource;
import com.vuitton.android.data.datasource.avatar.AvatarRemoteDataSource;
import com.vuitton.android.data.datasource.avatar.SavedUserAvatarLocalDataSource;
import com.vuitton.android.domain.repository.AvatarRepository;
import com.vuitton.foundation.model.domain.model.common.ResultStrategyLazy;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;", "Lcom/vuitton/android/domain/repository/AvatarRepository;", "Lcom/vuitton/android/data/datasource/avatar/AvatarRemoteDataSource;", "avatarRemoteDataSource", "Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;", "avatarLocalDataSource", "Lcom/vuitton/android/data/datasource/avatar/SavedUserAvatarLocalDataSource;", "savedUserAvatarLocalDataSource", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "dispatchers", "<init>", "(Lcom/vuitton/android/data/datasource/avatar/AvatarRemoteDataSource;Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;Lcom/vuitton/android/data/datasource/avatar/SavedUserAvatarLocalDataSource;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AvatarRepositoryImpl implements AvatarRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AvatarRemoteDataSource f47344a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AvatarLocalDataSource f47345b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SavedUserAvatarLocalDataSource f47346c;
    public final LVEventSender d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CoroutineDispatchers f47347e;

    @Inject
    public AvatarRepositoryImpl(AvatarRemoteDataSource avatarRemoteDataSource, AvatarLocalDataSource avatarLocalDataSource, SavedUserAvatarLocalDataSource savedUserAvatarLocalDataSource, LVEventSender lVEventSender, CoroutineDispatchers coroutineDispatchers) {
        avatarRemoteDataSource.getClass();
        avatarLocalDataSource.getClass();
        savedUserAvatarLocalDataSource.getClass();
        lVEventSender.getClass();
        coroutineDispatchers.getClass();
        this.f47344a = avatarRemoteDataSource;
        this.f47345b = avatarLocalDataSource;
        this.f47346c = savedUserAvatarLocalDataSource;
        this.d = lVEventSender;
        this.f47347e = coroutineDispatchers;
    }

    @Override // com.vuitton.android.domain.repository.AvatarRepository
    public final ResultStrategyLazy a() {
        return new ResultStrategyLazy(new AvatarRepositoryImpl$getAvatars$2(this, null), new AvatarRepositoryImpl$getAvatars$3(1, this.f47345b, AvatarLocalDataSource.class, "getAvatars", "getAvatars-xLWZpok()Lkotlin/Result;", 4));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AvatarRepository
    public final Object b(String str, String str2, ContinuationImpl continuationImpl) throws Throwable {
        AvatarRepositoryImpl$saveAvatarForUser$1 avatarRepositoryImpl$saveAvatarForUser$1;
        if (continuationImpl instanceof AvatarRepositoryImpl$saveAvatarForUser$1) {
            avatarRepositoryImpl$saveAvatarForUser$1 = (AvatarRepositoryImpl$saveAvatarForUser$1) continuationImpl;
            int i2 = avatarRepositoryImpl$saveAvatarForUser$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                avatarRepositoryImpl$saveAvatarForUser$1.d = i2 - Integer.MIN_VALUE;
            } else {
                avatarRepositoryImpl$saveAvatarForUser$1 = new AvatarRepositoryImpl$saveAvatarForUser$1(this, continuationImpl);
            }
        } else {
            avatarRepositoryImpl$saveAvatarForUser$1 = new AvatarRepositoryImpl$saveAvatarForUser$1(this, continuationImpl);
        }
        Object objF = avatarRepositoryImpl$saveAvatarForUser$1.f47366b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = avatarRepositoryImpl$saveAvatarForUser$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f47347e.getF43530b();
            AvatarRepositoryImpl$saveAvatarForUser$2 avatarRepositoryImpl$saveAvatarForUser$2 = new AvatarRepositoryImpl$saveAvatarForUser$2(this, str, str2, null);
            avatarRepositoryImpl$saveAvatarForUser$1.d = 1;
            objF = BuildersKt.f(f43530b, avatarRepositoryImpl$saveAvatarForUser$2, avatarRepositoryImpl$saveAvatarForUser$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AvatarRepository
    public final Object c(String str, ContinuationImpl continuationImpl) throws Throwable {
        AvatarRepositoryImpl$getSelectedAvatar$1 avatarRepositoryImpl$getSelectedAvatar$1;
        if (continuationImpl instanceof AvatarRepositoryImpl$getSelectedAvatar$1) {
            avatarRepositoryImpl$getSelectedAvatar$1 = (AvatarRepositoryImpl$getSelectedAvatar$1) continuationImpl;
            int i2 = avatarRepositoryImpl$getSelectedAvatar$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                avatarRepositoryImpl$getSelectedAvatar$1.d = i2 - Integer.MIN_VALUE;
            } else {
                avatarRepositoryImpl$getSelectedAvatar$1 = new AvatarRepositoryImpl$getSelectedAvatar$1(this, continuationImpl);
            }
        } else {
            avatarRepositoryImpl$getSelectedAvatar$1 = new AvatarRepositoryImpl$getSelectedAvatar$1(this, continuationImpl);
        }
        Object objF = avatarRepositoryImpl$getSelectedAvatar$1.f47353b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = avatarRepositoryImpl$getSelectedAvatar$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f47347e.getF43530b();
            AvatarRepositoryImpl$getSelectedAvatar$2 avatarRepositoryImpl$getSelectedAvatar$2 = new AvatarRepositoryImpl$getSelectedAvatar$2(this, str, null);
            avatarRepositoryImpl$getSelectedAvatar$1.d = 1;
            objF = BuildersKt.f(f43530b, avatarRepositoryImpl$getSelectedAvatar$2, avatarRepositoryImpl$getSelectedAvatar$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(ContinuationImpl continuationImpl) throws Throwable {
        AvatarRepositoryImpl$getSavedAvatars$1 avatarRepositoryImpl$getSavedAvatars$1;
        if (continuationImpl instanceof AvatarRepositoryImpl$getSavedAvatars$1) {
            avatarRepositoryImpl$getSavedAvatars$1 = (AvatarRepositoryImpl$getSavedAvatars$1) continuationImpl;
            int i2 = avatarRepositoryImpl$getSavedAvatars$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                avatarRepositoryImpl$getSavedAvatars$1.d = i2 - Integer.MIN_VALUE;
            } else {
                avatarRepositoryImpl$getSavedAvatars$1 = new AvatarRepositoryImpl$getSavedAvatars$1(this, continuationImpl);
            }
        } else {
            avatarRepositoryImpl$getSavedAvatars$1 = new AvatarRepositoryImpl$getSavedAvatars$1(this, continuationImpl);
        }
        Object objF = avatarRepositoryImpl$getSavedAvatars$1.f47350b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = avatarRepositoryImpl$getSavedAvatars$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f47347e.getF43530b();
            AvatarRepositoryImpl$getSavedAvatars$2 avatarRepositoryImpl$getSavedAvatars$2 = new AvatarRepositoryImpl$getSavedAvatars$2(this, null);
            avatarRepositoryImpl$getSavedAvatars$1.d = 1;
            objF = BuildersKt.f(f43530b, avatarRepositoryImpl$getSavedAvatars$2, avatarRepositoryImpl$getSavedAvatars$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(String str, ContinuationImpl continuationImpl) throws Throwable {
        AvatarRepositoryImpl$removeAvatarForUser$1 avatarRepositoryImpl$removeAvatarForUser$1;
        if (continuationImpl instanceof AvatarRepositoryImpl$removeAvatarForUser$1) {
            avatarRepositoryImpl$removeAvatarForUser$1 = (AvatarRepositoryImpl$removeAvatarForUser$1) continuationImpl;
            int i2 = avatarRepositoryImpl$removeAvatarForUser$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                avatarRepositoryImpl$removeAvatarForUser$1.d = i2 - Integer.MIN_VALUE;
            } else {
                avatarRepositoryImpl$removeAvatarForUser$1 = new AvatarRepositoryImpl$removeAvatarForUser$1(this, continuationImpl);
            }
        } else {
            avatarRepositoryImpl$removeAvatarForUser$1 = new AvatarRepositoryImpl$removeAvatarForUser$1(this, continuationImpl);
        }
        Object objF = avatarRepositoryImpl$removeAvatarForUser$1.f47362b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = avatarRepositoryImpl$removeAvatarForUser$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f47347e.getF43530b();
            AvatarRepositoryImpl$removeAvatarForUser$2 avatarRepositoryImpl$removeAvatarForUser$2 = new AvatarRepositoryImpl$removeAvatarForUser$2(this, str, null);
            avatarRepositoryImpl$removeAvatarForUser$1.d = 1;
            objF = BuildersKt.f(f43530b, avatarRepositoryImpl$removeAvatarForUser$2, avatarRepositoryImpl$removeAvatarForUser$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }
}
