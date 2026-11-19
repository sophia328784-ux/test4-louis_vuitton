package androidx.core.view;

import android.graphics.Point;
import android.os.Build;
import android.view.Display;
import android.view.RoundedCorner;
import defpackage.md;
import defpackage.pq0;

/* JADX INFO: loaded from: classes.dex */
public abstract class DisplayCompat {
    public static RoundedCornerCompat a(Display display, int i2) {
        RoundedCorner roundedCorner;
        int i3;
        if (Build.VERSION.SDK_INT < 31 || (roundedCorner = display.getRoundedCorner(i2)) == null) {
            return null;
        }
        int position = roundedCorner.getPosition();
        if (position != 0) {
            i3 = 1;
            if (position != 1) {
                i3 = 2;
                if (position != 2) {
                    i3 = 3;
                    if (position != 3) {
                        md.n(pq0.k(position, "Invalid position: "));
                        return null;
                    }
                }
            }
        } else {
            i3 = 0;
        }
        int radius = roundedCorner.getRadius();
        Point center = roundedCorner.getCenter();
        return new RoundedCornerCompat(i3, radius, center.x, center.y);
    }
}
