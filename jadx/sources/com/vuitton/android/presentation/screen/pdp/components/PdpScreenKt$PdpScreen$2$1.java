package com.vuitton.android.presentation.screen.pdp.components;

import com.vuitton.android.presentation.screen.pdp.PdpBottomSheetAction;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.components.PdpScreenKt$PdpScreen$2$1", f = "PdpScreen.kt", l = {170}, m = "invokeSuspend", v = 2)
final class PdpScreenKt$PdpScreen$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61409b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Flow f61410c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.components.PdpScreenKt$PdpScreen$2$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "bottomSheet", "Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.components.PdpScreenKt$PdpScreen$2$1$1", f = "PdpScreen.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<PdpBottomSheetAction, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f61411b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Function1 f61412c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, Function1 function1) {
            super(2, continuation);
            this.f61412c = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation, this.f61412c);
            anonymousClass1.f61411b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((PdpBottomSheetAction) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            PdpBottomSheetAction pdpBottomSheetAction = (PdpBottomSheetAction) this.f61411b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            boolean z = pdpBottomSheetAction instanceof PdpBottomSheetAction.AddedToCart;
            Function1 function1 = this.f61412c;
            if (z) {
                function1.invoke(new PdpBottomSheetType.AddToCart(((PdpBottomSheetAction.AddedToCart) pdpBottomSheetAction).f61091a));
            } else if (pdpBottomSheetAction instanceof PdpBottomSheetAction.CrossSellAddToCart) {
                function1.invoke(new PdpBottomSheetType.CrossSellAddToCart(((PdpBottomSheetAction.CrossSellAddToCart) pdpBottomSheetAction).f61093a));
            } else if (Intrinsics.c(pdpBottomSheetAction, PdpBottomSheetAction.CameraSettings.f61092a)) {
                function1.invoke(PdpBottomSheetType.CameraPermission.f61372a);
            } else if (Intrinsics.c(pdpBottomSheetAction, PdpBottomSheetAction.VtoConsent.f61102a)) {
                function1.invoke(PdpBottomSheetType.UserConsentVtoPopIn.f61391a);
            } else if (pdpBottomSheetAction instanceof PdpBottomSheetAction.ServerOverload) {
                PdpBottomSheetAction.ServerOverload serverOverload = (PdpBottomSheetAction.ServerOverload) pdpBottomSheetAction;
                function1.invoke(new PdpBottomSheetType.ServerOverload(serverOverload.f61099a, serverOverload.f61100b, serverOverload.f61101c));
            } else if (pdpBottomSheetAction instanceof PdpBottomSheetAction.EditCustomization) {
                PdpBottomSheetAction.EditCustomization editCustomization = (PdpBottomSheetAction.EditCustomization) pdpBottomSheetAction;
                function1.invoke(new PdpBottomSheetType.EditCustomization(editCustomization.f61094a, editCustomization.f61095b));
            } else {
                if (!(pdpBottomSheetAction instanceof PdpBottomSheetAction.MultipleCustomizations)) {
                    v40.g();
                    return null;
                }
                PdpBottomSheetAction.MultipleCustomizations multipleCustomizations = (PdpBottomSheetAction.MultipleCustomizations) pdpBottomSheetAction;
                function1.invoke(new PdpBottomSheetType.MultipleCustomizations(multipleCustomizations.f61096a, multipleCustomizations.f61097b, multipleCustomizations.f61098c));
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpScreenKt$PdpScreen$2$1(Flow flow, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.f61410c = flow;
        this.d = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpScreenKt$PdpScreen$2$1(this.f61410c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpScreenKt$PdpScreen$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61409b;
        if (i2 == 0) {
            ResultKt.b(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(null, this.d);
            this.f61409b = 1;
            if (FlowKt.g(this.f61410c, anonymousClass1, this) == coroutineSingletons) {
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
