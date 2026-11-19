package coil3;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\n\u0010\u0001\"\u00020\u00002\u00020\u0000*\n\u0010\u0003\"\u00020\u00022\u00020\u0002¨\u0006\u0004"}, d2 = {"Landroid/graphics/Bitmap;", "Bitmap", "Landroid/graphics/Canvas;", "Canvas", "io.coil-kt.coil3:coil-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class Image_androidKt {
    public static final Drawable a(Image image, Resources resources) {
        if (image instanceof DrawableImage) {
            return ((DrawableImage) image).f21214a;
        }
        return image instanceof BitmapImage ? new BitmapDrawable(resources, ((BitmapImage) image).f21203a) : new ImageDrawable(image);
    }

    public static final Image b(Drawable drawable) {
        return drawable instanceof BitmapDrawable ? c(((BitmapDrawable) drawable).getBitmap()) : new DrawableImage(drawable, false);
    }

    public static BitmapImage c(Bitmap bitmap) {
        return new BitmapImage(bitmap, true);
    }
}
