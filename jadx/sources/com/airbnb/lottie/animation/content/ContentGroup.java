package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.KeyPathElement;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.content.ShapeGroup;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.DropShadow;
import com.airbnb.lottie.utils.OffscreenLayer;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class ContentGroup implements DrawingContent, PathContent, BaseKeyframeAnimation.AnimationListener, KeyPathElement {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OffscreenLayer.ComposeOp f21805a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RectF f21806b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final OffscreenLayer f21807c;
    public final Matrix d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Path f21808e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RectF f21809f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f21810h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f21811i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LottieDrawable f21812j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ArrayList f21813k;
    public final TransformKeyframeAnimation l;

    public ContentGroup(LottieDrawable lottieDrawable, BaseLayer baseLayer, String str, boolean z, ArrayList arrayList, AnimatableTransform animatableTransform) {
        this.f21805a = new OffscreenLayer.ComposeOp();
        this.f21806b = new RectF();
        this.f21807c = new OffscreenLayer();
        this.d = new Matrix();
        this.f21808e = new Path();
        this.f21809f = new RectF();
        this.g = str;
        this.f21812j = lottieDrawable;
        this.f21810h = z;
        this.f21811i = arrayList;
        if (animatableTransform != null) {
            TransformKeyframeAnimation transformKeyframeAnimation = new TransformKeyframeAnimation(animatableTransform);
            this.l = transformKeyframeAnimation;
            transformKeyframeAnimation.a(baseLayer);
            transformKeyframeAnimation.b(this);
        }
        ArrayList arrayList2 = new ArrayList();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Content content = (Content) arrayList.get(size);
            if (content instanceof GreedyContent) {
                arrayList2.add((GreedyContent) content);
            }
        }
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            ((GreedyContent) arrayList2.get(size2)).h(arrayList.listIterator(arrayList.size()));
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public final void a() {
        this.f21812j.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final void b(List list, List list2) {
        int size = list.size();
        ArrayList arrayList = this.f21811i;
        ArrayList arrayList2 = new ArrayList(arrayList.size() + size);
        arrayList2.addAll(list);
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            Content content = (Content) arrayList.get(size2);
            content.b(arrayList2, arrayList.subList(0, size2));
            arrayList2.add(content);
        }
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public final void d(Canvas canvas, Matrix matrix, int i2, DropShadow dropShadow) {
        if (this.f21810h) {
            return;
        }
        Matrix matrix2 = this.d;
        matrix2.set(matrix);
        TransformKeyframeAnimation transformKeyframeAnimation = this.l;
        if (transformKeyframeAnimation != null) {
            matrix2.preConcat(transformKeyframeAnimation.e());
            BaseKeyframeAnimation baseKeyframeAnimation = transformKeyframeAnimation.p;
            i2 = (int) (((((baseKeyframeAnimation == null ? 100 : ((Integer) baseKeyframeAnimation.f()).intValue()) / 100.0f) * i2) / 255.0f) * 255.0f);
        }
        LottieDrawable lottieDrawable = this.f21812j;
        boolean z = (lottieDrawable.r && j() && i2 != 255) || (dropShadow != null && lottieDrawable.s && j());
        int i3 = z ? 255 : i2;
        OffscreenLayer offscreenLayer = this.f21807c;
        if (z) {
            RectF rectF = this.f21806b;
            rectF.set(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            f(rectF, matrix, true);
            OffscreenLayer.ComposeOp composeOp = this.f21805a;
            composeOp.f22309a = i2;
            if (dropShadow != null) {
                if (Color.alpha(dropShadow.d) > 0) {
                    composeOp.f22310b = dropShadow;
                } else {
                    composeOp.f22310b = null;
                }
                dropShadow = null;
            } else {
                composeOp.f22310b = null;
            }
            canvas = offscreenLayer.e(canvas, rectF, composeOp);
        } else if (dropShadow != null) {
            DropShadow dropShadow2 = new DropShadow(dropShadow);
            dropShadow2.b(i3);
            dropShadow = dropShadow2;
        }
        ArrayList arrayList = this.f21811i;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Object obj = arrayList.get(size);
            if (obj instanceof DrawingContent) {
                ((DrawingContent) obj).d(canvas, matrix2, i3, dropShadow);
            }
        }
        if (z) {
            offscreenLayer.c();
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public final void e(KeyPath keyPath, int i2, ArrayList arrayList, KeyPath keyPath2) {
        String str = this.g;
        if (!keyPath.c(i2, str) && !"__container".equals(str)) {
            return;
        }
        if (!"__container".equals(str)) {
            KeyPath keyPath3 = new KeyPath(keyPath2);
            keyPath3.f22080a.add(str);
            if (keyPath.a(i2, str)) {
                KeyPath keyPath4 = new KeyPath(keyPath3);
                keyPath4.f22081b = this;
                arrayList.add(keyPath4);
            }
            keyPath2 = keyPath3;
        }
        if (!keyPath.d(i2, str)) {
            return;
        }
        int iB = keyPath.b(i2, str) + i2;
        int i3 = 0;
        while (true) {
            ArrayList arrayList2 = this.f21811i;
            if (i3 >= arrayList2.size()) {
                return;
            }
            Content content = (Content) arrayList2.get(i3);
            if (content instanceof KeyPathElement) {
                ((KeyPathElement) content).e(keyPath, iB, arrayList, keyPath2);
            }
            i3++;
        }
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public final void f(RectF rectF, Matrix matrix, boolean z) {
        Matrix matrix2 = this.d;
        matrix2.set(matrix);
        TransformKeyframeAnimation transformKeyframeAnimation = this.l;
        if (transformKeyframeAnimation != null) {
            matrix2.preConcat(transformKeyframeAnimation.e());
        }
        RectF rectF2 = this.f21809f;
        rectF2.set(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        ArrayList arrayList = this.f21811i;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Content content = (Content) arrayList.get(size);
            if (content instanceof DrawingContent) {
                ((DrawingContent) content).f(rectF2, matrix2, z);
                rectF.union(rectF2);
            }
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public final void g(LottieValueCallback lottieValueCallback, Object obj) {
        TransformKeyframeAnimation transformKeyframeAnimation = this.l;
        if (transformKeyframeAnimation != null) {
            transformKeyframeAnimation.c(lottieValueCallback, obj);
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final String getName() {
        throw null;
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public final Path getPath() {
        Matrix matrix = this.d;
        matrix.reset();
        TransformKeyframeAnimation transformKeyframeAnimation = this.l;
        if (transformKeyframeAnimation != null) {
            matrix.set(transformKeyframeAnimation.e());
        }
        Path path = this.f21808e;
        path.reset();
        if (!this.f21810h) {
            ArrayList arrayList = this.f21811i;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                Content content = (Content) arrayList.get(size);
                if (content instanceof PathContent) {
                    path.addPath(((PathContent) content).getPath(), matrix);
                }
            }
        }
        return path;
    }

    public final List h() {
        if (this.f21813k == null) {
            this.f21813k = new ArrayList();
            int i2 = 0;
            while (true) {
                ArrayList arrayList = this.f21811i;
                if (i2 >= arrayList.size()) {
                    break;
                }
                Content content = (Content) arrayList.get(i2);
                if (content instanceof PathContent) {
                    this.f21813k.add((PathContent) content);
                }
                i2++;
            }
        }
        return this.f21813k;
    }

    public final boolean j() {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            ArrayList arrayList = this.f21811i;
            if (i2 >= arrayList.size()) {
                return false;
            }
            if ((arrayList.get(i2) instanceof DrawingContent) && (i3 = i3 + 1) >= 2) {
                return true;
            }
            i2++;
        }
    }

    public ContentGroup(LottieDrawable lottieDrawable, BaseLayer baseLayer, ShapeGroup shapeGroup, LottieComposition lottieComposition) {
        AnimatableTransform animatableTransform;
        String str = shapeGroup.f22164a;
        boolean z = shapeGroup.f22166c;
        List list = shapeGroup.f22165b;
        ArrayList arrayList = new ArrayList(list.size());
        int i2 = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Content contentA = ((ContentModel) list.get(i3)).a(lottieDrawable, lottieComposition, baseLayer);
            if (contentA != null) {
                arrayList.add(contentA);
            }
        }
        while (true) {
            if (i2 >= list.size()) {
                animatableTransform = null;
                break;
            }
            ContentModel contentModel = (ContentModel) list.get(i2);
            if (contentModel instanceof AnimatableTransform) {
                animatableTransform = (AnimatableTransform) contentModel;
                break;
            }
            i2++;
        }
        this(lottieDrawable, baseLayer, str, z, arrayList, animatableTransform);
    }
}
