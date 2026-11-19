package defpackage;

import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import androidx.core.view.ViewPropertyAnimatorUpdateListener;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import com.google.android.filament.utils.Float3;
import com.google.android.filament.utils.Quaternion;
import com.google.android.filament.utils.QuaternionKt;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.progressindicator.BaseProgressIndicatorSpec;
import com.google.android.material.progressindicator.DeterminateDrawable;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.SensorDataManager;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerHelper;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b7 implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20774a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f20775b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f20776c;

    public /* synthetic */ b7(Object obj, Object obj2, int i2) {
        this.f20774a = i2;
        this.f20775b = obj;
        this.f20776c = obj2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i2 = this.f20774a;
        Object obj = this.f20776c;
        Object obj2 = this.f20775b;
        switch (i2) {
            case 0:
                AppBarLayout appBarLayout = (AppBarLayout) obj2;
                int i3 = AppBarLayout.B;
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                ((MaterialShapeDrawable) obj).q(fFloatValue);
                Drawable drawable = appBarLayout.x;
                if (drawable instanceof MaterialShapeDrawable) {
                    ((MaterialShapeDrawable) drawable).q(fFloatValue);
                }
                Iterator it = appBarLayout.r.iterator();
                while (it.hasNext()) {
                    ((AppBarLayout.LiftOnScrollListener) it.next()).a();
                }
                Iterator it2 = appBarLayout.s.iterator();
                while (it2.hasNext()) {
                    ((AppBarLayout.LiftOnScrollProgressListener) it2.next()).a(fFloatValue / appBarLayout.z);
                }
                return;
            case 1:
                DeterminateDrawable determinateDrawable = (DeterminateDrawable) obj2;
                BaseProgressIndicatorSpec baseProgressIndicatorSpec = (BaseProgressIndicatorSpec) obj;
                FloatPropertyCompat floatPropertyCompat = DeterminateDrawable.z;
                if (baseProgressIndicatorSpec.b(true) && baseProgressIndicatorSpec.m != 0 && determinateDrawable.isVisible()) {
                    determinateDrawable.invalidateSelf();
                    return;
                }
                return;
            case 2:
                Lv3dViewerHelper lv3dViewerHelper = (Lv3dViewerHelper) obj2;
                Quaternion quaternion = (Quaternion) obj;
                valueAnimator.getClass();
                Object animatedValue = valueAnimator.getAnimatedValue();
                animatedValue.getClass();
                float fFloatValue2 = ((Float) animatedValue).floatValue();
                Quaternion.Companion companion = Quaternion.f28668e;
                Float3 float3 = new Float3(1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                SensorDataManager.SensorData sensorData = lv3dViewerHelper.M;
                if (sensorData == null) {
                    Intrinsics.h("sensorData");
                    throw null;
                }
                float f2 = -sensorData.f58540b;
                companion.getClass();
                Quaternion quaternionA = Quaternion.Companion.a(float3, f2);
                Float3 float4 = new Float3(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                SensorDataManager.SensorData sensorData2 = lv3dViewerHelper.M;
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
                Quaternion quaternionA3 = QuaternionKt.a(quaternion, new Quaternion(((f7 * f8) + ((f5 * f6) + (f3 * f4))) - (f9 * f10), (f9 * f4) + (f7 * f6) + ((f3 * f10) - (f5 * f8)), (f9 * f6) + (((f5 * f10) + (f3 * f8)) - (f7 * f4)), (((f3 * f6) - (f5 * f4)) - (f7 * f10)) - (f9 * f8)), fFloatValue2);
                lv3dViewerHelper.P = quaternionA3;
                lv3dViewerHelper.d(lv3dViewerHelper.C, quaternionA3.a());
                return;
            default:
                ((ViewPropertyAnimatorUpdateListener) obj2).a();
                return;
        }
    }
}
