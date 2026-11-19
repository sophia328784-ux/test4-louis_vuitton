package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.DropShadowKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.parser.DropShadowEffect;
import com.airbnb.lottie.utils.DropShadow;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.OffscreenLayer;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class CompositionLayer extends BaseLayer {
    public BaseKeyframeAnimation C;
    public final ArrayList D;
    public final RectF E;
    public final RectF F;
    public final RectF G;
    public final OffscreenLayer H;
    public final OffscreenLayer.ComposeOp I;
    public float J;
    public boolean K;
    public final DropShadowKeyframeAnimation L;

    /* JADX INFO: renamed from: com.airbnb.lottie.model.layer.CompositionLayer$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f22195a;

        static {
            int[] iArr = new int[Layer.MatteType.values().length];
            f22195a = iArr;
            try {
                iArr[Layer.MatteType.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22195a[Layer.MatteType.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public CompositionLayer(LottieDrawable lottieDrawable, Layer layer, List<Layer> list, LottieComposition lottieComposition) {
        BaseLayer baseLayer;
        BaseLayer shapeLayer;
        super(lottieDrawable, layer);
        this.D = new ArrayList();
        this.E = new RectF();
        this.F = new RectF();
        this.G = new RectF();
        this.H = new OffscreenLayer();
        this.I = new OffscreenLayer.ComposeOp();
        this.K = true;
        AnimatableFloatValue animatableFloatValue = layer.s;
        if (animatableFloatValue != null) {
            FloatKeyframeAnimation floatKeyframeAnimationA = animatableFloatValue.a();
            this.C = floatKeyframeAnimationA;
            h(floatKeyframeAnimationA);
            this.C.a(this);
        } else {
            this.C = null;
        }
        LongSparseArray longSparseArray = new LongSparseArray(lottieComposition.f21753j.size());
        int size = list.size() - 1;
        BaseLayer baseLayer2 = null;
        while (true) {
            if (size < 0) {
                for (int i2 = 0; i2 < longSparseArray.g(); i2++) {
                    BaseLayer baseLayer3 = (BaseLayer) longSparseArray.b(longSparseArray.d(i2));
                    if (baseLayer3 != null && (baseLayer = (BaseLayer) longSparseArray.b(baseLayer3.p.f22200f)) != null) {
                        baseLayer3.t = baseLayer;
                    }
                }
                DropShadowEffect dropShadowEffect = this.p.x;
                if (dropShadowEffect != null) {
                    this.L = new DropShadowKeyframeAnimation(this, this, dropShadowEffect);
                    return;
                }
                return;
            }
            Layer layer2 = list.get(size);
            switch (BaseLayer.AnonymousClass1.f22193a[layer2.f22199e.ordinal()]) {
                case 1:
                    shapeLayer = new ShapeLayer(lottieDrawable, layer2, this, lottieComposition);
                    break;
                case 2:
                    shapeLayer = new CompositionLayer(lottieDrawable, layer2, (List) lottieComposition.f21748c.get(layer2.g), lottieComposition);
                    break;
                case 3:
                    shapeLayer = new SolidLayer(lottieDrawable, layer2);
                    break;
                case 4:
                    shapeLayer = new ImageLayer(lottieDrawable, layer2);
                    break;
                case 5:
                    shapeLayer = new NullLayer(lottieDrawable, layer2);
                    break;
                case 6:
                    shapeLayer = new TextLayer(lottieDrawable, layer2);
                    break;
                default:
                    Logger.a("Unknown layer type " + layer2.f22199e);
                    shapeLayer = null;
                    break;
            }
            if (shapeLayer != null) {
                longSparseArray.e(shapeLayer.p.d, shapeLayer);
                if (baseLayer2 != null) {
                    baseLayer2.s = shapeLayer;
                    baseLayer2 = null;
                } else {
                    this.D.add(0, shapeLayer);
                    int i3 = AnonymousClass1.f22195a[layer2.u.ordinal()];
                    if (i3 == 1 || i3 == 2) {
                        baseLayer2 = shapeLayer;
                    }
                }
            }
            size--;
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    public final void f(RectF rectF, Matrix matrix, boolean z) {
        super.f(rectF, matrix, z);
        ArrayList arrayList = this.D;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            RectF rectF2 = this.E;
            rectF2.set(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            ((BaseLayer) arrayList.get(size)).f(rectF2, this.n, true);
            rectF.union(rectF2);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.model.KeyPathElement
    public final void g(LottieValueCallback lottieValueCallback, Object obj) {
        super.g(lottieValueCallback, obj);
        if (obj == LottieProperty.C) {
            if (lottieValueCallback == null) {
                BaseKeyframeAnimation baseKeyframeAnimation = this.C;
                if (baseKeyframeAnimation != null) {
                    baseKeyframeAnimation.k(null);
                    return;
                }
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.C = valueCallbackKeyframeAnimation;
            valueCallbackKeyframeAnimation.a(this);
            h(this.C);
            return;
        }
        DropShadowKeyframeAnimation dropShadowKeyframeAnimation = this.L;
        if (obj == 5 && dropShadowKeyframeAnimation != null) {
            dropShadowKeyframeAnimation.f21896c.k(lottieValueCallback);
            return;
        }
        if (obj == LottieProperty.E && dropShadowKeyframeAnimation != null) {
            dropShadowKeyframeAnimation.c(lottieValueCallback);
            return;
        }
        if (obj == LottieProperty.F && dropShadowKeyframeAnimation != null) {
            dropShadowKeyframeAnimation.f21897e.k(lottieValueCallback);
            return;
        }
        if (obj == LottieProperty.G && dropShadowKeyframeAnimation != null) {
            dropShadowKeyframeAnimation.f21898f.k(lottieValueCallback);
        } else {
            if (obj != LottieProperty.H || dropShadowKeyframeAnimation == null) {
                return;
            }
            dropShadowKeyframeAnimation.g.k(lottieValueCallback);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public final void k(Canvas canvas, Matrix matrix, int i2, DropShadow dropShadow) {
        Canvas canvasE;
        AsyncUpdates asyncUpdates = L.f21740a;
        boolean z = false;
        DropShadowKeyframeAnimation dropShadowKeyframeAnimation = this.L;
        boolean z2 = (dropShadow == null && dropShadowKeyframeAnimation == null) ? false : true;
        LottieDrawable lottieDrawable = this.o;
        boolean z3 = lottieDrawable.r;
        ArrayList<BaseLayer> arrayList = this.D;
        if ((z3 && arrayList.size() > 1 && i2 != 255) || (z2 && lottieDrawable.s)) {
            z = true;
        }
        int i3 = z ? 255 : i2;
        if (dropShadowKeyframeAnimation != null) {
            dropShadow = dropShadowKeyframeAnimation.b(matrix, i3);
        }
        boolean z4 = this.K;
        Layer layer = this.p;
        RectF rectF = this.F;
        if (z4 || !"__container".equals(layer.f22198c)) {
            rectF.set(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, layer.o, layer.p);
            matrix.mapRect(rectF);
        } else {
            rectF.setEmpty();
            for (BaseLayer baseLayer : arrayList) {
                RectF rectF2 = this.G;
                baseLayer.f(rectF2, matrix, true);
                rectF.union(rectF2);
            }
        }
        OffscreenLayer offscreenLayer = this.H;
        if (z) {
            OffscreenLayer.ComposeOp composeOp = this.I;
            composeOp.f22310b = null;
            composeOp.f22309a = i2;
            if (dropShadow != null) {
                if (Color.alpha(dropShadow.d) > 0) {
                    composeOp.f22310b = dropShadow;
                } else {
                    composeOp.f22310b = null;
                }
                dropShadow = null;
            }
            canvasE = offscreenLayer.e(canvas, rectF, composeOp);
        } else {
            canvasE = canvas;
        }
        canvas.save();
        if (canvas.clipRect(rectF)) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((BaseLayer) arrayList.get(size)).d(canvasE, matrix, i3, dropShadow);
            }
        }
        if (z) {
            offscreenLayer.c();
        }
        canvas.restore();
        AsyncUpdates asyncUpdates2 = L.f21740a;
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public final void p(KeyPath keyPath, int i2, ArrayList arrayList, KeyPath keyPath2) {
        int i3 = 0;
        while (true) {
            ArrayList arrayList2 = this.D;
            if (i3 >= arrayList2.size()) {
                return;
            }
            ((BaseLayer) arrayList2.get(i3)).e(keyPath, i2, arrayList, keyPath2);
            i3++;
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public final void q(boolean z) {
        super.q(z);
        Iterator it = this.D.iterator();
        while (it.hasNext()) {
            ((BaseLayer) it.next()).q(z);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public final void r(float f2) {
        AsyncUpdates asyncUpdates = L.f21740a;
        this.J = f2;
        super.r(f2);
        BaseKeyframeAnimation baseKeyframeAnimation = this.C;
        Layer layer = this.p;
        if (baseKeyframeAnimation != null) {
            LottieComposition lottieComposition = this.o.f21758b;
            f2 = ((((Float) baseKeyframeAnimation.f()).floatValue() * layer.f22197b.n) - layer.f22197b.l) / ((lottieComposition.m - lottieComposition.l) + 0.01f);
        }
        if (this.C == null) {
            float f3 = layer.n;
            LottieComposition lottieComposition2 = layer.f22197b;
            f2 -= f3 / (lottieComposition2.m - lottieComposition2.l);
        }
        if (layer.m != Call.Parameters.DEFAULT_CAMERA_ZOOM && !"__container".equals(layer.f22198c)) {
            f2 /= layer.m;
        }
        ArrayList arrayList = this.D;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((BaseLayer) arrayList.get(size)).r(f2);
        }
        AsyncUpdates asyncUpdates2 = L.f21740a;
    }
}
