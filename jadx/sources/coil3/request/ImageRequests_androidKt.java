package coil3.request;

import android.graphics.Bitmap;
import coil3.Extras;
import coil3.ExtrasKt;
import coil3.transition.CrossfadeTransition;
import coil3.transition.Transition;
import coil3.util.Utils_androidKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class ImageRequests_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Extras.Key f21651a = new Extras.Key(Transition.Factory.f21715a);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Extras.Key f21652b = new Extras.Key(Utils_androidKt.f21738b);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Extras.Key f21653c = new Extras.Key(null);
    public static final Extras.Key d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Extras.Key f21654e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Extras.Key f21655f;
    public static final Extras.Key g;

    static {
        Boolean bool = Boolean.TRUE;
        d = new Extras.Key(bool);
        f21654e = new Extras.Key(null);
        f21655f = new Extras.Key(bool);
        g = new Extras.Key(Boolean.FALSE);
    }

    public static final void a(ImageRequest.Builder builder, int i2) {
        Object factory;
        if (i2 > 0) {
            factory = new CrossfadeTransition.Factory(i2, false, 2, null);
        } else {
            factory = Transition.Factory.f21715a;
        }
        builder.b().b(f21651a, factory);
    }

    public static final Bitmap.Config b(Options options) {
        return (Bitmap.Config) ExtrasKt.b(options, f21652b);
    }
}
