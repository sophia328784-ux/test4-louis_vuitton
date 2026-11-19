package com.vuitton.android.presentation.screen.portal;

import com.vuitton.android.domain.usecase.account.accessibility.GetAccessibilityValueUseCase;
import com.vuitton.foundation.model.domain.model.account.accessibility.AccessibilityPreferenceType;
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
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.portal.PortalSliderViewModelImpl$getAccessibilitySettings$1", f = "PortalSliderViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class PortalSliderViewModelImpl$getAccessibilitySettings$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PortalSliderViewModelImpl f63257b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PortalSliderViewModelImpl$getAccessibilitySettings$1(PortalSliderViewModelImpl portalSliderViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f63257b = portalSliderViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PortalSliderViewModelImpl$getAccessibilitySettings$1(this.f63257b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PortalSliderViewModelImpl$getAccessibilitySettings$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        PortalSliderViewModelImpl portalSliderViewModelImpl = this.f63257b;
        MutableStateFlow mutableStateFlow = portalSliderViewModelImpl.l;
        GetAccessibilityValueUseCase getAccessibilityValueUseCase = portalSliderViewModelImpl.d;
        Object objA = getAccessibilityValueUseCase.a(AccessibilityPreferenceType.SIMPLIFY_NAVIGATION);
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            portalSliderViewModelImpl.f63254k.setValue((Boolean) objA);
        }
        Object objA2 = getAccessibilityValueUseCase.a(AccessibilityPreferenceType.DISABLE_AUTOPLAY);
        if (!(objA2 instanceof Result.Failure)) {
            mutableStateFlow.setValue((Boolean) objA2);
            if (((Boolean) mutableStateFlow.getValue()).booleanValue()) {
                portalSliderViewModelImpl.f63251h.setValue(Boolean.FALSE);
            }
        }
        Object objA3 = getAccessibilityValueUseCase.a(AccessibilityPreferenceType.ENHANCED_CONTRAST);
        if (!(objA3 instanceof Result.Failure)) {
            portalSliderViewModelImpl.m.setValue((Boolean) objA3);
        }
        return Unit.f71739a;
    }
}
