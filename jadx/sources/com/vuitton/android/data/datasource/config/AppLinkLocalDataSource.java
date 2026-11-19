package com.vuitton.android.data.datasource.config;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import dagger.Lazy;
import defpackage.md;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\b\u0001\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;", "", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "schedulersProvider", "Ldagger/Lazy;", "Landroid/content/SharedPreferences;", "encryptedSharedPreferences", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Ldagger/Lazy;Lkotlinx/serialization/json/Json;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AppLinkLocalDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineDispatchers f43992a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Lazy f43993b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Json f43994c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource$Companion;", "", "", "APP_LINKS_EXCLUSION_LIST", "Ljava/lang/String;", "CONTRIBUTION_LINK_TO_LAUNCH", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public AppLinkLocalDataSource(CoroutineDispatchers coroutineDispatchers, Lazy<SharedPreferences> lazy, Json json) {
        coroutineDispatchers.getClass();
        lazy.getClass();
        json.getClass();
        this.f43992a = coroutineDispatchers;
        this.f43993b = lazy;
        this.f43994c = json;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) throws Throwable {
        AppLinkLocalDataSource$clearAppLinksExclusion$1 appLinkLocalDataSource$clearAppLinksExclusion$1;
        Object failure;
        if (continuationImpl instanceof AppLinkLocalDataSource$clearAppLinksExclusion$1) {
            appLinkLocalDataSource$clearAppLinksExclusion$1 = (AppLinkLocalDataSource$clearAppLinksExclusion$1) continuationImpl;
            int i2 = appLinkLocalDataSource$clearAppLinksExclusion$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appLinkLocalDataSource$clearAppLinksExclusion$1.d = i2 - Integer.MIN_VALUE;
            } else {
                appLinkLocalDataSource$clearAppLinksExclusion$1 = new AppLinkLocalDataSource$clearAppLinksExclusion$1(this, continuationImpl);
            }
        } else {
            appLinkLocalDataSource$clearAppLinksExclusion$1 = new AppLinkLocalDataSource$clearAppLinksExclusion$1(this, continuationImpl);
        }
        Object obj = appLinkLocalDataSource$clearAppLinksExclusion$1.f43995b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appLinkLocalDataSource$clearAppLinksExclusion$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43992a.getF43530b();
                AppLinkLocalDataSource$clearAppLinksExclusion$2$1 appLinkLocalDataSource$clearAppLinksExclusion$2$1 = new AppLinkLocalDataSource$clearAppLinksExclusion$2$1(this, null);
                appLinkLocalDataSource$clearAppLinksExclusion$1.d = 1;
                if (BuildersKt.f(f43530b, appLinkLocalDataSource$clearAppLinksExclusion$2$1, appLinkLocalDataSource$clearAppLinksExclusion$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
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
    public final Object b(ContinuationImpl continuationImpl) throws Throwable {
        AppLinkLocalDataSource$deleteContributionLinkToLaunch$1 appLinkLocalDataSource$deleteContributionLinkToLaunch$1;
        Object failure;
        if (continuationImpl instanceof AppLinkLocalDataSource$deleteContributionLinkToLaunch$1) {
            appLinkLocalDataSource$deleteContributionLinkToLaunch$1 = (AppLinkLocalDataSource$deleteContributionLinkToLaunch$1) continuationImpl;
            int i2 = appLinkLocalDataSource$deleteContributionLinkToLaunch$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appLinkLocalDataSource$deleteContributionLinkToLaunch$1.d = i2 - Integer.MIN_VALUE;
            } else {
                appLinkLocalDataSource$deleteContributionLinkToLaunch$1 = new AppLinkLocalDataSource$deleteContributionLinkToLaunch$1(this, continuationImpl);
            }
        } else {
            appLinkLocalDataSource$deleteContributionLinkToLaunch$1 = new AppLinkLocalDataSource$deleteContributionLinkToLaunch$1(this, continuationImpl);
        }
        Object obj = appLinkLocalDataSource$deleteContributionLinkToLaunch$1.f43998b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appLinkLocalDataSource$deleteContributionLinkToLaunch$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43992a.getF43530b();
                AppLinkLocalDataSource$deleteContributionLinkToLaunch$2$1 appLinkLocalDataSource$deleteContributionLinkToLaunch$2$1 = new AppLinkLocalDataSource$deleteContributionLinkToLaunch$2$1(this, null);
                appLinkLocalDataSource$deleteContributionLinkToLaunch$1.d = 1;
                if (BuildersKt.f(f43530b, appLinkLocalDataSource$deleteContributionLinkToLaunch$2$1, appLinkLocalDataSource$deleteContributionLinkToLaunch$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
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
    public final Object c(ContinuationImpl continuationImpl) throws Throwable {
        AppLinkLocalDataSource$getContributionLinkToLaunch$1 appLinkLocalDataSource$getContributionLinkToLaunch$1;
        Object failure;
        if (continuationImpl instanceof AppLinkLocalDataSource$getContributionLinkToLaunch$1) {
            appLinkLocalDataSource$getContributionLinkToLaunch$1 = (AppLinkLocalDataSource$getContributionLinkToLaunch$1) continuationImpl;
            int i2 = appLinkLocalDataSource$getContributionLinkToLaunch$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appLinkLocalDataSource$getContributionLinkToLaunch$1.d = i2 - Integer.MIN_VALUE;
            } else {
                appLinkLocalDataSource$getContributionLinkToLaunch$1 = new AppLinkLocalDataSource$getContributionLinkToLaunch$1(this, continuationImpl);
            }
        } else {
            appLinkLocalDataSource$getContributionLinkToLaunch$1 = new AppLinkLocalDataSource$getContributionLinkToLaunch$1(this, continuationImpl);
        }
        Object objF = appLinkLocalDataSource$getContributionLinkToLaunch$1.f44001b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appLinkLocalDataSource$getContributionLinkToLaunch$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43992a.getF43530b();
                AppLinkLocalDataSource$getContributionLinkToLaunch$2$1 appLinkLocalDataSource$getContributionLinkToLaunch$2$1 = new AppLinkLocalDataSource$getContributionLinkToLaunch$2$1(this, null);
                appLinkLocalDataSource$getContributionLinkToLaunch$1.d = 1;
                objF = BuildersKt.f(f43530b, appLinkLocalDataSource$getContributionLinkToLaunch$2$1, appLinkLocalDataSource$getContributionLinkToLaunch$1);
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
            failure = new Result((ContributionLink) objF);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
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
    public final Object d(ContinuationImpl continuationImpl) throws Throwable {
        AppLinkLocalDataSource$getExcludedLinks$1 appLinkLocalDataSource$getExcludedLinks$1;
        Object failure;
        if (continuationImpl instanceof AppLinkLocalDataSource$getExcludedLinks$1) {
            appLinkLocalDataSource$getExcludedLinks$1 = (AppLinkLocalDataSource$getExcludedLinks$1) continuationImpl;
            int i2 = appLinkLocalDataSource$getExcludedLinks$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appLinkLocalDataSource$getExcludedLinks$1.d = i2 - Integer.MIN_VALUE;
            } else {
                appLinkLocalDataSource$getExcludedLinks$1 = new AppLinkLocalDataSource$getExcludedLinks$1(this, continuationImpl);
            }
        } else {
            appLinkLocalDataSource$getExcludedLinks$1 = new AppLinkLocalDataSource$getExcludedLinks$1(this, continuationImpl);
        }
        Object objF = appLinkLocalDataSource$getExcludedLinks$1.f44004b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appLinkLocalDataSource$getExcludedLinks$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43992a.getF43530b();
                AppLinkLocalDataSource$getExcludedLinks$2$1 appLinkLocalDataSource$getExcludedLinks$2$1 = new AppLinkLocalDataSource$getExcludedLinks$2$1(this, null);
                appLinkLocalDataSource$getExcludedLinks$1.d = 1;
                objF = BuildersKt.f(f43530b, appLinkLocalDataSource$getExcludedLinks$2$1, appLinkLocalDataSource$getExcludedLinks$1);
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
            failure = new Result((List) objF);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
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
    public final Object e(ContributionLink contributionLink, ContinuationImpl continuationImpl) throws Throwable {
        AppLinkLocalDataSource$saveContributionLinkToLaunch$1 appLinkLocalDataSource$saveContributionLinkToLaunch$1;
        Object failure;
        if (continuationImpl instanceof AppLinkLocalDataSource$saveContributionLinkToLaunch$1) {
            appLinkLocalDataSource$saveContributionLinkToLaunch$1 = (AppLinkLocalDataSource$saveContributionLinkToLaunch$1) continuationImpl;
            int i2 = appLinkLocalDataSource$saveContributionLinkToLaunch$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appLinkLocalDataSource$saveContributionLinkToLaunch$1.d = i2 - Integer.MIN_VALUE;
            } else {
                appLinkLocalDataSource$saveContributionLinkToLaunch$1 = new AppLinkLocalDataSource$saveContributionLinkToLaunch$1(this, continuationImpl);
            }
        } else {
            appLinkLocalDataSource$saveContributionLinkToLaunch$1 = new AppLinkLocalDataSource$saveContributionLinkToLaunch$1(this, continuationImpl);
        }
        Object obj = appLinkLocalDataSource$saveContributionLinkToLaunch$1.f44007b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appLinkLocalDataSource$saveContributionLinkToLaunch$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43992a.getF43530b();
                AppLinkLocalDataSource$saveContributionLinkToLaunch$2$1 appLinkLocalDataSource$saveContributionLinkToLaunch$2$1 = new AppLinkLocalDataSource$saveContributionLinkToLaunch$2$1(this, contributionLink, null);
                appLinkLocalDataSource$saveContributionLinkToLaunch$1.d = 1;
                if (BuildersKt.f(f43530b, appLinkLocalDataSource$saveContributionLinkToLaunch$2$1, appLinkLocalDataSource$saveContributionLinkToLaunch$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
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
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007f, code lost:
    
        if (kotlinx.coroutines.BuildersKt.f(r6, r7, r0) == r1) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(java.util.List r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) throws java.lang.Throwable {
        /*
            r8 = this;
            boolean r0 = r10 instanceof com.vuitton.android.data.datasource.config.AppLinkLocalDataSource$upsertAppLinkExclusions$1
            if (r0 == 0) goto L13
            r0 = r10
            com.vuitton.android.data.datasource.config.AppLinkLocalDataSource$upsertAppLinkExclusions$1 r0 = (com.vuitton.android.data.datasource.config.AppLinkLocalDataSource$upsertAppLinkExclusions$1) r0
            int r1 = r0.f44015h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44015h = r1
            goto L18
        L13:
            com.vuitton.android.data.datasource.config.AppLinkLocalDataSource$upsertAppLinkExclusions$1 r0 = new com.vuitton.android.data.datasource.config.AppLinkLocalDataSource$upsertAppLinkExclusions$1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.f44014f
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f44015h
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L4a
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2f
            java.util.List r8 = r0.f44011b
            java.util.List r8 = (java.util.List) r8
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L8a
            goto L82
        L2f:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r3
        L35:
            int r9 = r0.f44013e
            int r2 = r0.d
            int r5 = r0.f44012c
            java.util.List r6 = r0.f44011b
            java.util.List r6 = (java.util.List) r6
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L8a
            kotlin.Result r10 = (kotlin.Result) r10     // Catch: java.lang.Throwable -> L8a
            r10.getClass()     // Catch: java.lang.Throwable -> L8a
            r10 = r9
            r9 = r6
            goto L66
        L4a:
            kotlin.ResultKt.b(r10)
            kotlin.Result$Companion r10 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L8a
            r10 = r9
            java.util.List r10 = (java.util.List) r10     // Catch: java.lang.Throwable -> L8a
            r0.f44011b = r10     // Catch: java.lang.Throwable -> L8a
            r10 = 0
            r0.f44012c = r10     // Catch: java.lang.Throwable -> L8a
            r0.d = r10     // Catch: java.lang.Throwable -> L8a
            r0.f44013e = r10     // Catch: java.lang.Throwable -> L8a
            r0.f44015h = r5     // Catch: java.lang.Throwable -> L8a
            java.lang.Object r2 = r8.a(r0)     // Catch: java.lang.Throwable -> L8a
            if (r2 != r1) goto L64
            goto L81
        L64:
            r2 = r10
            r5 = r2
        L66:
            com.vuitton.android.core.schedulers.CoroutineDispatchers r6 = r8.f43992a     // Catch: java.lang.Throwable -> L8a
            kotlinx.coroutines.scheduling.DefaultIoScheduler r6 = r6.getF43530b()     // Catch: java.lang.Throwable -> L8a
            com.vuitton.android.data.datasource.config.AppLinkLocalDataSource$upsertAppLinkExclusions$2$1 r7 = new com.vuitton.android.data.datasource.config.AppLinkLocalDataSource$upsertAppLinkExclusions$2$1     // Catch: java.lang.Throwable -> L8a
            r7.<init>(r8, r9, r3)     // Catch: java.lang.Throwable -> L8a
            r0.f44011b = r3     // Catch: java.lang.Throwable -> L8a
            r0.f44012c = r5     // Catch: java.lang.Throwable -> L8a
            r0.d = r2     // Catch: java.lang.Throwable -> L8a
            r0.f44013e = r10     // Catch: java.lang.Throwable -> L8a
            r0.f44015h = r4     // Catch: java.lang.Throwable -> L8a
            java.lang.Object r8 = kotlinx.coroutines.BuildersKt.f(r6, r7, r0)     // Catch: java.lang.Throwable -> L8a
            if (r8 != r1) goto L82
        L81:
            return r1
        L82:
            kotlin.Unit r8 = kotlin.Unit.f71739a     // Catch: java.lang.Throwable -> L8a
            kotlin.Result r9 = new kotlin.Result     // Catch: java.lang.Throwable -> L8a
            r9.<init>(r8)     // Catch: java.lang.Throwable -> L8a
            goto L92
        L8a:
            r8 = move-exception
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r9 = new kotlin.Result$Failure
            r9.<init>(r8)
        L92:
            java.lang.Throwable r8 = kotlin.Result.a(r9)
            if (r8 != 0) goto L99
            goto La8
        L99:
            boolean r9 = r8 instanceof java.util.concurrent.CancellationException
            if (r9 != 0) goto Lad
            kotlin.Result$Failure r9 = new kotlin.Result$Failure
            r9.<init>(r8)
            kotlin.Result r8 = new kotlin.Result
            r8.<init>(r9)
            r9 = r8
        La8:
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r8 = r9.f71708b
            return r8
        Lad:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.datasource.config.AppLinkLocalDataSource.f(java.util.List, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
