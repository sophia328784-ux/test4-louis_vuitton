package androidx.compose.ui.graphics;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class GraphicsLayerModifierKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ReusableGraphicsLayerScope f8890a;

    public static final Modifier a(Modifier modifier, Function1 function1) {
        return modifier.o(new BlockGraphicsLayerElement(function1));
    }

    public static Modifier b(Modifier modifier, float f2, float f3, float f4, float f5, Shape shape, int i2) {
        float f6 = (i2 & 1) != 0 ? 1.0f : f2;
        float f7 = (i2 & 2) != 0 ? 1.0f : f3;
        float f8 = (i2 & 4) != 0 ? 1.0f : f4;
        float f9 = (i2 & 32) != 0 ? 0.0f : f5;
        TransformOrigin.f8941b.getClass();
        long j2 = TransformOrigin.f8942c;
        Shape shape2 = (i2 & 2048) != 0 ? RectangleShapeKt.f8913a : shape;
        long j3 = GraphicsLayerScopeKt.f8891a;
        CompositingStrategy.f8875a.getClass();
        BlendMode.f8847a.getClass();
        return modifier.o(new GraphicsLayerElement(f6, f7, f8, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f9, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8.0f, j2, shape2, false, null, j3, j3, 0, BlendMode.d, null, null));
    }

    public static Modifier c(Modifier modifier, float f2, float f3, float f4, float f5, float f6, float f7, long j2, Shape shape, int i2, int i3) {
        long j3;
        int i4;
        float f8 = (i3 & 1) != 0 ? 1.0f : f2;
        float f9 = (i3 & 2) != 0 ? 1.0f : f3;
        float f10 = (i3 & 4) != 0 ? 1.0f : f4;
        float f11 = (i3 & 8) != 0 ? 0.0f : f5;
        float f12 = (i3 & 16) != 0 ? 0.0f : f6;
        float f13 = (i3 & 256) != 0 ? 0.0f : f7;
        if ((i3 & 1024) != 0) {
            TransformOrigin.f8941b.getClass();
            j3 = TransformOrigin.f8942c;
        } else {
            j3 = j2;
        }
        Shape shape2 = (i3 & 2048) != 0 ? RectangleShapeKt.f8913a : shape;
        boolean z = (i3 & 4096) == 0;
        long j4 = GraphicsLayerScopeKt.f8891a;
        if ((i3 & 65536) != 0) {
            CompositingStrategy.f8875a.getClass();
            i4 = 0;
        } else {
            i4 = i2;
        }
        BlendMode.f8847a.getClass();
        return modifier.o(new GraphicsLayerElement(f8, f9, f10, f11, f12, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f13, 8.0f, j3, shape2, z, null, j4, j4, i4, BlendMode.d, null, null));
    }
}
