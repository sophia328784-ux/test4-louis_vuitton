package com.vuitton.android.domain.usecase.dynamicyield;

import com.vuitton.android.domain.repository.DynamicYieldRepository;
import com.vuitton.foundation.logger.Logger;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSlotClickUseCase;", "", "Lcom/vuitton/android/domain/repository/DynamicYieldRepository;", "dynamicYieldRepository", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Lcom/vuitton/android/domain/repository/DynamicYieldRepository;Lcom/vuitton/foundation/logger/Logger;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ReportDYSlotClickUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DynamicYieldRepository f49980a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f49981b;

    @Inject
    public ReportDYSlotClickUseCase(DynamicYieldRepository dynamicYieldRepository, Logger logger) {
        dynamicYieldRepository.getClass();
        logger.getClass();
        this.f49980a = dynamicYieldRepository;
        this.f49981b = logger;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        ReportDYSlotClickUseCase$run$1 reportDYSlotClickUseCase$run$1;
        Object objH;
        if (continuationImpl instanceof ReportDYSlotClickUseCase$run$1) {
            reportDYSlotClickUseCase$run$1 = (ReportDYSlotClickUseCase$run$1) continuationImpl;
            int i2 = reportDYSlotClickUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                reportDYSlotClickUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                reportDYSlotClickUseCase$run$1 = new ReportDYSlotClickUseCase$run$1(this, continuationImpl);
            }
        } else {
            reportDYSlotClickUseCase$run$1 = new ReportDYSlotClickUseCase$run$1(this, continuationImpl);
        }
        Object obj = reportDYSlotClickUseCase$run$1.f49982b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = reportDYSlotClickUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            reportDYSlotClickUseCase$run$1.d = 1;
            objH = this.f49980a.h(str, reportDYSlotClickUseCase$run$1);
            if (objH == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objH = ((Result) obj).f71708b;
        }
        Throwable thA = Result.a(objH);
        if (thA != null) {
            thA.getMessage();
            this.f49981b.getClass();
        }
        return Unit.f71739a;
    }
}
