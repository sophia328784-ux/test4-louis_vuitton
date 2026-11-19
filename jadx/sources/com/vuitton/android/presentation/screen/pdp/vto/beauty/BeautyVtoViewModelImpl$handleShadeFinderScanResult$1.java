package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import com.perfectcorp.perfectlib.ShadeFinderQualityCheck;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderScanState;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$handleShadeFinderScanResult$1", f = "BeautyVtoViewModelImpl.kt", l = {936}, m = "invokeSuspend", v = 2)
final class BeautyVtoViewModelImpl$handleShadeFinderScanResult$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61908b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoViewModelImpl f61909c;
    public final /* synthetic */ ShadeFinderQualityCheck d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyVtoViewModelImpl$handleShadeFinderScanResult$1(BeautyVtoViewModelImpl beautyVtoViewModelImpl, ShadeFinderQualityCheck shadeFinderQualityCheck, Continuation continuation) {
        super(2, continuation);
        this.f61909c = beautyVtoViewModelImpl;
        this.d = shadeFinderQualityCheck;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BeautyVtoViewModelImpl$handleShadeFinderScanResult$1(this.f61909c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BeautyVtoViewModelImpl$handleShadeFinderScanResult$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        ShadeFinderQualityCheck shadeFinderQualityCheck;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61908b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Duration.Companion companion = Duration.INSTANCE;
            long jH = DurationKt.h(500L, DurationUnit.MILLISECONDS);
            this.f61908b = 1;
            if (DelayKt.c(jH, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        MutableStateFlow mutableStateFlow = this.f61909c.n0;
        do {
            value = mutableStateFlow.getValue();
            shadeFinderQualityCheck = this.d;
        } while (!mutableStateFlow.i(value, new ShadeFinderScanState(shadeFinderQualityCheck.getLightingQuality() == ShadeFinderQualityCheck.LightingQuality.GOOD || shadeFinderQualityCheck.getLightingQuality() == ShadeFinderQualityCheck.LightingQuality.NORMAL, shadeFinderQualityCheck.getFrontalFaceQuality() == ShadeFinderQualityCheck.FaceFrontalQuality.GOOD, shadeFinderQualityCheck.getFaceAreaQuality() == ShadeFinderQualityCheck.FaceAreaQuality.GOOD)));
        return Unit.f71739a;
    }
}
