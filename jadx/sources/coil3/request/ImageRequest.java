package coil3.request;

import android.content.Context;
import coil3.Extras;
import coil3.Image;
import coil3.graphics.Decoder;
import coil3.memory.MemoryCache;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.SizeResolver;
import coil3.target.Target;
import coil3.util.Collections_jvmCommonKt;
import coil3.util.UtilsKt;
import defpackage.a61;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okio.FileSystem;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcoil3/request/ImageRequest;", "", "Listener", "Defined", "Defaults", "Builder", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ImageRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f21612a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f21613b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Target f21614c;
    public final Listener d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f21615e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Map f21616f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FileSystem f21617h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Pair f21618i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Decoder.Factory f21619j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final CoroutineContext f21620k;
    public final CoroutineContext l;
    public final CoroutineContext m;
    public final CachePolicy n;
    public final CachePolicy o;
    public final CachePolicy p;
    public final MemoryCache.Key q;
    public final Function1 r;
    public final Function1 s;
    public final Function1 t;
    public final SizeResolver u;
    public final Scale v;
    public final Precision w;
    public final Extras x;
    public final Defined y;
    public final Defaults z;

    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B³\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\u0016\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\f\u0012\u0016\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\f\u0012\u0016\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\f\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lcoil3/request/ImageRequest$Defined;", "", "Lokio/FileSystem;", "fileSystem", "Lkotlin/coroutines/CoroutineContext;", "interceptorCoroutineContext", "fetcherCoroutineContext", "decoderCoroutineContext", "Lcoil3/request/CachePolicy;", "memoryCachePolicy", "diskCachePolicy", "networkCachePolicy", "Lkotlin/Function1;", "Lcoil3/request/ImageRequest;", "Lcoil3/Image;", "placeholderFactory", "errorFactory", "fallbackFactory", "Lcoil3/size/SizeResolver;", "sizeResolver", "Lcoil3/size/Scale;", "scale", "Lcoil3/size/Precision;", "precision", "<init>", "(Lokio/FileSystem;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcoil3/size/SizeResolver;Lcoil3/size/Scale;Lcoil3/size/Precision;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Defined {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FileSystem f21639a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CoroutineContext f21640b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final CoroutineContext f21641c;
        public final CoroutineContext d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final CachePolicy f21642e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final CachePolicy f21643f;
        public final CachePolicy g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Function1 f21644h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Function1 f21645i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final Function1 f21646j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final SizeResolver f21647k;
        public final Scale l;
        public final Precision m;

        public Defined(FileSystem fileSystem, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, CoroutineContext coroutineContext3, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Function1<? super ImageRequest, ? extends Image> function1, Function1<? super ImageRequest, ? extends Image> function2, Function1<? super ImageRequest, ? extends Image> function3, SizeResolver sizeResolver, Scale scale, Precision precision) {
            this.f21639a = fileSystem;
            this.f21640b = coroutineContext;
            this.f21641c = coroutineContext2;
            this.d = coroutineContext3;
            this.f21642e = cachePolicy;
            this.f21643f = cachePolicy2;
            this.g = cachePolicy3;
            this.f21644h = function1;
            this.f21645i = function2;
            this.f21646j = function3;
            this.f21647k = sizeResolver;
            this.l = scale;
            this.m = precision;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Defined)) {
                return false;
            }
            Defined defined = (Defined) obj;
            return Intrinsics.c(this.f21639a, defined.f21639a) && Intrinsics.c(this.f21640b, defined.f21640b) && Intrinsics.c(this.f21641c, defined.f21641c) && Intrinsics.c(this.d, defined.d) && this.f21642e == defined.f21642e && this.f21643f == defined.f21643f && this.g == defined.g && Intrinsics.c(this.f21644h, defined.f21644h) && Intrinsics.c(this.f21645i, defined.f21645i) && Intrinsics.c(this.f21646j, defined.f21646j) && Intrinsics.c(this.f21647k, defined.f21647k) && this.l == defined.l && this.m == defined.m;
        }

        public final int hashCode() {
            FileSystem fileSystem = this.f21639a;
            int iHashCode = (fileSystem == null ? 0 : fileSystem.hashCode()) * 31;
            CoroutineContext coroutineContext = this.f21640b;
            int iHashCode2 = (iHashCode + (coroutineContext == null ? 0 : coroutineContext.hashCode())) * 31;
            CoroutineContext coroutineContext2 = this.f21641c;
            int iHashCode3 = (iHashCode2 + (coroutineContext2 == null ? 0 : coroutineContext2.hashCode())) * 31;
            CoroutineContext coroutineContext3 = this.d;
            int iHashCode4 = (iHashCode3 + (coroutineContext3 == null ? 0 : coroutineContext3.hashCode())) * 31;
            CachePolicy cachePolicy = this.f21642e;
            int iHashCode5 = (iHashCode4 + (cachePolicy == null ? 0 : cachePolicy.hashCode())) * 31;
            CachePolicy cachePolicy2 = this.f21643f;
            int iHashCode6 = (iHashCode5 + (cachePolicy2 == null ? 0 : cachePolicy2.hashCode())) * 31;
            CachePolicy cachePolicy3 = this.g;
            int iHashCode7 = (iHashCode6 + (cachePolicy3 == null ? 0 : cachePolicy3.hashCode())) * 31;
            Function1 function1 = this.f21644h;
            int iHashCode8 = (iHashCode7 + (function1 == null ? 0 : function1.hashCode())) * 31;
            Function1 function2 = this.f21645i;
            int iHashCode9 = (iHashCode8 + (function2 == null ? 0 : function2.hashCode())) * 31;
            Function1 function3 = this.f21646j;
            int iHashCode10 = (iHashCode9 + (function3 == null ? 0 : function3.hashCode())) * 31;
            SizeResolver sizeResolver = this.f21647k;
            int iHashCode11 = (iHashCode10 + (sizeResolver == null ? 0 : sizeResolver.hashCode())) * 31;
            Scale scale = this.l;
            int iHashCode12 = (iHashCode11 + (scale == null ? 0 : scale.hashCode())) * 31;
            Precision precision = this.m;
            return iHashCode12 + (precision != null ? precision.hashCode() : 0);
        }

        public final String toString() {
            return "Defined(fileSystem=" + this.f21639a + ", interceptorCoroutineContext=" + this.f21640b + ", fetcherCoroutineContext=" + this.f21641c + ", decoderCoroutineContext=" + this.d + ", memoryCachePolicy=" + this.f21642e + ", diskCachePolicy=" + this.f21643f + ", networkCachePolicy=" + this.g + ", placeholderFactory=" + this.f21644h + ", errorFactory=" + this.f21645i + ", fallbackFactory=" + this.f21646j + ", sizeResolver=" + this.f21647k + ", scale=" + this.l + ", precision=" + this.m + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lcoil3/request/ImageRequest$Listener;", "", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public interface Listener {
        default void a(SuccessResult successResult) {
        }

        default void b(ErrorResult errorResult) {
        }

        default void onCancel() {
        }
    }

    public ImageRequest(Context context, Object obj, Target target, Listener listener, String str, Map map, String str2, FileSystem fileSystem, Pair pair, Decoder.Factory factory, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, CoroutineContext coroutineContext3, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, MemoryCache.Key key, Function1 function1, Function1 function2, Function1 function3, SizeResolver sizeResolver, Scale scale, Precision precision, Extras extras, Defined defined, Defaults defaults, DefaultConstructorMarker defaultConstructorMarker) {
        this.f21612a = context;
        this.f21613b = obj;
        this.f21614c = target;
        this.d = listener;
        this.f21615e = str;
        this.f21616f = map;
        this.g = str2;
        this.f21617h = fileSystem;
        this.f21618i = pair;
        this.f21619j = factory;
        this.f21620k = coroutineContext;
        this.l = coroutineContext2;
        this.m = coroutineContext3;
        this.n = cachePolicy;
        this.o = cachePolicy2;
        this.p = cachePolicy3;
        this.q = key;
        this.r = function1;
        this.s = function2;
        this.t = function3;
        this.u = sizeResolver;
        this.v = scale;
        this.w = precision;
        this.x = extras;
        this.y = defined;
        this.z = defaults;
    }

    public static Builder a(ImageRequest imageRequest) {
        Context context = imageRequest.f21612a;
        imageRequest.getClass();
        return new Builder(imageRequest, context);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImageRequest)) {
            return false;
        }
        ImageRequest imageRequest = (ImageRequest) obj;
        return Intrinsics.c(this.f21612a, imageRequest.f21612a) && Intrinsics.c(this.f21613b, imageRequest.f21613b) && Intrinsics.c(this.f21614c, imageRequest.f21614c) && Intrinsics.c(this.d, imageRequest.d) && Intrinsics.c(this.f21615e, imageRequest.f21615e) && Intrinsics.c(this.f21616f, imageRequest.f21616f) && Intrinsics.c(this.g, imageRequest.g) && Intrinsics.c(this.f21617h, imageRequest.f21617h) && Intrinsics.c(this.f21618i, imageRequest.f21618i) && Intrinsics.c(this.f21619j, imageRequest.f21619j) && Intrinsics.c(this.f21620k, imageRequest.f21620k) && Intrinsics.c(this.l, imageRequest.l) && Intrinsics.c(this.m, imageRequest.m) && this.n == imageRequest.n && this.o == imageRequest.o && this.p == imageRequest.p && Intrinsics.c(this.q, imageRequest.q) && Intrinsics.c(this.r, imageRequest.r) && Intrinsics.c(this.s, imageRequest.s) && Intrinsics.c(this.t, imageRequest.t) && Intrinsics.c(this.u, imageRequest.u) && this.v == imageRequest.v && this.w == imageRequest.w && Intrinsics.c(this.x, imageRequest.x) && Intrinsics.c(this.y, imageRequest.y) && Intrinsics.c(this.z, imageRequest.z);
    }

    public final int hashCode() {
        int iHashCode = (this.f21613b.hashCode() + (this.f21612a.hashCode() * 31)) * 31;
        Target target = this.f21614c;
        int iHashCode2 = (iHashCode + (target == null ? 0 : target.hashCode())) * 31;
        Listener listener = this.d;
        int iHashCode3 = (iHashCode2 + (listener == null ? 0 : listener.hashCode())) * 31;
        String str = this.f21615e;
        int iHashCode4 = (this.f21616f.hashCode() + ((iHashCode3 + (str == null ? 0 : str.hashCode())) * 31)) * 31;
        String str2 = this.g;
        int iHashCode5 = (this.f21617h.hashCode() + ((iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31;
        Pair pair = this.f21618i;
        int iHashCode6 = (iHashCode5 + (pair == null ? 0 : pair.hashCode())) * 31;
        Decoder.Factory factory = this.f21619j;
        int iHashCode7 = (this.p.hashCode() + ((this.o.hashCode() + ((this.n.hashCode() + ((this.m.hashCode() + ((this.l.hashCode() + ((this.f21620k.hashCode() + ((iHashCode6 + (factory == null ? 0 : factory.hashCode())) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        MemoryCache.Key key = this.q;
        return this.z.hashCode() + ((this.y.hashCode() + ((this.x.f21218a.hashCode() + ((this.w.hashCode() + ((this.v.hashCode() + ((this.u.hashCode() + ((this.t.hashCode() + ((this.s.hashCode() + ((this.r.hashCode() + ((iHashCode7 + (key != null ? key.hashCode() : 0)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ImageRequest(context=" + this.f21612a + ", data=" + this.f21613b + ", target=" + this.f21614c + ", listener=" + this.d + ", memoryCacheKey=" + this.f21615e + ", memoryCacheKeyExtras=" + this.f21616f + ", diskCacheKey=" + this.g + ", fileSystem=" + this.f21617h + ", fetcherFactory=" + this.f21618i + ", decoderFactory=" + this.f21619j + ", interceptorCoroutineContext=" + this.f21620k + ", fetcherCoroutineContext=" + this.l + ", decoderCoroutineContext=" + this.m + ", memoryCachePolicy=" + this.n + ", diskCachePolicy=" + this.o + ", networkCachePolicy=" + this.p + ", placeholderMemoryCacheKey=" + this.q + ", placeholderFactory=" + this.r + ", errorFactory=" + this.s + ", fallbackFactory=" + this.t + ", sizeResolver=" + this.u + ", scale=" + this.v + ", precision=" + this.w + ", extras=" + this.x + ", defined=" + this.y + ", defaults=" + this.z + ")";
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0015\b\u0016\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u001f\b\u0017\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\b\u0002\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0004\b\u0005\u0010\t¨\u0006\n"}, d2 = {"Lcoil3/request/ImageRequest$Builder;", "", "Landroid/content/Context;", "Lcoil3/PlatformContext;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "Lcoil3/request/ImageRequest;", "request", "(Lcoil3/request/ImageRequest;Landroid/content/Context;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f21621a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Defaults f21622b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f21623c;
        public Target d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Listener f21624e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f21625f;
        public final Map g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f21626h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final FileSystem f21627i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final Pair f21628j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final Decoder.Factory f21629k;
        public CoroutineContext l;
        public CoroutineContext m;
        public CoroutineContext n;
        public final CachePolicy o;
        public final CachePolicy p;
        public final CachePolicy q;
        public final MemoryCache.Key r;
        public Function1 s;
        public Function1 t;
        public final Function1 u;
        public SizeResolver v;
        public Scale w;
        public Precision x;
        public Object y;

        public Builder(ImageRequest imageRequest, Context context) {
            this.f21621a = context;
            this.f21622b = imageRequest.z;
            this.f21623c = imageRequest.f21613b;
            this.d = imageRequest.f21614c;
            this.f21624e = imageRequest.d;
            this.f21625f = imageRequest.f21615e;
            this.g = imageRequest.f21616f;
            this.f21626h = imageRequest.g;
            Defined defined = imageRequest.y;
            this.f21627i = defined.f21639a;
            this.f21628j = imageRequest.f21618i;
            this.f21629k = imageRequest.f21619j;
            this.l = defined.f21640b;
            this.m = defined.f21641c;
            this.n = defined.d;
            this.o = defined.f21642e;
            this.p = defined.f21643f;
            this.q = defined.g;
            this.r = imageRequest.q;
            this.s = defined.f21644h;
            this.t = defined.f21645i;
            this.u = defined.f21646j;
            this.v = defined.f21647k;
            this.w = defined.l;
            this.x = defined.m;
            this.y = imageRequest.x;
        }

        public final ImageRequest a() {
            Map mapB;
            Extras extrasA;
            Object obj = this.f21623c;
            if (obj == null) {
                obj = NullRequestData.f21658a;
            }
            Object obj2 = obj;
            Target target = this.d;
            Listener listener = this.f21624e;
            Boolean bool = Boolean.FALSE;
            Map map = this.g;
            if (Intrinsics.c(map, bool)) {
                map.getClass();
                mapB = Collections_jvmCommonKt.b(TypeIntrinsics.c(map));
            } else {
                if (!(map instanceof Map)) {
                    a61.h();
                    return null;
                }
                mapB = map;
            }
            Map map2 = mapB;
            map2.getClass();
            FileSystem fileSystem = this.f21627i;
            if (fileSystem == null) {
                fileSystem = this.f21622b.f21630a;
            }
            FileSystem fileSystem2 = fileSystem;
            CachePolicy cachePolicy = this.o;
            if (cachePolicy == null) {
                cachePolicy = this.f21622b.f21633e;
            }
            CachePolicy cachePolicy2 = cachePolicy;
            CachePolicy cachePolicy3 = this.p;
            if (cachePolicy3 == null) {
                cachePolicy3 = this.f21622b.f21634f;
            }
            CachePolicy cachePolicy4 = cachePolicy3;
            CachePolicy cachePolicy5 = this.q;
            if (cachePolicy5 == null) {
                cachePolicy5 = this.f21622b.g;
            }
            CachePolicy cachePolicy6 = cachePolicy5;
            CoroutineContext coroutineContext = this.l;
            if (coroutineContext == null) {
                coroutineContext = this.f21622b.f21631b;
            }
            CoroutineContext coroutineContext2 = coroutineContext;
            CoroutineContext coroutineContext3 = this.m;
            if (coroutineContext3 == null) {
                coroutineContext3 = this.f21622b.f21632c;
            }
            CoroutineContext coroutineContext4 = coroutineContext3;
            CoroutineContext coroutineContext5 = this.n;
            if (coroutineContext5 == null) {
                coroutineContext5 = this.f21622b.d;
            }
            CoroutineContext coroutineContext6 = coroutineContext5;
            Function1 function1 = this.s;
            if (function1 == null) {
                function1 = this.f21622b.f21635h;
            }
            Function1 function2 = function1;
            Function1 function3 = this.t;
            if (function3 == null) {
                function3 = this.f21622b.f21636i;
            }
            Function1 function4 = function3;
            Function1 function5 = this.u;
            if (function5 == null) {
                function5 = this.f21622b.f21637j;
            }
            Function1 function6 = function5;
            SizeResolver sizeResolver = this.v;
            if (sizeResolver == null) {
                sizeResolver = this.f21622b.f21638k;
            }
            SizeResolver sizeResolver2 = sizeResolver;
            Scale scale = this.w;
            if (scale == null) {
                scale = this.f21622b.l;
            }
            Scale scale2 = scale;
            Precision precision = this.x;
            if (precision == null) {
                precision = this.f21622b.m;
            }
            Precision precision2 = precision;
            Object obj3 = this.y;
            if (obj3 instanceof Extras.Builder) {
                extrasA = ((Extras.Builder) obj3).a();
            } else {
                if (!(obj3 instanceof Extras)) {
                    a61.h();
                    return null;
                }
                extrasA = (Extras) obj3;
            }
            return new ImageRequest(this.f21621a, obj2, target, listener, this.f21625f, map2, this.f21626h, fileSystem2, this.f21628j, this.f21629k, coroutineContext2, coroutineContext4, coroutineContext6, cachePolicy2, cachePolicy4, cachePolicy6, this.r, function2, function4, function6, sizeResolver2, scale2, precision2, extrasA, new Defined(this.f21627i, this.l, this.m, this.n, this.o, this.p, this.q, this.s, this.t, this.u, this.v, this.w, this.x), this.f21622b, null);
        }

        public final Extras.Builder b() {
            Object obj = this.y;
            if (obj instanceof Extras.Builder) {
                return (Extras.Builder) obj;
            }
            if (!(obj instanceof Extras)) {
                a61.h();
                return null;
            }
            Extras.Builder builder = new Extras.Builder((Extras) obj);
            this.y = builder;
            return builder;
        }

        public Builder(ImageRequest imageRequest, Context context, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(imageRequest, (i2 & 2) != 0 ? imageRequest.f21612a : context);
        }

        public Builder(Context context) {
            this.f21621a = context;
            this.f21622b = Defaults.o;
            this.f21623c = null;
            this.d = null;
            this.f21624e = null;
            this.f21625f = null;
            this.g = MapsKt.c();
            this.f21626h = null;
            this.f21627i = null;
            this.f21628j = null;
            this.f21629k = null;
            this.l = null;
            this.m = null;
            this.n = null;
            this.o = null;
            this.p = null;
            this.q = null;
            this.r = null;
            this.s = UtilsKt.b();
            this.t = UtilsKt.b();
            this.u = UtilsKt.b();
            this.v = null;
            this.w = null;
            this.x = null;
            this.y = Extras.f21217b;
        }

        public Builder(ImageRequest imageRequest) {
            this(imageRequest, null, 2, null);
        }
    }

    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u001cB½\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\b\u0012\u0016\b\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\f\u0012\u0016\b\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\f\u0012\u0016\b\u0002\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\f\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0016\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Lcoil3/request/ImageRequest$Defaults;", "", "Lokio/FileSystem;", "fileSystem", "Lkotlin/coroutines/CoroutineContext;", "interceptorCoroutineContext", "fetcherCoroutineContext", "decoderCoroutineContext", "Lcoil3/request/CachePolicy;", "memoryCachePolicy", "diskCachePolicy", "networkCachePolicy", "Lkotlin/Function1;", "Lcoil3/request/ImageRequest;", "Lcoil3/Image;", "placeholderFactory", "errorFactory", "fallbackFactory", "Lcoil3/size/SizeResolver;", "sizeResolver", "Lcoil3/size/Scale;", "scale", "Lcoil3/size/Precision;", "precision", "Lcoil3/Extras;", "extras", "<init>", "(Lokio/FileSystem;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcoil3/size/SizeResolver;Lcoil3/size/Scale;Lcoil3/size/Precision;Lcoil3/Extras;)V", "Companion", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Defaults {
        public static final Defaults o;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FileSystem f21630a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CoroutineContext f21631b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final CoroutineContext f21632c;
        public final CoroutineContext d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final CachePolicy f21633e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final CachePolicy f21634f;
        public final CachePolicy g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Function1 f21635h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Function1 f21636i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final Function1 f21637j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final SizeResolver f21638k;
        public final Scale l;
        public final Precision m;
        public final Extras n;

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/request/ImageRequest$Defaults$Companion;", "", "Lcoil3/request/ImageRequest$Defaults;", "DEFAULT", "Lcoil3/request/ImageRequest$Defaults;", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            new Companion(null);
            o = new Defaults(null, null, null, null, null, null, null, null, null, null, null, null, null, null, 16383, null);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Defaults(FileSystem fileSystem, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, CoroutineContext coroutineContext3, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Function1 function1, Function1 function2, Function1 function3, SizeResolver sizeResolver, Scale scale, Precision precision, Extras extras, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            CoroutineContext coroutineContext4;
            CoroutineContext coroutineContext5;
            fileSystem = (i2 & 1) != 0 ? FileSystem.f77414b : fileSystem;
            CoroutineContext coroutineContext6 = (i2 & 2) != 0 ? EmptyCoroutineContext.f71840b : coroutineContext;
            if ((i2 & 4) != 0) {
                DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                coroutineContext4 = DefaultIoScheduler.f75161b;
            } else {
                coroutineContext4 = coroutineContext2;
            }
            if ((i2 & 8) != 0) {
                DefaultScheduler defaultScheduler2 = Dispatchers.f74659a;
                coroutineContext5 = DefaultIoScheduler.f75161b;
            } else {
                coroutineContext5 = coroutineContext3;
            }
            this(fileSystem, coroutineContext6, coroutineContext4, coroutineContext5, (i2 & 16) != 0 ? CachePolicy.ENABLED : cachePolicy, (i2 & 32) != 0 ? CachePolicy.ENABLED : cachePolicy2, (i2 & 64) != 0 ? CachePolicy.ENABLED : cachePolicy3, (i2 & 128) != 0 ? UtilsKt.b() : function1, (i2 & 256) != 0 ? UtilsKt.b() : function2, (i2 & 512) != 0 ? UtilsKt.b() : function3, (i2 & 1024) != 0 ? SizeResolver.f21692a : sizeResolver, (i2 & 2048) != 0 ? Scale.FIT : scale, (i2 & 4096) != 0 ? Precision.EXACT : precision, (i2 & 8192) != 0 ? Extras.f21217b : extras);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Defaults)) {
                return false;
            }
            Defaults defaults = (Defaults) obj;
            return Intrinsics.c(this.f21630a, defaults.f21630a) && Intrinsics.c(this.f21631b, defaults.f21631b) && Intrinsics.c(this.f21632c, defaults.f21632c) && Intrinsics.c(this.d, defaults.d) && this.f21633e == defaults.f21633e && this.f21634f == defaults.f21634f && this.g == defaults.g && Intrinsics.c(this.f21635h, defaults.f21635h) && Intrinsics.c(this.f21636i, defaults.f21636i) && Intrinsics.c(this.f21637j, defaults.f21637j) && Intrinsics.c(this.f21638k, defaults.f21638k) && this.l == defaults.l && this.m == defaults.m && Intrinsics.c(this.n, defaults.n);
        }

        public final int hashCode() {
            return this.n.f21218a.hashCode() + ((this.m.hashCode() + ((this.l.hashCode() + ((this.f21638k.hashCode() + ((this.f21637j.hashCode() + ((this.f21636i.hashCode() + ((this.f21635h.hashCode() + ((this.g.hashCode() + ((this.f21634f.hashCode() + ((this.f21633e.hashCode() + ((this.d.hashCode() + ((this.f21632c.hashCode() + ((this.f21631b.hashCode() + (this.f21630a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
        }

        public final String toString() {
            return "Defaults(fileSystem=" + this.f21630a + ", interceptorCoroutineContext=" + this.f21631b + ", fetcherCoroutineContext=" + this.f21632c + ", decoderCoroutineContext=" + this.d + ", memoryCachePolicy=" + this.f21633e + ", diskCachePolicy=" + this.f21634f + ", networkCachePolicy=" + this.g + ", placeholderFactory=" + this.f21635h + ", errorFactory=" + this.f21636i + ", fallbackFactory=" + this.f21637j + ", sizeResolver=" + this.f21638k + ", scale=" + this.l + ", precision=" + this.m + ", extras=" + this.n + ")";
        }

        public Defaults() {
            this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, 16383, null);
        }

        public Defaults(FileSystem fileSystem, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, CoroutineContext coroutineContext3, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Function1<? super ImageRequest, ? extends Image> function1, Function1<? super ImageRequest, ? extends Image> function2, Function1<? super ImageRequest, ? extends Image> function3, SizeResolver sizeResolver, Scale scale, Precision precision, Extras extras) {
            this.f21630a = fileSystem;
            this.f21631b = coroutineContext;
            this.f21632c = coroutineContext2;
            this.d = coroutineContext3;
            this.f21633e = cachePolicy;
            this.f21634f = cachePolicy2;
            this.g = cachePolicy3;
            this.f21635h = function1;
            this.f21636i = function2;
            this.f21637j = function3;
            this.f21638k = sizeResolver;
            this.l = scale;
            this.m = precision;
            this.n = extras;
        }
    }
}
