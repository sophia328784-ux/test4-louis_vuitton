package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.domain.usecase.pdp.customization.RemoveCustomizationUseCase;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$reloadWithoutCustomization$1", f = "PdpViewModelImpl.kt", l = {1241}, m = "invokeSuspend", v = 2)
final class PdpViewModelImpl$reloadWithoutCustomization$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61248b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PdpViewModelImpl f61249c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$reloadWithoutCustomization$1(Continuation continuation, PdpViewModelImpl pdpViewModelImpl) {
        super(2, continuation);
        this.f61249c = pdpViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpViewModelImpl$reloadWithoutCustomization$1(continuation, this.f61249c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpViewModelImpl$reloadWithoutCustomization$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61248b;
        if (i2 == 0) {
            ResultKt.b(obj);
            PdpViewModelImpl pdpViewModelImpl = this.f61249c;
            RemoveCustomizationUseCase removeCustomizationUseCase = pdpViewModelImpl.y;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            String str = pdpViewModelImpl.S;
            companion.getClass();
            SkuIdUiModel.Companion.b(str);
            this.f61248b = 1;
            if (removeCustomizationUseCase.a(str, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        return Unit.f71739a;
    }
}
