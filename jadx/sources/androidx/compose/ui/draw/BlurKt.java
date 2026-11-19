package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.BlurEffect;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TileMode;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class BlurKt {
    public static final Modifier a(Modifier modifier, final float f2, final float f3, final Shape shape) {
        final boolean z;
        final int i2;
        if (shape != null) {
            TileMode.f8938a.getClass();
            i2 = 0;
            z = true;
        } else {
            TileMode.f8938a.getClass();
            z = false;
            i2 = TileMode.d;
        }
        return ((Dp.a(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM) <= 0 || Dp.a(f3, Call.Parameters.DEFAULT_CAMERA_ZOOM) <= 0) && !z) ? modifier : GraphicsLayerModifierKt.a(modifier, new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.ui.draw.BlurKt$blur$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
                float fU1 = graphicsLayerScope.u1(f2);
                float fU2 = graphicsLayerScope.u1(f3);
                graphicsLayerScope.n((fU1 <= Call.Parameters.DEFAULT_CAMERA_ZOOM || fU2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) ? null : new BlurEffect(null, fU1, fU2, i2, null));
                Shape shape2 = shape;
                if (shape2 == null) {
                    shape2 = RectangleShapeKt.f8913a;
                }
                graphicsLayerScope.r1(shape2);
                graphicsLayerScope.o(z);
                return Unit.f71739a;
            }
        });
    }
}
