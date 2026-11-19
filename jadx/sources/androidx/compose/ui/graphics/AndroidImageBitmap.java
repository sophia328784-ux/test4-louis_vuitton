package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/graphics/AndroidImageBitmap;", "Landroidx/compose/ui/graphics/ImageBitmap;", "Landroid/graphics/Bitmap;", "bitmap", "<init>", "(Landroid/graphics/Bitmap;)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidImageBitmap implements ImageBitmap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bitmap f8834a;

    public AndroidImageBitmap(Bitmap bitmap) {
        this.f8834a = bitmap;
    }

    @Override // androidx.compose.ui.graphics.ImageBitmap
    public final void a() {
        this.f8834a.prepareToDraw();
    }

    @Override // androidx.compose.ui.graphics.ImageBitmap
    public final int b() {
        Bitmap.Config config = this.f8834a.getConfig();
        config.getClass();
        if (config == Bitmap.Config.ALPHA_8) {
            ImageBitmapConfig.f8892b.getClass();
            return ImageBitmapConfig.f8893c;
        }
        if (config == Bitmap.Config.RGB_565) {
            ImageBitmapConfig.f8892b.getClass();
            return ImageBitmapConfig.d;
        }
        if (config == Bitmap.Config.ARGB_4444) {
            ImageBitmapConfig.f8892b.getClass();
            return 0;
        }
        if (config == Bitmap.Config.RGBA_F16) {
            ImageBitmapConfig.f8892b.getClass();
            return ImageBitmapConfig.f8894e;
        }
        if (config == Bitmap.Config.HARDWARE) {
            ImageBitmapConfig.f8892b.getClass();
            return ImageBitmapConfig.f8895f;
        }
        ImageBitmapConfig.f8892b.getClass();
        return 0;
    }

    @Override // androidx.compose.ui.graphics.ImageBitmap
    public final int getHeight() {
        return this.f8834a.getHeight();
    }

    @Override // androidx.compose.ui.graphics.ImageBitmap
    public final int getWidth() {
        return this.f8834a.getWidth();
    }
}
