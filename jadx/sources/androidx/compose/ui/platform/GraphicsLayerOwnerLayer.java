package androidx.compose.ui.platform;

import android.os.Build;
import android.view.ViewParent;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.FrameRateCategory;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.CompositingStrategy;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.MatrixKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.RenderEffect;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerImpl;
import androidx.compose.ui.graphics.layer.GraphicsLayerKt;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.GraphicLayerInfo;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.md;
import defpackage.v40;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002Bi\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u00128\u0010\u0010\u001a4\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0015\u0012\u0013\u0018\u00010\u0003¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u000f0\t\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;", "Landroidx/compose/ui/node/OwnedLayer;", "Landroidx/compose/ui/layout/GraphicLayerInfo;", "Landroidx/compose/ui/graphics/layer/GraphicsLayer;", "graphicsLayer", "Landroidx/compose/ui/graphics/GraphicsContext;", MvelScriptManager.VAR_CONTEXT, "Landroidx/compose/ui/platform/AndroidComposeView;", "ownerView", "Lkotlin/Function2;", "Landroidx/compose/ui/graphics/Canvas;", "Lkotlin/ParameterName;", "name", "canvas", "parentLayer", "", "drawBlock", "Lkotlin/Function0;", "invalidateParentLayer", "<init>", "(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GraphicsLayerOwnerLayer implements OwnedLayer, GraphicLayerInfo {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public GraphicsLayer f10079b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GraphicsContext f10080c;
    public final AndroidComposeView d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Function2 f10081e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Function0 f10082f;
    public long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f10083h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float[] f10084i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float[] f10085j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f10086k;
    public Density l;
    public LayoutDirection m;
    public final CanvasDrawScope n;
    public int o;
    public long p;
    public Outline q;
    public boolean r;
    public boolean s;
    public boolean t;
    public boolean u;
    public final Function1 v;

    public GraphicsLayerOwnerLayer(GraphicsLayer graphicsLayer, GraphicsContext graphicsContext, AndroidComposeView androidComposeView, Function2<? super Canvas, ? super GraphicsLayer, Unit> function2, Function0<Unit> function0) {
        this.f10079b = graphicsLayer;
        this.f10080c = graphicsContext;
        this.d = androidComposeView;
        this.f10081e = function2;
        this.f10082f = function0;
        IntSize.Companion companion = IntSize.f11020b;
        this.g = 9223372034707292159L;
        this.f10084i = Matrix.a();
        this.l = DensityKt.b();
        this.m = LayoutDirection.Ltr;
        this.n = new CanvasDrawScope();
        TransformOrigin.f8941b.getClass();
        this.p = TransformOrigin.f8942c;
        this.t = true;
        this.v = new Function1<DrawScope, Unit>() { // from class: androidx.compose.ui.platform.GraphicsLayerOwnerLayer$recordLambda$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DrawScope drawScope = (DrawScope) obj;
                Canvas canvasA = drawScope.getF8996c().a();
                Function2 function3 = this.f10087c.f10081e;
                if (function3 != null) {
                    function3.invoke(canvasA, drawScope.getF8996c().f9002b);
                }
                return Unit.f71739a;
            }
        };
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final void a(float[] fArr) {
        Matrix.e(fArr, m());
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final long b(long j2, boolean z) {
        float[] fArrM;
        if (z) {
            fArrM = l();
            if (fArrM == null) {
                Offset.f8806b.getClass();
                return Offset.f8807c;
            }
        } else {
            fArrM = m();
        }
        return this.t ? j2 : Matrix.b(j2, fArrM);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final void c(long j2) {
        if (IntSize.b(j2, this.g)) {
            return;
        }
        AndroidComposeView androidComposeView = this.d;
        androidComposeView.getClass();
        if (AndroidComposeView.T()) {
            FrameRateCategory.f8605a.getClass();
            androidComposeView.C(FrameRateCategory.f8606b);
        }
        this.g = j2;
        if (this.f10086k || this.f10083h) {
            return;
        }
        androidComposeView.invalidate();
        if (true != this.f10086k) {
            this.f10086k = true;
            androidComposeView.X(this, true);
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final void d(Canvas canvas, GraphicsLayer graphicsLayer) {
        k();
        this.u = this.f10079b.f9023a.getP() > Call.Parameters.DEFAULT_CAMERA_ZOOM;
        CanvasDrawScope canvasDrawScope = this.n;
        CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.f8996c;
        canvasDrawScope$drawContext$1.e(canvas);
        canvasDrawScope$drawContext$1.f9002b = graphicsLayer;
        GraphicsLayerKt.a(canvasDrawScope, this.f10079b);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final void destroy() {
        MutableVector mutableVector;
        Reference referencePoll;
        this.f10081e = null;
        this.f10082f = null;
        this.f10083h = true;
        boolean z = this.f10086k;
        AndroidComposeView androidComposeView = this.d;
        if (z) {
            this.f10086k = false;
            androidComposeView.X(this, false);
        }
        GraphicsContext graphicsContext = this.f10080c;
        if (graphicsContext != null) {
            graphicsContext.b(this.f10079b);
            WeakCache weakCache = androidComposeView.A1;
            do {
                ReferenceQueue referenceQueue = weakCache.f10176b;
                mutableVector = weakCache.f10175a;
                referencePoll = referenceQueue.poll();
                if (referencePoll != null) {
                    mutableVector.n(referencePoll);
                }
            } while (referencePoll != null);
            mutableVector.b(new WeakReference(this, weakCache.f10176b));
            androidComposeView.G.l(this);
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final void e(MutableRect mutableRect, boolean z) {
        float[] fArrL = z ? l() : m();
        if (this.t) {
            return;
        }
        if (fArrL != null) {
            Matrix.c(fArrL, mutableRect);
            return;
        }
        mutableRect.f8803a = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        mutableRect.f8804b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        mutableRect.f8805c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        mutableRect.d = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final boolean f(long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
        GraphicsLayer graphicsLayer = this.f10079b;
        if (graphicsLayer.w) {
            return ShapeContainingUtilKt.a(graphicsLayer.d(), fIntBitsToFloat, fIntBitsToFloat2);
        }
        return true;
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final void g(ReusableGraphicsLayerScope reusableGraphicsLayerScope) {
        boolean z;
        Function0 function0;
        int i2;
        Function0 function1;
        int i3 = reusableGraphicsLayerScope.f8915b | this.o;
        this.m = reusableGraphicsLayerScope.u;
        this.l = reusableGraphicsLayerScope.t;
        int i4 = i3 & 4096;
        if (i4 != 0) {
            this.p = reusableGraphicsLayerScope.o;
        }
        if ((i3 & 1) != 0) {
            GraphicsLayer graphicsLayer = this.f10079b;
            float f2 = reusableGraphicsLayerScope.f8916c;
            GraphicsLayerImpl graphicsLayerImpl = graphicsLayer.f9023a;
            if (graphicsLayerImpl.getL() != f2) {
                graphicsLayerImpl.m(f2);
            }
        }
        if ((i3 & 2) != 0) {
            GraphicsLayer graphicsLayer2 = this.f10079b;
            float f3 = reusableGraphicsLayerScope.d;
            GraphicsLayerImpl graphicsLayerImpl2 = graphicsLayer2.f9023a;
            if (graphicsLayerImpl2.getM() != f3) {
                graphicsLayerImpl2.x(f3);
            }
        }
        if ((i3 & 4) != 0) {
            this.f10079b.g(reusableGraphicsLayerScope.f8917e);
        }
        if ((i3 & 8) != 0) {
            GraphicsLayer graphicsLayer3 = this.f10079b;
            float f4 = reusableGraphicsLayerScope.f8918f;
            GraphicsLayerImpl graphicsLayerImpl3 = graphicsLayer3.f9023a;
            if (graphicsLayerImpl3.getN() != f4) {
                graphicsLayerImpl3.D(f4);
            }
        }
        if ((i3 & 16) != 0) {
            GraphicsLayer graphicsLayer4 = this.f10079b;
            float f5 = reusableGraphicsLayerScope.g;
            GraphicsLayerImpl graphicsLayerImpl4 = graphicsLayer4.f9023a;
            if (graphicsLayerImpl4.getO() != f5) {
                graphicsLayerImpl4.g(f5);
            }
        }
        if ((i3 & 32) != 0) {
            GraphicsLayer graphicsLayer5 = this.f10079b;
            float f6 = reusableGraphicsLayerScope.f8919h;
            GraphicsLayerImpl graphicsLayerImpl5 = graphicsLayer5.f9023a;
            if (graphicsLayerImpl5.getP() != f6) {
                graphicsLayerImpl5.t(f6);
                graphicsLayer5.g = true;
                graphicsLayer5.a();
            }
            if (reusableGraphicsLayerScope.f8919h > Call.Parameters.DEFAULT_CAMERA_ZOOM && !this.u && (function1 = this.f10082f) != null) {
                function1.mo47invoke();
            }
        }
        if ((i3 & 64) != 0) {
            GraphicsLayer graphicsLayer6 = this.f10079b;
            long j2 = reusableGraphicsLayerScope.f8920i;
            GraphicsLayerImpl graphicsLayerImpl6 = graphicsLayer6.f9023a;
            if (!Color.c(j2, graphicsLayerImpl6.getQ())) {
                graphicsLayerImpl6.k(j2);
            }
        }
        if ((i3 & 128) != 0) {
            GraphicsLayer graphicsLayer7 = this.f10079b;
            long j3 = reusableGraphicsLayerScope.f8921j;
            GraphicsLayerImpl graphicsLayerImpl7 = graphicsLayer7.f9023a;
            if (!Color.c(j3, graphicsLayerImpl7.getR())) {
                graphicsLayerImpl7.p(j3);
            }
        }
        if ((i3 & 1024) != 0) {
            GraphicsLayer graphicsLayer8 = this.f10079b;
            float f7 = reusableGraphicsLayerScope.m;
            GraphicsLayerImpl graphicsLayerImpl8 = graphicsLayer8.f9023a;
            if (graphicsLayerImpl8.getU() != f7) {
                graphicsLayerImpl8.v(f7);
            }
        }
        if ((i3 & 256) != 0) {
            GraphicsLayer graphicsLayer9 = this.f10079b;
            float f8 = reusableGraphicsLayerScope.f8922k;
            GraphicsLayerImpl graphicsLayerImpl9 = graphicsLayer9.f9023a;
            if (graphicsLayerImpl9.getS() != f8) {
                graphicsLayerImpl9.r(f8);
            }
        }
        if ((i3 & 512) != 0) {
            GraphicsLayer graphicsLayer10 = this.f10079b;
            float f9 = reusableGraphicsLayerScope.l;
            GraphicsLayerImpl graphicsLayerImpl10 = graphicsLayer10.f9023a;
            if (graphicsLayerImpl10.getT() != f9) {
                graphicsLayerImpl10.s(f9);
            }
        }
        if ((i3 & 2048) != 0) {
            GraphicsLayer graphicsLayer11 = this.f10079b;
            float f10 = reusableGraphicsLayerScope.n;
            GraphicsLayerImpl graphicsLayerImpl11 = graphicsLayer11.f9023a;
            if (graphicsLayerImpl11.getV() != f10) {
                graphicsLayerImpl11.q(f10);
            }
        }
        if (i4 != 0) {
            long j4 = this.p;
            TransformOrigin.f8941b.getClass();
            boolean zA = TransformOrigin.a(j4, TransformOrigin.f8942c);
            GraphicsLayer graphicsLayer12 = this.f10079b;
            if (zA) {
                Offset.f8806b.getClass();
                long j5 = Offset.d;
                if (!Offset.c(graphicsLayer12.v, j5)) {
                    graphicsLayer12.v = j5;
                    graphicsLayer12.f9023a.H(j5);
                }
            } else {
                long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(TransformOrigin.b(this.p) * ((int) (this.g >> 32)))) << 32) | (((long) Float.floatToRawIntBits(TransformOrigin.c(this.p) * ((int) (this.g & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax);
                Offset.Companion companion = Offset.f8806b;
                if (!Offset.c(graphicsLayer12.v, jFloatToRawIntBits)) {
                    graphicsLayer12.v = jFloatToRawIntBits;
                    graphicsLayer12.f9023a.H(jFloatToRawIntBits);
                }
            }
        }
        if ((i3 & 16384) != 0) {
            GraphicsLayer graphicsLayer13 = this.f10079b;
            boolean z2 = reusableGraphicsLayerScope.q;
            if (graphicsLayer13.w != z2) {
                graphicsLayer13.w = z2;
                graphicsLayer13.g = true;
                graphicsLayer13.a();
            }
        }
        if ((131072 & i3) != 0) {
            GraphicsLayer graphicsLayer14 = this.f10079b;
            RenderEffect renderEffect = reusableGraphicsLayerScope.v;
            GraphicsLayerImpl graphicsLayerImpl12 = graphicsLayer14.f9023a;
            if (!Intrinsics.c(graphicsLayerImpl12.getZ(), renderEffect)) {
                graphicsLayerImpl12.n(renderEffect);
            }
        }
        if ((262144 & i3) != 0) {
            GraphicsLayer graphicsLayer15 = this.f10079b;
            ColorFilter colorFilter = reusableGraphicsLayerScope.w;
            GraphicsLayerImpl graphicsLayerImpl13 = graphicsLayer15.f9023a;
            if (!Intrinsics.c(graphicsLayerImpl13.getF9044k(), colorFilter)) {
                graphicsLayerImpl13.A(colorFilter);
            }
        }
        if ((524288 & i3) != 0) {
            GraphicsLayer graphicsLayer16 = this.f10079b;
            int i5 = reusableGraphicsLayerScope.x;
            GraphicsLayerImpl graphicsLayerImpl14 = graphicsLayer16.f9023a;
            int f9043j = graphicsLayerImpl14.getF9043j();
            BlendMode.Companion companion2 = BlendMode.f8847a;
            if (f9043j != i5) {
                graphicsLayerImpl14.i(i5);
            }
        }
        if ((32768 & i3) != 0) {
            GraphicsLayer graphicsLayer17 = this.f10079b;
            int i6 = reusableGraphicsLayerScope.r;
            CompositingStrategy.f8875a.getClass();
            if (i6 == 0) {
                androidx.compose.ui.graphics.layer.CompositingStrategy.f9020a.getClass();
                i2 = 0;
            } else if (i6 == CompositingStrategy.f8876b) {
                androidx.compose.ui.graphics.layer.CompositingStrategy.f9020a.getClass();
                i2 = androidx.compose.ui.graphics.layer.CompositingStrategy.f9021b;
            } else if (i6 != CompositingStrategy.f8877c) {
                md.k("Not supported composition strategy");
                return;
            } else {
                androidx.compose.ui.graphics.layer.CompositingStrategy.f9020a.getClass();
                i2 = androidx.compose.ui.graphics.layer.CompositingStrategy.f9022c;
            }
            GraphicsLayerImpl graphicsLayerImpl15 = graphicsLayer17.f9023a;
            if (graphicsLayerImpl15.getA() != i2) {
                graphicsLayerImpl15.L(i2);
            }
        }
        if ((i3 & 7963) != 0) {
            this.r = true;
            this.s = true;
        }
        if (Intrinsics.c(this.q, reusableGraphicsLayerScope.y)) {
            z = false;
        } else {
            Outline outline = reusableGraphicsLayerScope.y;
            this.q = outline;
            if (outline != null) {
                GraphicsLayer graphicsLayer18 = this.f10079b;
                if (outline instanceof Outline.Rectangle) {
                    Rect rect = ((Outline.Rectangle) outline).f8903a;
                    float f11 = rect.f8811a;
                    float f12 = rect.f8812b;
                    long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(f12)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(f11)) << 32);
                    Offset.Companion companion3 = Offset.f8806b;
                    float f13 = rect.f8813c - rect.f8811a;
                    float f14 = rect.d - f12;
                    long jFloatToRawIntBits3 = Float.floatToRawIntBits(f13);
                    long jFloatToRawIntBits4 = ((long) Float.floatToRawIntBits(f14)) & BodyPartID.bodyIdMax;
                    Size.Companion companion4 = Size.f8820b;
                    graphicsLayer18.h(jFloatToRawIntBits2, jFloatToRawIntBits4 | (jFloatToRawIntBits3 << 32), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                } else if (outline instanceof Outline.Generic) {
                    Path path = ((Outline.Generic) outline).f8902a;
                    graphicsLayer18.f();
                    graphicsLayer18.l = path;
                    graphicsLayer18.a();
                } else {
                    if (!(outline instanceof Outline.Rounded)) {
                        v40.g();
                        return;
                    }
                    Outline.Rounded rounded = (Outline.Rounded) outline;
                    AndroidPath androidPath = rounded.f8905b;
                    if (androidPath != null) {
                        graphicsLayer18.f();
                        graphicsLayer18.l = androidPath;
                        graphicsLayer18.a();
                    } else {
                        RoundRect roundRect = rounded.f8904a;
                        long jFloatToRawIntBits5 = (((long) Float.floatToRawIntBits(roundRect.f8814a)) << 32) | (((long) Float.floatToRawIntBits(roundRect.f8815b)) & BodyPartID.bodyIdMax);
                        Offset.Companion companion5 = Offset.f8806b;
                        long jFloatToRawIntBits6 = (((long) Float.floatToRawIntBits(roundRect.b())) << 32) | (((long) Float.floatToRawIntBits(roundRect.a())) & BodyPartID.bodyIdMax);
                        Size.Companion companion6 = Size.f8820b;
                        graphicsLayer18.h(jFloatToRawIntBits5, jFloatToRawIntBits6, Float.intBitsToFloat((int) (roundRect.f8819h >> 32)));
                    }
                }
                if (Build.VERSION.SDK_INT < 33 && (((outline instanceof Outline.Generic) || ((outline instanceof Outline.Rounded) && !RoundRectKt.d(((Outline.Rounded) outline).f8904a))) && (function0 = this.f10082f) != null)) {
                    function0.mo47invoke();
                }
            }
            z = true;
        }
        this.o = reusableGraphicsLayerScope.f8915b;
        if (i3 != 0 || z) {
            AndroidComposeView androidComposeView = this.d;
            ViewParent parent = androidComposeView.getParent();
            if (parent != null) {
                parent.onDescendantInvalidated(androidComposeView, androidComposeView);
            }
            androidComposeView.getClass();
            if (AndroidComposeView.T()) {
                androidComposeView.C(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            }
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* JADX INFO: renamed from: getUnderlyingMatrix-sQKQjiQ */
    public final float[] mo3getUnderlyingMatrixsQKQjiQ() {
        return m();
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final void h(Function0 function0, Function2 function2) {
        GraphicsContext graphicsContext = this.f10080c;
        if (graphicsContext == null) {
            throw defpackage.a.s("currently reuse is only supported when we manage the layer lifecycle");
        }
        if (!this.f10079b.s) {
            InlineClassHelperKt.a("layer should have been released before reuse");
        }
        this.f10079b = graphicsContext.a();
        this.f10083h = false;
        this.f10081e = function2;
        this.f10082f = function0;
        this.r = false;
        this.s = false;
        this.t = true;
        Matrix.d(this.f10084i);
        float[] fArr = this.f10085j;
        if (fArr != null) {
            Matrix.d(fArr);
        }
        TransformOrigin.f8941b.getClass();
        this.p = TransformOrigin.f8942c;
        this.u = false;
        IntSize.Companion companion = IntSize.f11020b;
        this.g = 9223372034707292159L;
        this.q = null;
        this.o = 0;
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final void i(float[] fArr) {
        float[] fArrL = l();
        if (fArrL != null) {
            Matrix.e(fArr, fArrL);
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final void invalidate() {
        if (this.f10086k || this.f10083h) {
            return;
        }
        AndroidComposeView androidComposeView = this.d;
        androidComposeView.invalidate();
        if (true != this.f10086k) {
            this.f10086k = true;
            androidComposeView.X(this, true);
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final void j(long j2) {
        AndroidComposeView androidComposeView = this.d;
        androidComposeView.getClass();
        if (AndroidComposeView.T()) {
            FrameRateCategory.f8605a.getClass();
            androidComposeView.C(FrameRateCategory.f8606b);
        }
        GraphicsLayer graphicsLayer = this.f10079b;
        if (!IntOffset.b(graphicsLayer.t, j2)) {
            graphicsLayer.t = j2;
            graphicsLayer.f9023a.j((int) (j2 >> 32), (int) (j2 & BodyPartID.bodyIdMax), graphicsLayer.u);
        }
        ViewParent parent = androidComposeView.getParent();
        if (parent != null) {
            parent.onDescendantInvalidated(androidComposeView, androidComposeView);
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final void k() {
        AndroidComposeView androidComposeView = this.d;
        androidComposeView.getClass();
        AndroidComposeView.T();
        if (this.f10086k) {
            long j2 = this.p;
            TransformOrigin.f8941b.getClass();
            if (!TransformOrigin.a(j2, TransformOrigin.f8942c) && !IntSize.b(this.f10079b.u, this.g)) {
                GraphicsLayer graphicsLayer = this.f10079b;
                float fB = TransformOrigin.b(this.p) * ((int) (this.g >> 32));
                long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(TransformOrigin.c(this.p) * ((int) (this.g & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(fB) << 32);
                Offset.Companion companion = Offset.f8806b;
                if (!Offset.c(graphicsLayer.v, jFloatToRawIntBits)) {
                    graphicsLayer.v = jFloatToRawIntBits;
                    graphicsLayer.f9023a.H(jFloatToRawIntBits);
                }
            }
            this.f10079b.e(this.l, this.m, this.g, this.v);
            if (this.f10086k) {
                this.f10086k = false;
                androidComposeView.X(this, false);
            }
        }
    }

    public final float[] l() {
        float[] fArrA = this.f10085j;
        if (fArrA == null) {
            fArrA = Matrix.a();
            this.f10085j = fArrA;
        }
        if (this.s) {
            this.s = false;
            float[] fArrM = m();
            if (this.t) {
                return fArrM;
            }
            if (!InvertMatrixKt.a(fArrM, fArrA)) {
                fArrA[0] = Float.NaN;
                return null;
            }
        } else if (Float.isNaN(fArrA[0])) {
            return null;
        }
        return fArrA;
    }

    public final float[] m() {
        boolean z = this.r;
        float[] fArr = this.f10084i;
        if (z) {
            GraphicsLayer graphicsLayer = this.f10079b;
            long jA = graphicsLayer.v;
            GraphicsLayerImpl graphicsLayerImpl = graphicsLayer.f9023a;
            if ((9223372034707292159L & jA) == 9205357640488583168L) {
                jA = SizeKt.a(IntSizeKt.d(this.g));
            }
            float fIntBitsToFloat = Float.intBitsToFloat((int) (jA >> 32));
            float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jA & BodyPartID.bodyIdMax));
            float n = graphicsLayerImpl.getN();
            float o = graphicsLayerImpl.getO();
            float s = graphicsLayerImpl.getS();
            float t = graphicsLayerImpl.getT();
            float u = graphicsLayerImpl.getU();
            float l = graphicsLayerImpl.getL();
            float m = graphicsLayerImpl.getM();
            int i2 = Matrix.f8900b;
            double d = ((double) s) * 0.017453292519943295d;
            float fSin = (float) Math.sin(d);
            float fCos = (float) Math.cos(d);
            float f2 = -fSin;
            float f3 = (o * fCos) - (Call.Parameters.DEFAULT_CAMERA_ZOOM * fSin);
            float f4 = (Call.Parameters.DEFAULT_CAMERA_ZOOM * fCos) + (o * fSin);
            double d2 = ((double) t) * 0.017453292519943295d;
            float fSin2 = (float) Math.sin(d2);
            float fCos2 = (float) Math.cos(d2);
            float f5 = -fSin2;
            float f6 = fSin * fSin2;
            float f7 = fSin * fCos2;
            float f8 = fCos * fSin2;
            float f9 = fCos * fCos2;
            float f10 = (f4 * fSin2) + (n * fCos2);
            float f11 = (f4 * fCos2) + ((-n) * fSin2);
            double d3 = ((double) u) * 0.017453292519943295d;
            float fSin3 = (float) Math.sin(d3);
            float fCos3 = (float) Math.cos(d3);
            float f12 = -fSin3;
            float f13 = (fCos3 * f6) + (f12 * fCos2);
            float f14 = (f6 * fSin3) + (fCos2 * fCos3);
            float f15 = fSin3 * fCos;
            float f16 = f14 * l;
            float f17 = f15 * l;
            float f18 = ((fSin3 * f7) + (fCos3 * f5)) * l;
            float f19 = f13 * m;
            float f20 = fCos * fCos3 * m;
            float f21 = ((fCos3 * f7) + (f12 * f5)) * m;
            float f22 = f8 * 1.0f;
            float f23 = f2 * 1.0f;
            float f24 = f9 * 1.0f;
            if (fArr.length >= 16) {
                fArr[0] = f16;
                fArr[1] = f17;
                fArr[2] = f18;
                fArr[3] = 0.0f;
                fArr[4] = f19;
                fArr[5] = f20;
                fArr[6] = f21;
                fArr[7] = 0.0f;
                fArr[8] = f22;
                fArr[9] = f23;
                fArr[10] = f24;
                fArr[11] = 0.0f;
                float f25 = -fIntBitsToFloat;
                fArr[12] = ((f16 * f25) - (fIntBitsToFloat2 * f19)) + f10 + fIntBitsToFloat;
                fArr[13] = ((f17 * f25) - (fIntBitsToFloat2 * f20)) + f3 + fIntBitsToFloat2;
                fArr[14] = ((f25 * f18) - (fIntBitsToFloat2 * f21)) + f11;
                fArr[15] = 1.0f;
            }
            this.r = false;
            this.t = MatrixKt.a(fArr);
        }
        return fArr;
    }
}
