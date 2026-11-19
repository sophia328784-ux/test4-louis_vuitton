package defpackage;

import android.animation.ValueAnimator;
import android.widget.ImageButton;
import androidx.appcompat.graphics.drawable.DrawerArrowDrawable;
import androidx.camera.core.Logger;
import androidx.camera.view.ScreenFlashView;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.CompositionLayer;
import com.google.android.exoplayer2.ui.DefaultTimeBar;
import com.google.android.filament.utils.Float3;
import com.google.android.filament.utils.Float4;
import com.google.android.filament.utils.Mat4;
import com.google.android.filament.utils.MatrixKt;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.FadeThroughDrawable;
import com.google.android.material.math.MathUtils;
import com.google.android.material.progressindicator.DeterminateDrawable;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerHelper;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ft implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f69207a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f69208b;

    public /* synthetic */ ft(Object obj, int i2) {
        this.f69207a = i2;
        this.f69208b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i2 = this.f69207a;
        Object obj = this.f69208b;
        switch (i2) {
            case 0:
                DefaultTimeBar defaultTimeBar = (DefaultTimeBar) obj;
                int i3 = DefaultTimeBar.K;
                defaultTimeBar.E = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                defaultTimeBar.invalidate(defaultTimeBar.f28372b);
                break;
            case 1:
                androidx.media3.ui.DefaultTimeBar defaultTimeBar2 = (androidx.media3.ui.DefaultTimeBar) obj;
                int i4 = androidx.media3.ui.DefaultTimeBar.Q;
                defaultTimeBar2.G = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                defaultTimeBar2.invalidate(defaultTimeBar2.f17970b);
                break;
            case 2:
                DeterminateDrawable determinateDrawable = (DeterminateDrawable) obj;
                determinateDrawable.r.f32835e = determinateDrawable.w.getInterpolation(determinateDrawable.v.getAnimatedFraction());
                break;
            case 3:
                LottieDrawable lottieDrawable = (LottieDrawable) obj;
                List list = LottieDrawable.O;
                AsyncUpdates asyncUpdates = lottieDrawable.K;
                if (asyncUpdates == null) {
                    asyncUpdates = L.f21740a;
                }
                if (asyncUpdates != AsyncUpdates.ENABLED) {
                    CompositionLayer compositionLayer = lottieDrawable.o;
                    if (compositionLayer != null) {
                        compositionLayer.r(lottieDrawable.f21759c.c());
                    }
                } else {
                    lottieDrawable.invalidateSelf();
                }
                break;
            case 4:
                Lv3dViewerHelper lv3dViewerHelper = (Lv3dViewerHelper) obj;
                valueAnimator.getClass();
                Object animatedValue = valueAnimator.getAnimatedValue();
                animatedValue.getClass();
                float fFloatValue = ((Float) animatedValue).floatValue();
                Mat4 mat4B = lv3dViewerHelper.b(lv3dViewerHelper.E);
                Float4 float4 = mat4B.f28665a;
                Float3 float3 = new Float3(float4.f28643a, float4.f28644b, float4.f28645c);
                float f2 = float3.f28639a;
                float f3 = float3.f28640b;
                float f4 = (f3 * f3) + (f2 * f2);
                float f5 = float3.f28641c;
                float fSqrt = (float) Math.sqrt((f5 * f5) + f4);
                Float4 float5 = mat4B.f28666b;
                Float3 float6 = new Float3(float5.f28643a, float5.f28644b, float5.f28645c);
                float f6 = float6.f28639a;
                float f7 = float6.f28640b;
                float f8 = (f7 * f7) + (f6 * f6);
                float f9 = float6.f28641c;
                float fSqrt2 = (float) Math.sqrt((f9 * f9) + f8);
                Float4 float7 = mat4B.f28667c;
                Float3 float8 = new Float3(float7.f28643a, float7.f28644b, float7.f28645c);
                float f10 = float8.f28639a;
                float f11 = float8.f28640b;
                float f12 = (f11 * f11) + (f10 * f10);
                float f13 = float8.f28641c;
                float fC = MathUtils.c(new Float3(fSqrt, fSqrt2, (float) Math.sqrt((f13 * f13) + f12)).f28639a, 1.0f, fFloatValue);
                lv3dViewerHelper.T = fC;
                lv3dViewerHelper.d(lv3dViewerHelper.E, MatrixKt.a(new Float3(fC, fC, fC)));
                break;
            case 5:
                ClippableRoundedCornerLayout clippableRoundedCornerLayout = (ClippableRoundedCornerLayout) obj;
                clippableRoundedCornerLayout.a(clippableRoundedCornerLayout.getLeft(), clippableRoundedCornerLayout.getTop(), clippableRoundedCornerLayout.getRight(), clippableRoundedCornerLayout.getBottom(), (float[]) valueAnimator.getAnimatedValue());
                break;
            case 6:
                int i5 = ScreenFlashView.d;
                ((Float) valueAnimator.getAnimatedValue()).getClass();
                Logger.c(3, "ScreenFlashView");
                ((ScreenFlashView) obj).setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            case 7:
                ((DrawerArrowDrawable) obj).setProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            case 8:
                ((FadeThroughDrawable) obj).a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            default:
                ((ImageButton) obj).setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
        }
    }
}
