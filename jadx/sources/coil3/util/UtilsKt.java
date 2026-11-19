package coil3.util;

import coil3.Image;
import coil3.graphics.DataSource;
import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.NullRequestDataException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class UtilsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Function1 f21734a = null;

    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f21736a;

        static {
            int[] iArr = new int[DataSource.values().length];
            try {
                iArr[DataSource.MEMORY_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DataSource.MEMORY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DataSource.DISK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DataSource.NETWORK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f21736a = iArr;
        }
    }

    public static final ErrorResult a(ImageRequest imageRequest, Throwable th) {
        Image image;
        if (th instanceof NullRequestDataException) {
            Function1 function1 = imageRequest.t;
            ImageRequest.Defaults defaults = imageRequest.z;
            image = (Image) function1.invoke(imageRequest);
            if (image == null) {
                image = (Image) defaults.f21637j.invoke(imageRequest);
            }
            if (image == null && (image = (Image) imageRequest.s.invoke(imageRequest)) == null) {
                image = (Image) defaults.f21636i.invoke(imageRequest);
            }
        } else {
            image = (Image) imageRequest.s.invoke(imageRequest);
            if (image == null) {
                image = (Image) imageRequest.z.f21636i.invoke(imageRequest);
            }
        }
        return new ErrorResult(image, imageRequest, th);
    }

    public static final Function1 b() {
        return UtilsKt$EMPTY_IMAGE_FACTORY$1.f21735b;
    }
}
