package com.vuitton.android.domain.usecase.hotcontent;

import com.vuitton.android.domain.repository.HotContentRepository;
import com.vuitton.android.domain.usecase.account.order.GetOngoingOrdersUseCase;
import com.vuitton.android.domain.usecase.careservices.GetCareServiceListBffUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.osa.GetOnlineStoreAppointmentListUseCase;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceCategory;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceHotContent;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceShort;
import com.vuitton.foundation.model.domain.model.hotcontent.HotContentItem;
import com.vuitton.foundation.model.domain.model.osa.OnlineStoreAppointments;
import com.vuitton.foundation.model.domain.model.osa.OsaItem;
import defpackage.md;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;", "", "Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;", "getOngoingOrdersUseCase", "Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;", "getOnlineStoreAppointmentListUseCase", "Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;", "getCareServiceListBffUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/repository/HotContentRepository;", "hotContentRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/repository/HotContentRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetHotContentUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetOngoingOrdersUseCase f50088a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetOnlineStoreAppointmentListUseCase f50089b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetCareServiceListBffUseCase f50090c;
    public final IsFeatureAvailableUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HotContentRepository f50091e;

    @Inject
    public GetHotContentUseCase(GetOngoingOrdersUseCase getOngoingOrdersUseCase, GetOnlineStoreAppointmentListUseCase getOnlineStoreAppointmentListUseCase, GetCareServiceListBffUseCase getCareServiceListBffUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, HotContentRepository hotContentRepository) {
        getOngoingOrdersUseCase.getClass();
        getOnlineStoreAppointmentListUseCase.getClass();
        getCareServiceListBffUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        hotContentRepository.getClass();
        this.f50088a = getOngoingOrdersUseCase;
        this.f50089b = getOnlineStoreAppointmentListUseCase;
        this.f50090c = getCareServiceListBffUseCase;
        this.d = isFeatureAvailableUseCase;
        this.f50091e = hotContentRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Serializable a(GetHotContentUseCase getHotContentUseCase, ContinuationImpl continuationImpl) {
        GetHotContentUseCase$getCareServiceListOrEmpty$1 getHotContentUseCase$getCareServiceListOrEmpty$1;
        Object objA;
        if (continuationImpl instanceof GetHotContentUseCase$getCareServiceListOrEmpty$1) {
            getHotContentUseCase$getCareServiceListOrEmpty$1 = (GetHotContentUseCase$getCareServiceListOrEmpty$1) continuationImpl;
            int i2 = getHotContentUseCase$getCareServiceListOrEmpty$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getHotContentUseCase$getCareServiceListOrEmpty$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getHotContentUseCase$getCareServiceListOrEmpty$1 = new GetHotContentUseCase$getCareServiceListOrEmpty$1(getHotContentUseCase, continuationImpl);
            }
        } else {
            getHotContentUseCase$getCareServiceListOrEmpty$1 = new GetHotContentUseCase$getCareServiceListOrEmpty$1(getHotContentUseCase, continuationImpl);
        }
        Object obj = getHotContentUseCase$getCareServiceListOrEmpty$1.f50103b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getHotContentUseCase$getCareServiceListOrEmpty$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            GetCareServiceListBffUseCase getCareServiceListBffUseCase = getHotContentUseCase.f50090c;
            getHotContentUseCase$getCareServiceListOrEmpty$1.d = 1;
            objA = getCareServiceListBffUseCase.a(getHotContentUseCase$getCareServiceListOrEmpty$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (objA instanceof Result.Failure) {
            objA = null;
        }
        List list = (List) objA;
        List listO0 = list != null ? CollectionsKt.o0(list, new Comparator() { // from class: com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase$getCareServiceListOrEmpty$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(Object obj2, Object obj3) {
                return ((CareServiceShort) obj3).f66891j.compareTo(((CareServiceShort) obj2).f66891j);
            }
        }) : null;
        if (listO0 == null) {
            listO0 = EmptyList.f71768b;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : listO0) {
            if (((CareServiceShort) obj2).f66887e == CareServiceCategory.OnGoing) {
                arrayList.add(obj2);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            CareServiceHotContent careServiceHotContent = ((CareServiceShort) it.next()).n;
            HotContentItem.CareService careService = careServiceHotContent != null ? new HotContentItem.CareService(careServiceHotContent) : null;
            if (careService != null) {
                arrayList2.add(careService);
            }
        }
        return arrayList2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object b(GetHotContentUseCase getHotContentUseCase, ContinuationImpl continuationImpl) {
        GetHotContentUseCase$getOngoingAppointmentOrNull$1 getHotContentUseCase$getOngoingAppointmentOrNull$1;
        Object objA;
        List list;
        if (continuationImpl instanceof GetHotContentUseCase$getOngoingAppointmentOrNull$1) {
            getHotContentUseCase$getOngoingAppointmentOrNull$1 = (GetHotContentUseCase$getOngoingAppointmentOrNull$1) continuationImpl;
            int i2 = getHotContentUseCase$getOngoingAppointmentOrNull$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getHotContentUseCase$getOngoingAppointmentOrNull$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getHotContentUseCase$getOngoingAppointmentOrNull$1 = new GetHotContentUseCase$getOngoingAppointmentOrNull$1(getHotContentUseCase, continuationImpl);
            }
        } else {
            getHotContentUseCase$getOngoingAppointmentOrNull$1 = new GetHotContentUseCase$getOngoingAppointmentOrNull$1(getHotContentUseCase, continuationImpl);
        }
        Object obj = getHotContentUseCase$getOngoingAppointmentOrNull$1.f50105b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getHotContentUseCase$getOngoingAppointmentOrNull$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            GetOnlineStoreAppointmentListUseCase getOnlineStoreAppointmentListUseCase = getHotContentUseCase.f50089b;
            getHotContentUseCase$getOngoingAppointmentOrNull$1.d = 1;
            objA = getOnlineStoreAppointmentListUseCase.a(getHotContentUseCase$getOngoingAppointmentOrNull$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (objA instanceof Result.Failure) {
            objA = null;
        }
        OnlineStoreAppointments onlineStoreAppointments = (OnlineStoreAppointments) objA;
        if (onlineStoreAppointments == null || (list = onlineStoreAppointments.f67770a) == null) {
            return null;
        }
        return (OsaItem) CollectionsKt.firstOrNull(list);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0051, code lost:
    
        if (r6 == r1) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            boolean r0 = r7 instanceof com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase$getOngoingOrdersOrEmpty$1
            if (r0 == 0) goto L13
            r0 = r7
            com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase$getOngoingOrdersOrEmpty$1 r0 = (com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase$getOngoingOrdersOrEmpty$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase$getOngoingOrdersOrEmpty$1 r0 = new com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase$getOngoingOrdersOrEmpty$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f50107b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L39
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2f
            kotlin.ResultKt.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.f71708b
            goto L54
        L2f:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r3
        L35:
            kotlin.ResultKt.b(r7)
            goto L49
        L39:
            kotlin.ResultKt.b(r7)
            com.vuitton.android.domain.usecase.account.order.GetOngoingOrdersUseCase r6 = r6.f50088a
            r0.d = r5
            com.vuitton.android.domain.repository.OrderRepository r6 = r6.f49119a
            com.vuitton.foundation.model.domain.model.common.ResultStrategyLazy r7 = r6.j()
            if (r7 != r1) goto L49
            goto L53
        L49:
            com.vuitton.foundation.model.domain.model.common.ResultStrategy r7 = (com.vuitton.foundation.model.domain.model.common.ResultStrategy) r7
            r0.d = r4
            java.lang.Object r6 = r7.b(r0)
            if (r6 != r1) goto L54
        L53:
            return r1
        L54:
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            boolean r7 = r6 instanceof kotlin.Result.Failure
            if (r7 == 0) goto L5b
            r6 = r3
        L5b:
            com.vuitton.foundation.model.domain.model.account.orders.OrderList r6 = (com.vuitton.foundation.model.domain.model.account.orders.OrderList) r6
            if (r6 == 0) goto L6e
            java.util.List r6 = r6.f66314a
            if (r6 == 0) goto L6e
            java.lang.Iterable r6 = (java.lang.Iterable) r6
            com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase$getOngoingOrdersOrEmpty$$inlined$sortedByDescending$1 r7 = new com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase$getOngoingOrdersOrEmpty$$inlined$sortedByDescending$1
            r7.<init>()
            java.util.List r3 = kotlin.collections.CollectionsKt.o0(r6, r7)
        L6e:
            if (r3 != 0) goto L73
            kotlin.collections.EmptyList r6 = kotlin.collections.EmptyList.f71768b
            return r6
        L73:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase.c(com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0097 A[Catch: all -> 0x010b, TryCatch #0 {all -> 0x010b, blocks: (B:14:0x0033, B:53:0x00fb, B:54:0x0105, B:19:0x0042, B:39:0x00b3, B:49:0x00dd, B:42:0x00bc, B:43:0x00c7, B:45:0x00cd, B:47:0x00d8, B:22:0x0053, B:34:0x008f, B:36:0x0097, B:25:0x0060, B:30:0x006c, B:50:0x00e3, B:28:0x0066), top: B:67:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:41:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:42:0x00bc A[Catch: all -> 0x010b, PHI: r11
      0x00bc: PHI (r11v15 java.util.List) = (r11v14 java.util.List), (r11v20 java.util.List) binds: [B:35:0x0095, B:40:0x00b9] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x010b, blocks: (B:14:0x0033, B:53:0x00fb, B:54:0x0105, B:19:0x0042, B:39:0x00b3, B:49:0x00dd, B:42:0x00bc, B:43:0x00c7, B:45:0x00cd, B:47:0x00d8, B:22:0x0053, B:34:0x008f, B:36:0x0097, B:25:0x0060, B:30:0x006c, B:50:0x00e3, B:28:0x0066), top: B:67:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00cd A[Catch: all -> 0x010b, TryCatch #0 {all -> 0x010b, blocks: (B:14:0x0033, B:53:0x00fb, B:54:0x0105, B:19:0x0042, B:39:0x00b3, B:49:0x00dd, B:42:0x00bc, B:43:0x00c7, B:45:0x00cd, B:47:0x00d8, B:22:0x0053, B:34:0x008f, B:36:0x0097, B:25:0x0060, B:30:0x006c, B:50:0x00e3, B:28:0x0066), top: B:67:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x00d8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x00c7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00f8, code lost:
    
        if (r13 == r1) goto L52;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(boolean r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            Method dump skipped, instruction units count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase.d(boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
