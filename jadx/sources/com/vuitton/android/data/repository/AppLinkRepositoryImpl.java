package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.publication.AppLinkApi;
import com.vuitton.android.data.applink.ContributionLinkFromAppLinkDto;
import com.vuitton.android.data.datasource.config.AppLinkLocalDataSource;
import com.vuitton.android.data.datasource.dispatch.DispatchMemCacheDataSource;
import com.vuitton.android.data.dto.dispatch.SwapDispatchDto;
import com.vuitton.android.data.dto.linktype.mapper.ContributionLinkMapperKt;
import com.vuitton.android.domain.repository.AppLinkRepository;
import com.vuitton.foundation.model.domain.model.applink.ContributionLinkFromAppLink;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import com.vuitton.foundation.model.domain.model.dispatch.DispatchAreaKt;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.SwapDispatch;
import defpackage.md;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;", "Lcom/vuitton/android/domain/repository/AppLinkRepository;", "Lcom/vuitton/android/data/api/bff/publication/AppLinkApi;", "appLinkApi", "Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;", "appLinkLocalDataSource", "Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;", "dispatchMemCacheDataSource", "<init>", "(Lcom/vuitton/android/data/api/bff/publication/AppLinkApi;Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AppLinkRepositoryImpl implements AppLinkRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AppLinkApi f47244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppLinkLocalDataSource f47245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DispatchMemCacheDataSource f47246c;

    @Inject
    public AppLinkRepositoryImpl(AppLinkApi appLinkApi, AppLinkLocalDataSource appLinkLocalDataSource, DispatchMemCacheDataSource dispatchMemCacheDataSource) {
        appLinkApi.getClass();
        appLinkLocalDataSource.getClass();
        dispatchMemCacheDataSource.getClass();
        this.f47244a = appLinkApi;
        this.f47245b = appLinkLocalDataSource;
        this.f47246c = dispatchMemCacheDataSource;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AppLinkRepository
    public final Object a(ContributionLink contributionLink, ContinuationImpl continuationImpl) throws Throwable {
        AppLinkRepositoryImpl$saveContributionLinkToLaunch$1 appLinkRepositoryImpl$saveContributionLinkToLaunch$1;
        if (continuationImpl instanceof AppLinkRepositoryImpl$saveContributionLinkToLaunch$1) {
            appLinkRepositoryImpl$saveContributionLinkToLaunch$1 = (AppLinkRepositoryImpl$saveContributionLinkToLaunch$1) continuationImpl;
            int i2 = appLinkRepositoryImpl$saveContributionLinkToLaunch$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appLinkRepositoryImpl$saveContributionLinkToLaunch$1.d = i2 - Integer.MIN_VALUE;
            } else {
                appLinkRepositoryImpl$saveContributionLinkToLaunch$1 = new AppLinkRepositoryImpl$saveContributionLinkToLaunch$1(this, continuationImpl);
            }
        } else {
            appLinkRepositoryImpl$saveContributionLinkToLaunch$1 = new AppLinkRepositoryImpl$saveContributionLinkToLaunch$1(this, continuationImpl);
        }
        Object obj = appLinkRepositoryImpl$saveContributionLinkToLaunch$1.f47260b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appLinkRepositoryImpl$saveContributionLinkToLaunch$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            appLinkRepositoryImpl$saveContributionLinkToLaunch$1.d = 1;
            Object objE = this.f47245b.e(contributionLink, appLinkRepositoryImpl$saveContributionLinkToLaunch$1);
            return objE == coroutineSingletons ? coroutineSingletons : objE;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AppLinkRepository
    public final Object b(ContinuationImpl continuationImpl) throws Throwable {
        AppLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1 appLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1;
        if (continuationImpl instanceof AppLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1) {
            appLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1 = (AppLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1) continuationImpl;
            int i2 = appLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1.d = i2 - Integer.MIN_VALUE;
            } else {
                appLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1 = new AppLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1(this, continuationImpl);
            }
        } else {
            appLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1 = new AppLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1(this, continuationImpl);
        }
        Object obj = appLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1.f47247b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            appLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1.d = 1;
            Object objB = this.f47245b.b(appLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1);
            return objB == coroutineSingletons ? coroutineSingletons : objB;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0065  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AppLinkRepository
    public final Object c(String str, ContinuationImpl continuationImpl) throws Throwable {
        AppLinkRepositoryImpl$getContributionLinkFromAppLink$1 appLinkRepositoryImpl$getContributionLinkFromAppLink$1;
        Object failure;
        InAppDispatch inAppDispatchA;
        ArrayList arrayList;
        if (continuationImpl instanceof AppLinkRepositoryImpl$getContributionLinkFromAppLink$1) {
            appLinkRepositoryImpl$getContributionLinkFromAppLink$1 = (AppLinkRepositoryImpl$getContributionLinkFromAppLink$1) continuationImpl;
            int i2 = appLinkRepositoryImpl$getContributionLinkFromAppLink$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appLinkRepositoryImpl$getContributionLinkFromAppLink$1.d = i2 - Integer.MIN_VALUE;
            } else {
                appLinkRepositoryImpl$getContributionLinkFromAppLink$1 = new AppLinkRepositoryImpl$getContributionLinkFromAppLink$1(this, continuationImpl);
            }
        } else {
            appLinkRepositoryImpl$getContributionLinkFromAppLink$1 = new AppLinkRepositoryImpl$getContributionLinkFromAppLink$1(this, continuationImpl);
        }
        Object contributionLinkFromAppLink = appLinkRepositoryImpl$getContributionLinkFromAppLink$1.f47255b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appLinkRepositoryImpl$getContributionLinkFromAppLink$1.d;
        SwapDispatch swapDispatch = null;
        try {
            if (i3 == 0) {
                ResultKt.b(contributionLinkFromAppLink);
                Result.Companion companion = Result.INSTANCE;
                AppLinkApi appLinkApi = this.f47244a;
                appLinkRepositoryImpl$getContributionLinkFromAppLink$1.d = 1;
                contributionLinkFromAppLink = appLinkApi.getContributionLinkFromAppLink(str, appLinkRepositoryImpl$getContributionLinkFromAppLink$1);
                if (contributionLinkFromAppLink == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(contributionLinkFromAppLink);
            }
            ContributionLinkFromAppLinkDto contributionLinkFromAppLinkDto = (ContributionLinkFromAppLinkDto) contributionLinkFromAppLink;
            SwapDispatchDto swapDispatchDto = contributionLinkFromAppLinkDto.f43553b;
            if (swapDispatchDto != null) {
                DispatchMemCacheDataSource dispatchMemCacheDataSource = this.f47246c;
                synchronized (dispatchMemCacheDataSource.f44097a) {
                    arrayList = dispatchMemCacheDataSource.f44098b;
                    if (arrayList.isEmpty()) {
                        arrayList = null;
                    }
                }
                if (arrayList != null) {
                    String str2 = swapDispatchDto.f45704a;
                    InAppDispatch.Id.Companion companion2 = InAppDispatch.Id.f67485b;
                    str2.getClass();
                    inAppDispatchA = DispatchAreaKt.a(str2, arrayList);
                } else {
                    inAppDispatchA = null;
                }
            } else {
                inAppDispatchA = null;
            }
            ContributionLink contributionLinkA = ContributionLinkMapperKt.a(contributionLinkFromAppLinkDto.f43552a);
            SwapDispatchDto swapDispatchDto2 = contributionLinkFromAppLinkDto.f43553b;
            if (swapDispatchDto2 != null) {
                swapDispatch = new SwapDispatch(swapDispatchDto2.f45704a, swapDispatchDto2.f45705b, inAppDispatchA != null ? inAppDispatchA.f67480f : null);
            }
            failure = new Result(new ContributionLinkFromAppLink(contributionLinkA, swapDispatch));
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AppLinkRepository
    public final Object d(ContinuationImpl continuationImpl) throws Throwable {
        AppLinkRepositoryImpl$getCachedAppLinkExclusions$1 appLinkRepositoryImpl$getCachedAppLinkExclusions$1;
        if (continuationImpl instanceof AppLinkRepositoryImpl$getCachedAppLinkExclusions$1) {
            appLinkRepositoryImpl$getCachedAppLinkExclusions$1 = (AppLinkRepositoryImpl$getCachedAppLinkExclusions$1) continuationImpl;
            int i2 = appLinkRepositoryImpl$getCachedAppLinkExclusions$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appLinkRepositoryImpl$getCachedAppLinkExclusions$1.d = i2 - Integer.MIN_VALUE;
            } else {
                appLinkRepositoryImpl$getCachedAppLinkExclusions$1 = new AppLinkRepositoryImpl$getCachedAppLinkExclusions$1(this, continuationImpl);
            }
        } else {
            appLinkRepositoryImpl$getCachedAppLinkExclusions$1 = new AppLinkRepositoryImpl$getCachedAppLinkExclusions$1(this, continuationImpl);
        }
        Object obj = appLinkRepositoryImpl$getCachedAppLinkExclusions$1.f47253b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appLinkRepositoryImpl$getCachedAppLinkExclusions$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            appLinkRepositoryImpl$getCachedAppLinkExclusions$1.d = 1;
            Object objD = this.f47245b.d(appLinkRepositoryImpl$getCachedAppLinkExclusions$1);
            return objD == coroutineSingletons ? coroutineSingletons : objD;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0085, code lost:
    
        if (r7 == r1) goto L39;
     */
    @Override // com.vuitton.android.domain.repository.AppLinkRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(kotlin.coroutines.jvm.internal.ContinuationImpl r8) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.vuitton.android.data.repository.AppLinkRepositoryImpl$fetchAppLinkExclusions$1
            if (r0 == 0) goto L13
            r0 = r8
            com.vuitton.android.data.repository.AppLinkRepositoryImpl$fetchAppLinkExclusions$1 r0 = (com.vuitton.android.data.repository.AppLinkRepositoryImpl$fetchAppLinkExclusions$1) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.AppLinkRepositoryImpl$fetchAppLinkExclusions$1 r0 = new com.vuitton.android.data.repository.AppLinkRepositoryImpl$fetchAppLinkExclusions$1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.f47251e
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.g
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2e
            kotlin.ResultKt.b(r8)     // Catch: java.lang.Throwable -> L93
            kotlin.Result r8 = (kotlin.Result) r8     // Catch: java.lang.Throwable -> L93
            java.lang.Object r7 = r8.f71708b     // Catch: java.lang.Throwable -> L93
            goto L88
        L2e:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            r7 = 0
            return r7
        L35:
            int r2 = r0.d
            int r4 = r0.f47250c
            int r5 = r0.f47249b
            kotlin.ResultKt.b(r8)     // Catch: java.lang.Throwable -> L3f
            goto L5a
        L3f:
            r8 = move-exception
            goto L64
        L41:
            kotlin.ResultKt.b(r8)
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L93
            r2 = 0
            com.vuitton.android.data.api.bff.publication.AppLinkApi r8 = r7.f47244a     // Catch: java.lang.Throwable -> L61
            r0.f47249b = r2     // Catch: java.lang.Throwable -> L61
            r0.f47250c = r2     // Catch: java.lang.Throwable -> L61
            r0.d = r2     // Catch: java.lang.Throwable -> L61
            r0.g = r4     // Catch: java.lang.Throwable -> L61
            java.lang.Object r8 = r8.getAppLinkExclusions(r0)     // Catch: java.lang.Throwable -> L61
            if (r8 != r1) goto L58
            goto L87
        L58:
            r4 = r2
            r5 = r4
        L5a:
            com.vuitton.android.data.applink.ExcludedAppLinksDto r8 = (com.vuitton.android.data.applink.ExcludedAppLinksDto) r8     // Catch: java.lang.Throwable -> L3f
            java.util.List r8 = r8.f43556a     // Catch: java.lang.Throwable -> L3f
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L3f
            goto L6c
        L61:
            r8 = move-exception
            r4 = r2
            r5 = r4
        L64:
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L93
            kotlin.Result$Failure r6 = new kotlin.Result$Failure     // Catch: java.lang.Throwable -> L93
            r6.<init>(r8)     // Catch: java.lang.Throwable -> L93
            r8 = r6
        L6c:
            java.lang.Throwable r6 = kotlin.Result.a(r8)     // Catch: java.lang.Throwable -> L93
            if (r6 != 0) goto L73
            goto L75
        L73:
            kotlin.collections.EmptyList r8 = kotlin.collections.EmptyList.f71768b     // Catch: java.lang.Throwable -> L93
        L75:
            java.util.List r8 = (java.util.List) r8     // Catch: java.lang.Throwable -> L93
            com.vuitton.android.data.datasource.config.AppLinkLocalDataSource r7 = r7.f47245b     // Catch: java.lang.Throwable -> L93
            r0.f47249b = r5     // Catch: java.lang.Throwable -> L93
            r0.f47250c = r4     // Catch: java.lang.Throwable -> L93
            r0.d = r2     // Catch: java.lang.Throwable -> L93
            r0.g = r3     // Catch: java.lang.Throwable -> L93
            java.lang.Object r7 = r7.f(r8, r0)     // Catch: java.lang.Throwable -> L93
            if (r7 != r1) goto L88
        L87:
            return r1
        L88:
            kotlin.ResultKt.b(r7)     // Catch: java.lang.Throwable -> L93
            java.lang.Boolean r7 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L93
            kotlin.Result r8 = new kotlin.Result     // Catch: java.lang.Throwable -> L93
            r8.<init>(r7)     // Catch: java.lang.Throwable -> L93
            goto L9b
        L93:
            r7 = move-exception
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r8 = new kotlin.Result$Failure
            r8.<init>(r7)
        L9b:
            java.lang.Throwable r7 = kotlin.Result.a(r8)
            if (r7 != 0) goto La2
            goto Lb1
        La2:
            boolean r8 = r7 instanceof java.util.concurrent.CancellationException
            if (r8 != 0) goto Lb6
            kotlin.Result$Failure r8 = new kotlin.Result$Failure
            r8.<init>(r7)
            kotlin.Result r7 = new kotlin.Result
            r7.<init>(r8)
            r8 = r7
        Lb1:
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r7 = r8.f71708b
            return r7
        Lb6:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.AppLinkRepositoryImpl.e(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AppLinkRepository
    public final Object f(ContinuationImpl continuationImpl) throws Throwable {
        AppLinkRepositoryImpl$getContributionLinkToLaunch$1 appLinkRepositoryImpl$getContributionLinkToLaunch$1;
        Object objC;
        if (continuationImpl instanceof AppLinkRepositoryImpl$getContributionLinkToLaunch$1) {
            appLinkRepositoryImpl$getContributionLinkToLaunch$1 = (AppLinkRepositoryImpl$getContributionLinkToLaunch$1) continuationImpl;
            int i2 = appLinkRepositoryImpl$getContributionLinkToLaunch$1.f47259e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appLinkRepositoryImpl$getContributionLinkToLaunch$1.f47259e = i2 - Integer.MIN_VALUE;
            } else {
                appLinkRepositoryImpl$getContributionLinkToLaunch$1 = new AppLinkRepositoryImpl$getContributionLinkToLaunch$1(this, continuationImpl);
            }
        } else {
            appLinkRepositoryImpl$getContributionLinkToLaunch$1 = new AppLinkRepositoryImpl$getContributionLinkToLaunch$1(this, continuationImpl);
        }
        Object obj = appLinkRepositoryImpl$getContributionLinkToLaunch$1.f47258c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appLinkRepositoryImpl$getContributionLinkToLaunch$1.f47259e;
        AppLinkLocalDataSource appLinkLocalDataSource = this.f47245b;
        if (i3 == 0) {
            ResultKt.b(obj);
            appLinkRepositoryImpl$getContributionLinkToLaunch$1.f47259e = 1;
            objC = appLinkLocalDataSource.c(appLinkRepositoryImpl$getContributionLinkToLaunch$1);
            if (objC != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 != 1) {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Object obj2 = appLinkRepositoryImpl$getContributionLinkToLaunch$1.f47257b;
            ResultKt.b(obj);
            ((Result) obj).getClass();
            return obj2;
        }
        ResultKt.b(obj);
        objC = ((Result) obj).f71708b;
        Result.Companion companion = Result.INSTANCE;
        if (!(objC instanceof Result.Failure)) {
            appLinkRepositoryImpl$getContributionLinkToLaunch$1.f47257b = objC;
            appLinkRepositoryImpl$getContributionLinkToLaunch$1.f47259e = 2;
            if (appLinkLocalDataSource.b(appLinkRepositoryImpl$getContributionLinkToLaunch$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return objC;
    }
}
