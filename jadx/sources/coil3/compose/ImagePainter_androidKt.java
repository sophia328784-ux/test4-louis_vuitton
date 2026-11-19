package coil3.compose;

import android.content.Context;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.BitmapPainterKt;
import androidx.compose.ui.graphics.painter.Painter;
import coil3.BitmapImage;
import coil3.DrawableImage;
import coil3.Image;
import coil3.Image_androidKt;
import com.google.accompanist.drawablepainter.DrawablePainter;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-compose-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class ImagePainter_androidKt {
    public static final Painter a(Image image, Context context, int i2) {
        if (image instanceof BitmapImage) {
            return BitmapPainterKt.a(new AndroidImageBitmap(((BitmapImage) image).f21203a), i2);
        }
        return image instanceof DrawableImage ? new DrawablePainter(Image_androidKt.a(image, context.getResources()).mutate()) : new ImagePainter(image);
    }

    public static Painter b(Image image, Context context) {
        DrawScope.a0.getClass();
        return a(image, context, DrawScope.Companion.f9008c);
    }
}
