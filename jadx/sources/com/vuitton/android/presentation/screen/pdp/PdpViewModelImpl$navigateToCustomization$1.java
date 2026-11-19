package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.presentation.screen.pdp.models.PdpSideEffect;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
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
import kotlinx.coroutines.channels.BufferedChannel;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$navigateToCustomization$1", f = "PdpViewModelImpl.kt", l = {1333}, m = "invokeSuspend", v = 2)
final class PdpViewModelImpl$navigateToCustomization$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61238b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PdpViewModelImpl f61239c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CustomizationType f61240e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$navigateToCustomization$1(PdpViewModelImpl pdpViewModelImpl, String str, CustomizationType customizationType, Continuation continuation) {
        super(2, continuation);
        this.f61239c = pdpViewModelImpl;
        this.d = str;
        this.f61240e = customizationType;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpViewModelImpl$navigateToCustomization$1(this.f61239c, this.d, this.f61240e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpViewModelImpl$navigateToCustomization$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61238b;
        if (i2 == 0) {
            ResultKt.b(obj);
            BufferedChannel bufferedChannel = this.f61239c.x0;
            PdpSideEffect.Navigation.NavigateToCustomization navigateToCustomization = new PdpSideEffect.Navigation.NavigateToCustomization(this.d, this.f61240e);
            this.f61238b = 1;
            if (bufferedChannel.u(navigateToCustomization, this) == coroutineSingletons) {
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
