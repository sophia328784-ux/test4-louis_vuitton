package coil3;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import coil3.util.Utils_androidKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcoil3/DrawableImage;", "Lcoil3/Image;", "Landroid/graphics/drawable/Drawable;", "drawable", "", "shareable", "<init>", "(Landroid/graphics/drawable/Drawable;Z)V", "SizeProvider", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class DrawableImage implements Image {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Drawable f21214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f21215b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lcoil3/DrawableImage$SizeProvider;", "", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public interface SizeProvider {
        long getSize();
    }

    public DrawableImage(Drawable drawable, boolean z) {
        this.f21214a = drawable;
        this.f21215b = z;
    }

    @Override // coil3.Image
    /* JADX INFO: renamed from: a, reason: from getter */
    public final boolean getF21215b() {
        return this.f21215b;
    }

    @Override // coil3.Image
    public final void b(Canvas canvas) {
        this.f21214a.draw(canvas);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DrawableImage)) {
            return false;
        }
        DrawableImage drawableImage = (DrawableImage) obj;
        return Intrinsics.c(this.f21214a, drawableImage.f21214a) && this.f21215b == drawableImage.f21215b;
    }

    @Override // coil3.Image
    public final int getHeight() {
        return Utils_androidKt.a(this.f21214a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // coil3.Image
    public final long getSize() {
        Drawable drawable = this.f21214a;
        long size = drawable instanceof SizeProvider ? ((SizeProvider) drawable).getSize() : ((long) Utils_androidKt.b(drawable)) * 4 * ((long) Utils_androidKt.a(drawable));
        if (size < 0) {
            return 0L;
        }
        return size;
    }

    @Override // coil3.Image
    public final int getWidth() {
        return Utils_androidKt.b(this.f21214a);
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f21215b) + (this.f21214a.hashCode() * 31);
    }

    public final String toString() {
        return "DrawableImage(drawable=" + this.f21214a + ", shareable=" + this.f21215b + ")";
    }
}
