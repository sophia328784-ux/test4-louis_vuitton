package androidx.compose.ui.platform;

import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.CompositingStrategy;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.GraphicLayerInfo;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.unit.IntOffset;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001BB_\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00128\u0010\u0010\u001a4\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0015\u0012\u0013\u0018\u00010\r¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u000f0\b\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0011¢\u0006\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR*\u0010!\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d8\u0006@BX\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\"\u0010,\u001a\u00020%8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001a\u00102\u001a\u00020-8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\u0014\u00106\u001a\u0002038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b4\u00105R\"\u00107\u001a\u00020\u001d8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b7\u0010 \u001a\u0004\b7\u0010\"\"\u0004\b8\u0010$R\u0014\u0010:\u001a\u00020-8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b9\u00101R$\u0010=\u001a\u00020%2\u0006\u0010\u001e\u001a\u00020%8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b;\u0010)\"\u0004\b<\u0010+R\u0016\u0010A\u001a\u0004\u0018\u00010>8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b?\u0010@¨\u0006C"}, d2 = {"Landroidx/compose/ui/platform/ViewLayer;", "Landroid/view/View;", "Landroidx/compose/ui/node/OwnedLayer;", "Landroidx/compose/ui/layout/GraphicLayerInfo;", "Landroidx/compose/ui/platform/AndroidComposeView;", "ownerView", "Landroidx/compose/ui/platform/DrawChildContainer;", "container", "Lkotlin/Function2;", "Landroidx/compose/ui/graphics/Canvas;", "Lkotlin/ParameterName;", "name", "canvas", "Landroidx/compose/ui/graphics/layer/GraphicsLayer;", "parentLayer", "", "drawBlock", "Lkotlin/Function0;", "invalidateParentLayer", "<init>", "(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/platform/DrawChildContainer;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V", NBSSpanMetricUnit.Bit, "Landroidx/compose/ui/platform/AndroidComposeView;", "getOwnerView", "()Landroidx/compose/ui/platform/AndroidComposeView;", "c", "Landroidx/compose/ui/platform/DrawChildContainer;", "getContainer", "()Landroidx/compose/ui/platform/DrawChildContainer;", "", "value", "i", "Z", "isInvalidated", "()Z", "setInvalidated", "(Z)V", "", "n", "F", "getFrameRate", "()F", "setFrameRate", "(F)V", "frameRate", "", "q", "J", "getLayerId", "()J", "layerId", "Landroidx/compose/ui/graphics/Matrix;", "getUnderlyingMatrix-sQKQjiQ", "()[F", "underlyingMatrix", "isFrameRateFromParent", "setFrameRateFromParent", "getOwnerViewId", "ownerViewId", "getCameraDistancePx", "setCameraDistancePx", "cameraDistancePx", "Landroidx/compose/ui/graphics/Path;", "getManualClipPath", "()Landroidx/compose/ui/graphics/Path;", "manualClipPath", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ViewLayer extends View implements OwnedLayer, GraphicLayerInfo {
    public static final Companion s = new Companion(null);
    public static final Function2 t = ViewLayer$Companion$getMatrix$1.f10173c;
    public static final ViewLayer$Companion$OutlineProvider$1 u = new ViewLayer$Companion$OutlineProvider$1();
    public static Method v;
    public static Field w;
    public static boolean x;
    public static boolean y;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public final AndroidComposeView ownerView;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    public final DrawChildContainer container;
    public Function2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Function0 f10167e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final OutlineResolver f10168f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Rect f10169h;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    public boolean isInvalidated;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public AndroidPaint f10171j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f10172k;
    public final CanvasHolder l;
    public final LayerMatrixCache m;

    /* JADX INFO: renamed from: n, reason: from kotlin metadata */
    public float frameRate;
    public long o;
    public boolean p;

    /* JADX INFO: renamed from: q, reason: from kotlin metadata */
    public final long layerId;
    public int r;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R&\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0018\u0010\t\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0018\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/platform/ViewLayer$Companion;", "", "Lkotlin/Function2;", "Landroid/view/View;", "Landroid/graphics/Matrix;", "", "getMatrix", "Lkotlin/jvm/functions/Function2;", "Ljava/lang/reflect/Method;", "updateDisplayListIfDirtyMethod", "Ljava/lang/reflect/Method;", "Ljava/lang/reflect/Field;", "recreateDisplayList", "Ljava/lang/reflect/Field;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public ViewLayer(AndroidComposeView androidComposeView, DrawChildContainer drawChildContainer, Function2<? super Canvas, ? super GraphicsLayer, Unit> function2, Function0<Unit> function0) {
        super(androidComposeView.getContext());
        this.ownerView = androidComposeView;
        this.container = drawChildContainer;
        this.d = function2;
        this.f10167e = function0;
        this.f10168f = new OutlineResolver();
        this.l = new CanvasHolder();
        this.m = new LayerMatrixCache(t);
        TransformOrigin.f8941b.getClass();
        this.o = TransformOrigin.f8942c;
        this.p = true;
        setWillNotDraw(false);
        drawChildContainer.addView(this);
        this.layerId = View.generateViewId();
    }

    private final Path getManualClipPath() {
        if (!getClipToOutline()) {
            return null;
        }
        OutlineResolver outlineResolver = this.f10168f;
        if (!outlineResolver.f10134f) {
            return null;
        }
        outlineResolver.a();
        return outlineResolver.d;
    }

    private final void setInvalidated(boolean z) {
        if (z != this.isInvalidated) {
            this.isInvalidated = z;
            this.ownerView.X(this, z);
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final void a(float[] fArr) {
        Matrix.e(fArr, this.m.b(this));
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final long b(long j2, boolean z) {
        LayerMatrixCache layerMatrixCache = this.m;
        if (z) {
            float[] fArrA = layerMatrixCache.a(this);
            if (fArrA == null) {
                Offset.f8806b.getClass();
                return Offset.f8807c;
            }
            if (!layerMatrixCache.f10112h) {
                return Matrix.b(j2, fArrA);
            }
        } else {
            float[] fArrB = layerMatrixCache.b(this);
            if (!layerMatrixCache.f10112h) {
                return Matrix.b(j2, fArrB);
            }
        }
        return j2;
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final void c(long j2) {
        int i2 = (int) (j2 >> 32);
        int i3 = (int) (j2 & BodyPartID.bodyIdMax);
        if (i2 == getWidth() && i3 == getHeight()) {
            return;
        }
        setPivotX(TransformOrigin.b(this.o) * i2);
        setPivotY(TransformOrigin.c(this.o) * i3);
        OutlineResolver outlineResolver = this.f10168f;
        outlineResolver.a();
        setOutlineProvider((outlineResolver.l ? outlineResolver.f10130a : null) != null ? u : null);
        layout(getLeft(), getTop(), getLeft() + i2, getTop() + i3);
        l();
        LayerMatrixCache layerMatrixCache = this.m;
        layerMatrixCache.f10110e = true;
        layerMatrixCache.f10111f = true;
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final void d(Canvas canvas, GraphicsLayer graphicsLayer) {
        boolean z = getElevation() > Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f10172k = z;
        if (z) {
            canvas.l();
        }
        this.container.a(canvas, this, getDrawingTime());
        if (this.f10172k) {
            canvas.q();
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final void destroy() {
        MutableVector mutableVector;
        Reference referencePoll;
        setInvalidated(false);
        AndroidComposeView androidComposeView = this.ownerView;
        androidComposeView.Q = true;
        this.d = null;
        this.f10167e = null;
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
        this.container.removeViewInLayout(this);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x009b  */
    /* JADX WARN: Code duplicated, block: B:34:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:35:0x00f8  */
    @Override // android.view.View
    public final void dispatchDraw(android.graphics.Canvas canvas) {
        char c2;
        long j2;
        boolean z;
        CanvasHolder canvasHolder = this.l;
        AndroidCanvas androidCanvas = canvasHolder.f8863a;
        android.graphics.Canvas canvas2 = androidCanvas.f8823a;
        androidCanvas.f8823a = canvas;
        if (getManualClipPath() == null && canvas.isHardwareAccelerated()) {
            z = false;
        } else {
            androidCanvas.p();
            OutlineResolver outlineResolver = this.f10168f;
            outlineResolver.a();
            Path path = outlineResolver.d;
            if (path != null) {
                Canvas.k(androidCanvas, path);
            } else {
                float f2 = outlineResolver.f10136i;
                if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    Path pathA = outlineResolver.g;
                    RoundRect roundRect = outlineResolver.f10135h;
                    if (pathA != null) {
                        long j3 = outlineResolver.f10137j;
                        long j4 = outlineResolver.f10138k;
                        if (roundRect == null || !RoundRectKt.d(roundRect)) {
                            c2 = ' ';
                            j2 = BodyPartID.bodyIdMax;
                        } else {
                            c2 = ' ';
                            float f3 = roundRect.f8814a;
                            j2 = BodyPartID.bodyIdMax;
                            int i2 = (int) (j3 >> 32);
                            if (f3 == Float.intBitsToFloat(i2)) {
                                float f4 = roundRect.f8815b;
                                int i3 = (int) (j3 & BodyPartID.bodyIdMax);
                                if (f4 == Float.intBitsToFloat(i3)) {
                                    if (roundRect.f8816c == Float.intBitsToFloat((int) (j4 >> 32)) + Float.intBitsToFloat(i2)) {
                                        if (roundRect.d != Float.intBitsToFloat((int) (j4 & BodyPartID.bodyIdMax)) + Float.intBitsToFloat(i3) || Float.intBitsToFloat((int) (roundRect.f8817e >> 32)) != f2) {
                                        }
                                    }
                                }
                            }
                        }
                        float fIntBitsToFloat = Float.intBitsToFloat((int) (outlineResolver.f10137j >> c2));
                        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (outlineResolver.f10137j & j2));
                        float fIntBitsToFloat3 = Float.intBitsToFloat((int) (outlineResolver.f10138k >> c2)) + Float.intBitsToFloat((int) (outlineResolver.f10137j >> c2));
                        float fIntBitsToFloat4 = Float.intBitsToFloat((int) (outlineResolver.f10138k & j2)) + Float.intBitsToFloat((int) (outlineResolver.f10137j & j2));
                        float f5 = outlineResolver.f10136i;
                        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f5)) << c2) | (((long) Float.floatToRawIntBits(f5)) & j2);
                        CornerRadius.Companion companion = CornerRadius.f8802a;
                        RoundRect roundRectC = RoundRectKt.c(fIntBitsToFloat, fIntBitsToFloat2, fIntBitsToFloat3, fIntBitsToFloat4, jFloatToRawIntBits);
                        if (pathA == null) {
                            pathA = AndroidPath_androidKt.a();
                        } else {
                            pathA.reset();
                        }
                        pathA.s(roundRectC, Path.Direction.CounterClockwise);
                        outlineResolver.f10135h = roundRectC;
                        outlineResolver.g = pathA;
                    } else {
                        c2 = ' ';
                        j2 = BodyPartID.bodyIdMax;
                        float fIntBitsToFloat5 = Float.intBitsToFloat((int) (outlineResolver.f10137j >> c2));
                        float fIntBitsToFloat6 = Float.intBitsToFloat((int) (outlineResolver.f10137j & j2));
                        float fIntBitsToFloat7 = Float.intBitsToFloat((int) (outlineResolver.f10138k >> c2)) + Float.intBitsToFloat((int) (outlineResolver.f10137j >> c2));
                        float fIntBitsToFloat8 = Float.intBitsToFloat((int) (outlineResolver.f10138k & j2)) + Float.intBitsToFloat((int) (outlineResolver.f10137j & j2));
                        float f6 = outlineResolver.f10136i;
                        long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(f6)) << c2) | (((long) Float.floatToRawIntBits(f6)) & j2);
                        CornerRadius.Companion companion2 = CornerRadius.f8802a;
                        RoundRect roundRectC2 = RoundRectKt.c(fIntBitsToFloat5, fIntBitsToFloat6, fIntBitsToFloat7, fIntBitsToFloat8, jFloatToRawIntBits2);
                        if (pathA == null) {
                            pathA = AndroidPath_androidKt.a();
                        } else {
                            pathA.reset();
                        }
                        pathA.s(roundRectC2, Path.Direction.CounterClockwise);
                        outlineResolver.f10135h = roundRectC2;
                        outlineResolver.g = pathA;
                    }
                    Canvas.k(androidCanvas, pathA);
                } else {
                    Canvas.h(androidCanvas, Float.intBitsToFloat((int) (outlineResolver.f10137j >> 32)), Float.intBitsToFloat((int) (outlineResolver.f10137j & BodyPartID.bodyIdMax)), Float.intBitsToFloat((int) (outlineResolver.f10138k >> 32)) + Float.intBitsToFloat((int) (outlineResolver.f10137j >> 32)), Float.intBitsToFloat((int) (outlineResolver.f10138k & BodyPartID.bodyIdMax)) + Float.intBitsToFloat((int) (outlineResolver.f10137j & BodyPartID.bodyIdMax)));
                }
            }
            z = true;
        }
        Function2 function2 = this.d;
        if (function2 != null) {
            function2.invoke(androidCanvas, null);
        }
        if (z) {
            androidCanvas.restore();
        }
        canvasHolder.f8863a.f8823a = canvas2;
        setInvalidated(false);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final void e(MutableRect mutableRect, boolean z) {
        LayerMatrixCache layerMatrixCache = this.m;
        if (!z) {
            float[] fArrB = layerMatrixCache.b(this);
            if (layerMatrixCache.f10112h) {
                return;
            }
            Matrix.c(fArrB, mutableRect);
            return;
        }
        float[] fArrA = layerMatrixCache.a(this);
        if (fArrA != null) {
            if (layerMatrixCache.f10112h) {
                return;
            }
            Matrix.c(fArrA, mutableRect);
        } else {
            mutableRect.f8803a = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            mutableRect.f8804b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            mutableRect.f8805c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            mutableRect.d = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final boolean f(long j2) {
        Outline outline;
        int i2 = (int) (j2 >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(i2);
        int i3 = (int) (j2 & BodyPartID.bodyIdMax);
        float fIntBitsToFloat2 = Float.intBitsToFloat(i3);
        if (this.g) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM <= fIntBitsToFloat && fIntBitsToFloat < ((float) getWidth()) && Call.Parameters.DEFAULT_CAMERA_ZOOM <= fIntBitsToFloat2 && fIntBitsToFloat2 < ((float) getHeight());
        }
        if (!getClipToOutline()) {
            return true;
        }
        OutlineResolver outlineResolver = this.f10168f;
        if (outlineResolver.l && (outline = outlineResolver.f10131b) != null) {
            return ShapeContainingUtilKt.a(outline, Float.intBitsToFloat(i2), Float.intBitsToFloat(i3));
        }
        return true;
    }

    @Override // android.view.View
    public final void forceLayout() {
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final void g(ReusableGraphicsLayerScope reusableGraphicsLayerScope) {
        int i2;
        Function0 function0;
        int i3 = reusableGraphicsLayerScope.f8915b | this.r;
        if ((i3 & 4096) != 0) {
            long j2 = reusableGraphicsLayerScope.o;
            this.o = j2;
            setPivotX(TransformOrigin.b(j2) * getWidth());
            setPivotY(TransformOrigin.c(this.o) * getHeight());
        }
        if ((i3 & 1) != 0) {
            setScaleX(reusableGraphicsLayerScope.f8916c);
        }
        if ((i3 & 2) != 0) {
            setScaleY(reusableGraphicsLayerScope.d);
        }
        if ((i3 & 4) != 0) {
            setAlpha(reusableGraphicsLayerScope.f8917e);
        }
        if ((i3 & 8) != 0) {
            setTranslationX(reusableGraphicsLayerScope.f8918f);
        }
        if ((i3 & 16) != 0) {
            setTranslationY(reusableGraphicsLayerScope.g);
        }
        if ((i3 & 32) != 0) {
            setElevation(reusableGraphicsLayerScope.f8919h);
        }
        if ((i3 & 1024) != 0) {
            setRotation(reusableGraphicsLayerScope.m);
        }
        if ((i3 & 256) != 0) {
            setRotationX(reusableGraphicsLayerScope.f8922k);
        }
        if ((i3 & 512) != 0) {
            setRotationY(reusableGraphicsLayerScope.l);
        }
        if ((i3 & 2048) != 0) {
            setCameraDistancePx(reusableGraphicsLayerScope.n);
        }
        boolean z = false;
        boolean z2 = getManualClipPath() != null;
        boolean z3 = reusableGraphicsLayerScope.q;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        boolean z4 = z3 && reusableGraphicsLayerScope.p != rectangleShapeKt$RectangleShape$1;
        if ((i3 & 24576) != 0) {
            this.g = z3 && reusableGraphicsLayerScope.p == rectangleShapeKt$RectangleShape$1;
            l();
            setClipToOutline(z4);
        }
        Outline outline = reusableGraphicsLayerScope.y;
        float f2 = reusableGraphicsLayerScope.f8917e;
        float f3 = reusableGraphicsLayerScope.f8919h;
        long j3 = reusableGraphicsLayerScope.s;
        OutlineResolver outlineResolver = this.f10168f;
        outlineResolver.f10130a.setAlpha(f2);
        boolean zC = Intrinsics.c(outlineResolver.f10131b, outline);
        if (!zC) {
            outlineResolver.f10131b = outline;
            outlineResolver.f10133e = true;
        }
        outlineResolver.f10138k = j3;
        boolean z5 = outline != null && (z4 || f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM);
        if (outlineResolver.l != z5) {
            outlineResolver.l = z5;
            outlineResolver.f10133e = true;
        }
        Paint paintA = null;
        if (outlineResolver.f10133e) {
            outlineResolver.a();
            setOutlineProvider((outlineResolver.l ? outlineResolver.f10130a : null) != null ? u : null);
        }
        boolean z6 = getManualClipPath() != null;
        if (z2 != z6 || (z6 && !zC)) {
            invalidate();
        }
        if (!this.f10172k && getElevation() > Call.Parameters.DEFAULT_CAMERA_ZOOM && (function0 = this.f10167e) != null) {
            function0.mo47invoke();
        }
        if ((i3 & 7963) != 0) {
            LayerMatrixCache layerMatrixCache = this.m;
            layerMatrixCache.f10110e = true;
            layerMatrixCache.f10111f = true;
        }
        if ((i3 & 64) != 0) {
            setOutlineAmbientShadowColor(ColorKt.i(reusableGraphicsLayerScope.f8920i));
        }
        if ((i3 & 128) != 0) {
            setOutlineSpotShadowColor(ColorKt.i(reusableGraphicsLayerScope.f8921j));
        }
        if (Build.VERSION.SDK_INT >= 31 && (131072 & i3) != 0) {
            ViewLayerVerificationHelper31.a(this, reusableGraphicsLayerScope.v);
        }
        boolean z7 = ((262144 & i3) == 0 && (524288 & i3) == 0) ? false : true;
        if ((i3 & 32768) != 0 || z7) {
            if (z7) {
                CompositingStrategy.f8875a.getClass();
                i2 = CompositingStrategy.f8876b;
            } else {
                i2 = reusableGraphicsLayerScope.r;
            }
            CompositingStrategy.f8875a.getClass();
            if (i2 == CompositingStrategy.f8876b) {
                if (z7) {
                    AndroidPaint androidPaint = this.f10171j;
                    if (androidPaint == null) {
                        androidPaint = new AndroidPaint();
                        this.f10171j = androidPaint;
                    }
                    androidPaint.l(reusableGraphicsLayerScope.w);
                    androidPaint.k(reusableGraphicsLayerScope.x);
                    paintA = AndroidPaint_androidKt.a(androidPaint);
                }
                setLayerType(2, paintA);
            } else {
                if (i2 == CompositingStrategy.f8877c) {
                    setLayerType(0, null);
                } else {
                    setLayerType(0, null);
                }
                this.p = z;
            }
            z = true;
            this.p = z;
        }
        this.r = reusableGraphicsLayerScope.f8915b;
    }

    public final float getCameraDistancePx() {
        return getCameraDistance() / getResources().getDisplayMetrics().densityDpi;
    }

    public final DrawChildContainer getContainer() {
        return this.container;
    }

    public float getFrameRate() {
        return this.frameRate;
    }

    public long getLayerId() {
        return this.layerId;
    }

    public final AndroidComposeView getOwnerView() {
        return this.ownerView;
    }

    public long getOwnerViewId() {
        return this.ownerView.getUniqueDrawingId();
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* JADX INFO: renamed from: getUnderlyingMatrix-sQKQjiQ */
    public float[] mo3getUnderlyingMatrixsQKQjiQ() {
        return this.m.b(this);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final void h(Function0 function0, Function2 function2) {
        this.container.addView(this);
        LayerMatrixCache layerMatrixCache = this.m;
        layerMatrixCache.f10110e = false;
        layerMatrixCache.f10111f = false;
        layerMatrixCache.f10112h = true;
        layerMatrixCache.g = true;
        Matrix.d(layerMatrixCache.f10109c);
        Matrix.d(layerMatrixCache.d);
        this.g = false;
        this.f10172k = false;
        TransformOrigin.f8941b.getClass();
        this.o = TransformOrigin.f8942c;
        this.d = function2;
        this.f10167e = function0;
        setInvalidated(false);
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return this.p;
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final void i(float[] fArr) {
        float[] fArrA = this.m.a(this);
        if (fArrA != null) {
            Matrix.e(fArr, fArrA);
        }
    }

    @Override // android.view.View, androidx.compose.ui.node.OwnedLayer
    public final void invalidate() {
        if (this.isInvalidated) {
            return;
        }
        setInvalidated(true);
        super.invalidate();
        this.ownerView.invalidate();
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final void j(long j2) {
        IntOffset.Companion companion = IntOffset.f11012b;
        int i2 = (int) (j2 >> 32);
        int left = getLeft();
        LayerMatrixCache layerMatrixCache = this.m;
        if (i2 != left) {
            offsetLeftAndRight(i2 - getLeft());
            layerMatrixCache.f10110e = true;
            layerMatrixCache.f10111f = true;
        }
        int i3 = (int) (j2 & BodyPartID.bodyIdMax);
        if (i3 != getTop()) {
            offsetTopAndBottom(i3 - getTop());
            layerMatrixCache.f10110e = true;
            layerMatrixCache.f10111f = true;
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public final void k() {
        if (!this.isInvalidated || y) {
            return;
        }
        s.getClass();
        try {
            if (!x) {
                x = true;
                v = (Method) Class.class.getDeclaredMethod("getDeclaredMethod", String.class, new Class[0].getClass()).invoke(View.class, "updateDisplayListIfDirty", new Class[0]);
                w = (Field) Class.class.getDeclaredMethod("getDeclaredField", String.class).invoke(View.class, "mRecreateDisplayList");
                Method method = v;
                if (method != null) {
                    method.setAccessible(true);
                }
                Field field = w;
                if (field != null) {
                    field.setAccessible(true);
                }
            }
            Field field2 = w;
            if (field2 != null) {
                field2.setBoolean(this, true);
            }
            Method method2 = v;
            if (method2 != null) {
                method2.invoke(this, null);
            }
        } catch (Throwable unused) {
            y = true;
        }
        setInvalidated(false);
    }

    public final void l() {
        Rect rect;
        if (this.g) {
            Rect rect2 = this.f10169h;
            if (rect2 == null) {
                this.f10169h = new Rect(0, 0, getWidth(), getHeight());
            } else {
                rect2.getClass();
                rect2.set(0, 0, getWidth(), getHeight());
            }
            rect = this.f10169h;
        } else {
            rect = null;
        }
        setClipBounds(rect);
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
    }

    public final void setCameraDistancePx(float f2) {
        setCameraDistance(f2 * getResources().getDisplayMetrics().densityDpi);
    }

    public void setFrameRate(float f2) {
        this.frameRate = f2;
    }

    public void setFrameRateFromParent(boolean z) {
    }
}
