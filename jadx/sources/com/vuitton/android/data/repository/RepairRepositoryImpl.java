package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.user.RepairApi;
import com.vuitton.android.data.datasource.repair.RepairLocalDataSource;
import com.vuitton.android.data.dto.careservices.CancellationReasonDto;
import com.vuitton.android.data.dto.careservices.RepairCancellationReasonDto;
import com.vuitton.android.data.dto.careservices.mapper.RepairStatusMapperKt;
import com.vuitton.android.data.dto.repair.RepairStatusDto;
import com.vuitton.android.data.dto.repair.RepairStatusTranslationDto;
import com.vuitton.android.domain.repository.RepairRepository;
import com.vuitton.foundation.model.domain.model.careservices.CancellationReason;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.repair.RepairStatus;
import com.vuitton.foundation.model.domain.model.repair.RepairStatusTranslation;
import defpackage.md;
import java.util.ArrayList;
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
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/repository/RepairRepositoryImpl;", "Lcom/vuitton/android/domain/repository/RepairRepository;", "Lcom/vuitton/android/data/api/bff/user/RepairApi;", "repairApi", "Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;", "repairLocalDataSource", "<init>", "(Lcom/vuitton/android/data/api/bff/user/RepairApi;Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RepairRepositoryImpl implements RepairRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RepairApi f47939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RepairLocalDataSource f47940b;

    @Inject
    public RepairRepositoryImpl(RepairApi repairApi, RepairLocalDataSource repairLocalDataSource) {
        repairApi.getClass();
        repairLocalDataSource.getClass();
        this.f47939a = repairApi;
        this.f47940b = repairLocalDataSource;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.RepairRepository
    public final Object a(String str, ContinuationImpl continuationImpl) {
        RepairRepositoryImpl$getRepairCancellationReason$1 repairRepositoryImpl$getRepairCancellationReason$1;
        Object failure;
        Object next;
        ArrayList arrayList;
        List list;
        if (continuationImpl instanceof RepairRepositoryImpl$getRepairCancellationReason$1) {
            repairRepositoryImpl$getRepairCancellationReason$1 = (RepairRepositoryImpl$getRepairCancellationReason$1) continuationImpl;
            int i2 = repairRepositoryImpl$getRepairCancellationReason$1.f47943e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                repairRepositoryImpl$getRepairCancellationReason$1.f47943e = i2 - Integer.MIN_VALUE;
            } else {
                repairRepositoryImpl$getRepairCancellationReason$1 = new RepairRepositoryImpl$getRepairCancellationReason$1(this, continuationImpl);
            }
        } else {
            repairRepositoryImpl$getRepairCancellationReason$1 = new RepairRepositoryImpl$getRepairCancellationReason$1(this, continuationImpl);
        }
        Object repairCancellationReason = repairRepositoryImpl$getRepairCancellationReason$1.f47942c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = repairRepositoryImpl$getRepairCancellationReason$1.f47943e;
        try {
            if (i3 == 0) {
                ResultKt.b(repairCancellationReason);
                Result.Companion companion = Result.INSTANCE;
                RepairApi repairApi = this.f47939a;
                repairRepositoryImpl$getRepairCancellationReason$1.f47941b = str;
                repairRepositoryImpl$getRepairCancellationReason$1.f47943e = 1;
                repairCancellationReason = repairApi.getRepairCancellationReason(repairRepositoryImpl$getRepairCancellationReason$1);
                if (repairCancellationReason == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                str = repairRepositoryImpl$getRepairCancellationReason$1.f47941b;
                ResultKt.b(repairCancellationReason);
            }
            Iterator it = ((Iterable) repairCancellationReason).iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((RepairCancellationReasonDto) next).f44854a, str));
            RepairCancellationReasonDto repairCancellationReasonDto = (RepairCancellationReasonDto) next;
            if (repairCancellationReasonDto == null || (list = repairCancellationReasonDto.f44855b) == null) {
                arrayList = null;
            } else {
                ArrayList<CancellationReasonDto> arrayListZ = CollectionsKt.z(list);
                arrayList = new ArrayList(CollectionsKt.t(arrayListZ, 10));
                for (CancellationReasonDto cancellationReasonDto : arrayListZ) {
                    arrayList.add(new CancellationReason(cancellationReasonDto.f44793a, cancellationReasonDto.f44794b));
                }
            }
            Result.Companion companion2 = Result.INSTANCE;
            failure = arrayList;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        List list2 = (List) (failure instanceof Result.Failure ? null : failure);
        return list2 == null ? EmptyList.f71768b : list2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.RepairRepository
    public final Object b(InAppDispatch inAppDispatch, ContinuationImpl continuationImpl) {
        RepairRepositoryImpl$getRepairStatusMap$1 repairRepositoryImpl$getRepairStatusMap$1;
        String str;
        if (continuationImpl instanceof RepairRepositoryImpl$getRepairStatusMap$1) {
            repairRepositoryImpl$getRepairStatusMap$1 = (RepairRepositoryImpl$getRepairStatusMap$1) continuationImpl;
            int i2 = repairRepositoryImpl$getRepairStatusMap$1.f47946e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                repairRepositoryImpl$getRepairStatusMap$1.f47946e = i2 - Integer.MIN_VALUE;
            } else {
                repairRepositoryImpl$getRepairStatusMap$1 = new RepairRepositoryImpl$getRepairStatusMap$1(this, continuationImpl);
            }
        } else {
            repairRepositoryImpl$getRepairStatusMap$1 = new RepairRepositoryImpl$getRepairStatusMap$1(this, continuationImpl);
        }
        Object translations = repairRepositoryImpl$getRepairStatusMap$1.f47945c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = repairRepositoryImpl$getRepairStatusMap$1.f47946e;
        RepairLocalDataSource repairLocalDataSource = this.f47940b;
        if (i3 == 0) {
            ResultKt.b(translations);
            String strH = inAppDispatch.d.h();
            repairLocalDataSource.getClass();
            strH.getClass();
            List list = (List) repairLocalDataSource.f44268a.get(strH);
            List list2 = list;
            if (list2 != null && !list2.isEmpty()) {
                return list;
            }
            repairRepositoryImpl$getRepairStatusMap$1.f47944b = strH;
            repairRepositoryImpl$getRepairStatusMap$1.f47946e = 1;
            translations = this.f47939a.getTranslations(repairRepositoryImpl$getRepairStatusMap$1);
            if (translations == coroutineSingletons) {
                return coroutineSingletons;
            }
            str = strH;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str = repairRepositoryImpl$getRepairStatusMap$1.f47944b;
            ResultKt.b(translations);
        }
        ArrayList<RepairStatusTranslationDto> arrayList = new ArrayList();
        for (Object obj : (Iterable) translations) {
            if (((RepairStatusTranslationDto) obj).f46756a != null) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        for (RepairStatusTranslationDto repairStatusTranslationDto : arrayList) {
            RepairStatusDto repairStatusDto = repairStatusTranslationDto.f46756a;
            repairStatusDto.getClass();
            RepairStatus repairStatusA = RepairStatusMapperKt.a(repairStatusDto);
            String str2 = repairStatusTranslationDto.f46757b;
            String str3 = "";
            if (str2 == null) {
                str2 = "";
            }
            String str4 = repairStatusTranslationDto.f46758c;
            if (str4 != null) {
                str3 = str4;
            }
            arrayList2.add(new RepairStatusTranslation(repairStatusA, str2, str3));
        }
        repairLocalDataSource.getClass();
        str.getClass();
        repairLocalDataSource.f44268a.put(str, arrayList2);
        return arrayList2;
    }
}
