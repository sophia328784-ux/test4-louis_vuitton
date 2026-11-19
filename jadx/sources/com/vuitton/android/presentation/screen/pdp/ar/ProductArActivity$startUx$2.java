package com.vuitton.android.presentation.screen.pdp.ar;

import com.vuitton.android.presentation.databinding.ActivityProductDetailArBinding;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity$startUx$2", f = "ProductArActivity.kt", l = {}, m = "invokeSuspend", v = 2)
final class ProductArActivity$startUx$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Job>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f61326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ProductArActivity f61327c;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity$startUx$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity$startUx$2$1", f = "ProductArActivity.kt", l = {485}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f61328b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ProductArActivity f61329c;
        public final /* synthetic */ Job d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ProductArActivity productArActivity, Job job, Continuation continuation) {
            super(2, continuation);
            this.f61329c = productArActivity;
            this.d = job;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f61329c, this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f61328b;
            ProductArActivity productArActivity = this.f61329c;
            if (i2 == 0) {
                ResultKt.b(obj);
                SharedFlowImpl sharedFlowImpl = productArActivity.x;
                this.f61328b = 1;
                if (FlowKt.p(sharedFlowImpl, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            this.d.cancel(null);
            ActivityProductDetailArBinding activityProductDetailArBinding = productArActivity.A;
            if (activityProductDetailArBinding != null) {
                activityProductDetailArBinding.f51206c.setVisibility(8);
                return Unit.f71739a;
            }
            Intrinsics.h("binding");
            throw null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProductArActivity$startUx$2(ProductArActivity productArActivity, Continuation continuation) {
        super(2, continuation);
        this.f61327c = productArActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ProductArActivity$startUx$2 productArActivity$startUx$2 = new ProductArActivity$startUx$2(this.f61327c, continuation);
        productArActivity$startUx$2.f61326b = obj;
        return productArActivity$startUx$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ProductArActivity$startUx$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineScope coroutineScope = (CoroutineScope) this.f61326b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        CoroutineContext f8068c = coroutineScope.getF50528e();
        ProductArActivity productArActivity = this.f61327c;
        return BuildersKt.c(coroutineScope, coroutineScope.getF50528e(), null, new AnonymousClass1(productArActivity, BuildersKt.c(coroutineScope, f8068c, null, new ProductArActivity$startUx$2$job$1(productArActivity, null), 2), null), 2);
    }
}
