package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.CircleShape;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class EllipseContent implements PathContent, BaseKeyframeAnimation.AnimationListener, KeyPathElementContent {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f21815b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LottieDrawable f21816c;
    public final PointKeyframeAnimation d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BaseKeyframeAnimation f21817e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CircleShape f21818f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f21819h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Path f21814a = new Path();
    public final CompoundTrimPathContent g = new CompoundTrimPathContent();

    public EllipseContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, CircleShape circleShape) {
        this.f21815b = circleShape.f22111a;
        this.f21816c = lottieDrawable;
        BaseKeyframeAnimation baseKeyframeAnimationA = circleShape.f22113c.a();
        this.d = (PointKeyframeAnimation) baseKeyframeAnimationA;
        BaseKeyframeAnimation baseKeyframeAnimationA2 = circleShape.f22112b.a();
        this.f21817e = baseKeyframeAnimationA2;
        this.f21818f = circleShape;
        baseLayer.h(baseKeyframeAnimationA);
        baseLayer.h(baseKeyframeAnimationA2);
        baseKeyframeAnimationA.a(this);
        baseKeyframeAnimationA2.a(this);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public final void a() {
        this.f21819h = false;
        this.f21816c.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final void b(List list, List list2) {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) list;
            if (i2 >= arrayList.size()) {
                return;
            }
            Content content = (Content) arrayList.get(i2);
            if (content instanceof TrimPathContent) {
                TrimPathContent trimPathContent = (TrimPathContent) content;
                if (trimPathContent.f21880c == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.g.f21804a.add(trimPathContent);
                    trimPathContent.e(this);
                }
            }
            i2++;
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public final void e(KeyPath keyPath, int i2, ArrayList arrayList, KeyPath keyPath2) {
        MiscUtils.g(keyPath, i2, arrayList, keyPath2, this);
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public final void g(LottieValueCallback lottieValueCallback, Object obj) {
        if (obj == LottieProperty.f21776f) {
            this.d.k(lottieValueCallback);
        } else if (obj == LottieProperty.f21778i) {
            this.f21817e.k(lottieValueCallback);
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final String getName() {
        return this.f21815b;
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public final Path getPath() {
        boolean z = this.f21819h;
        Path path = this.f21814a;
        if (z) {
            return path;
        }
        path.reset();
        CircleShape circleShape = this.f21818f;
        if (circleShape.f22114e) {
            this.f21819h = true;
            return path;
        }
        PointF pointF = (PointF) this.d.f();
        float f2 = pointF.x / 2.0f;
        float f3 = pointF.y / 2.0f;
        float f4 = f2 * 0.55228f;
        float f5 = f3 * 0.55228f;
        path.reset();
        if (circleShape.d) {
            float f6 = -f3;
            path.moveTo(Call.Parameters.DEFAULT_CAMERA_ZOOM, f6);
            float f7 = Call.Parameters.DEFAULT_CAMERA_ZOOM - f4;
            float f8 = -f2;
            float f9 = Call.Parameters.DEFAULT_CAMERA_ZOOM - f5;
            path.cubicTo(f7, f6, f8, f9, f8, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            float f10 = f5 + Call.Parameters.DEFAULT_CAMERA_ZOOM;
            path.cubicTo(f8, f10, f7, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3);
            float f11 = f4 + Call.Parameters.DEFAULT_CAMERA_ZOOM;
            path.cubicTo(f11, f3, f2, f10, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            path.cubicTo(f2, f9, f11, f6, Call.Parameters.DEFAULT_CAMERA_ZOOM, f6);
        } else {
            float f12 = -f3;
            path.moveTo(Call.Parameters.DEFAULT_CAMERA_ZOOM, f12);
            float f13 = f4 + Call.Parameters.DEFAULT_CAMERA_ZOOM;
            float f14 = Call.Parameters.DEFAULT_CAMERA_ZOOM - f5;
            path.cubicTo(f13, f12, f2, f14, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            float f15 = f5 + Call.Parameters.DEFAULT_CAMERA_ZOOM;
            path.cubicTo(f2, f15, f13, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3);
            float f16 = Call.Parameters.DEFAULT_CAMERA_ZOOM - f4;
            float f17 = -f2;
            path.cubicTo(f16, f3, f17, f15, f17, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            path.cubicTo(f17, f14, f16, f12, Call.Parameters.DEFAULT_CAMERA_ZOOM, f12);
        }
        PointF pointF2 = (PointF) this.f21817e.f();
        path.offset(pointF2.x, pointF2.y);
        path.close();
        this.g.a(path);
        this.f21819h = true;
        return path;
    }
}
