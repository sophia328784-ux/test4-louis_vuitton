package com.vuitton.android.presentation.screen.pdp.ar;

import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ActivityProductDetailArBinding;
import defpackage.md;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity$startUx$2$job$1", f = "ProductArActivity.kt", l = {479}, m = "invokeSuspend", v = 2)
final class ProductArActivity$startUx$2$job$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61330b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ProductArActivity f61331c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProductArActivity$startUx$2$job$1(ProductArActivity productArActivity, Continuation continuation) {
        super(2, continuation);
        this.f61331c = productArActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ProductArActivity$startUx$2$job$1(this.f61331c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ProductArActivity$startUx$2$job$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61330b;
        ProductArActivity productArActivity = this.f61331c;
        if (i2 == 0) {
            ResultKt.b(obj);
            long millis = TimeUnit.SECONDS.toMillis(productArActivity.getResources().getInteger(R.integer.show_hand_motion_timeout_seconds));
            this.f61330b = 1;
            if (DelayKt.b(millis, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        ActivityProductDetailArBinding activityProductDetailArBinding = productArActivity.A;
        if (activityProductDetailArBinding != null) {
            activityProductDetailArBinding.f51206c.setVisibility(0);
            return Unit.f71739a;
        }
        Intrinsics.h("binding");
        throw null;
    }
}
