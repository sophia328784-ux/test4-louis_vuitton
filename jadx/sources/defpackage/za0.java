package defpackage;

import android.animation.ValueAnimator;
import com.google.android.filament.utils.Float3;
import com.google.android.filament.utils.Mat4;
import com.google.android.filament.utils.Quaternion;
import com.google.android.filament.utils.QuaternionKt;
import com.google.android.material.math.MathUtils;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.SensorDataManager;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerHelper;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class za0 implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f81587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Lv3dCardViewerHelper f81588b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Quaternion f81589c;

    public /* synthetic */ za0(Quaternion quaternion, Lv3dCardViewerHelper lv3dCardViewerHelper) {
        this.f81587a = 2;
        this.f81589c = quaternion;
        this.f81588b = lv3dCardViewerHelper;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i2 = this.f81587a;
        Quaternion quaternion = this.f81589c;
        Lv3dCardViewerHelper lv3dCardViewerHelper = this.f81588b;
        switch (i2) {
            case 0:
                valueAnimator.getClass();
                Mat4 mat4 = lv3dCardViewerHelper.C;
                if (mat4 != null) {
                    Object animatedValue = valueAnimator.getAnimatedValue();
                    animatedValue.getClass();
                    float fFloatValue = ((Float) animatedValue).floatValue();
                    lv3dCardViewerHelper.d(lv3dCardViewerHelper.G, QuaternionKt.c(quaternion, mat4.a(), fFloatValue).a());
                    return;
                }
                return;
            case 1:
                valueAnimator.getClass();
                if (lv3dCardViewerHelper.I != null) {
                    Object animatedValue2 = valueAnimator.getAnimatedValue();
                    animatedValue2.getClass();
                    float fFloatValue2 = ((Float) animatedValue2).floatValue();
                    Quaternion.Companion companion = Quaternion.f28668e;
                    Float3 float3 = new Float3(1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    SensorDataManager.SensorData sensorData = lv3dCardViewerHelper.I;
                    if (sensorData == null) {
                        Intrinsics.h("sensorData");
                        throw null;
                    }
                    float f2 = sensorData.f58540b;
                    companion.getClass();
                    Quaternion quaternionA = Quaternion.Companion.a(float3, f2);
                    Float3 float4 = new Float3(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    SensorDataManager.SensorData sensorData2 = lv3dCardViewerHelper.I;
                    if (sensorData2 == null) {
                        Intrinsics.h("sensorData");
                        throw null;
                    }
                    Quaternion quaternionA2 = Quaternion.Companion.a(float4, sensorData2.f58541c);
                    float f3 = quaternionA.d;
                    float f4 = quaternionA2.f28669a;
                    float f5 = quaternionA.f28669a;
                    float f6 = quaternionA2.d;
                    float f7 = quaternionA.f28670b;
                    float f8 = quaternionA2.f28671c;
                    float f9 = quaternionA.f28671c;
                    float f10 = quaternionA2.f28670b;
                    lv3dCardViewerHelper.d(lv3dCardViewerHelper.G, QuaternionKt.c(quaternion, new Quaternion(((f7 * f8) + ((f5 * f6) + (f3 * f4))) - (f9 * f10), (f9 * f4) + (f7 * f6) + ((f3 * f10) - (f5 * f8)), (f9 * f6) + (((f5 * f10) + (f3 * f8)) - (f7 * f4)), (((f3 * f6) - (f5 * f4)) - (f7 * f10)) - (f9 * f8)), fFloatValue2).a());
                    return;
                }
                return;
            case 2:
                valueAnimator.getClass();
                Object animatedValue3 = valueAnimator.getAnimatedValue();
                animatedValue3.getClass();
                float fFloatValue3 = ((Float) animatedValue3).floatValue();
                float fC = MathUtils.c(25.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, valueAnimator.getAnimatedFraction());
                Quaternion.Companion companion2 = Quaternion.f28668e;
                Float3 float5 = new Float3(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                companion2.getClass();
                Quaternion quaternionA3 = Quaternion.Companion.a(float5, fFloatValue3);
                float f11 = quaternion.d;
                float f12 = quaternionA3.f28669a;
                float f13 = quaternion.f28669a;
                float f14 = quaternionA3.d;
                float f15 = quaternion.f28670b;
                float f16 = quaternionA3.f28671c;
                float f17 = quaternion.f28671c;
                float f18 = quaternionA3.f28670b;
                Mat4 mat4A = new Quaternion(((f15 * f16) + ((f13 * f14) + (f11 * f12))) - (f17 * f18), (f17 * f12) + (f15 * f14) + ((f11 * f18) - (f13 * f16)), (f17 * f14) + (((f13 * f18) + (f11 * f16)) - (f15 * f12)), (((f11 * f14) - (f13 * f12)) - (f15 * f18)) - (f17 * f16)).a();
                mat4A.f28667c.d = fC;
                mat4A.f28666b.d = -4.0f;
                lv3dCardViewerHelper.d(lv3dCardViewerHelper.H, mat4A);
                return;
            default:
                valueAnimator.getClass();
                Object animatedValue4 = valueAnimator.getAnimatedValue();
                animatedValue4.getClass();
                float fFloatValue4 = ((Float) animatedValue4).floatValue();
                Quaternion.Companion companion3 = Quaternion.f28668e;
                Float3 float6 = new Float3(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                companion3.getClass();
                Quaternion quaternionA4 = Quaternion.Companion.a(float6, fFloatValue4);
                int i3 = lv3dCardViewerHelper.H;
                float f19 = quaternion.d;
                float f20 = quaternionA4.f28669a;
                float f21 = quaternion.f28669a;
                float f22 = quaternionA4.d;
                float f23 = quaternion.f28670b;
                float f24 = quaternionA4.f28671c;
                float f25 = quaternion.f28671c;
                float f26 = quaternionA4.f28670b;
                lv3dCardViewerHelper.d(i3, new Quaternion(((f23 * f24) + ((f21 * f22) + (f19 * f20))) - (f25 * f26), (f25 * f20) + (f23 * f22) + ((f19 * f26) - (f21 * f24)), (f25 * f22) + (((f21 * f26) + (f19 * f24)) - (f23 * f20)), (((f19 * f22) - (f21 * f20)) - (f23 * f26)) - (f25 * f24)).a());
                return;
        }
    }

    public /* synthetic */ za0(Lv3dCardViewerHelper lv3dCardViewerHelper, Quaternion quaternion, int i2) {
        this.f81587a = i2;
        this.f81588b = lv3dCardViewerHelper;
        this.f81589c = quaternion;
    }
}
