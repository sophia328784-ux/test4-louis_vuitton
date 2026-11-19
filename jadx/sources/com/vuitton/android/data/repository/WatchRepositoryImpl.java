package com.vuitton.android.data.repository;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.catalog.ProductApi;
import com.vuitton.android.data.api.bff.user.SendEmailApi;
import com.vuitton.android.data.api.connectivity.BffWatchApi;
import com.vuitton.android.data.api.connectivity.WatchApiV2;
import com.vuitton.android.data.datasource.connectivity.ConnectedObjectLocalDataSource;
import com.vuitton.android.data.dto.connectivity.watch.PairWatchV2Dto;
import com.vuitton.android.data.dto.connectivity.watch.RenameWatchDto;
import com.vuitton.android.data.dto.connectivity.watch.WatchV2ResultDto;
import com.vuitton.android.data.exception.ConnectivityException;
import com.vuitton.android.data.exception.NetworkExceptionMapperKt;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.android.domain.repository.WatchRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.connectivity.Watch;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqItem;
import com.vuitton.foundation.model.domain.model.connectivity.common.Video;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import com.vuitton.foundation.model.domain.model.connectivity.sync.Faq;
import com.vuitton.foundation.model.domain.model.connectivity.sync.SectionConnectedObject;
import com.vuitton.foundation.model.domain.model.connectivity.sync.SectionFaq;
import com.vuitton.foundation.model.domain.model.connectivity.sync.SectionHome;
import com.vuitton.foundation.model.domain.model.connectivity.watch.PairWatchV2;
import com.vuitton.foundation.model.domain.model.connectivity.watch.SectionPromise;
import com.vuitton.foundation.model.domain.model.connectivity.watch.SectionWatchVideo;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.md;
import defpackage.zy0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0014BK\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\b\u0001\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/repository/WatchRepositoryImpl;", "Lcom/vuitton/android/domain/repository/WatchRepository;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/data/api/connectivity/WatchApiV2;", "watchApiV2", "Lcom/vuitton/android/data/api/connectivity/BffWatchApi;", "bffWatchApi", "Lcom/vuitton/android/data/api/bff/user/SendEmailApi;", "sendEmailApi", "Lcom/vuitton/android/data/api/bff/catalog/ProductApi;", "productApi", "Landroid/content/SharedPreferences;", "sharedPreferences", "Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;", "connectedObjectLocalDataSource", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "authTokenRepository", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/connectivity/WatchApiV2;Lcom/vuitton/android/data/api/connectivity/BffWatchApi;Lcom/vuitton/android/data/api/bff/user/SendEmailApi;Lcom/vuitton/android/data/api/bff/catalog/ProductApi;Landroid/content/SharedPreferences;Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WatchRepositoryImpl implements WatchRepository {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Companion f48175i = new Companion(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f48176j = "WatchRepositoryImpl";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f48177a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WatchApiV2 f48178b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BffWatchApi f48179c;
    public final SendEmailApi d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ProductApi f48180e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SharedPreferences f48181f;
    public final ConnectedObjectLocalDataSource g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AuthTokenRepository f48182h;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/data/repository/WatchRepositoryImpl$Companion;", "", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Inject
    public WatchRepositoryImpl(Logger logger, WatchApiV2 watchApiV2, BffWatchApi bffWatchApi, SendEmailApi sendEmailApi, ProductApi productApi, SharedPreferences sharedPreferences, ConnectedObjectLocalDataSource connectedObjectLocalDataSource, AuthTokenRepository authTokenRepository) {
        logger.getClass();
        watchApiV2.getClass();
        bffWatchApi.getClass();
        sendEmailApi.getClass();
        productApi.getClass();
        sharedPreferences.getClass();
        connectedObjectLocalDataSource.getClass();
        authTokenRepository.getClass();
        this.f48177a = logger;
        this.f48178b = watchApiV2;
        this.f48179c = bffWatchApi;
        this.d = sendEmailApi;
        this.f48180e = productApi;
        this.f48181f = sharedPreferences;
        this.g = connectedObjectLocalDataSource;
        this.f48182h = authTokenRepository;
    }

    public static final String j(WatchRepositoryImpl watchRepositoryImpl, String str) {
        watchRepositoryImpl.getClass();
        if (str == null) {
            str = null;
        }
        if (str == null) {
            return null;
        }
        switch (str) {
            case "QA050Z":
                SkuId.Companion companion = SkuId.INSTANCE;
                return "QBBB85";
            case "QA051Z":
                SkuId.Companion companion2 = SkuId.INSTANCE;
                return "QBBB86";
            case "QA052Z":
                SkuId.Companion companion3 = SkuId.INSTANCE;
                return "QBBB87";
            case "QA080Z":
                SkuId.Companion companion4 = SkuId.INSTANCE;
                return "QBBB94";
            case "QA081Z":
                SkuId.Companion companion5 = SkuId.INSTANCE;
                return "QBBB93";
            default:
                return null;
        }
    }

    @Override // com.vuitton.android.domain.repository.WatchRepository
    public final Video a(ConnectedObjectsConfig connectedObjectsConfig) throws ConnectivityException.NoWatchVideoException {
        SectionConnectedObject sectionConnectedObject;
        SectionPromise sectionPromise;
        SectionHome sectionHome = connectedObjectsConfig.f67332b;
        SectionWatchVideo sectionWatchVideo = (sectionHome == null || (sectionConnectedObject = sectionHome.f67342a) == null || (sectionPromise = sectionConnectedObject.f67337a) == null) ? null : sectionPromise.f67396h;
        if (sectionWatchVideo != null) {
            return new Video(sectionWatchVideo.f67398a, sectionWatchVideo.f67399b);
        }
        throw new ConnectivityException.NoWatchVideoException();
    }

    @Override // com.vuitton.android.domain.repository.WatchRepository
    public final Object b(boolean z, ContinuationImpl continuationImpl) throws Throwable {
        ConnectedObjectLocalDataSource connectedObjectLocalDataSource = this.g;
        if (z) {
            connectedObjectLocalDataSource.f44053a = null;
        }
        Collection collection = connectedObjectLocalDataSource.f44053a;
        if (collection == null) {
            collection = EmptyList.f71768b;
        }
        if (collection.isEmpty()) {
            collection = null;
        }
        if (collection != null) {
            return collection;
        }
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        Object objF = BuildersKt.f(DefaultIoScheduler.f75161b, new WatchRepositoryImpl$getWatches$3$1(this, null), continuationImpl);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : (List) objF;
    }

    @Override // com.vuitton.android.domain.repository.WatchRepository
    public final Object c(ConnectedObjectsConfig connectedObjectsConfig, Continuation continuation) {
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        return BuildersKt.f(DefaultIoScheduler.f75161b, new WatchRepositoryImpl$getWatchTutorialCategoryList$2(connectedObjectsConfig, null), continuation);
    }

    @Override // com.vuitton.android.domain.repository.WatchRepository
    public final Object d(ConnectedObjectsConfig connectedObjectsConfig, List list, ContinuationImpl continuationImpl) {
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        return BuildersKt.f(DefaultIoScheduler.f75161b, new WatchRepositoryImpl$getWatchfacePresentationList$2(connectedObjectsConfig, list, null), continuationImpl);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    @Override // com.vuitton.android.domain.repository.WatchRepository
    public final Object e(String str, String str2, ContinuationImpl continuationImpl) {
        WatchRepositoryImpl$renameWatch$1 watchRepositoryImpl$renameWatch$1;
        Object failure;
        String str3;
        String str4 = str;
        ConnectedObjectLocalDataSource connectedObjectLocalDataSource = this.g;
        if (continuationImpl instanceof WatchRepositoryImpl$renameWatch$1) {
            watchRepositoryImpl$renameWatch$1 = (WatchRepositoryImpl$renameWatch$1) continuationImpl;
            int i2 = watchRepositoryImpl$renameWatch$1.f48201f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                watchRepositoryImpl$renameWatch$1.f48201f = i2 - Integer.MIN_VALUE;
            } else {
                watchRepositoryImpl$renameWatch$1 = new WatchRepositoryImpl$renameWatch$1(this, continuationImpl);
            }
        } else {
            watchRepositoryImpl$renameWatch$1 = new WatchRepositoryImpl$renameWatch$1(this, continuationImpl);
        }
        Object obj = watchRepositoryImpl$renameWatch$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = watchRepositoryImpl$renameWatch$1.f48201f;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                BffWatchApi bffWatchApi = this.f48179c;
                RenameWatchDto renameWatchDto = new RenameWatchDto(str2);
                watchRepositoryImpl$renameWatch$1.f48198b = str4;
                watchRepositoryImpl$renameWatch$1.f48199c = str2;
                watchRepositoryImpl$renameWatch$1.f48201f = 1;
                if (bffWatchApi.renameWatch(str4, renameWatchDto, watchRepositoryImpl$renameWatch$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
                str3 = str2;
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                String str5 = watchRepositoryImpl$renameWatch$1.f48199c;
                str4 = watchRepositoryImpl$renameWatch$1.f48198b;
                ResultKt.b(obj);
                str3 = str5;
            }
            Iterable iterable = connectedObjectLocalDataSource.f44053a;
            if (iterable == null) {
                iterable = EmptyList.f71768b;
            }
            Iterable<Watch> iterable2 = iterable;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable2, 10));
            for (Watch watch : iterable2) {
                if (Intrinsics.c(watch.f67300a, str4)) {
                    String str6 = watch.f67300a;
                    String str7 = watch.f67301b;
                    String str8 = watch.f67302c;
                    String str9 = watch.d;
                    String str10 = watch.f67304f;
                    String str11 = watch.g;
                    int i4 = watch.f67305h;
                    String str12 = watch.f67306i;
                    str8.getClass();
                    watch = new Watch(str6, str7, str8, str9, str3, str10, str11, i4, str12, null);
                }
                arrayList.add(watch);
            }
            connectedObjectLocalDataSource.f44053a = arrayList;
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
        return NetworkExceptionMapperKt.a(((Result) failure).f71708b, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0097, code lost:
    
        if (r9.sendWatchEmail(r7, r0) == r1) goto L28;
     */
    @Override // com.vuitton.android.domain.repository.WatchRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch r10, java.lang.String r11, int r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            Method dump skipped, instruction units count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.WatchRepositoryImpl.f(com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch, java.lang.String, int, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:44:0x00be  */
    /* JADX WARN: Code duplicated, block: B:54:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.WatchRepository
    public final Object g(InAppDispatch inAppDispatch, PairWatchV2 pairWatchV2, ContinuationImpl continuationImpl) throws Throwable {
        WatchRepositoryImpl$pairWatchV2$1 watchRepositoryImpl$pairWatchV2$1;
        Object objC;
        String str;
        Throwable th;
        PairWatchV2 pairWatchV3;
        Object failure;
        PairWatchV2 pairWatchV4;
        String str2;
        if (continuationImpl instanceof WatchRepositoryImpl$pairWatchV2$1) {
            watchRepositoryImpl$pairWatchV2$1 = (WatchRepositoryImpl$pairWatchV2$1) continuationImpl;
            int i2 = watchRepositoryImpl$pairWatchV2$1.f48197f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                watchRepositoryImpl$pairWatchV2$1.f48197f = i2 - Integer.MIN_VALUE;
            } else {
                watchRepositoryImpl$pairWatchV2$1 = new WatchRepositoryImpl$pairWatchV2$1(this, continuationImpl);
            }
        } else {
            watchRepositoryImpl$pairWatchV2$1 = new WatchRepositoryImpl$pairWatchV2$1(this, continuationImpl);
        }
        Object objPairWatch = watchRepositoryImpl$pairWatchV2$1.d;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = watchRepositoryImpl$pairWatchV2$1.f48197f;
        try {
            if (i3 == 0) {
                ResultKt.b(objPairWatch);
                watchRepositoryImpl$pairWatchV2$1.f48194b = inAppDispatch;
                watchRepositoryImpl$pairWatchV2$1.f48195c = pairWatchV2;
                watchRepositoryImpl$pairWatchV2$1.f48197f = 1;
                objC = this.f48182h.c(watchRepositoryImpl$pairWatchV2$1);
                if (objC != obj) {
                }
                return obj;
            }
            if (i3 == 1) {
                pairWatchV2 = watchRepositoryImpl$pairWatchV2$1.f48195c;
                inAppDispatch = watchRepositoryImpl$pairWatchV2$1.f48194b;
                ResultKt.b(objPairWatch);
                objC = ((Result) objPairWatch).f71708b;
            } else {
                if (i3 == 2) {
                    pairWatchV3 = watchRepositoryImpl$pairWatchV2$1.f48195c;
                    try {
                        ResultKt.b(objPairWatch);
                        failure = (WatchV2ResultDto) objPairWatch;
                        Result.Companion companion = Result.INSTANCE;
                    } catch (Throwable th2) {
                        th = th2;
                        Result.Companion companion2 = Result.INSTANCE;
                        failure = new Result.Failure(th);
                    }
                    if (Result.a(failure) == null) {
                        throw new ConnectivityException.WatchV2PairedException();
                    }
                    watchRepositoryImpl$pairWatchV2$1.f48194b = null;
                    watchRepositoryImpl$pairWatchV2$1.f48195c = pairWatchV3;
                    watchRepositoryImpl$pairWatchV2$1.f48197f = 3;
                    objPairWatch = b(true, watchRepositoryImpl$pairWatchV2$1);
                    if (objPairWatch != obj) {
                        pairWatchV4 = pairWatchV3;
                    }
                    return obj;
                }
                if (i3 != 3) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                pairWatchV4 = watchRepositoryImpl$pairWatchV2$1.f48195c;
                ResultKt.b(objPairWatch);
            }
            for (Watch watch : (Iterable) objPairWatch) {
                if (!Intrinsics.c(watch.f67302c, pairWatchV4.f67386a) && (str2 = watch.d) != null && str2.length() != 0) {
                    return watch;
                }
            }
            zy0.c("Collection contains no element matching the predicate.");
            return null;
            Result.Companion companion3 = Result.INSTANCE;
            WatchApiV2 watchApiV2 = this.f48178b;
            String strA = TokenExtKt.a(str);
            pairWatchV2.getClass();
            PairWatchV2Dto pairWatchV2Dto = new PairWatchV2Dto(pairWatchV2.f67386a, pairWatchV2.f67387b, pairWatchV2.f67388c);
            String strH = inAppDispatch.d.h();
            watchRepositoryImpl$pairWatchV2$1.f48194b = null;
            watchRepositoryImpl$pairWatchV2$1.f48195c = pairWatchV2;
            watchRepositoryImpl$pairWatchV2$1.f48197f = 2;
            objPairWatch = watchApiV2.pairWatch(strA, pairWatchV2Dto, strH, watchRepositoryImpl$pairWatchV2$1);
            if (objPairWatch != obj) {
                pairWatchV3 = pairWatchV2;
                failure = (WatchV2ResultDto) objPairWatch;
                Result.Companion companion4 = Result.INSTANCE;
                if (Result.a(failure) == null) {
                    throw new ConnectivityException.WatchV2PairedException();
                }
                watchRepositoryImpl$pairWatchV2$1.f48194b = null;
                watchRepositoryImpl$pairWatchV2$1.f48195c = pairWatchV3;
                watchRepositoryImpl$pairWatchV2$1.f48197f = 3;
                objPairWatch = b(true, watchRepositoryImpl$pairWatchV2$1);
                if (objPairWatch != obj) {
                    pairWatchV4 = pairWatchV3;
                    while (r13.hasNext()) {
                        if (!Intrinsics.c(watch.f67302c, pairWatchV4.f67386a)) {
                        }
                    }
                    zy0.c("Collection contains no element matching the predicate.");
                    return null;
                }
            }
        } catch (Throwable th3) {
            PairWatchV2 pairWatchV5 = pairWatchV2;
            th = th3;
            pairWatchV3 = pairWatchV5;
            Result.Companion companion5 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        ResultKt.b(objC);
        str = (String) objC;
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0089, code lost:
    
        if (r10 == r1) goto L27;
     */
    @Override // com.vuitton.android.domain.repository.WatchRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch r8, com.vuitton.foundation.model.domain.model.connectivity.watch.UnpairWatchV2 r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) throws com.vuitton.android.data.exception.ConnectivityException.WatchV2UnpairedException {
        /*
            r7 = this;
            boolean r0 = r10 instanceof com.vuitton.android.data.repository.WatchRepositoryImpl$unpairWatchV2$1
            if (r0 == 0) goto L13
            r0 = r10
            com.vuitton.android.data.repository.WatchRepositoryImpl$unpairWatchV2$1 r0 = (com.vuitton.android.data.repository.WatchRepositoryImpl$unpairWatchV2$1) r0
            int r1 = r0.f48213h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f48213h = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.WatchRepositoryImpl$unpairWatchV2$1 r0 = new com.vuitton.android.data.repository.WatchRepositoryImpl$unpairWatchV2$1
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.f48212f
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f48213h
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L47
            if (r2 == r4) goto L33
            if (r2 != r3) goto L2d
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L2b
            goto L8c
        L2b:
            r7 = move-exception
            goto L97
        L2d:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            return r5
        L33:
            int r7 = r0.f48211e
            com.vuitton.android.data.repository.WatchRepositoryImpl r8 = r0.d
            com.vuitton.foundation.model.domain.model.connectivity.watch.UnpairWatchV2 r9 = r0.f48210c
            com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch r2 = r0.f48209b
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L2b
            kotlin.Result r10 = (kotlin.Result) r10     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r10 = r10.f71708b     // Catch: java.lang.Throwable -> L2b
            r6 = r2
            r2 = r7
            r7 = r8
            r8 = r6
            goto L60
        L47:
            kotlin.ResultKt.b(r10)
            kotlin.Result$Companion r10 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L2b
            com.vuitton.android.domain.repository.AuthTokenRepository r10 = r7.f48182h     // Catch: java.lang.Throwable -> L2b
            r0.f48209b = r8     // Catch: java.lang.Throwable -> L2b
            r0.f48210c = r9     // Catch: java.lang.Throwable -> L2b
            r0.d = r7     // Catch: java.lang.Throwable -> L2b
            r2 = 0
            r0.f48211e = r2     // Catch: java.lang.Throwable -> L2b
            r0.f48213h = r4     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r10 = r10.c(r0)     // Catch: java.lang.Throwable -> L2b
            if (r10 != r1) goto L60
            goto L8b
        L60:
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L2b
            java.lang.String r10 = (java.lang.String) r10     // Catch: java.lang.Throwable -> L2b
            com.vuitton.android.data.api.connectivity.WatchApiV2 r7 = r7.f48178b     // Catch: java.lang.Throwable -> L2b
            java.lang.String r10 = com.vuitton.android.data.repository.TokenExtKt.a(r10)     // Catch: java.lang.Throwable -> L2b
            r9.getClass()     // Catch: java.lang.Throwable -> L2b
            com.vuitton.android.data.dto.connectivity.watch.UnpairWatchV2Dto r4 = new com.vuitton.android.data.dto.connectivity.watch.UnpairWatchV2Dto     // Catch: java.lang.Throwable -> L2b
            java.lang.String r9 = r9.f67404a     // Catch: java.lang.Throwable -> L2b
            r4.<init>(r9)     // Catch: java.lang.Throwable -> L2b
            com.vuitton.foundation.model.domain.model.dispatch.locale.ResourceLocale r8 = r8.d     // Catch: java.lang.Throwable -> L2b
            java.lang.String r8 = r8.h()     // Catch: java.lang.Throwable -> L2b
            r0.f48209b = r5     // Catch: java.lang.Throwable -> L2b
            r0.f48210c = r5     // Catch: java.lang.Throwable -> L2b
            r0.d = r5     // Catch: java.lang.Throwable -> L2b
            r0.f48211e = r2     // Catch: java.lang.Throwable -> L2b
            r0.f48213h = r3     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r10 = r7.unpairWatch(r10, r4, r8, r0)     // Catch: java.lang.Throwable -> L2b
            if (r10 != r1) goto L8c
        L8b:
            return r1
        L8c:
            com.vuitton.android.data.dto.connectivity.watch.WatchV2ResultDto r10 = (com.vuitton.android.data.dto.connectivity.watch.WatchV2ResultDto) r10     // Catch: java.lang.Throwable -> L2b
            boolean r7 = r10.f45667a     // Catch: java.lang.Throwable -> L2b
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)     // Catch: java.lang.Throwable -> L2b
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L2b
            goto L9f
        L97:
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r8 = new kotlin.Result$Failure
            r8.<init>(r7)
            r7 = r8
        L9f:
            boolean r8 = r7 instanceof kotlin.Result.Failure
            if (r8 == 0) goto La4
            goto La5
        La4:
            r5 = r7
        La5:
            java.lang.Boolean r7 = java.lang.Boolean.TRUE
            boolean r8 = kotlin.jvm.internal.Intrinsics.c(r5, r7)
            if (r8 == 0) goto Lae
            return r7
        Lae:
            com.vuitton.android.data.exception.ConnectivityException$WatchV2UnpairedException r7 = new com.vuitton.android.data.exception.ConnectivityException$WatchV2UnpairedException
            r7.<init>()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.WatchRepositoryImpl.h(com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch, com.vuitton.foundation.model.domain.model.connectivity.watch.UnpairWatchV2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // com.vuitton.android.domain.repository.WatchRepository
    public final ArrayList i(ConnectedObjectsConfig connectedObjectsConfig) throws ConnectivityException.WatchFaqException {
        SectionConnectedObject sectionConnectedObject;
        SectionPromise sectionPromise;
        List list;
        SectionHome sectionHome = connectedObjectsConfig.f67332b;
        if (sectionHome != null && (sectionConnectedObject = sectionHome.f67342a) != null && (sectionPromise = sectionConnectedObject.f67337a) != null && (list = sectionPromise.f67395f) != null) {
            if (list.isEmpty()) {
                list = null;
            }
            if (list != null) {
                ArrayList<Faq> arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    Iterable iterable = ((SectionFaq) it.next()).f67341a;
                    if (iterable == null) {
                        iterable = EmptyList.f71768b;
                    }
                    CollectionsKt.j(arrayList, iterable);
                }
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                for (Faq faq : arrayList) {
                    arrayList2.add(new FaqItem(faq.f67335b, faq.f67336c));
                }
                return arrayList2;
            }
        }
        throw new ConnectivityException.WatchFaqException();
    }
}
