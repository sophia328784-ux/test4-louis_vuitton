package coil3;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcoil3/BitmapImage;", "Lcoil3/Image;", "Landroid/graphics/Bitmap;", "bitmap", "", "shareable", "<init>", "(Landroid/graphics/Bitmap;Z)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class BitmapImage implements Image {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bitmap f21203a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f21204b;

    public BitmapImage(Bitmap bitmap, boolean z) {
        this.f21203a = bitmap;
        this.f21204b = z;
    }

    @Override // coil3.Image
    /* JADX INFO: renamed from: a, reason: from getter */
    public final boolean getF21204b() {
        return this.f21204b;
    }

    @Override // coil3.Image
    public final void b(Canvas canvas) {
        canvas.drawBitmap(this.f21203a, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, (Paint) null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BitmapImage)) {
            return false;
        }
        BitmapImage bitmapImage = (BitmapImage) obj;
        return Intrinsics.c(this.f21203a, bitmapImage.f21203a) && this.f21204b == bitmapImage.f21204b;
    }

    @Override // coil3.Image
    public final int getHeight() {
        return this.f21203a.getHeight();
    }

    @Override // coil3.Image
    public final long getSize() {
        int i2;
        int allocationByteCount;
        Bitmap bitmap = this.f21203a;
        if (!bitmap.isRecycled()) {
            try {
                allocationByteCount = bitmap.getAllocationByteCount();
            } catch (Exception unused) {
                int height = bitmap.getHeight() * bitmap.getWidth();
                Bitmap.Config config = bitmap.getConfig();
                if (config == Bitmap.Config.ALPHA_8) {
                    i2 = 1;
                } else if (config == Bitmap.Config.RGB_565 || config == Bitmap.Config.ARGB_4444) {
                    i2 = 2;
                } else {
                    i2 = config == Bitmap.Config.RGBA_F16 ? 8 : 4;
                }
                allocationByteCount = i2 * height;
            }
            return allocationByteCount;
        }
        throw new IllegalStateException(("Cannot obtain size for recycled bitmap: " + bitmap + " [" + bitmap.getWidth() + " x " + bitmap.getHeight() + "] + " + bitmap.getConfig()).toString());
    }

    @Override // coil3.Image
    public final int getWidth() {
        return this.f21203a.getWidth();
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f21204b) + (this.f21203a.hashCode() * 31);
    }

    public final String toString() {
        return "BitmapImage(bitmap=" + this.f21203a + ", shareable=" + this.f21204b + ")";
    }
}
