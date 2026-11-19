package com.airbnb.lottie.animation.keyframe;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class PathKeyframe extends Keyframe<PointF> {
    public Path q;
    public final Keyframe r;

    public PathKeyframe(LottieComposition lottieComposition, Keyframe<PointF> keyframe) {
        super(lottieComposition, (PointF) keyframe.f22317b, (PointF) keyframe.f22318c, keyframe.d, keyframe.f22319e, keyframe.f22320f, keyframe.g, keyframe.f22321h);
        this.r = keyframe;
        d();
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0019  */
    public final void d() {
        boolean z;
        Object obj;
        Object obj2 = this.f22318c;
        Object obj3 = this.f22317b;
        if (obj2 == null || obj3 == null) {
            z = false;
        } else {
            PointF pointF = (PointF) obj2;
            if (((PointF) obj3).equals(pointF.x, pointF.y)) {
                z = true;
            } else {
                z = false;
            }
        }
        if (obj3 == null || (obj = this.f22318c) == null || z) {
            return;
        }
        PointF pointF2 = (PointF) obj3;
        PointF pointF3 = (PointF) obj;
        Keyframe keyframe = this.r;
        PointF pointF4 = keyframe.o;
        PointF pointF5 = keyframe.p;
        Matrix matrix = Utils.f22311a;
        Path path = new Path();
        path.moveTo(pointF2.x, pointF2.y);
        if (pointF4 == null || pointF5 == null || (pointF4.length() == Call.Parameters.DEFAULT_CAMERA_ZOOM && pointF5.length() == Call.Parameters.DEFAULT_CAMERA_ZOOM)) {
            path.lineTo(pointF3.x, pointF3.y);
        } else {
            float f2 = pointF4.x + pointF2.x;
            float f3 = pointF2.y + pointF4.y;
            float f4 = pointF3.x;
            float f5 = f4 + pointF5.x;
            float f6 = pointF3.y;
            path.cubicTo(f2, f3, f5, f6 + pointF5.y, f4, f6);
        }
        this.q = path;
    }
}
