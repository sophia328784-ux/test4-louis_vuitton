package androidx.appcompat.content.res;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.ResourceManagerInternal;

/* JADX INFO: loaded from: classes.dex */
public abstract class AppCompatResources {
    public static Drawable a(Context context, int i2) {
        return ResourceManagerInternal.c().d(context, i2);
    }
}
