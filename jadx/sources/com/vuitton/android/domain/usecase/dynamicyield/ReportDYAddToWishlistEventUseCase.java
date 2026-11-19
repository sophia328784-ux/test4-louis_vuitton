package com.vuitton.android.domain.usecase.dynamicyield;

import com.vuitton.android.domain.repository.DynamicYieldRepository;
import com.vuitton.foundation.model.domain.model.dynamicyield.DYBusinessEvent;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;", "", "Lcom/vuitton/android/domain/repository/DynamicYieldRepository;", "dynamicYieldRepository", "<init>", "(Lcom/vuitton/android/domain/repository/DynamicYieldRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ReportDYAddToWishlistEventUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DynamicYieldRepository f49957a;

    @Inject
    public ReportDYAddToWishlistEventUseCase(DynamicYieldRepository dynamicYieldRepository) {
        dynamicYieldRepository.getClass();
        this.f49957a = dynamicYieldRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        ReportDYAddToWishlistEventUseCase$run$1 reportDYAddToWishlistEventUseCase$run$1;
        if (continuationImpl instanceof ReportDYAddToWishlistEventUseCase$run$1) {
            reportDYAddToWishlistEventUseCase$run$1 = (ReportDYAddToWishlistEventUseCase$run$1) continuationImpl;
            int i2 = reportDYAddToWishlistEventUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                reportDYAddToWishlistEventUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                reportDYAddToWishlistEventUseCase$run$1 = new ReportDYAddToWishlistEventUseCase$run$1(this, continuationImpl);
            }
        } else {
            reportDYAddToWishlistEventUseCase$run$1 = new ReportDYAddToWishlistEventUseCase$run$1(this, continuationImpl);
        }
        Object obj = reportDYAddToWishlistEventUseCase$run$1.f49958b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = reportDYAddToWishlistEventUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            DYBusinessEvent.AddToWishlist addToWishlist = new DYBusinessEvent.AddToWishlist(str);
            reportDYAddToWishlistEventUseCase$run$1.d = 1;
            if (this.f49957a.e(addToWishlist, reportDYAddToWishlistEventUseCase$run$1) == coroutineSingletons) {
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
