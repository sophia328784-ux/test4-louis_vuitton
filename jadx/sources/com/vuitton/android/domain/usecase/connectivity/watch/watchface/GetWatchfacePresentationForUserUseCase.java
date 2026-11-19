package com.vuitton.android.domain.usecase.connectivity.watch.watchface;

import com.vuitton.android.domain.repository.WatchRepository;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.config.RequireCachedConnectedObjectsConfigUseCase;
import com.vuitton.foundation.model.domain.model.connectivity.Watch;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationForUserUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;", "requireCachedConnectedObjectsConfigUseCase", "Lcom/vuitton/android/domain/repository/WatchRepository;", "watchRepository", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/WatchRepository;Lcom/vuitton/android/domain/service/authentication/UserSessionService;)V", "Companion", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetWatchfacePresentationForUserUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedConnectedObjectsConfigUseCase f49856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WatchRepository f49857b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UserSessionService f49858c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationForUserUseCase$Companion;", "", "", "VERSION_2", "I", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public GetWatchfacePresentationForUserUseCase(RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase, WatchRepository watchRepository, UserSessionService userSessionService) {
        requireCachedConnectedObjectsConfigUseCase.getClass();
        watchRepository.getClass();
        userSessionService.getClass();
        this.f49856a = requireCachedConnectedObjectsConfigUseCase;
        this.f49857b = watchRepository;
        this.f49858c = userSessionService;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0076  */
    /* JADX WARN: Code duplicated, block: B:34:0x0080  */
    /* JADX WARN: Code duplicated, block: B:37:0x0097 A[LOOP:0: B:35:0x0091->B:37:0x0097, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:42:0x00b4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetWatchfacePresentationForUserUseCase$run$1 getWatchfacePresentationForUserUseCase$run$1;
        ConnectedObjectsConfig connectedObjectsConfig;
        List list;
        ArrayList arrayList;
        Iterator it;
        List listO;
        Object objD;
        if (continuationImpl instanceof GetWatchfacePresentationForUserUseCase$run$1) {
            getWatchfacePresentationForUserUseCase$run$1 = (GetWatchfacePresentationForUserUseCase$run$1) continuationImpl;
            int i2 = getWatchfacePresentationForUserUseCase$run$1.f49861e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getWatchfacePresentationForUserUseCase$run$1.f49861e = i2 - Integer.MIN_VALUE;
            } else {
                getWatchfacePresentationForUserUseCase$run$1 = new GetWatchfacePresentationForUserUseCase$run$1(this, continuationImpl);
            }
        } else {
            getWatchfacePresentationForUserUseCase$run$1 = new GetWatchfacePresentationForUserUseCase$run$1(this, continuationImpl);
        }
        Object objA = getWatchfacePresentationForUserUseCase$run$1.f49860c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getWatchfacePresentationForUserUseCase$run$1.f49861e;
        WatchRepository watchRepository = this.f49857b;
        if (i3 == 0) {
            ResultKt.b(objA);
            getWatchfacePresentationForUserUseCase$run$1.f49861e = 1;
            objA = this.f49856a.a(getWatchfacePresentationForUserUseCase$run$1);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            ResultKt.b(objA);
        } else {
            if (i3 != 2) {
                if (i3 == 3) {
                    ResultKt.b(objA);
                    return objA;
                }
                if (i3 == 4) {
                    ResultKt.b(objA);
                    return objA;
                }
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            connectedObjectsConfig = getWatchfacePresentationForUserUseCase$run$1.f49859b;
            ResultKt.b(objA);
        }
        list = (List) objA;
        if (list.isEmpty()) {
            listO = CollectionsKt.O(new Integer(2));
        } else {
            List list2 = list;
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(new Integer(((Watch) it.next()).f67305h));
            }
            listO = arrayList;
        }
        getWatchfacePresentationForUserUseCase$run$1.f49859b = null;
        getWatchfacePresentationForUserUseCase$run$1.f49861e = 3;
        objD = watchRepository.d(connectedObjectsConfig, listO, getWatchfacePresentationForUserUseCase$run$1);
        if (objD != coroutineSingletons) {
            return coroutineSingletons;
        }
        return objD;
        ConnectedObjectsConfig connectedObjectsConfig2 = (ConnectedObjectsConfig) objA;
        if (this.f49858c.b()) {
            getWatchfacePresentationForUserUseCase$run$1.f49859b = connectedObjectsConfig2;
            getWatchfacePresentationForUserUseCase$run$1.f49861e = 2;
            Object objB = watchRepository.b(true, getWatchfacePresentationForUserUseCase$run$1);
            if (objB != coroutineSingletons) {
                objA = objB;
                connectedObjectsConfig = connectedObjectsConfig2;
                list = (List) objA;
                if (list.isEmpty()) {
                    listO = CollectionsKt.O(new Integer(2));
                } else {
                    List list3 = list;
                    arrayList = new ArrayList(CollectionsKt.t(list3, 10));
                    it = list3.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new Integer(((Watch) it.next()).f67305h));
                    }
                    listO = arrayList;
                }
                getWatchfacePresentationForUserUseCase$run$1.f49859b = null;
                getWatchfacePresentationForUserUseCase$run$1.f49861e = 3;
                objD = watchRepository.d(connectedObjectsConfig, listO, getWatchfacePresentationForUserUseCase$run$1);
                if (objD != coroutineSingletons) {
                    return objD;
                }
            }
        } else {
            List listO2 = CollectionsKt.O(new Integer(2));
            getWatchfacePresentationForUserUseCase$run$1.f49859b = null;
            getWatchfacePresentationForUserUseCase$run$1.f49861e = 4;
            Object objD2 = watchRepository.d(connectedObjectsConfig2, listO2, getWatchfacePresentationForUserUseCase$run$1);
            if (objD2 != coroutineSingletons) {
                return objD2;
            }
        }
        return coroutineSingletons;
    }
}
