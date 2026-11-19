package coil3.compose;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import coil3.Image;
import defpackage.pq0;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcoil3/compose/ImagePainter;", "Landroidx/compose/ui/graphics/painter/Painter;", "Lcoil3/Image;", "image", "<init>", "(Lcoil3/Image;)V", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ImagePainter extends Painter {
    public final Image g;

    public ImagePainter(Image image) {
        this.g = image;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final long g() {
        Image image = this.g;
        int width = image.getWidth();
        float f2 = width > 0 ? width : Float.NaN;
        int height = image.getHeight();
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(height > 0 ? height : Float.NaN)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(f2)) << 32);
        Size.Companion companion = Size.f8820b;
        return jFloatToRawIntBits;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void h(DrawScope drawScope) {
        Image image = this.g;
        int width = image.getWidth();
        float fIntBitsToFloat = width > 0 ? Float.intBitsToFloat((int) (drawScope.b() >> 32)) / width : 1.0f;
        int height = image.getHeight();
        float fIntBitsToFloat2 = height > 0 ? Float.intBitsToFloat((int) (drawScope.b() & BodyPartID.bodyIdMax)) / height : 1.0f;
        Offset.f8806b.getClass();
        CanvasDrawScope$drawContext$1 f8996c = drawScope.getF8996c();
        long jD = f8996c.d();
        f8996c.a().p();
        try {
            f8996c.f9001a.f(fIntBitsToFloat, fIntBitsToFloat2, 0L);
            image.b(AndroidCanvas_androidKt.a(drawScope.getF8996c().a()));
        } finally {
            pq0.y(f8996c, jD);
        }
    }
}
