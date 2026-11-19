package com.vuitton.android.designkit.components.components;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.designkit.components.components.LVZoomableContentComponentKt$LVZoomableContentComponent$1$1", f = "LVZoomableContentComponent.kt", l = {}, m = "invokeSuspend", v = 2)
final class LVZoomableContentComponentKt$LVZoomableContentComponent$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f48272b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f48273c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableFloatState f48274e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableFloatState f48275f;
    public final /* synthetic */ MutableFloatState g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LVZoomableContentComponentKt$LVZoomableContentComponent$1$1(boolean z, Function1 function1, MutableState mutableState, MutableFloatState mutableFloatState, MutableFloatState mutableFloatState2, MutableFloatState mutableFloatState3, Continuation continuation) {
        super(2, continuation);
        this.f48272b = z;
        this.f48273c = function1;
        this.d = mutableState;
        this.f48274e = mutableFloatState;
        this.f48275f = mutableFloatState2;
        this.g = mutableFloatState3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LVZoomableContentComponentKt$LVZoomableContentComponent$1$1(this.f48272b, this.f48273c, this.d, this.f48274e, this.f48275f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LVZoomableContentComponentKt$LVZoomableContentComponent$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (!((Boolean) this.d.getF10755b()).booleanValue() && this.f48272b) {
            this.f48274e.w(1.0f);
            this.f48275f.w(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.g.w(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.f48273c.invoke(Boolean.FALSE);
        }
        return Unit.f71739a;
    }
}
