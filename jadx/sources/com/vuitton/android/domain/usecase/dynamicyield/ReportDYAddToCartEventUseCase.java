package com.vuitton.android.domain.usecase.dynamicyield;

import com.vuitton.android.domain.repository.DynamicYieldRepository;
import com.vuitton.foundation.model.domain.model.cart.CartItem;
import com.vuitton.foundation.model.domain.model.dynamicyield.DYBusinessEvent;
import com.vuitton.foundation.model.domain.model.dynamicyield.DYCartItemKt;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;", "", "Lcom/vuitton/android/domain/repository/DynamicYieldRepository;", "dynamicYieldRepository", "<init>", "(Lcom/vuitton/android/domain/repository/DynamicYieldRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ReportDYAddToCartEventUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DynamicYieldRepository f49954a;

    @Inject
    public ReportDYAddToCartEventUseCase(DynamicYieldRepository dynamicYieldRepository) {
        dynamicYieldRepository.getClass();
        this.f49954a = dynamicYieldRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public final Object a(float f2, String str, int i2, List list, String str2, ContinuationImpl continuationImpl) {
        ReportDYAddToCartEventUseCase$run$1 reportDYAddToCartEventUseCase$run$1;
        if (continuationImpl instanceof ReportDYAddToCartEventUseCase$run$1) {
            reportDYAddToCartEventUseCase$run$1 = (ReportDYAddToCartEventUseCase$run$1) continuationImpl;
            int i3 = reportDYAddToCartEventUseCase$run$1.d;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                reportDYAddToCartEventUseCase$run$1.d = i3 - Integer.MIN_VALUE;
            } else {
                reportDYAddToCartEventUseCase$run$1 = new ReportDYAddToCartEventUseCase$run$1(this, continuationImpl);
            }
        } else {
            reportDYAddToCartEventUseCase$run$1 = new ReportDYAddToCartEventUseCase$run$1(this, continuationImpl);
        }
        Object obj = reportDYAddToCartEventUseCase$run$1.f49955b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = reportDYAddToCartEventUseCase$run$1.d;
        if (i4 == 0) {
            ResultKt.b(obj);
            List list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(DYCartItemKt.a((CartItem) it.next()));
            }
            DYBusinessEvent.AddToCart addToCart = new DYBusinessEvent.AddToCart(f2, str, str2, i2, arrayList);
            reportDYAddToCartEventUseCase$run$1.d = 1;
            if (this.f49954a.e(addToCart, reportDYAddToCartEventUseCase$run$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i4 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        return Unit.f71739a;
    }
}
