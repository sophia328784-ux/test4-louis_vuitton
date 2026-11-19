package coil3.compose;

import coil3.ImageLoader;
import coil3.request.ImageRequest;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bç\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lcoil3/compose/AsyncImagePreviewHandler;", "", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public interface AsyncImagePreviewHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AsyncImagePreviewHandler f21290a = null;

    Object a(ImageLoader imageLoader, ImageRequest imageRequest, ContinuationImpl continuationImpl);
}
