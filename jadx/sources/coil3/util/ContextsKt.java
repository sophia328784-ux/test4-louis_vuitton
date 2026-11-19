package coil3.util;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.appcompat.content.res.AppCompatResources;
import defpackage.pq0;
import defpackage.tg0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class ContextsKt {
    public static final Drawable a(int i2, Context context) {
        Drawable drawableA = AppCompatResources.a(context, i2);
        if (drawableA != null) {
            return drawableA;
        }
        tg0.c(pq0.k(i2, "Invalid resource ID: "));
        return null;
    }
}
