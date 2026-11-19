package com.vuitton.android.presentation.screen.cart;

import androidx.navigation.NavHostController;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartNavHostKt$NativeCartNavHost$1$1", f = "NativeCartNavHost.kt", l = {EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION}, m = "invokeSuspend", v = 2)
final class NativeCartNavHostKt$NativeCartNavHost$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f54851b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeCartViewModel f54852c;
    public final /* synthetic */ NavHostController d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartNavHostKt$NativeCartNavHost$1$1(NativeCartViewModel nativeCartViewModel, NavHostController navHostController, Continuation continuation) {
        super(2, continuation);
        this.f54852c = nativeCartViewModel;
        this.d = navHostController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeCartNavHostKt$NativeCartNavHost$1$1(this.f54852c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeCartNavHostKt$NativeCartNavHost$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54851b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowY2 = this.f54852c.y2();
            final NavHostController navHostController = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.cart.NativeCartNavHostKt$NativeCartNavHost$1$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    if (!(((Result) obj2).f71708b instanceof Result.Failure)) {
                        NavHostController navHostController2 = navHostController;
                        if (navHostController2.f18122b.h() != null && navHostController2.b() != null) {
                            navHostController2.e();
                        }
                    }
                    return Unit.f71739a;
                }
            };
            this.f54851b = 1;
            if (flowY2.f(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
