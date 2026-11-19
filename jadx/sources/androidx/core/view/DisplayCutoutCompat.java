package androidx.core.view;

import android.graphics.Insets;
import android.graphics.Path;
import android.graphics.Rect;
import android.os.Build;
import android.view.DisplayCutout;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class DisplayCutoutCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DisplayCutout f12165a;

    public static class Api30Impl {
        public static DisplayCutout a(Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4, Insets insets2) {
            return new DisplayCutout(insets, rect, rect2, rect3, rect4, insets2);
        }

        public static Insets b(DisplayCutout displayCutout) {
            return displayCutout.getWaterfallInsets();
        }
    }

    public static class Api31Impl {
        public static Path a(DisplayCutout displayCutout) {
            return displayCutout.getCutoutPath();
        }
    }

    public static class Api33Impl {
        public static DisplayCutout a(Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4, Insets insets2, Path path) {
            DisplayCutout.Builder waterfallInsets = new DisplayCutout.Builder().setSafeInsets(insets).setWaterfallInsets(insets2);
            if (rect != null) {
                waterfallInsets.setBoundingRectLeft(rect);
            }
            if (rect2 != null) {
                waterfallInsets.setBoundingRectTop(rect2);
            }
            if (rect3 != null) {
                waterfallInsets.setBoundingRectRight(rect3);
            }
            if (rect4 != null) {
                waterfallInsets.setBoundingRectBottom(rect4);
            }
            if (path != null) {
                waterfallInsets.setCutoutPath(path);
            }
            return waterfallInsets.build();
        }
    }

    public DisplayCutoutCompat(androidx.core.graphics.Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4, androidx.core.graphics.Insets insets2) {
        this(a(insets, rect, rect2, rect3, rect4, insets2, null));
    }

    public static DisplayCutout a(androidx.core.graphics.Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4, androidx.core.graphics.Insets insets2, Path path) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 33) {
            return Api33Impl.a(insets.e(), rect, rect2, rect3, rect4, insets2.e(), path);
        }
        return i2 >= 30 ? Api30Impl.a(insets.e(), rect, rect2, rect3, rect4, insets2.e()) : new DisplayCutout(insets.e(), rect, rect2, rect3, rect4);
    }

    public final Path b() {
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.a(this.f12165a);
        }
        return null;
    }

    public final androidx.core.graphics.Insets c() {
        return Build.VERSION.SDK_INT >= 30 ? androidx.core.graphics.Insets.d(Api30Impl.b(this.f12165a)) : androidx.core.graphics.Insets.f12053e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DisplayCutoutCompat.class != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.f12165a, ((DisplayCutoutCompat) obj).f12165a);
    }

    public final int hashCode() {
        DisplayCutout displayCutout = this.f12165a;
        if (displayCutout == null) {
            return 0;
        }
        return displayCutout.hashCode();
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.f12165a + "}";
    }

    public DisplayCutoutCompat(androidx.core.graphics.Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4, androidx.core.graphics.Insets insets2, Path path) {
        this(a(insets, rect, rect2, rect3, rect4, insets2, path));
    }

    public DisplayCutoutCompat(DisplayCutout displayCutout) {
        this.f12165a = displayCutout;
    }

    public DisplayCutoutCompat(Rect rect, List<Rect> list) {
        this(new DisplayCutout(rect, list));
    }
}
