package coil3.memory;

import coil3.BitmapImage;
import coil3.ComponentRegistry;
import coil3.EventListener;
import coil3.ExtrasKt;
import coil3.Image;
import coil3.ImageLoader;
import coil3.key.Keyer;
import coil3.request.CachePolicy;
import coil3.request.ImageRequest;
import coil3.request.ImageRequestsKt;
import coil3.request.Options;
import coil3.request.RequestService;
import coil3.size.Dimension;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.util.Logger;
import coil3.util.UtilsKt;
import defpackage.v40;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\nB!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcoil3/memory/MemoryCacheService;", "", "Lcoil3/ImageLoader;", "imageLoader", "Lcoil3/request/RequestService;", "requestService", "Lcoil3/util/Logger;", "logger", "<init>", "(Lcoil3/ImageLoader;Lcoil3/request/RequestService;Lcoil3/util/Logger;)V", "Companion", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class MemoryCacheService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImageLoader f21513a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RequestService f21514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Logger f21515c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Lcoil3/memory/MemoryCacheService$Companion;", "", "", "TAG", "Ljava/lang/String;", "EXTRA_SIZE", "EXTRA_IS_SAMPLED", "EXTRA_DISK_CACHE_KEY", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f21516a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f21517b;

        static {
            int[] iArr = new int[Scale.values().length];
            try {
                iArr[Scale.FILL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Scale.FIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f21516a = iArr;
            int[] iArr2 = new int[Precision.values().length];
            try {
                iArr2[Precision.EXACT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[Precision.INEXACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f21517b = iArr2;
        }
    }

    static {
        new Companion(null);
    }

    public MemoryCacheService(ImageLoader imageLoader, RequestService requestService, Logger logger) {
        this.f21513a = imageLoader;
        this.f21514b = requestService;
        this.f21515c = logger;
    }

    public final MemoryCache.Value a(ImageRequest imageRequest, MemoryCache.Key key, Size size, Scale scale) {
        int iAbs;
        CachePolicy cachePolicy = imageRequest.n;
        Precision precision = imageRequest.w;
        Object obj = imageRequest.f21613b;
        if (cachePolicy.getReadEnabled()) {
            MemoryCache memoryCacheE = this.f21513a.e();
            MemoryCache.Value valueA = memoryCacheE != null ? memoryCacheE.a(key) : null;
            if (valueA != null) {
                boolean zA = this.f21514b.a(imageRequest, valueA);
                Logger logger = this.f21515c;
                if (zA) {
                    String str = (String) key.f21510b.get("coil#size");
                    if (str != null) {
                        if (!str.equals(size.toString())) {
                            if (logger != null) {
                                if (logger.a().compareTo(Logger.Level.Debug) <= 0) {
                                    Objects.toString(obj);
                                    size.toString();
                                    logger.b();
                                    return null;
                                }
                            }
                        }
                        return valueA;
                    }
                    Object obj2 = valueA.f21512b.get("coil#is_sampled");
                    Boolean bool = obj2 instanceof Boolean ? (Boolean) obj2 : null;
                    boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
                    Image image = valueA.f21511a;
                    if (zBooleanValue || (!Intrinsics.c(size, Size.f21689c) && precision != Precision.INEXACT)) {
                        int width = image.getWidth();
                        int height = image.getHeight();
                        Size size2 = image instanceof BitmapImage ? (Size) ExtrasKt.a(imageRequest, ImageRequestsKt.f21649b) : Size.f21689c;
                        Dimension dimension = size.f21690a;
                        int i2 = dimension instanceof Dimension.Pixels ? ((Dimension.Pixels) dimension).f21684a : Integer.MAX_VALUE;
                        Dimension dimension2 = size2.f21690a;
                        int iMin = Math.min(i2, dimension2 instanceof Dimension.Pixels ? ((Dimension.Pixels) dimension2).f21684a : Integer.MAX_VALUE);
                        Dimension dimension3 = size.f21691b;
                        int i3 = dimension3 instanceof Dimension.Pixels ? ((Dimension.Pixels) dimension3).f21684a : Integer.MAX_VALUE;
                        Dimension dimension4 = size2.f21691b;
                        int iMin2 = Math.min(i3, dimension4 instanceof Dimension.Pixels ? ((Dimension.Pixels) dimension4).f21684a : Integer.MAX_VALUE);
                        double d = ((double) iMin) / ((double) width);
                        double d2 = ((double) iMin2) / ((double) height);
                        int i4 = WhenMappings.f21516a[((iMin == Integer.MAX_VALUE || iMin2 == Integer.MAX_VALUE) ? Scale.FIT : scale).ordinal()];
                        if (i4 != 1) {
                            if (i4 != 2) {
                                v40.g();
                                return null;
                            }
                            if (d < d2) {
                                iAbs = Math.abs(iMin - width);
                            } else {
                                iAbs = Math.abs(iMin2 - height);
                                d = d2;
                            }
                        } else if (d > d2) {
                            iAbs = Math.abs(iMin - width);
                        } else {
                            iAbs = Math.abs(iMin2 - height);
                            d = d2;
                        }
                        if (iAbs > 1) {
                            int i5 = WhenMappings.f21517b[precision.ordinal()];
                            if (i5 != 1) {
                                if (i5 != 2) {
                                    v40.g();
                                    return null;
                                }
                                if (d > 1.0d) {
                                    if (logger != null) {
                                        if (logger.a().compareTo(Logger.Level.Debug) <= 0) {
                                            Objects.toString(obj);
                                            logger.b();
                                            return null;
                                        }
                                    }
                                }
                            } else if (d != 1.0d) {
                                if (logger != null) {
                                    if (logger.a().compareTo(Logger.Level.Debug) <= 0) {
                                        Objects.toString(obj);
                                        logger.b();
                                    }
                                }
                            }
                        }
                    }
                    return valueA;
                }
                if (logger != null) {
                    if (logger.a().compareTo(Logger.Level.Debug) <= 0) {
                        Objects.toString(obj);
                        logger.b();
                        return null;
                    }
                }
            }
        }
        return null;
    }

    public final MemoryCache.Key b(ImageRequest imageRequest, Object obj, Options options, EventListener eventListener) {
        String strA;
        Logger logger;
        CachePolicy cachePolicy = imageRequest.n;
        Map map = imageRequest.f21616f;
        if (cachePolicy != CachePolicy.DISABLED) {
            String str = imageRequest.f21615e;
            if (str != null) {
                return new MemoryCache.Key(str, map);
            }
            ComponentRegistry d = this.f21513a.getD();
            Function1 function1 = UtilsKt.f21734a;
            List list = d.f21207c;
            int size = list.size();
            int i2 = 0;
            boolean z = false;
            while (true) {
                if (i2 >= size) {
                    if (!z && (logger = this.f21515c) != null) {
                        if (logger.a().compareTo(Logger.Level.Warn) <= 0) {
                            Class<?> cls = obj.getClass();
                            ReflectionFactory reflectionFactory = Reflection.f71922a;
                            reflectionFactory.b(cls).B();
                            reflectionFactory.b(obj.getClass()).B();
                            logger.b();
                        }
                    }
                    strA = null;
                    break;
                }
                Pair pair = (Pair) list.get(i2);
                Keyer keyer = (Keyer) pair.f71705b;
                if (((KClass) pair.f71706c).t(obj)) {
                    keyer.getClass();
                    strA = keyer.a(obj, options);
                    if (strA != null) {
                        break;
                    }
                    z = true;
                }
                i2++;
            }
            if (strA != null) {
                if (((List) ExtrasKt.a(imageRequest, ImageRequestsKt.f21648a)).isEmpty()) {
                    return new MemoryCache.Key(strA, map);
                }
                LinkedHashMap linkedHashMapR = MapsKt.r(map);
                linkedHashMapR.put("coil#size", options.f21661b.toString());
                return new MemoryCache.Key(strA, linkedHashMapR);
            }
        }
        return null;
    }
}
