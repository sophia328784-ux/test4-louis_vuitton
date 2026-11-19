package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp;

import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.SensorDataManager;
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
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.ChannelFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerComposableKt$Internal3dComponent$4$1$1", f = "Lv3dViewerComposable.kt", l = {196}, m = "invokeSuspend", v = 2)
final class Lv3dViewerComposableKt$Internal3dComponent$4$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58590b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SensorDataManager f58591c;
    public final /* synthetic */ Lv3dViewerHelper d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Lv3dViewerComposableKt$Internal3dComponent$4$1$1(SensorDataManager sensorDataManager, Lv3dViewerHelper lv3dViewerHelper, Continuation continuation) {
        super(2, continuation);
        this.f58591c = sensorDataManager;
        this.d = lv3dViewerHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new Lv3dViewerComposableKt$Internal3dComponent$4$1$1(this.f58591c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((Lv3dViewerComposableKt$Internal3dComponent$4$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58590b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowA = this.f58591c.a();
            final Lv3dViewerHelper lv3dViewerHelper = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerComposableKt$Internal3dComponent$4$1$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    SensorDataManager.SensorData sensorData = (SensorDataManager.SensorData) obj2;
                    Lv3dViewerHelper lv3dViewerHelper2 = lv3dViewerHelper;
                    if (sensorData != null) {
                        lv3dViewerHelper2.M = sensorData;
                    } else {
                        lv3dViewerHelper2.getClass();
                    }
                    return Unit.f71739a;
                }
            };
            this.f58590b = 1;
            if (((ChannelFlow) flowA).f(flowCollector, this) == coroutineSingletons) {
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
