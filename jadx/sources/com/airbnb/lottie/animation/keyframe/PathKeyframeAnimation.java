package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class PathKeyframeAnimation extends KeyframeAnimation<PointF> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final PointF f21905i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float[] f21906j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float[] f21907k;
    public final PathMeasure l;
    public PathKeyframe m;

    public PathKeyframeAnimation(List<? extends Keyframe<PointF>> list) {
        super(list);
        this.f21905i = new PointF();
        this.f21906j = new float[2];
        this.f21907k = new float[2];
        this.l = new PathMeasure();
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object g(Keyframe keyframe, float f2) {
        float f3;
        PathKeyframe pathKeyframe = (PathKeyframe) keyframe;
        Path path = pathKeyframe.q;
        LottieValueCallback lottieValueCallback = this.f21886e;
        if (lottieValueCallback == null || keyframe.f22321h == null) {
            f3 = f2;
        } else {
            f3 = f2;
            PointF pointF = (PointF) lottieValueCallback.b(pathKeyframe.g, pathKeyframe.f22321h.floatValue(), (PointF) pathKeyframe.f22317b, (PointF) pathKeyframe.f22318c, e(), f3, this.d);
            if (pointF != null) {
                return pointF;
            }
        }
        if (path == null) {
            return (PointF) keyframe.f22317b;
        }
        PathKeyframe pathKeyframe2 = this.m;
        PathMeasure pathMeasure = this.l;
        if (pathKeyframe2 != pathKeyframe) {
            pathMeasure.setPath(path, false);
            this.m = pathKeyframe;
        }
        float length = pathMeasure.getLength();
        float f4 = f3 * length;
        float[] fArr = this.f21906j;
        float[] fArr2 = this.f21907k;
        pathMeasure.getPosTan(f4, fArr, fArr2);
        float f5 = fArr[0];
        float f6 = fArr[1];
        PointF pointF2 = this.f21905i;
        pointF2.set(f5, f6);
        if (f4 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            pointF2.offset(fArr2[0] * f4, fArr2[1] * f4);
            return pointF2;
        }
        if (f4 > length) {
            float f7 = f4 - length;
            pointF2.offset(fArr2[0] * f7, fArr2[1] * f7);
        }
        return pointF2;
    }
}
