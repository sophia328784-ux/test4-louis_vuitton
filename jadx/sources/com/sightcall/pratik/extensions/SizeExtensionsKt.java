package com.sightcall.pratik.extensions;

import android.util.Size;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002\u001a\u0012\u0010\u0004\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002\u001a\u001a\u0010\u0005\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u001a\u001f\u0010\b\u001a\u00020\u00022\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0002\u0010\f¨\u0006\r"}, d2 = {"scaleFactor", "", "Landroid/util/Size;", "other", "downScaleFactor", "findBestSize", "cameraResolution", "targetResolution", "findSizeRotation", "rotation", "", "size", "(Ljava/lang/Integer;Landroid/util/Size;)Landroid/util/Size;", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class SizeExtensionsKt {
    public static final double downScaleFactor(Size size, Size size2) {
        size.getClass();
        size2.getClass();
        return Math.max(((double) size.getWidth()) / ((double) size2.getWidth()), ((double) size.getHeight()) / ((double) size2.getHeight()));
    }

    public static final Size findBestSize(Size size, Size size2) {
        if (size2 == null || size == null) {
            return new Size(0, 0);
        }
        if (size.getWidth() <= size2.getWidth() && size.getHeight() <= size2.getHeight()) {
            return size;
        }
        double dDownScaleFactor = downScaleFactor(size, size2);
        return new Size((int) (((double) size.getWidth()) / dDownScaleFactor), (int) (((double) size.getHeight()) / dDownScaleFactor));
    }

    public static final Size findSizeRotation(Integer num, Size size) {
        if (num == null || size == null) {
            return new Size(0, 0);
        }
        return (num.intValue() == 90 || num.intValue() == 270) ? new Size(size.getHeight(), size.getWidth()) : size;
    }

    public static final double scaleFactor(Size size, Size size2) {
        size.getClass();
        size2.getClass();
        return Math.hypot(size.getWidth(), size.getHeight()) / Math.hypot(size2.getWidth(), size2.getHeight());
    }
}
