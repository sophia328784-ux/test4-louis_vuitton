package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import androidx.navigation3.runtime.NavBackStack;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$1$1", f = "BeautyVtoNavDisplay.kt", l = {49}, m = "invokeSuspend", v = 2)
final class BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoViewModel f61818c;
    public final /* synthetic */ NavBackStack d;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$1$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "", "it"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$1$1$1", f = "BeautyVtoNavDisplay.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ NavBackStack f61819b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(NavBackStack navBackStack, Continuation continuation) {
            super(2, continuation);
            this.f61819b = navBackStack;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f61819b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((Unit) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            this.f61819b.a(BeautyVtoRoutes.PicturePreview.INSTANCE);
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$1$1(BeautyVtoViewModel beautyVtoViewModel, NavBackStack navBackStack, Continuation continuation) {
        super(2, continuation);
        this.f61818c = beautyVtoViewModel;
        this.d = navBackStack;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$1$1(this.f61818c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61817b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowP9 = this.f61818c.P9();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, null);
            this.f61817b = 1;
            if (FlowKt.g(flowP9, anonymousClass1, this) == coroutineSingletons) {
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
