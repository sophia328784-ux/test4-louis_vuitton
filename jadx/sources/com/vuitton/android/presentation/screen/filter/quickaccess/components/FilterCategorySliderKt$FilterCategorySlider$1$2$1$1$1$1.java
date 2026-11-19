package com.vuitton.android.presentation.screen.filter.quickaccess.components;

import androidx.compose.animation.core.Animatable;
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
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.filter.quickaccess.components.FilterCategorySliderKt$FilterCategorySlider$1$2$1$1$1$1", f = "FilterCategorySlider.kt", l = {149}, m = "invokeSuspend", v = 2)
final class FilterCategorySliderKt$FilterCategorySlider$1$2$1$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58071b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Animatable f58072c;
    public final /* synthetic */ float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ float f58073e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilterCategorySliderKt$FilterCategorySlider$1$2$1$1$1$1(Animatable animatable, float f2, float f3, Continuation continuation) {
        super(2, continuation);
        this.f58072c = animatable;
        this.d = f2;
        this.f58073e = f3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FilterCategorySliderKt$FilterCategorySlider$1$2$1$1$1$1(this.f58072c, this.d, this.f58073e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FilterCategorySliderKt$FilterCategorySlider$1$2$1$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58071b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Float f2 = new Float(Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(1.0f, 1.0f - (this.d / (this.f58073e * 0.5f)))));
            this.f58071b = 1;
            if (Animatable.c(this.f58072c, f2, null, null, null, this, 14) == coroutineSingletons) {
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
