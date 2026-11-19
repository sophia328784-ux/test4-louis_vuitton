package com.vuitton.android.domain.usecase.inappbanner;

import com.vuitton.foundation.model.domain.model.inappbanner.InAppBanner;
import java.time.Instant;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;", "inAppBanner"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.inappbanner.ObserveActiveInAppBannerUseCase$run$1", f = "ObserveActiveInAppBannerUseCase.kt", l = {}, m = "invokeSuspend", v = 2)
final class ObserveActiveInAppBannerUseCase$run$1 extends SuspendLambda implements Function2<InAppBanner, Continuation<? super InAppBanner>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50121b;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ObserveActiveInAppBannerUseCase$run$1 observeActiveInAppBannerUseCase$run$1 = new ObserveActiveInAppBannerUseCase$run$1(2, continuation);
        observeActiveInAppBannerUseCase$run$1.f50121b = obj;
        return observeActiveInAppBannerUseCase$run$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ObserveActiveInAppBannerUseCase$run$1) create((InAppBanner) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        InAppBanner inAppBanner = (InAppBanner) this.f50121b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (inAppBanner == null) {
            return null;
        }
        Instant instant = inAppBanner.f67756c;
        Instant instant2 = inAppBanner.d;
        Instant instantNow = Instant.now();
        instantNow.getClass();
        if (instantNow.compareTo(instant) < 0 || instantNow.compareTo(instant2) > 0) {
            return null;
        }
        return inAppBanner;
    }
}
