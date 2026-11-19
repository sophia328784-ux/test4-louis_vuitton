package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ShapeKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.ShapePath;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ShapeContent implements PathContent, BaseKeyframeAnimation.AnimationListener, KeyPathElementContent {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f21874b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f21875c;
    public final LottieDrawable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ShapeKeyframeAnimation f21876e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f21877f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Path f21873a = new Path();
    public final CompoundTrimPathContent g = new CompoundTrimPathContent();

    public ShapeContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, ShapePath shapePath) {
        this.f21874b = shapePath.f22167a;
        this.f21875c = shapePath.d;
        this.d = lottieDrawable;
        ShapeKeyframeAnimation shapeKeyframeAnimationA = shapePath.f22169c.a();
        this.f21876e = shapeKeyframeAnimationA;
        baseLayer.h(shapeKeyframeAnimationA);
        shapeKeyframeAnimationA.a(this);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public final void a() {
        this.f21877f = false;
        this.d.invalidateSelf();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0029  */
    /* JADX WARN: Code duplicated, block: B:12:0x002d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:13:0x002f  */
    /* JADX WARN: Code duplicated, block: B:21:0x003c A[SYNTHETIC] */
    @Override // com.airbnb.lottie.animation.content.Content
    public final void b(List list, List list2) {
        ArrayList arrayList = null;
        int i2 = 0;
        while (true) {
            ArrayList arrayList2 = (ArrayList) list;
            if (i2 >= arrayList2.size()) {
                this.f21876e.m = arrayList;
                return;
            }
            Content content = (Content) arrayList2.get(i2);
            if (content instanceof TrimPathContent) {
                TrimPathContent trimPathContent = (TrimPathContent) content;
                if (trimPathContent.f21880c == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.g.f21804a.add(trimPathContent);
                    trimPathContent.e(this);
                } else if (!(content instanceof ShapeModifierContent)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    ShapeModifierContent shapeModifierContent = (ShapeModifierContent) content;
                    shapeModifierContent.i(this);
                    arrayList.add(shapeModifierContent);
                }
            } else if (!(content instanceof ShapeModifierContent)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                ShapeModifierContent shapeModifierContent2 = (ShapeModifierContent) content;
                shapeModifierContent2.i(this);
                arrayList.add(shapeModifierContent2);
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
        if (obj == LottieProperty.N) {
            this.f21876e.k(lottieValueCallback);
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final String getName() {
        return this.f21874b;
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public final Path getPath() {
        boolean z = this.f21877f;
        ShapeKeyframeAnimation shapeKeyframeAnimation = this.f21876e;
        Path path = this.f21873a;
        if (z && shapeKeyframeAnimation.f21886e == null) {
            return path;
        }
        path.reset();
        if (this.f21875c) {
            this.f21877f = true;
            return path;
        }
        Path path2 = (Path) shapeKeyframeAnimation.f();
        if (path2 == null) {
            return path;
        }
        path.set(path2);
        path.setFillType(Path.FillType.EVEN_ODD);
        this.g.a(path);
        this.f21877f = true;
        return path;
    }
}
