package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.pager.PagerState;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.compose.components.AccessibilityPagerButtonsKt$AccessibilityPagerButtons$1$2$1$1", f = "AccessibilityPagerButtons.kt", l = {63}, m = "invokeSuspend", v = 2)
final class AccessibilityPagerButtonsKt$AccessibilityPagerButtons$1$2$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f50936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PagerState f50937c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccessibilityPagerButtonsKt$AccessibilityPagerButtons$1$2$1$1(PagerState pagerState, Continuation continuation) {
        super(2, continuation);
        this.f50937c = pagerState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AccessibilityPagerButtonsKt$AccessibilityPagerButtons$1$2$1$1(this.f50937c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AccessibilityPagerButtonsKt$AccessibilityPagerButtons$1$2$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f50936b;
        if (i2 == 0) {
            ResultKt.b(obj);
            PagerState pagerState = this.f50937c;
            int iK = pagerState.k() + 1;
            this.f50936b = 1;
            if (PagerState.g(pagerState, iK, null, this, 6) == coroutineSingletons) {
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
