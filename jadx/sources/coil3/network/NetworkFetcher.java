package coil3.network;

import android.content.Context;
import coil3.Extras;
import coil3.ExtrasKt;
import coil3.ImageLoader;
import coil3.Uri;
import coil3.disk.DiskCache;
import coil3.fetch.Fetcher;
import coil3.graphics.FileImageSource;
import coil3.graphics.ImageSourceKt;
import coil3.graphics.SourceImageSource;
import coil3.network.internal.SingleParameterLazy;
import coil3.request.CachePolicy;
import coil3.request.Options;
import coil3.util.MimeTypeMap;
import com.linkplay.medialib.server.HttpServer;
import com.linkplay.network.SecurityConstants;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.d21;
import defpackage.dd0;
import defpackage.md;
import defpackage.x60;
import java.io.IOException;
import kotlin.Deprecated;
import kotlin.ExceptionsKt;
import kotlin.InitializedLazyImpl;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okio.Buffer;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.RealBufferedSink;
import okio.RealBufferedSource;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\u0014B_\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0006\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u0006\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0006¢\u0006\u0004\b\u0011\u0010\u0012BM\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0006\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0011\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcoil3/network/NetworkFetcher;", "Lcoil3/fetch/Fetcher;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "Lcoil3/request/Options;", "options", "Lkotlin/Lazy;", "Lcoil3/network/NetworkClient;", "networkClient", "Lcoil3/disk/DiskCache;", "diskCache", "Lcoil3/network/CacheStrategy;", "cacheStrategy", "Lcoil3/network/ConnectivityChecker;", "connectivityChecker", "Lcoil3/network/ConcurrentRequestStrategy;", "concurrentRequestStrategy", "<init>", "(Ljava/lang/String;Lcoil3/request/Options;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;)V", "(Ljava/lang/String;Lcoil3/request/Options;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lcoil3/network/ConnectivityChecker;)V", "Factory", "io.coil-kt.coil3:coil-network-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class NetworkFetcher implements Fetcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f21543a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Options f21544b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lazy f21545c;
    public final Lazy d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Lazy f21546e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Lazy f21547f;
    public final Lazy g;

    @Deprecated
    public NetworkFetcher(String str, Options options, Lazy lazy, Lazy lazy2, Lazy lazy3, ConnectivityChecker connectivityChecker) {
        this(str, options, lazy, lazy2, lazy3, new InitializedLazyImpl(connectivityChecker), new InitializedLazyImpl(ConcurrentRequestStrategy.f21537a));
    }

    /* JADX WARN: Code duplicated, block: B:106:0x01a7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0102 A[Catch: Exception -> 0x00ca, TryCatch #1 {Exception -> 0x00ca, blocks: (B:56:0x00fc, B:58:0x0102, B:65:0x0111, B:67:0x012d, B:68:0x0132, B:39:0x008e, B:41:0x0097, B:50:0x00ce, B:52:0x00da, B:44:0x00ac, B:46:0x00b6), top: B:102:0x008e }] */
    /* JADX WARN: Code duplicated, block: B:89:0x0182 A[Catch: Exception -> 0x0041, TryCatch #4 {Exception -> 0x0041, blocks: (B:15:0x003c, B:92:0x019e, B:22:0x0050, B:87:0x017e, B:89:0x0182, B:71:0x0138, B:73:0x0140, B:76:0x014f, B:77:0x0154, B:79:0x0157, B:84:0x0163, B:83:0x015e), top: B:105:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:8:0x001e  */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x019b, code lost:
    
        if (r0 == r8) goto L91;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object b(coil3.network.NetworkFetcher r17, kotlin.coroutines.Continuation r18) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.NetworkFetcher.b(coil3.network.NetworkFetcher, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object c(NetworkFetcher networkFetcher, NetworkResponseBody networkResponseBody, ContinuationImpl continuationImpl) {
        NetworkFetcher$toImageSource$1 networkFetcher$toImageSource$1;
        Buffer buffer;
        networkFetcher.getClass();
        if (continuationImpl instanceof NetworkFetcher$toImageSource$1) {
            networkFetcher$toImageSource$1 = (NetworkFetcher$toImageSource$1) continuationImpl;
            int i2 = networkFetcher$toImageSource$1.f21566e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                networkFetcher$toImageSource$1.f21566e = i2 - Integer.MIN_VALUE;
            } else {
                networkFetcher$toImageSource$1 = new NetworkFetcher$toImageSource$1(networkFetcher, continuationImpl);
            }
        } else {
            networkFetcher$toImageSource$1 = new NetworkFetcher$toImageSource$1(networkFetcher, continuationImpl);
        }
        Object obj = networkFetcher$toImageSource$1.f21565c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = networkFetcher$toImageSource$1.f21566e;
        if (i3 == 0) {
            ResultKt.b(obj);
            Buffer buffer2 = new Buffer();
            networkFetcher$toImageSource$1.f21564b = buffer2;
            networkFetcher$toImageSource$1.f21566e = 1;
            if (networkResponseBody.v1(buffer2) == coroutineSingletons) {
                return coroutineSingletons;
            }
            buffer = buffer2;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            buffer = networkFetcher$toImageSource$1.f21564b;
            ResultKt.b(obj);
        }
        return new SourceImageSource(buffer, networkFetcher.e(), null);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x00f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Code duplicated, block: B:83:0x0107  */
    /* JADX WARN: Code duplicated, block: B:99:0x0101 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static final Object d(NetworkFetcher networkFetcher, DiskCache.Snapshot snapshot, NetworkResponse networkResponse, NetworkRequest networkRequest, NetworkResponse networkResponse2, ContinuationImpl continuationImpl) throws Exception {
        NetworkFetcher$writeToDiskCache$1 networkFetcher$writeToDiskCache$1;
        DiskCache.Editor editorA;
        DiskCache.Editor editor;
        NetworkResponse networkResponse3;
        NetworkResponse networkResponse4;
        Throwable th;
        NetworkResponseBody networkResponseBody;
        NetworkResponseBody networkResponseBody2;
        networkFetcher.getClass();
        Options options = networkFetcher.f21544b;
        if (continuationImpl instanceof NetworkFetcher$writeToDiskCache$1) {
            networkFetcher$writeToDiskCache$1 = (NetworkFetcher$writeToDiskCache$1) continuationImpl;
            int i2 = networkFetcher$writeToDiskCache$1.f21571h;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                networkFetcher$writeToDiskCache$1.f21571h = i2 - Integer.MIN_VALUE;
            } else {
                networkFetcher$writeToDiskCache$1 = new NetworkFetcher$writeToDiskCache$1(networkFetcher, continuationImpl);
            }
        } else {
            networkFetcher$writeToDiskCache$1 = new NetworkFetcher$writeToDiskCache$1(networkFetcher, continuationImpl);
        }
        Object objB = networkFetcher$writeToDiskCache$1.f21570f;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = networkFetcher$writeToDiskCache$1.f21571h;
        if (i3 == 0) {
            ResultKt.b(objB);
            if (options.f21665h.getWriteEnabled()) {
                CacheStrategy cacheStrategy = (CacheStrategy) networkFetcher.f21546e.getF71699b();
                networkFetcher$writeToDiskCache$1.f21567b = snapshot;
                networkFetcher$writeToDiskCache$1.f21568c = networkResponse2;
                networkFetcher$writeToDiskCache$1.f21571h = 1;
                objB = cacheStrategy.b(networkResponse, networkResponse2);
                if (objB == obj) {
                    return obj;
                }
            } else if (snapshot != null) {
                try {
                    d21.x(snapshot);
                } catch (RuntimeException e2) {
                    throw e2;
                } catch (Exception unused) {
                }
                return null;
            }
            return null;
        }
        if (i3 != 1) {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            editor = networkFetcher$writeToDiskCache$1.f21569e;
            networkResponse3 = networkFetcher$writeToDiskCache$1.d;
            networkResponse4 = networkFetcher$writeToDiskCache$1.f21568c;
            try {
                ResultKt.b(objB);
                return editor.a();
            } catch (Exception e3) {
                e = e3;
                try {
                    editor.abort();
                } catch (Exception unused2) {
                }
                networkResponseBody = networkResponse4.f21582e;
                if (networkResponseBody != null) {
                    try {
                        d21.x(networkResponseBody);
                    } catch (RuntimeException e4) {
                        throw e4;
                    } catch (Exception unused3) {
                    }
                }
                networkResponseBody2 = networkResponse3.f21582e;
                if (networkResponseBody2 != null) {
                    throw e;
                }
                try {
                    d21.x(networkResponseBody2);
                    throw e;
                } catch (RuntimeException e5) {
                    throw e5;
                } catch (Exception unused4) {
                    throw e;
                }
            }
        }
        networkResponse2 = networkFetcher$writeToDiskCache$1.f21568c;
        snapshot = networkFetcher$writeToDiskCache$1.f21567b;
        ResultKt.b(objB);
        NetworkResponse networkResponse5 = ((CacheStrategy.WriteResult) objB).f21536a;
        if (networkResponse5 != null) {
            if (snapshot != null) {
                editorA = snapshot.e1();
            } else {
                DiskCache diskCache = (DiskCache) networkFetcher.d.getF71699b();
                if (diskCache != null) {
                    String str = options.f21663e;
                    if (str == null) {
                        str = networkFetcher.f21543a;
                    }
                    editorA = diskCache.a(str);
                } else {
                    editorA = null;
                }
            }
            if (editorA != null) {
                try {
                    RealBufferedSink realBufferedSinkB = Okio.b(networkFetcher.e().q(editorA.getMetadata(), false));
                    try {
                        CacheNetworkResponse.b(networkResponse5, realBufferedSinkB);
                        try {
                            realBufferedSinkB.close();
                            th = null;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        try {
                            realBufferedSinkB.close();
                        } catch (Throwable th4) {
                            ExceptionsKt.a(th3, th4);
                        }
                        th = th3;
                    }
                    if (th != null) {
                        throw th;
                    }
                    NetworkResponseBody networkResponseBody3 = networkResponse5.f21582e;
                    if (networkResponseBody3 != null) {
                        FileSystem fileSystemE = networkFetcher.e();
                        Path data = editorA.getData();
                        networkFetcher$writeToDiskCache$1.f21567b = null;
                        networkFetcher$writeToDiskCache$1.f21568c = networkResponse2;
                        networkFetcher$writeToDiskCache$1.d = networkResponse5;
                        networkFetcher$writeToDiskCache$1.f21569e = editorA;
                        networkFetcher$writeToDiskCache$1.f21571h = 2;
                        objB = networkResponseBody3.k1(fileSystemE, data);
                        if (objB == obj) {
                            return obj;
                        }
                        editor = editorA;
                        networkResponse3 = networkResponse5;
                        networkResponse4 = networkResponse2;
                    } else {
                        editor = editorA;
                        networkResponse3 = networkResponse5;
                        networkResponse4 = networkResponse2;
                    }
                    return editor.a();
                } catch (Exception e6) {
                    e = e6;
                    editor = editorA;
                    networkResponse3 = networkResponse5;
                    networkResponse4 = networkResponse2;
                    editor.abort();
                    networkResponseBody = networkResponse4.f21582e;
                    if (networkResponseBody != null) {
                        d21.x(networkResponseBody);
                    }
                    networkResponseBody2 = networkResponse3.f21582e;
                    if (networkResponseBody2 != null) {
                        throw e;
                    }
                    d21.x(networkResponseBody2);
                    throw e;
                }
            }
        }
        return null;
    }

    public static String f(String str, String str2) {
        String strB;
        if ((str2 == null || StringsKt.P(str2, HttpServer.MIME_PLAINTEXT, false)) && (strB = MimeTypeMap.b(str)) != null) {
            return strB;
        }
        if (str2 != null) {
            return StringsKt.T(str2, ';');
        }
        return null;
    }

    @Override // coil3.fetch.Fetcher
    public final Object a(Continuation continuation) {
        ConcurrentRequestStrategy concurrentRequestStrategy = (ConcurrentRequestStrategy) this.g.getF71699b();
        String str = this.f21544b.f21663e;
        return concurrentRequestStrategy.a(continuation, new NetworkFetcher$fetch$2(1, this, NetworkFetcher.class, "doFetch", "doFetch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0));
    }

    public final FileSystem e() {
        FileSystem fileSystem;
        DiskCache diskCache = (DiskCache) this.d.getF71699b();
        return (diskCache == null || (fileSystem = diskCache.getF21414a()) == null) ? this.f21544b.f21664f : fileSystem;
    }

    public final NetworkRequest g() {
        Extras.Key key = ImageRequestsKt.f21541b;
        Options options = this.f21544b;
        NetworkHeaders networkHeaders = (NetworkHeaders) ExtrasKt.b(options, key);
        networkHeaders.getClass();
        NetworkHeaders.Builder builder = new NetworkHeaders.Builder(networkHeaders);
        CachePolicy cachePolicy = options.f21665h;
        boolean readEnabled = cachePolicy.getReadEnabled();
        boolean z = options.f21666i.getReadEnabled() && ((ConnectivityChecker) this.f21547f.getF71699b()).a();
        if (!z && readEnabled) {
            builder.c("only-if-cached, max-stale=2147483647");
        } else if (!z || readEnabled) {
            if (!z && !readEnabled) {
                builder.c("no-cache, only-if-cached");
            }
        } else if (cachePolicy.getWriteEnabled()) {
            builder.c("no-cache");
        } else {
            builder.c("no-cache, no-store");
        }
        return new NetworkRequest(this.f21543a, (String) ExtrasKt.b(options, ImageRequestsKt.f21540a), builder.b(), (NetworkRequestBody) ExtrasKt.b(options, ImageRequestsKt.f21542c), options.f21667j);
    }

    public final FileImageSource h(DiskCache.Snapshot snapshot) {
        Path data = snapshot.getData();
        FileSystem fileSystemE = e();
        String str = this.f21544b.f21663e;
        if (str == null) {
            str = this.f21543a;
        }
        return ImageSourceKt.a(data, fileSystemE, str, snapshot, 16);
    }

    public final NetworkResponse i(DiskCache.Snapshot snapshot) throws Throwable {
        Throwable th;
        NetworkResponse networkResponseA;
        try {
            RealBufferedSource realBufferedSourceC = Okio.c(e().r(snapshot.getMetadata()));
            try {
                networkResponseA = CacheNetworkResponse.a(realBufferedSourceC);
                try {
                    realBufferedSourceC.close();
                    th = null;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                try {
                    realBufferedSourceC.close();
                } catch (Throwable th4) {
                    ExceptionsKt.a(th3, th4);
                }
                th = th3;
                networkResponseA = null;
            }
            if (th == null) {
                return networkResponseA;
            }
            throw th;
        } catch (IOException unused) {
            return null;
        }
    }

    public NetworkFetcher(String str, Options options, Lazy<? extends NetworkClient> lazy, Lazy<? extends DiskCache> lazy2, Lazy<? extends CacheStrategy> lazy3, Lazy<? extends ConnectivityChecker> lazy4, Lazy<? extends ConcurrentRequestStrategy> lazy5) {
        this.f21543a = str;
        this.f21544b = options;
        this.f21545c = lazy;
        this.d = lazy2;
        this.f21546e = lazy3;
        this.f21547f = lazy4;
        this.g = lazy5;
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BO\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003\u0012\u0018\b\u0002\u0010\f\u001a\u0012\u0012\b\u0012\u00060\tj\u0002`\n\u0012\u0004\u0012\u00020\u000b0\b\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u0003¢\u0006\u0004\b\u000f\u0010\u0010BA\b\u0017\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003\u0012\u0018\b\u0002\u0010\f\u001a\u0012\u0012\b\u0012\u00060\tj\u0002`\n\u0012\u0004\u0012\u00020\u000b0\b¢\u0006\u0004\b\u000f\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcoil3/network/NetworkFetcher$Factory;", "Lcoil3/fetch/Fetcher$Factory;", "Lcoil3/Uri;", "Lkotlin/Function0;", "Lcoil3/network/NetworkClient;", "networkClient", "Lcoil3/network/CacheStrategy;", "cacheStrategy", "Lkotlin/Function1;", "Landroid/content/Context;", "Lcoil3/PlatformContext;", "Lcoil3/network/ConnectivityChecker;", "connectivityChecker", "Lcoil3/network/ConcurrentRequestStrategy;", "concurrentRequestStrategy", "<init>", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "io.coil-kt.coil3:coil-network-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Factory implements Fetcher.Factory<Uri> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Lazy f21548a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Lazy f21549b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SingleParameterLazy f21550c;
        public final Lazy d;

        /* JADX INFO: renamed from: coil3.network.NetworkFetcher$Factory$2, reason: invalid class name */
        @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
        public static final /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1<Context, ConnectivityChecker> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static final AnonymousClass2 f21551b = new AnonymousClass2(1, ConnectivityCheckerKt.class, "ConnectivityChecker", "ConnectivityChecker(Landroid/content/Context;)Lcoil3/network/ConnectivityChecker;", 1);

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ConnectivityCheckerKt.a((Context) obj);
            }
        }

        /* JADX INFO: renamed from: coil3.network.NetworkFetcher$Factory$5, reason: invalid class name */
        @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
        public static final /* synthetic */ class AnonymousClass5 extends FunctionReferenceImpl implements Function1<Context, ConnectivityChecker> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static final AnonymousClass5 f21552b = new AnonymousClass5(1, ConnectivityCheckerKt.class, "ConnectivityChecker", "ConnectivityChecker(Landroid/content/Context;)Lcoil3/network/ConnectivityChecker;", 1);

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ConnectivityCheckerKt.a((Context) obj);
            }
        }

        public /* synthetic */ Factory(Function0 function0, Function0 function1, Function1 function2, Function0 function3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(function0, (i2 & 2) != 0 ? new dd0(27) : function1, (i2 & 4) != 0 ? AnonymousClass2.f21551b : function2, (i2 & 8) != 0 ? new dd0(28) : function3);
        }

        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher a(Object obj, Options options, ImageLoader imageLoader) {
            Uri uri = (Uri) obj;
            if (!Intrinsics.c(uri.f21268c, SecurityConstants.SECURITY_NONE) && !Intrinsics.c(uri.f21268c, SecurityConstants.SECURITY_HTTPS)) {
                return null;
            }
            return new NetworkFetcher(uri.f21266a, options, this.f21548a, LazyKt.b(new x60(imageLoader, 15)), this.f21549b, new InitializedLazyImpl(this.f21550c.a(options.f21660a)), this.d);
        }

        public Factory(Function0<? extends NetworkClient> function0, Function0<? extends CacheStrategy> function1, Function1<? super Context, ? extends ConnectivityChecker> function2, Function0<? extends ConcurrentRequestStrategy> function3) {
            this.f21548a = LazyKt.b(function0);
            this.f21549b = LazyKt.b(function1);
            this.f21550c = new SingleParameterLazy(function2);
            this.d = LazyKt.b(function3);
        }

        public /* synthetic */ Factory(Function0 function0, Function0 function1, Function1 function2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(function0, (i2 & 2) != 0 ? new dd0(29) : function1, (i2 & 4) != 0 ? AnonymousClass5.f21552b : function2);
        }

        @Deprecated
        public /* synthetic */ Factory(Function0 function0, Function0 function1, Function1 function2) {
            this(function0, function1, function2, new dd0(26));
        }
    }
}
