package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.runtime.MutableState;
import com.airbnb.lottie.compose.LottieAnimatable;
import com.airbnb.lottie.compose.LottieCompositionResult;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.designkit.ui.theme.atoms.LVRadioButtonKt$LVRadioButtonInternal$1$1", f = "LVRadioButton.kt", l = {129, 134}, m = "invokeSuspend", v = 2)
final class LVRadioButtonKt$LVRadioButtonInternal$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f48495b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LottieAnimatable f48496c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f48497e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ LottieCompositionResult f48498f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LVRadioButtonKt$LVRadioButtonInternal$1$1(LottieAnimatable lottieAnimatable, boolean z, MutableState mutableState, LottieCompositionResult lottieCompositionResult, Continuation continuation) {
        super(2, continuation);
        this.f48496c = lottieAnimatable;
        this.d = z;
        this.f48497e = mutableState;
        this.f48498f = lottieCompositionResult;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LVRadioButtonKt$LVRadioButtonInternal$1$1(this.f48496c, this.d, this.f48497e, this.f48498f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LVRadioButtonKt$LVRadioButtonInternal$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0046, code lost:
    
        if (com.airbnb.lottie.compose.LottieAnimatable.DefaultImpls.b(r0, r1, r3, r12, 12) == r10) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0065, code lost:
    
        if (com.airbnb.lottie.compose.LottieAnimatable.DefaultImpls.a(r0, r2, 0, false, r4, null, net.rtccloud.sdk.Call.Parameters.DEFAULT_CAMERA_ZOOM, null, r12, 2030) == r10) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0067, code lost:
    
        return r10;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r10 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r0 = r12.f48495b
            androidx.compose.runtime.MutableState r11 = r12.f48497e
            r1 = 2
            r2 = 1
            if (r0 == 0) goto L1a
            if (r0 == r2) goto L16
            if (r0 != r1) goto Lf
            goto L16
        Lf:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r0)
            r0 = 0
            return r0
        L16:
            kotlin.ResultKt.b(r13)
            goto L68
        L1a:
            kotlin.ResultKt.b(r13)
            androidx.compose.runtime.StaticProvidableCompositionLocal r0 = com.vuitton.android.designkit.ui.theme.atoms.LVRadioButtonKt.f48494a
            java.lang.Object r0 = r11.getF10755b()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r3 = 1065353216(0x3f800000, float:1.0)
            boolean r4 = r12.d
            com.airbnb.lottie.compose.LottieCompositionResult r5 = r12.f48498f
            r6 = r0
            com.airbnb.lottie.compose.LottieAnimatable r0 = r12.f48496c
            if (r6 == 0) goto L49
            java.lang.Object r1 = r5.getF10755b()
            com.airbnb.lottie.LottieComposition r1 = (com.airbnb.lottie.LottieComposition) r1
            if (r4 == 0) goto L3d
            goto L3e
        L3d:
            r3 = 0
        L3e:
            r12.f48495b = r2
            r2 = 12
            java.lang.Object r0 = com.airbnb.lottie.compose.LottieAnimatable.DefaultImpls.b(r0, r1, r3, r12, r2)
            if (r0 != r10) goto L68
            goto L67
        L49:
            java.lang.Object r2 = r5.getF10755b()
            com.airbnb.lottie.LottieComposition r2 = (com.airbnb.lottie.LottieComposition) r2
            if (r4 == 0) goto L53
        L51:
            r4 = r3
            goto L56
        L53:
            r3 = -1082130432(0xffffffffbf800000, float:-1.0)
            goto L51
        L56:
            r12.f48495b = r1
            r1 = r2
            r2 = 0
            r3 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r9 = 2030(0x7ee, float:2.845E-42)
            r8 = r12
            java.lang.Object r0 = com.airbnb.lottie.compose.LottieAnimatable.DefaultImpls.a(r0, r1, r2, r3, r4, r5, r6, r7, r8, r9)
            if (r0 != r10) goto L68
        L67:
            return r10
        L68:
            androidx.compose.runtime.StaticProvidableCompositionLocal r0 = com.vuitton.android.designkit.ui.theme.atoms.LVRadioButtonKt.f48494a
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            r11.setValue(r0)
            kotlin.Unit r0 = kotlin.Unit.f71739a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.designkit.ui.theme.atoms.LVRadioButtonKt$LVRadioButtonInternal$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
