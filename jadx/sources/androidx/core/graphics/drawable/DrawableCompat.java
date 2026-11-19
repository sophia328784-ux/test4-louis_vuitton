package androidx.core.graphics.drawable;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DrawableCompat {
    /* JADX WARN: Multi-variable type inference failed */
    public static Drawable a(Drawable drawable) {
        return drawable instanceof WrappedDrawable ? ((WrappedDrawable) drawable).a() : drawable;
    }
}
