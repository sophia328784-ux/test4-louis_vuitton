package com.vuitton.android.domain.usecase.dynamicyield;

import com.vuitton.android.domain.repository.DynamicYieldRepository;
import com.vuitton.foundation.model.domain.model.cart.CheckoutItem;
import com.vuitton.foundation.model.domain.model.dynamicyield.DYBusinessEvent;
import com.vuitton.foundation.model.domain.model.dynamicyield.DYCartItem;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.UInt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;", "", "Lcom/vuitton/android/domain/repository/DynamicYieldRepository;", "dynamicYieldRepository", "<init>", "(Lcom/vuitton/android/domain/repository/DynamicYieldRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ReportDYPurchaseEventUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DynamicYieldRepository f49969a;

    @Inject
    public ReportDYPurchaseEventUseCase(DynamicYieldRepository dynamicYieldRepository) {
        dynamicYieldRepository.getClass();
        this.f49969a = dynamicYieldRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public final Object a(float f2, String str, List list, String str2, ContinuationImpl continuationImpl) {
        ReportDYPurchaseEventUseCase$run$1 reportDYPurchaseEventUseCase$run$1;
        if (continuationImpl instanceof ReportDYPurchaseEventUseCase$run$1) {
            reportDYPurchaseEventUseCase$run$1 = (ReportDYPurchaseEventUseCase$run$1) continuationImpl;
            int i2 = reportDYPurchaseEventUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                reportDYPurchaseEventUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                reportDYPurchaseEventUseCase$run$1 = new ReportDYPurchaseEventUseCase$run$1(this, continuationImpl);
            }
        } else {
            reportDYPurchaseEventUseCase$run$1 = new ReportDYPurchaseEventUseCase$run$1(this, continuationImpl);
        }
        Object obj = reportDYPurchaseEventUseCase$run$1.f49970b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = reportDYPurchaseEventUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            List<CheckoutItem> list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (CheckoutItem checkoutItem : list2) {
                checkoutItem.getClass();
                String str3 = checkoutItem.f66941a;
                int i4 = checkoutItem.f66943c;
                UInt.Companion companion = UInt.INSTANCE;
                Integer numValueOf = Integer.valueOf(i4);
                if (i4 <= 0) {
                    numValueOf = null;
                }
                arrayList.add(new DYCartItem(str3, i4, numValueOf != null ? (float) (checkoutItem.f66944e.f66914a / ((double) numValueOf.intValue())) : Call.Parameters.DEFAULT_CAMERA_ZOOM, null));
            }
            DYBusinessEvent.Purchase purchase = new DYBusinessEvent.Purchase(f2, str, str2, arrayList);
            reportDYPurchaseEventUseCase$run$1.d = 1;
            if (this.f49969a.e(purchase, reportDYPurchaseEventUseCase$run$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        return Unit.f71739a;
    }
}
