package coil3.request;

import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Bitmap;
import android.view.View;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import coil3.BitmapImage;
import coil3.Extras;
import coil3.ExtrasKt;
import coil3.Image;
import coil3.ImageLoader;
import coil3.memory.MemoryCache;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.target.Target;
import coil3.target.ViewTarget;
import coil3.util.HardwareBitmapService;
import coil3.util.HardwareBitmapsKt;
import coil3.util.Logger;
import coil3.util.SystemCallbacks;
import coil3.util.Utils_androidKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.MapsKt;
import okio.FileSystem;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcoil3/request/AndroidRequestService;", "Lcoil3/request/RequestService;", "Lcoil3/ImageLoader;", "imageLoader", "Lcoil3/util/SystemCallbacks;", "systemCallbacks", "Lcoil3/util/Logger;", "logger", "<init>", "(Lcoil3/ImageLoader;Lcoil3/util/SystemCallbacks;Lcoil3/util/Logger;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class AndroidRequestService implements RequestService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImageLoader f21605a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SystemCallbacks f21606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Logger f21607c;
    public final HardwareBitmapService d = HardwareBitmapsKt.a();

    public AndroidRequestService(ImageLoader imageLoader, SystemCallbacks systemCallbacks, Logger logger) {
        this.f21605a = imageLoader;
        this.f21606b = systemCallbacks;
        this.f21607c = logger;
    }

    public static Lifecycle d(ImageRequest imageRequest) {
        Target target = imageRequest.f21614c;
        Object context = target instanceof ViewTarget ? ((ViewTarget) target).a().getContext() : imageRequest.f21612a;
        while (!(context instanceof LifecycleOwner)) {
            if (!(context instanceof ContextWrapper)) {
                return null;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return ((LifecycleOwner) context).getD();
    }

    public static boolean e(ImageRequest imageRequest, Bitmap.Config config) {
        if (config == Bitmap.Config.HARDWARE) {
            if (!((Boolean) ExtrasKt.a(imageRequest, ImageRequests_androidKt.f21655f)).booleanValue()) {
                return false;
            }
            Target target = imageRequest.f21614c;
            if (target instanceof ViewTarget) {
                View viewA = ((ViewTarget) target).a();
                if (viewA.isAttachedToWindow() && !viewA.isHardwareAccelerated()) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // coil3.request.RequestService
    public final boolean a(ImageRequest imageRequest, MemoryCache.Value value) {
        Image image = value.f21511a;
        BitmapImage bitmapImage = image instanceof BitmapImage ? (BitmapImage) image : null;
        if (bitmapImage == null) {
            return true;
        }
        Bitmap.Config config = bitmapImage.f21203a.getConfig();
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        return e(imageRequest, config);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x007b  */
    /* JADX WARN: Code duplicated, block: B:22:0x0082  */
    /* JADX WARN: Code duplicated, block: B:29:0x0099  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:35:0x00c7  */
    @Override // coil3.request.RequestService
    public final Options b(ImageRequest imageRequest, Size size) {
        Context context;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        Extras.Builder builder;
        Context context2 = imageRequest.f21612a;
        Scale scale = imageRequest.v;
        Precision precision = imageRequest.w;
        String str = imageRequest.g;
        FileSystem fileSystem = imageRequest.f21617h;
        CachePolicy cachePolicy = imageRequest.n;
        CachePolicy cachePolicy2 = imageRequest.o;
        CachePolicy cachePolicy3 = imageRequest.p;
        Extras.Key key = ImageRequests_androidKt.f21652b;
        Bitmap.Config config = (Bitmap.Config) ExtrasKt.a(imageRequest, key);
        Extras.Key key2 = ImageRequests_androidKt.g;
        boolean zBooleanValue = ((Boolean) ExtrasKt.a(imageRequest, key2)).booleanValue();
        Extras.Key key3 = ImageRequestsKt.f21648a;
        if (!((List) ExtrasKt.a(imageRequest, key3)).isEmpty()) {
            context = context2;
            if (!ArraysKt.f((Bitmap.Config) ExtrasKt.a(imageRequest, key), Utils_androidKt.f21737a)) {
                z = false;
            }
            z2 = z;
            if (((Bitmap.Config) ExtrasKt.a(imageRequest, key)) == Bitmap.Config.HARDWARE || (e(imageRequest, (Bitmap.Config) ExtrasKt.a(imageRequest, key)) && this.d.b())) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z2 || !z3) {
                config = Bitmap.Config.ARGB_8888;
            }
            if (zBooleanValue || !((List) ExtrasKt.a(imageRequest, key3)).isEmpty() || config == Bitmap.Config.ALPHA_8) {
                z4 = false;
            } else {
                z4 = true;
            }
            builder = new Extras.Builder(MapsKt.k(imageRequest.z.n.f21218a, imageRequest.x.f21218a));
            if (config != ((Bitmap.Config) ExtrasKt.a(imageRequest, key))) {
                int i2 = Extras.Key.f21220b;
                builder.b(key, config);
            }
            if (z4 != ((Boolean) ExtrasKt.a(imageRequest, key2)).booleanValue()) {
                int i3 = Extras.Key.f21220b;
                builder.b(key2, Boolean.valueOf(z4));
            }
            return new Options(context, size, scale, precision, str, fileSystem, cachePolicy, cachePolicy2, cachePolicy3, builder.a());
        }
        context = context2;
        z = true;
        z2 = z;
        if (((Bitmap.Config) ExtrasKt.a(imageRequest, key)) == Bitmap.Config.HARDWARE) {
            z3 = true;
        } else {
            z3 = true;
        }
        if (z2) {
            config = Bitmap.Config.ARGB_8888;
        } else {
            config = Bitmap.Config.ARGB_8888;
        }
        if (zBooleanValue) {
            z4 = false;
        } else {
            z4 = false;
        }
        builder = new Extras.Builder(MapsKt.k(imageRequest.z.n.f21218a, imageRequest.x.f21218a));
        if (config != ((Bitmap.Config) ExtrasKt.a(imageRequest, key))) {
            int i4 = Extras.Key.f21220b;
            builder.b(key, config);
        }
        if (z4 != ((Boolean) ExtrasKt.a(imageRequest, key2)).booleanValue()) {
            int i5 = Extras.Key.f21220b;
            builder.b(key2, Boolean.valueOf(z4));
        }
        return new Options(context, size, scale, precision, str, fileSystem, cachePolicy, cachePolicy2, cachePolicy3, builder.a());
    }

    @Override // coil3.request.RequestService
    public final Options c(Options options) {
        boolean z;
        Extras extrasA = options.f21667j;
        Extras.Key key = ImageRequests_androidKt.f21652b;
        if (((Bitmap.Config) ExtrasKt.b(options, key)) != Bitmap.Config.HARDWARE || this.d.getF21723a()) {
            z = false;
        } else {
            extrasA.getClass();
            Extras.Builder builder = new Extras.Builder(extrasA);
            int i2 = Extras.Key.f21220b;
            builder.b(key, Bitmap.Config.ARGB_8888);
            extrasA = builder.a();
            z = true;
        }
        return z ? new Options(options.f21660a, options.f21661b, options.f21662c, options.d, options.f21663e, options.f21664f, options.g, options.f21665h, options.f21666i, extrasA) : options;
    }
}
