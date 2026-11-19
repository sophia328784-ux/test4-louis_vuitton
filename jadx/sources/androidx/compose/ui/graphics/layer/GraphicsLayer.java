package androidx.compose.ui.graphics.layer;

import android.graphics.Outline;
import android.graphics.RectF;
import android.os.Build;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContextKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.mt;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/graphics/layer/GraphicsLayer;", "", "Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;", "impl", "<init>", "(Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;)V", "Companion", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GraphicsLayer {
    public static final LayerSnapshotImpl y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GraphicsLayerImpl f9023a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Outline f9027f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f9028h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f9029i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f9030j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public androidx.compose.ui.graphics.Outline f9031k;
    public Path l;
    public AndroidPath m;
    public boolean n;
    public CanvasDrawScope o;
    public AndroidPaint p;
    public int q;
    public final ChildLayerDependenciesTracker r;
    public boolean s;
    public long t;
    public long u;
    public long v;
    public boolean w;
    public RectF x;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Density f9024b = DrawContextKt.f9005a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LayoutDirection f9025c = LayoutDirection.Ltr;
    public Function1 d = GraphicsLayer$drawBlock$1.f9033c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function1 f9026e = new GraphicsLayer$clipDrawBlock$1(this);
    public boolean g = true;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/graphics/layer/GraphicsLayer$Companion;", "", "", "isRobolectric", "Z", "Landroidx/compose/ui/graphics/layer/LayerSnapshotImpl;", "SnapshotImpl", "Landroidx/compose/ui/graphics/layer/LayerSnapshotImpl;", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        String lowerCase = Build.FINGERPRINT.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        y = lowerCase.equals("robolectric") ? LayerSnapshotV21.f9045a : LayerSnapshotV28.f9046a;
    }

    public GraphicsLayer(GraphicsLayerImpl graphicsLayerImpl) {
        this.f9023a = graphicsLayerImpl;
        Offset.f8806b.getClass();
        this.f9028h = 0L;
        Size.f8820b.getClass();
        this.f9029i = Size.f8821c;
        this.r = new ChildLayerDependenciesTracker();
        graphicsLayerImpl.o(false);
        IntOffset.f11012b.getClass();
        this.t = 0L;
        IntSize.f11020b.getClass();
        this.u = 0L;
        this.v = Offset.d;
    }

    public final void a() {
        if (this.g) {
            boolean z = this.w;
            GraphicsLayerImpl graphicsLayerImpl = this.f9023a;
            if (z || graphicsLayerImpl.M() > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                Path path = this.l;
                if (path != null) {
                    RectF rectF = this.x;
                    if (rectF == null) {
                        rectF = new RectF();
                        this.x = rectF;
                    }
                    boolean z2 = path instanceof AndroidPath;
                    if (!z2) {
                        mt.i("Unable to obtain android.graphics.Path");
                        return;
                    }
                    android.graphics.Path path2 = ((AndroidPath) path).f8841a;
                    path2.computeBounds(rectF, false);
                    Outline outline = this.f9027f;
                    if (outline == null) {
                        outline = new Outline();
                        this.f9027f = outline;
                    }
                    if (Build.VERSION.SDK_INT >= 30) {
                        OutlineVerificationHelper.a(outline, path);
                    } else {
                        if (!z2) {
                            mt.i("Unable to obtain android.graphics.Path");
                            return;
                        }
                        outline.setConvexPath(path2);
                    }
                    this.n = !outline.canClip();
                    this.l = path;
                    outline.setAlpha(graphicsLayerImpl.a());
                    Math.round(rectF.width());
                    Math.round(rectF.height());
                    IntSize.Companion companion = IntSize.f11020b;
                    graphicsLayerImpl.G(outline);
                    if (this.n && this.w) {
                        graphicsLayerImpl.o(false);
                        graphicsLayerImpl.f();
                    } else {
                        graphicsLayerImpl.o(this.w);
                    }
                } else {
                    graphicsLayerImpl.o(this.w);
                    Size.f8820b.getClass();
                    Outline outline2 = this.f9027f;
                    if (outline2 == null) {
                        outline2 = new Outline();
                        this.f9027f = outline2;
                    }
                    Outline outline3 = outline2;
                    long jD = IntSizeKt.d(this.u);
                    long j2 = this.f9028h;
                    long j3 = this.f9029i;
                    long j4 = j3 == 9205357640488583168L ? jD : j3;
                    int i2 = (int) (j2 >> 32);
                    int iRound = Math.round(Float.intBitsToFloat(i2));
                    int i3 = (int) (j2 & BodyPartID.bodyIdMax);
                    outline3.setRoundRect(iRound, Math.round(Float.intBitsToFloat(i3)), Math.round(Float.intBitsToFloat((int) (j4 >> 32)) + Float.intBitsToFloat(i2)), Math.round(Float.intBitsToFloat((int) (BodyPartID.bodyIdMax & j4)) + Float.intBitsToFloat(i3)), this.f9030j);
                    outline3.setAlpha(graphicsLayerImpl.a());
                    IntSizeKt.b(j4);
                    graphicsLayerImpl.G(outline3);
                }
            } else {
                graphicsLayerImpl.o(false);
                IntSize.f11020b.getClass();
                graphicsLayerImpl.G(null);
            }
        }
        this.g = false;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0064 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x0066 A[LOOP:0: B:14:0x0029->B:24:0x0066, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:29:0x0069 A[EDGE_INSN: B:29:0x0069->B:25:0x0069 BREAK  A[LOOP:0: B:14:0x0029->B:24:0x0066], SYNTHETIC] */
    public final void b() {
        if (this.s && this.q == 0) {
            ChildLayerDependenciesTracker childLayerDependenciesTracker = this.r;
            GraphicsLayer graphicsLayer = childLayerDependenciesTracker.f9016a;
            if (graphicsLayer != null) {
                graphicsLayer.q--;
                graphicsLayer.b();
                childLayerDependenciesTracker.f9016a = null;
            }
            MutableScatterSet mutableScatterSet = childLayerDependenciesTracker.f9018c;
            if (mutableScatterSet != null) {
                Object[] objArr = mutableScatterSet.f3368b;
                long[] jArr = mutableScatterSet.f3367a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i2 = 0;
                    while (true) {
                        long j2 = jArr[i2];
                        if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                            if (i2 != length) {
                                break;
                                break;
                            }
                            i2++;
                        } else {
                            int i3 = 8 - ((~(i2 - length)) >>> 31);
                            for (int i4 = 0; i4 < i3; i4++) {
                                if ((255 & j2) < 128) {
                                    GraphicsLayer graphicsLayer2 = (GraphicsLayer) objArr[(i2 << 3) + i4];
                                    graphicsLayer2.q--;
                                    graphicsLayer2.b();
                                }
                                j2 >>= 8;
                            }
                            if (i3 != 8) {
                                break;
                            } else if (i2 != length) {
                                break;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                mutableScatterSet.f();
            }
            this.f9023a.f();
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0087 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x0089 A[LOOP:0: B:20:0x004c->B:30:0x0089, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:34:0x008c A[EDGE_INSN: B:34:0x008c->B:31:0x008c BREAK  A[LOOP:0: B:20:0x004c->B:30:0x0089], SYNTHETIC] */
    public final void c(DrawScope drawScope) {
        ChildLayerDependenciesTracker childLayerDependenciesTracker = this.r;
        childLayerDependenciesTracker.f9017b = childLayerDependenciesTracker.f9016a;
        MutableScatterSet mutableScatterSet = childLayerDependenciesTracker.f9018c;
        if (mutableScatterSet != null && mutableScatterSet.c()) {
            MutableScatterSet mutableScatterSetA = childLayerDependenciesTracker.d;
            if (mutableScatterSetA == null) {
                mutableScatterSetA = ScatterSetKt.a();
                childLayerDependenciesTracker.d = mutableScatterSetA;
            }
            mutableScatterSetA.k(mutableScatterSet);
            mutableScatterSet.f();
        }
        childLayerDependenciesTracker.f9019e = true;
        this.d.invoke(drawScope);
        childLayerDependenciesTracker.f9019e = false;
        GraphicsLayer graphicsLayer = childLayerDependenciesTracker.f9017b;
        if (graphicsLayer != null) {
            graphicsLayer.q--;
            graphicsLayer.b();
        }
        MutableScatterSet mutableScatterSet2 = childLayerDependenciesTracker.d;
        if (mutableScatterSet2 == null || !mutableScatterSet2.c()) {
            return;
        }
        Object[] objArr = mutableScatterSet2.f3368b;
        long[] jArr = mutableScatterSet2.f3367a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i2 = 0;
            while (true) {
                long j2 = jArr[i2];
                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i2 != length) {
                        break;
                        break;
                    }
                    i2++;
                } else {
                    int i3 = 8 - ((~(i2 - length)) >>> 31);
                    for (int i4 = 0; i4 < i3; i4++) {
                        if ((255 & j2) < 128) {
                            GraphicsLayer graphicsLayer2 = (GraphicsLayer) objArr[(i2 << 3) + i4];
                            graphicsLayer2.q--;
                            graphicsLayer2.b();
                        }
                        j2 >>= 8;
                    }
                    if (i3 != 8) {
                        break;
                    } else if (i2 != length) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        mutableScatterSet2.f();
    }

    public final androidx.compose.ui.graphics.Outline d() {
        androidx.compose.ui.graphics.Outline rectangle;
        androidx.compose.ui.graphics.Outline outline = this.f9031k;
        Path path = this.l;
        if (outline != null) {
            return outline;
        }
        if (path != null) {
            androidx.compose.ui.graphics.Outline.Generic generic = new androidx.compose.ui.graphics.Outline.Generic(path);
            this.f9031k = generic;
            return generic;
        }
        long jD = IntSizeKt.d(this.u);
        long j2 = this.f9028h;
        long j3 = this.f9029i;
        if (j3 != 9205357640488583168L) {
            jD = j3;
        }
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
        float fIntBitsToFloat3 = Float.intBitsToFloat((int) (jD >> 32)) + fIntBitsToFloat;
        float fIntBitsToFloat4 = Float.intBitsToFloat((int) (jD & BodyPartID.bodyIdMax)) + fIntBitsToFloat2;
        float f2 = this.f9030j;
        if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f2)) << 32) | (BodyPartID.bodyIdMax & ((long) Float.floatToRawIntBits(f2)));
            CornerRadius.Companion companion = CornerRadius.f8802a;
            rectangle = new androidx.compose.ui.graphics.Outline.Rounded(RoundRectKt.c(fIntBitsToFloat, fIntBitsToFloat2, fIntBitsToFloat3, fIntBitsToFloat4, jFloatToRawIntBits));
        } else {
            rectangle = new androidx.compose.ui.graphics.Outline.Rectangle(new Rect(fIntBitsToFloat, fIntBitsToFloat2, fIntBitsToFloat3, fIntBitsToFloat4));
        }
        this.f9031k = rectangle;
        return rectangle;
    }

    public final void e(Density density, LayoutDirection layoutDirection, long j2, Function1 function1) {
        boolean zB = IntSize.b(this.u, j2);
        GraphicsLayerImpl graphicsLayerImpl = this.f9023a;
        if (!zB) {
            this.u = j2;
            long j3 = this.t;
            IntOffset.Companion companion = IntOffset.f11012b;
            graphicsLayerImpl.j((int) (j3 >> 32), (int) (j3 & BodyPartID.bodyIdMax), j2);
            if (this.f9029i == 9205357640488583168L) {
                this.g = true;
                a();
            }
        }
        this.f9024b = density;
        this.f9025c = layoutDirection;
        this.d = function1;
        graphicsLayerImpl.getClass();
        graphicsLayerImpl.e(this.f9024b, this.f9025c, this, this.f9026e);
    }

    public final void f() {
        this.f9031k = null;
        this.l = null;
        Size.f8820b.getClass();
        this.f9029i = Size.f8821c;
        Offset.f8806b.getClass();
        this.f9028h = 0L;
        this.f9030j = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.g = true;
        this.n = false;
    }

    public final void g(float f2) {
        GraphicsLayerImpl graphicsLayerImpl = this.f9023a;
        if (graphicsLayerImpl.a() == f2) {
            return;
        }
        graphicsLayerImpl.d(f2);
    }

    public final void h(long j2, long j3, float f2) {
        if (Offset.c(this.f9028h, j2) && Size.a(this.f9029i, j3) && this.f9030j == f2 && this.l == null) {
            return;
        }
        f();
        this.f9028h = j2;
        this.f9029i = j3;
        this.f9030j = f2;
        a();
    }
}
