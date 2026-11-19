package defpackage;

import android.content.Context;
import coil3.ImageLoader;
import coil3.RealImageLoader;
import coil3.SingletonImageLoader;
import coil3.SingletonImageLoaderKt;
import kotlin.Unit;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lw0 implements SingletonImageLoader.Factory {
    @Override // coil3.SingletonImageLoader.Factory
    public final RealImageLoader b(Context context) {
        lw0 lw0Var = SingletonImageLoaderKt.f21264a;
        ImageLoader.Builder builder = new ImageLoader.Builder(context);
        builder.f21229i.b(SingletonImageLoaderKt.f21265b, Unit.f71739a);
        return builder.a();
    }
}
