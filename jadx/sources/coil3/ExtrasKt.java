package coil3;

import coil3.request.ImageRequest;
import coil3.request.Options;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class ExtrasKt {
    public static final Object a(ImageRequest imageRequest, Extras.Key key) {
        Object obj = imageRequest.x.f21218a.get(key);
        if (obj != null) {
            return obj;
        }
        Object obj2 = imageRequest.z.n.f21218a.get(key);
        return obj2 == null ? key.f21221a : obj2;
    }

    public static final Object b(Options options, Extras.Key key) {
        Object obj = options.f21667j.f21218a.get(key);
        return obj == null ? key.f21221a : obj;
    }
}
