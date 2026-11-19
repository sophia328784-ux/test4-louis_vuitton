package androidx.compose.ui.graphics.layer;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.InlineClassHelperKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.v40;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-graphics"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class GraphicsLayerKt {
    /* JADX WARN: Code duplicated, block: B:25:0x009a  */
    /* JADX WARN: Code duplicated, block: B:27:0x009e  */
    public static final void a(DrawScope drawScope, GraphicsLayer graphicsLayer) {
        boolean z;
        boolean z2;
        AndroidPaint androidPaint;
        float f2;
        Canvas canvasA = drawScope.getF8996c().a();
        GraphicsLayer graphicsLayer2 = drawScope.getF8996c().f9002b;
        GraphicsLayerImpl graphicsLayerImpl = graphicsLayer.f9023a;
        if (graphicsLayer.s) {
            return;
        }
        graphicsLayer.a();
        if (!graphicsLayerImpl.u()) {
            try {
                graphicsLayer.f9023a.e(graphicsLayer.f9024b, graphicsLayer.f9025c, graphicsLayer, graphicsLayer.f9026e);
            } catch (Throwable unused) {
            }
        }
        boolean z3 = graphicsLayerImpl.getP() > Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (z3) {
            canvasA.l();
        }
        android.graphics.Canvas canvasA2 = AndroidCanvas_androidKt.a(canvasA);
        boolean zIsHardwareAccelerated = canvasA2.isHardwareAccelerated();
        if (zIsHardwareAccelerated) {
            z = true;
        } else {
            long j2 = graphicsLayer.t;
            IntOffset.Companion companion = IntOffset.f11012b;
            float f3 = (int) (j2 >> 32);
            float f4 = (int) (j2 & BodyPartID.bodyIdMax);
            z = true;
            long j3 = graphicsLayer.u;
            float f5 = f3 + ((int) (j3 >> 32));
            float f6 = ((int) (j3 & BodyPartID.bodyIdMax)) + f4;
            float f9042i = graphicsLayerImpl.getF9042i();
            ColorFilter f9044k = graphicsLayerImpl.getF9044k();
            int f9043j = graphicsLayerImpl.getF9043j();
            if (f9042i >= 1.0f) {
                BlendMode.f8847a.getClass();
                if (f9043j == BlendMode.d && f9044k == null) {
                    int a2 = graphicsLayerImpl.getA();
                    CompositingStrategy.f9020a.getClass();
                    if (a2 == CompositingStrategy.f9021b) {
                        androidPaint = graphicsLayer.p;
                        if (androidPaint == null) {
                            androidPaint = new AndroidPaint();
                            graphicsLayer.p = androidPaint;
                        }
                        androidPaint.d(f9042i);
                        androidPaint.k(f9043j);
                        androidPaint.l(f9044k);
                        f2 = f3;
                        canvasA2.saveLayer(f2, f4, f5, f6, AndroidPaint_androidKt.a(androidPaint));
                    } else {
                        canvasA2.save();
                        f2 = f3;
                    }
                } else {
                    androidPaint = graphicsLayer.p;
                    if (androidPaint == null) {
                        androidPaint = new AndroidPaint();
                        graphicsLayer.p = androidPaint;
                    }
                    androidPaint.d(f9042i);
                    androidPaint.k(f9043j);
                    androidPaint.l(f9044k);
                    f2 = f3;
                    canvasA2.saveLayer(f2, f4, f5, f6, AndroidPaint_androidKt.a(androidPaint));
                }
            } else {
                androidPaint = graphicsLayer.p;
                if (androidPaint == null) {
                    androidPaint = new AndroidPaint();
                    graphicsLayer.p = androidPaint;
                }
                androidPaint.d(f9042i);
                androidPaint.k(f9043j);
                androidPaint.l(f9044k);
                f2 = f3;
                canvasA2.saveLayer(f2, f4, f5, f6, AndroidPaint_androidKt.a(androidPaint));
            }
            canvasA2.translate(f2, f4);
            canvasA2.concat(graphicsLayerImpl.C());
        }
        boolean z4 = (zIsHardwareAccelerated || !graphicsLayer.w) ? false : z;
        if (z4) {
            canvasA.p();
            Outline outlineD = graphicsLayer.d();
            if (outlineD instanceof Outline.Rectangle) {
                Canvas.g(canvasA, ((Outline.Rectangle) outlineD).f8903a);
            } else if (outlineD instanceof Outline.Rounded) {
                AndroidPath androidPathA = graphicsLayer.m;
                if (androidPathA != null) {
                    androidPathA.k();
                } else {
                    androidPathA = AndroidPath_androidKt.a();
                    graphicsLayer.m = androidPathA;
                }
                androidPathA.s(((Outline.Rounded) outlineD).f8904a, Path.Direction.CounterClockwise);
                Canvas.k(canvasA, androidPathA);
            } else {
                if (!(outlineD instanceof Outline.Generic)) {
                    v40.g();
                    return;
                }
                Canvas.k(canvasA, ((Outline.Generic) outlineD).f8902a);
            }
        }
        if (graphicsLayer2 != null) {
            ChildLayerDependenciesTracker childLayerDependenciesTracker = graphicsLayer2.r;
            if (!childLayerDependenciesTracker.f9019e) {
                InlineClassHelperKt.a("Only add dependencies during a tracking");
            }
            MutableScatterSet mutableScatterSet = childLayerDependenciesTracker.f9018c;
            if (mutableScatterSet != null) {
                mutableScatterSet.d(graphicsLayer);
            } else if (childLayerDependenciesTracker.f9016a != null) {
                MutableScatterSet mutableScatterSetA = ScatterSetKt.a();
                GraphicsLayer graphicsLayer3 = childLayerDependenciesTracker.f9016a;
                graphicsLayer3.getClass();
                mutableScatterSetA.d(graphicsLayer3);
                mutableScatterSetA.d(graphicsLayer);
                childLayerDependenciesTracker.f9018c = mutableScatterSetA;
                childLayerDependenciesTracker.f9016a = null;
            } else {
                childLayerDependenciesTracker.f9016a = graphicsLayer;
            }
            MutableScatterSet mutableScatterSet2 = childLayerDependenciesTracker.d;
            if (mutableScatterSet2 != null) {
                z2 = !mutableScatterSet2.m(graphicsLayer);
            } else if (childLayerDependenciesTracker.f9017b != graphicsLayer) {
                z2 = z;
            } else {
                childLayerDependenciesTracker.f9017b = null;
                z2 = false;
            }
            if (z2) {
                graphicsLayer.q++;
            }
        }
        if (((AndroidCanvas) canvasA).f8823a.isHardwareAccelerated()) {
            graphicsLayerImpl.O(canvasA);
        } else {
            int i2 = GraphicsLayerImpl.f9034a;
            CanvasDrawScope canvasDrawScope = graphicsLayer.o;
            if (canvasDrawScope == null) {
                canvasDrawScope = new CanvasDrawScope();
                graphicsLayer.o = canvasDrawScope;
            }
            CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.f8996c;
            Density density = graphicsLayer.f9024b;
            LayoutDirection layoutDirection = graphicsLayer.f9025c;
            long jD = IntSizeKt.d(graphicsLayer.u);
            Density densityB = canvasDrawScope$drawContext$1.b();
            LayoutDirection layoutDirectionC = canvasDrawScope$drawContext$1.c();
            Canvas canvasA3 = canvasDrawScope$drawContext$1.a();
            long jD2 = canvasDrawScope$drawContext$1.d();
            GraphicsLayer graphicsLayer4 = canvasDrawScope$drawContext$1.f9002b;
            canvasDrawScope$drawContext$1.f(density);
            canvasDrawScope$drawContext$1.g(layoutDirection);
            canvasDrawScope$drawContext$1.e(canvasA);
            canvasDrawScope$drawContext$1.h(jD);
            canvasDrawScope$drawContext$1.f9002b = graphicsLayer;
            canvasA.p();
            try {
                graphicsLayer.c(canvasDrawScope);
                canvasA.restore();
                canvasDrawScope$drawContext$1.f(densityB);
                canvasDrawScope$drawContext$1.g(layoutDirectionC);
                canvasDrawScope$drawContext$1.e(canvasA3);
                canvasDrawScope$drawContext$1.h(jD2);
                canvasDrawScope$drawContext$1.f9002b = graphicsLayer4;
            } catch (Throwable th) {
                canvasA.restore();
                canvasDrawScope$drawContext$1.f(densityB);
                canvasDrawScope$drawContext$1.g(layoutDirectionC);
                canvasDrawScope$drawContext$1.e(canvasA3);
                canvasDrawScope$drawContext$1.h(jD2);
                canvasDrawScope$drawContext$1.f9002b = graphicsLayer4;
                throw th;
            }
        }
        if (z4) {
            canvasA.restore();
        }
        if (z3) {
            canvasA.q();
        }
        if (zIsHardwareAccelerated) {
            return;
        }
        canvasA2.restore();
    }
}
