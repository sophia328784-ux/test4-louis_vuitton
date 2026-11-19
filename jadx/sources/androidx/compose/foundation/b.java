package androidx.compose.foundation;

import androidx.compose.foundation.BorderKt;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.ImageBitmapConfig;
import androidx.compose.ui.graphics.ImageBitmapKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathOperation;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.k;
import defpackage.md;
import defpackage.re;
import defpackage.v40;
import defpackage.vg;
import defpackage.wg;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f4310c;

    public /* synthetic */ b(Object obj, int i2) {
        this.f4309b = i2;
        this.f4310c = obj;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x01c3  */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        float fCeil;
        final long j2;
        int i2;
        BlendModeColorFilter blendModeColorFilterA;
        boolean z;
        ImageBitmap imageBitmap;
        int i3 = this.f4309b;
        Object obj2 = this.f4310c;
        switch (i3) {
            case 0:
                BorderModifierNode borderModifierNode = (BorderModifierNode) obj2;
                CacheDrawScope cacheDrawScope = (CacheDrawScope) obj;
                if (cacheDrawScope.getF11002b() * borderModifierNode.s < Call.Parameters.DEFAULT_CAMERA_ZOOM || Size.c(cacheDrawScope.f8706b.b()) <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    return cacheDrawScope.e(new re(29));
                }
                float f2 = borderModifierNode.s;
                Dp.f11004c.getClass();
                if (Dp.b(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM)) {
                    fCeil = 1.0f;
                } else {
                    fCeil = (float) Math.ceil(cacheDrawScope.getF11002b() * borderModifierNode.s);
                }
                final float fMin = Math.min(fCeil, (float) Math.ceil(Size.c(cacheDrawScope.f8706b.b()) / 2.0f));
                final float f3 = fMin / 2.0f;
                final long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f3)) << 32) | (((long) Float.floatToRawIntBits(f3)) & BodyPartID.bodyIdMax);
                Offset.Companion companion = Offset.f8806b;
                final long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (cacheDrawScope.f8706b.b() & BodyPartID.bodyIdMax)) - fMin)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (cacheDrawScope.f8706b.b() >> 32)) - fMin)) << 32);
                float f4 = fMin * 2.0f;
                int i4 = 0;
                boolean z2 = f4 > Size.c(cacheDrawScope.f8706b.b());
                Outline outlineA = borderModifierNode.u.a(cacheDrawScope.f8706b.b(), cacheDrawScope.f8706b.getLayoutDirection(), cacheDrawScope);
                if (!(outlineA instanceof Outline.Generic)) {
                    if (!(outlineA instanceof Outline.Rounded)) {
                        boolean z3 = z2;
                        if (!(outlineA instanceof Outline.Rectangle)) {
                            v40.g();
                            return null;
                        }
                        final Brush brush = borderModifierNode.t;
                        if (z3) {
                            Offset.f8806b.getClass();
                            j2 = 0;
                        } else {
                            j2 = jFloatToRawIntBits;
                        }
                        final long jB = z3 ? cacheDrawScope.f8706b.b() : jFloatToRawIntBits2;
                        final DrawStyle stroke = z3 ? Fill.f9010a : new Stroke(fMin, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, null, 30, null);
                        return cacheDrawScope.e(new Function1() { // from class: tg
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                ContentDrawScope contentDrawScope = (ContentDrawScope) obj3;
                                contentDrawScope.R1();
                                DrawScope.q1(contentDrawScope, brush, j2, jB, Call.Parameters.DEFAULT_CAMERA_ZOOM, stroke, null, 0, 104);
                                return Unit.f71739a;
                            }
                        });
                    }
                    final Brush brush2 = borderModifierNode.t;
                    RoundRect roundRect = ((Outline.Rounded) outlineA).f8904a;
                    if (RoundRectKt.d(roundRect)) {
                        final long j3 = roundRect.f8817e;
                        final Stroke stroke2 = new Stroke(fMin, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, null, 30, null);
                        final boolean z4 = z2;
                        return cacheDrawScope.e(new Function1() { // from class: ug
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) throws Throwable {
                                long j4;
                                ContentDrawScope contentDrawScope = (ContentDrawScope) obj3;
                                contentDrawScope.R1();
                                boolean z5 = z4;
                                Brush brush3 = brush2;
                                long j5 = j3;
                                if (z5) {
                                    DrawScope.P1(contentDrawScope, brush3, 0L, 0L, j5, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, 0, 246);
                                } else {
                                    float fIntBitsToFloat = Float.intBitsToFloat((int) (j5 >> 32));
                                    float f5 = f3;
                                    if (fIntBitsToFloat < f5) {
                                        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (contentDrawScope.b() >> 32));
                                        float f6 = fMin;
                                        float f7 = fIntBitsToFloat2 - f6;
                                        float fIntBitsToFloat3 = Float.intBitsToFloat((int) (contentDrawScope.b() & BodyPartID.bodyIdMax)) - f6;
                                        ClipOp.f8864a.getClass();
                                        CanvasDrawScope$drawContext$1 f8996c = contentDrawScope.getF8996c();
                                        long jD = f8996c.d();
                                        f8996c.a().p();
                                        try {
                                            f8996c.f9001a.a(f6, f6, f7, fIntBitsToFloat3, 0);
                                            try {
                                                DrawScope.P1(contentDrawScope, brush3, 0L, 0L, j5, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, 0, 246);
                                                pq0.y(f8996c, jD);
                                            } catch (Throwable th) {
                                                th = th;
                                                j4 = jD;
                                                pq0.y(f8996c, j4);
                                                throw th;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            j4 = jD;
                                        }
                                    } else {
                                        DrawScope.P1(contentDrawScope, brush3, jFloatToRawIntBits, jFloatToRawIntBits2, BorderKt.c(f5, j5), Call.Parameters.DEFAULT_CAMERA_ZOOM, stroke2, null, 0, 208);
                                    }
                                }
                                return Unit.f71739a;
                            }
                        });
                    }
                    boolean z5 = z2;
                    if (borderModifierNode.r == null) {
                        borderModifierNode.r = new BorderCache(null, null, null, null, 15, null);
                    }
                    BorderCache borderCache = borderModifierNode.r;
                    borderCache.getClass();
                    Path pathA = borderCache.d;
                    if (pathA == null) {
                        pathA = AndroidPath_androidKt.a();
                        borderCache.d = pathA;
                    }
                    pathA.reset();
                    pathA.s(roundRect, Path.Direction.CounterClockwise);
                    if (!z5) {
                        AndroidPath androidPathA = AndroidPath_androidKt.a();
                        androidPathA.s(new RoundRect(fMin, fMin, roundRect.b() - fMin, roundRect.a() - fMin, BorderKt.c(fMin, roundRect.f8817e), BorderKt.c(fMin, roundRect.f8818f), BorderKt.c(fMin, roundRect.g), BorderKt.c(fMin, roundRect.f8819h), null), Path.Direction.CounterClockwise);
                        PathOperation.f8910a.getClass();
                        pathA.p(pathA, androidPathA, 0);
                    }
                    return cacheDrawScope.e(new k(pathA, brush2, 29));
                }
                Brush brush3 = borderModifierNode.t;
                Outline.Generic generic = (Outline.Generic) outlineA;
                Path path = generic.f8902a;
                if (z2) {
                    return cacheDrawScope.e(new vg(generic, brush3, i4));
                }
                if (brush3 instanceof SolidColor) {
                    ImageBitmapConfig.f8892b.getClass();
                    i2 = ImageBitmapConfig.f8893c;
                    blendModeColorFilterA = ColorFilter.Companion.a(ColorFilter.f8873b, Color.b(1.0f, ((SolidColor) brush3).f8931b));
                } else {
                    ImageBitmapConfig.f8892b.getClass();
                    i2 = 0;
                    blendModeColorFilterA = null;
                }
                Rect bounds = path.getBounds();
                if (borderModifierNode.r == null) {
                    borderModifierNode.r = new BorderCache(null, null, null, null, 15, null);
                }
                BorderCache borderCache2 = borderModifierNode.r;
                borderCache2.getClass();
                Path pathA2 = borderCache2.d;
                if (pathA2 == null) {
                    pathA2 = AndroidPath_androidKt.a();
                    borderCache2.d = pathA2;
                }
                pathA2.reset();
                pathA2.j(bounds, Path.Direction.CounterClockwise);
                PathOperation.f8910a.getClass();
                pathA2.p(pathA2, path, 0);
                Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                float f5 = bounds.f8813c;
                float f6 = bounds.f8812b;
                float f7 = bounds.f8811a;
                long jCeil = (((long) ((int) Math.ceil(f5 - f7))) << 32) | (((long) ((int) Math.ceil(bounds.d - f6))) & BodyPartID.bodyIdMax);
                IntSize.Companion companion2 = IntSize.f11020b;
                BorderCache borderCache3 = borderModifierNode.r;
                borderCache3.getClass();
                ImageBitmap imageBitmap2 = borderCache3.f4149a;
                Canvas canvasA = borderCache3.f4150b;
                ImageBitmapConfig imageBitmapConfig = imageBitmap2 != null ? new ImageBitmapConfig(imageBitmap2.b()) : null;
                ImageBitmapConfig.f8892b.getClass();
                if (imageBitmapConfig != null && imageBitmapConfig.f8896a == 0) {
                    z = true;
                } else {
                    ImageBitmapConfig imageBitmapConfig2 = imageBitmap2 != null ? new ImageBitmapConfig(imageBitmap2.b()) : null;
                    if (imageBitmapConfig2 != null && i2 == imageBitmapConfig2.f8896a) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
                if (imageBitmap2 == null || canvasA == null || Float.intBitsToFloat((int) (cacheDrawScope.f8706b.b() >> 32)) > imageBitmap2.getWidth() || Float.intBitsToFloat((int) (cacheDrawScope.f8706b.b() & BodyPartID.bodyIdMax)) > imageBitmap2.getHeight() || !z) {
                    imageBitmap = imageBitmap2;
                    AndroidImageBitmap androidImageBitmapA = ImageBitmapKt.a((int) (jCeil >> 32), (int) (jCeil & BodyPartID.bodyIdMax), i2);
                    borderCache3.f4149a = androidImageBitmapA;
                    canvasA = androidx.compose.ui.graphics.CanvasKt.a(androidImageBitmapA);
                    borderCache3.f4150b = canvasA;
                    imageBitmap = androidImageBitmapA;
                }
                CanvasDrawScope canvasDrawScope = borderCache3.f4151c;
                if (canvasDrawScope == null) {
                    canvasDrawScope = new CanvasDrawScope();
                    borderCache3.f4151c = canvasDrawScope;
                }
                CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.f8996c;
                CanvasDrawScope.DrawParams drawParams = canvasDrawScope.f8995b;
                BlendModeColorFilter blendModeColorFilter = blendModeColorFilterA;
                long jD = IntSizeKt.d(jCeil);
                LayoutDirection layoutDirection = cacheDrawScope.f8706b.getLayoutDirection();
                Density density = drawParams.f8998a;
                CanvasDrawScope canvasDrawScope2 = canvasDrawScope;
                LayoutDirection layoutDirection2 = drawParams.f8999b;
                Path path2 = pathA2;
                Canvas canvas = drawParams.f9000c;
                long j4 = drawParams.d;
                drawParams.f8998a = cacheDrawScope;
                drawParams.f8999b = layoutDirection;
                drawParams.f9000c = canvasA;
                drawParams.d = jD;
                canvasA.p();
                Color.f8866b.getClass();
                long j5 = Color.f8867c;
                BlendMode.f8847a.getClass();
                DrawScope.k0(canvasDrawScope2, j5, 0L, jD, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 58);
                float f8 = -f7;
                float f9 = -f6;
                canvasDrawScope$drawContext$1.f9001a.g(f8, f9);
                try {
                    DrawScope.G0(canvasDrawScope2, generic.f8902a, brush3, Call.Parameters.DEFAULT_CAMERA_ZOOM, new Stroke(f4, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, null, 30, null), null, 0, 52);
                    float fIntBitsToFloat = (Float.intBitsToFloat((int) (canvasDrawScope2.b() >> 32)) + 1.0f) / Float.intBitsToFloat((int) (canvasDrawScope2.b() >> 32));
                    float fIntBitsToFloat2 = (Float.intBitsToFloat((int) (canvasDrawScope2.b() & BodyPartID.bodyIdMax)) + 1.0f) / Float.intBitsToFloat((int) (canvasDrawScope2.b() & BodyPartID.bodyIdMax));
                    ImageBitmap imageBitmap3 = imageBitmap;
                    long jG1 = canvasDrawScope2.G1();
                    long jD2 = canvasDrawScope$drawContext$1.d();
                    canvasDrawScope$drawContext$1.a().p();
                    try {
                        canvasDrawScope$drawContext$1.f9001a.f(fIntBitsToFloat, fIntBitsToFloat2, jG1);
                        DrawScope.G0(canvasDrawScope2, path2, brush3, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, 0, 28);
                        canvasDrawScope$drawContext$1.a().restore();
                        canvasDrawScope$drawContext$1.h(jD2);
                        canvasDrawScope$drawContext$1.f9001a.g(-f8, -f9);
                        canvasA.restore();
                        drawParams.f8998a = density;
                        drawParams.f8999b = layoutDirection2;
                        drawParams.f9000c = canvas;
                        drawParams.d = j4;
                        imageBitmap3.a();
                        ref$ObjectRef.f71921b = imageBitmap3;
                        return cacheDrawScope.e(new wg(bounds, ref$ObjectRef, jCeil, blendModeColorFilter));
                    } catch (Throwable th) {
                        canvasDrawScope$drawContext$1.a().restore();
                        canvasDrawScope$drawContext$1.h(jD2);
                        throw th;
                    }
                } catch (Throwable th2) {
                    canvasDrawScope$drawContext$1.f9001a.g(-f8, -f9);
                    throw th2;
                }
            default:
                Function1 function1 = (Function1) obj2;
                TraversableNode traversableNode = (TraversableNode) obj;
                if (!(traversableNode instanceof GestureNode)) {
                    md.k("Node is not a GestureNode instance");
                    return null;
                }
                Boolean bool = (Boolean) function1.invoke(((GestureNode) traversableNode).p);
                bool.getClass();
                return bool;
        }
    }
}
