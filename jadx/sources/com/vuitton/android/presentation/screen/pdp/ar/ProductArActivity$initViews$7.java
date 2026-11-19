package com.vuitton.android.presentation.screen.pdp.ar;

import com.vuitton.android.presentation.ar.UserCanceledException;
import com.vuitton.foundation.logger.Logger;
import defpackage.md;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity$initViews$7", f = "ProductArActivity.kt", l = {316}, m = "invokeSuspend", v = 2)
final class ProductArActivity$initViews$7 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61318b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ProductArActivity f61319c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProductArActivity$initViews$7(ProductArActivity productArActivity, Continuation continuation) {
        super(2, continuation);
        this.f61319c = productArActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ProductArActivity$initViews$7(this.f61319c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ProductArActivity$initViews$7) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61318b;
        ProductArActivity productArActivity = this.f61319c;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f61318b = 1;
                if (ProductArActivity.H(productArActivity, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
        } catch (Throwable th) {
            try {
                if (!(th instanceof UserCanceledException)) {
                    th.printStackTrace();
                }
                Logger logger = productArActivity.p;
                if (logger == null) {
                    Intrinsics.h("logger");
                    throw null;
                }
                logger.c("ProductArActivity", "AR error " + th.getMessage(), null);
            } catch (Throwable th2) {
                productArActivity.finish();
                throw th2;
            }
        }
        productArActivity.finish();
        return Unit.f71739a;
    }
}
