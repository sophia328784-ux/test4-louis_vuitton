package androidx.compose.ui.graphics.vector;

import android.graphics.Bitmap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmapConfig;
import androidx.compose.ui.graphics.ImageBitmapKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/graphics/vector/VectorComponent;", "Landroidx/compose/ui/graphics/vector/VNode;", "Landroidx/compose/ui/graphics/vector/GroupComponent;", "root", "<init>", "(Landroidx/compose/ui/graphics/vector/GroupComponent;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VectorComponent extends VNode {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GroupComponent f9153b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f9154c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DrawCache f9155e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Function0 f9156f;
    public final MutableState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public BlendModeColorFilter f9157h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableState f9158i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f9159j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f9160k;
    public float l;
    public final Function1 m;

    public VectorComponent(GroupComponent groupComponent) {
        super(null);
        this.f9153b = groupComponent;
        groupComponent.f9068i = new Function1<VNode, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComponent.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                VectorComponent vectorComponent = VectorComponent.this;
                vectorComponent.d = true;
                vectorComponent.f9156f.mo47invoke();
                return Unit.f71739a;
            }
        };
        this.f9154c = "";
        this.d = true;
        this.f9155e = new DrawCache();
        this.f9156f = VectorComponent$invalidateCallback$1.f9163c;
        this.g = SnapshotStateKt.g(null);
        Size.f8820b.getClass();
        this.f9158i = SnapshotStateKt.g(new Size(0L));
        this.f9159j = Size.f8821c;
        this.f9160k = 1.0f;
        this.l = 1.0f;
        this.m = new VectorComponent$drawVectorBlock$1(this);
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public final void a(DrawScope drawScope) {
        e(drawScope, 1.0f, null);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005e  */
    /* JADX WARN: Code duplicated, block: B:24:0x0067  */
    /* JADX WARN: Code duplicated, block: B:27:0x0078  */
    /* JADX WARN: Code duplicated, block: B:29:0x0081  */
    /* JADX WARN: Code duplicated, block: B:32:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:34:0x0102  */
    /* JADX WARN: Code duplicated, block: B:41:0x011a  */
    public final void e(DrawScope drawScope, float f2, ColorFilter colorFilter) {
        int i2;
        BlendModeColorFilter blendModeColorFilterA;
        long jCeil;
        AndroidImageBitmap androidImageBitmapA;
        AndroidCanvas androidCanvasA;
        long j2;
        Bitmap bitmap;
        long jB;
        ColorFilter colorFilter2;
        int iB;
        GroupComponent groupComponent = this.f9153b;
        boolean z = groupComponent.d;
        MutableState mutableState = this.g;
        if (z && groupComponent.f9065e != 16 && VectorKt.a((ColorFilter) ((SnapshotMutableStateImpl) mutableState).getF10755b()) && VectorKt.a(colorFilter)) {
            ImageBitmapConfig.f8892b.getClass();
            i2 = ImageBitmapConfig.f8893c;
        } else {
            ImageBitmapConfig.f8892b.getClass();
            i2 = 0;
        }
        boolean z2 = this.d;
        DrawCache drawCache = this.f9155e;
        if (z2 || !Size.a(this.f9159j, drawScope.b())) {
            ImageBitmapConfig.f8892b.getClass();
            if (i2 == ImageBitmapConfig.f8893c) {
                ColorFilter.Companion companion = ColorFilter.f8873b;
                jB = groupComponent.f9065e;
                EmptyList emptyList = VectorKt.f9173a;
                if (Color.d(jB) != 1.0f) {
                    jB = Color.b(1.0f, jB);
                }
                blendModeColorFilterA = ColorFilter.Companion.a(companion, jB);
            } else {
                blendModeColorFilterA = null;
            }
            this.f9157h = blendModeColorFilterA;
            float fIntBitsToFloat = Float.intBitsToFloat((int) (drawScope.b() >> 32));
            MutableState mutableState2 = this.f9158i;
            this.f9160k = fIntBitsToFloat / Float.intBitsToFloat((int) (((Size) ((SnapshotMutableStateImpl) mutableState2).getF10755b()).f8822a >> 32));
            this.l = Float.intBitsToFloat((int) (drawScope.b() & BodyPartID.bodyIdMax)) / Float.intBitsToFloat((int) (((Size) ((SnapshotMutableStateImpl) mutableState2).getF10755b()).f8822a & BodyPartID.bodyIdMax));
            jCeil = (((long) ((int) Math.ceil(Float.intBitsToFloat((int) (drawScope.b() >> 32))))) << 32) | (((long) ((int) Math.ceil(Float.intBitsToFloat((int) (drawScope.b() & BodyPartID.bodyIdMax))))) & BodyPartID.bodyIdMax);
            IntSize.Companion companion2 = IntSize.f11020b;
            LayoutDirection layoutDirection = drawScope.getLayoutDirection();
            drawCache.f9058c = drawScope;
            androidImageBitmapA = drawCache.f9056a;
            androidCanvasA = drawCache.f9057b;
            if (androidImageBitmapA != null) {
                bitmap = androidImageBitmapA.f8834a;
                if (androidCanvasA != null) {
                    j2 = 4294967295L;
                    if (((int) (jCeil >> 32)) <= bitmap.getWidth() || ((int) (jCeil & BodyPartID.bodyIdMax)) > bitmap.getHeight() || drawCache.f9059e != i2) {
                    }
                } else {
                    j2 = 4294967295L;
                }
                androidImageBitmapA = ImageBitmapKt.a((int) (jCeil >> 32), (int) (jCeil & j2), i2);
                androidCanvasA = CanvasKt.a(androidImageBitmapA);
                drawCache.f9056a = androidImageBitmapA;
                drawCache.f9057b = androidCanvasA;
                drawCache.f9059e = i2;
            } else {
                j2 = 4294967295L;
                androidImageBitmapA = ImageBitmapKt.a((int) (jCeil >> 32), (int) (jCeil & j2), i2);
                androidCanvasA = CanvasKt.a(androidImageBitmapA);
                drawCache.f9056a = androidImageBitmapA;
                drawCache.f9057b = androidCanvasA;
                drawCache.f9059e = i2;
            }
            drawCache.d = jCeil;
            CanvasDrawScope canvasDrawScope = drawCache.f9060f;
            long jD = IntSizeKt.d(jCeil);
            CanvasDrawScope.DrawParams drawParams = canvasDrawScope.f8995b;
            Density density = drawParams.f8998a;
            LayoutDirection layoutDirection2 = drawParams.f8999b;
            Canvas canvas = drawParams.f9000c;
            long j3 = drawParams.d;
            drawParams.f8998a = drawScope;
            drawParams.f8999b = layoutDirection;
            drawParams.f9000c = androidCanvasA;
            drawParams.d = jD;
            androidCanvasA.p();
            Color.f8866b.getClass();
            long j4 = Color.f8867c;
            BlendMode.f8847a.getClass();
            DrawScope.k0(canvasDrawScope, j4, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 62);
            ((VectorComponent$drawVectorBlock$1) this.m).invoke(canvasDrawScope);
            androidCanvasA.restore();
            CanvasDrawScope.DrawParams drawParams2 = canvasDrawScope.f8995b;
            drawParams2.f8998a = density;
            drawParams2.f8999b = layoutDirection2;
            drawParams2.f9000c = canvas;
            drawParams2.d = j3;
            androidImageBitmapA.a();
            this.d = false;
            this.f9159j = drawScope.b();
        } else {
            AndroidImageBitmap androidImageBitmap = drawCache.f9056a;
            if (androidImageBitmap != null) {
                iB = androidImageBitmap.b();
            } else {
                ImageBitmapConfig.f8892b.getClass();
                iB = 0;
            }
            if (i2 != iB) {
                ImageBitmapConfig.f8892b.getClass();
                if (i2 == ImageBitmapConfig.f8893c) {
                    ColorFilter.Companion companion3 = ColorFilter.f8873b;
                    jB = groupComponent.f9065e;
                    EmptyList emptyList2 = VectorKt.f9173a;
                    if (Color.d(jB) != 1.0f) {
                        jB = Color.b(1.0f, jB);
                    }
                    blendModeColorFilterA = ColorFilter.Companion.a(companion3, jB);
                } else {
                    blendModeColorFilterA = null;
                }
                this.f9157h = blendModeColorFilterA;
                float fIntBitsToFloat2 = Float.intBitsToFloat((int) (drawScope.b() >> 32));
                MutableState mutableState3 = this.f9158i;
                this.f9160k = fIntBitsToFloat2 / Float.intBitsToFloat((int) (((Size) ((SnapshotMutableStateImpl) mutableState3).getF10755b()).f8822a >> 32));
                this.l = Float.intBitsToFloat((int) (drawScope.b() & BodyPartID.bodyIdMax)) / Float.intBitsToFloat((int) (((Size) ((SnapshotMutableStateImpl) mutableState3).getF10755b()).f8822a & BodyPartID.bodyIdMax));
                jCeil = (((long) ((int) Math.ceil(Float.intBitsToFloat((int) (drawScope.b() >> 32))))) << 32) | (((long) ((int) Math.ceil(Float.intBitsToFloat((int) (drawScope.b() & BodyPartID.bodyIdMax))))) & BodyPartID.bodyIdMax);
                IntSize.Companion companion4 = IntSize.f11020b;
                LayoutDirection layoutDirection3 = drawScope.getLayoutDirection();
                drawCache.f9058c = drawScope;
                androidImageBitmapA = drawCache.f9056a;
                androidCanvasA = drawCache.f9057b;
                if (androidImageBitmapA != null) {
                    bitmap = androidImageBitmapA.f8834a;
                    if (androidCanvasA != null) {
                        j2 = 4294967295L;
                        if (((int) (jCeil >> 32)) <= bitmap.getWidth()) {
                        }
                    } else {
                        j2 = 4294967295L;
                    }
                    androidImageBitmapA = ImageBitmapKt.a((int) (jCeil >> 32), (int) (jCeil & j2), i2);
                    androidCanvasA = CanvasKt.a(androidImageBitmapA);
                    drawCache.f9056a = androidImageBitmapA;
                    drawCache.f9057b = androidCanvasA;
                    drawCache.f9059e = i2;
                } else {
                    j2 = 4294967295L;
                    androidImageBitmapA = ImageBitmapKt.a((int) (jCeil >> 32), (int) (jCeil & j2), i2);
                    androidCanvasA = CanvasKt.a(androidImageBitmapA);
                    drawCache.f9056a = androidImageBitmapA;
                    drawCache.f9057b = androidCanvasA;
                    drawCache.f9059e = i2;
                }
                drawCache.d = jCeil;
                CanvasDrawScope canvasDrawScope2 = drawCache.f9060f;
                long jD2 = IntSizeKt.d(jCeil);
                CanvasDrawScope.DrawParams drawParams3 = canvasDrawScope2.f8995b;
                Density density2 = drawParams3.f8998a;
                LayoutDirection layoutDirection4 = drawParams3.f8999b;
                Canvas canvas2 = drawParams3.f9000c;
                long j5 = drawParams3.d;
                drawParams3.f8998a = drawScope;
                drawParams3.f8999b = layoutDirection3;
                drawParams3.f9000c = androidCanvasA;
                drawParams3.d = jD2;
                androidCanvasA.p();
                Color.f8866b.getClass();
                long j6 = Color.f8867c;
                BlendMode.f8847a.getClass();
                DrawScope.k0(canvasDrawScope2, j6, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 62);
                ((VectorComponent$drawVectorBlock$1) this.m).invoke(canvasDrawScope2);
                androidCanvasA.restore();
                CanvasDrawScope.DrawParams drawParams4 = canvasDrawScope2.f8995b;
                drawParams4.f8998a = density2;
                drawParams4.f8999b = layoutDirection4;
                drawParams4.f9000c = canvas2;
                drawParams4.d = j5;
                androidImageBitmapA.a();
                this.d = false;
                this.f9159j = drawScope.b();
            }
        }
        if (colorFilter != null) {
            colorFilter2 = colorFilter;
        } else {
            colorFilter2 = ((ColorFilter) ((SnapshotMutableStateImpl) mutableState).getF10755b()) != null ? (ColorFilter) ((SnapshotMutableStateImpl) mutableState).getF10755b() : this.f9157h;
        }
        AndroidImageBitmap androidImageBitmap2 = drawCache.f9056a;
        if (androidImageBitmap2 == null) {
            InlineClassHelperKt.c("drawCachedImage must be invoked first before attempting to draw the result into another destination");
        }
        DrawScope.X(drawScope, androidImageBitmap2, 0L, drawCache.d, 0L, 0L, f2, null, colorFilter2, 0, 0, 858);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Params: \tname: ");
        sb.append(this.f9154c);
        sb.append("\n\tviewportWidth: ");
        MutableState mutableState = this.f9158i;
        sb.append(Float.intBitsToFloat((int) (((Size) ((SnapshotMutableStateImpl) mutableState).getF10755b()).f8822a >> 32)));
        sb.append("\n\tviewportHeight: ");
        sb.append(Float.intBitsToFloat((int) (((Size) ((SnapshotMutableStateImpl) mutableState).getF10755b()).f8822a & BodyPartID.bodyIdMax)));
        sb.append("\n");
        return sb.toString();
    }
}
