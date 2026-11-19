package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.google.android.filament.utils.Float3;
import defpackage.md;
import defpackage.xn0;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.SensorDataManager$listenSensorData$1", f = "SensorManager.kt", l = {55}, m = "invokeSuspend", v = 2)
final class SensorDataManager$listenSensorData$1 extends SuspendLambda implements Function2<ProducerScope<? super SensorDataManager.SensorData>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f58543c;
    public final /* synthetic */ SensorDataManager d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SensorDataManager$listenSensorData$1(SensorDataManager sensorDataManager, Continuation continuation) {
        super(2, continuation);
        this.d = sensorDataManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        SensorDataManager$listenSensorData$1 sensorDataManager$listenSensorData$1 = new SensorDataManager$listenSensorData$1(this.d, continuation);
        sensorDataManager$listenSensorData$1.f58543c = obj;
        return sensorDataManager$listenSensorData$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SensorDataManager$listenSensorData$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1, types: [android.hardware.SensorEventListener, com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.SensorDataManager$listenSensorData$1$1] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        final ProducerScope producerScope = (ProducerScope) this.f58543c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58542b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final SensorDataManager sensorDataManager = this.d;
            ?? r8 = new SensorEventListener() { // from class: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.SensorDataManager$listenSensorData$1.1
                @Override // android.hardware.SensorEventListener
                public final void onAccuracyChanged(Sensor sensor, int i3) {
                }

                @Override // android.hardware.SensorEventListener
                public final void onSensorChanged(SensorEvent sensorEvent) {
                    sensorEvent.getClass();
                    float[] fArr = sensorEvent.values;
                    fArr.getClass();
                    float[] fArr2 = new float[9];
                    SensorManager.getRotationMatrixFromVector(fArr2, fArr);
                    float[] fArr3 = new float[3];
                    SensorManager.getOrientation(fArr2, fArr3);
                    Float3 float3 = new Float3(fArr3[2], fArr3[1], fArr3[0]);
                    SensorDataManager sensorDataManager2 = sensorDataManager;
                    if (sensorDataManager2.f58537c == null) {
                        sensorDataManager2.f58537c = float3;
                    }
                    Float3 float4 = sensorDataManager2.f58537c;
                    if (float4 != null) {
                        Float3 float5 = new Float3(float3.f28639a - float4.f28639a, float3.f28640b - float4.f28640b, float3.f28641c - float4.f28641c);
                        float degrees = ((float) Math.toDegrees(float5.f28639a)) / 4.0f;
                        float degrees2 = ((float) Math.toDegrees(float5.f28640b)) / 2.0f;
                        if (degrees > 15.0f) {
                            degrees = 15.0f;
                        } else if (degrees < -15.0f) {
                            degrees = -15.0f;
                        }
                        if (degrees2 > 15.0f) {
                            degrees2 = 15.0f;
                        } else if (degrees2 < -15.0f) {
                            degrees2 = -15.0f;
                        }
                        float f2 = sensorDataManager2.d;
                        if (f2 == (-1.0f) * degrees) {
                            degrees = f2;
                        }
                        sensorDataManager2.d = degrees;
                        producerScope.b(new SensorDataManager.SensorData(Call.Parameters.DEFAULT_CAMERA_ZOOM, degrees2, degrees));
                        ChannelResult.Companion companion = ChannelResult.f74759b;
                    }
                }
            };
            Object systemService = sensorDataManager.f58535a.getSystemService("sensor");
            systemService.getClass();
            SensorManager sensorManager = (SensorManager) systemService;
            sensorDataManager.f58536b = sensorManager;
            Sensor defaultSensor = sensorManager.getDefaultSensor(11);
            SensorManager sensorManager2 = sensorDataManager.f58536b;
            if (sensorManager2 == 0) {
                Intrinsics.h("sensorManager");
                throw null;
            }
            sensorManager2.registerListener((SensorEventListener) r8, defaultSensor, 1);
            sensorDataManager.f58538e = r8;
            xn0 xn0Var = new xn0(sensorDataManager, 26);
            this.f58543c = null;
            this.f58542b = 1;
            if (ProduceKt.a(producerScope, xn0Var, this) == coroutineSingletons) {
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
