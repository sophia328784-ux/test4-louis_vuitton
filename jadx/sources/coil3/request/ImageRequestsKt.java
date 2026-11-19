package coil3.request;

import coil3.Extras;
import coil3.size.Dimension;
import coil3.size.DimensionKt;
import coil3.size.Size;
import kotlin.Metadata;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class ImageRequestsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Extras.Key f21648a = new Extras.Key(EmptyList.f71768b);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Extras.Key f21649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Extras.Key f21650c;
    public static final Extras.Key d;

    static {
        DimensionKt.a(4096);
        Dimension.Pixels pixels = new Dimension.Pixels(4096);
        DimensionKt.a(4096);
        f21649b = new Extras.Key(new Size(pixels, new Dimension.Pixels(4096)));
        f21650c = new Extras.Key(Boolean.FALSE);
        d = new Extras.Key(Boolean.TRUE);
    }
}
