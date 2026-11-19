package okhttp3.internal.platform;

import android.content.Context;
import android.net.http.X509TrustManagerExtensions;
import android.os.Build;
import android.os.StrictMode;
import android.util.CloseGuard;
import java.util.ArrayList;
import javax.net.ssl.SSLContext;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.platform.android.Android10SocketAdapter;
import okhttp3.internal.platform.android.AndroidCertificateChainCleaner;
import okhttp3.internal.platform.android.AndroidSocketAdapter;
import okhttp3.internal.platform.android.BouncyCastleSocketAdapter;
import okhttp3.internal.platform.android.ConscryptSocketAdapter;
import okhttp3.internal.platform.android.DeferredSocketAdapter;
import okhttp3.internal.platform.android.SocketAdapter;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.TrustRootIndex;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/platform/Android10Platform;", "Lokhttp3/internal/platform/Platform;", "Lokhttp3/internal/platform/ContextAwarePlatform;", "<init>", "()V", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Android10Platform extends Platform implements ContextAwarePlatform {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Companion f77307f = new Companion(null);
    public static final boolean g;
    public Context d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f77308e;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/platform/Android10Platform$Companion;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        Platform.f77312a.getClass();
        g = true;
    }

    public Android10Platform() {
        Android10SocketAdapter.f77315a.getClass();
        Platform.f77312a.getClass();
        Android10SocketAdapter android10SocketAdapter = new Android10SocketAdapter();
        AndroidSocketAdapter.f77321e.getClass();
        DeferredSocketAdapter deferredSocketAdapter = new DeferredSocketAdapter(AndroidSocketAdapter.f77322f);
        ConscryptSocketAdapter.f77329a.getClass();
        DeferredSocketAdapter deferredSocketAdapter2 = new DeferredSocketAdapter(ConscryptSocketAdapter.f77330b);
        BouncyCastleSocketAdapter.f77326a.getClass();
        ArrayList arrayListV = ArraysKt.v(new SocketAdapter[]{android10SocketAdapter, deferredSocketAdapter, deferredSocketAdapter2, new DeferredSocketAdapter(BouncyCastleSocketAdapter.f77327b)});
        ArrayList arrayList = new ArrayList();
        for (Object obj : arrayListV) {
            if (((SocketAdapter) obj).isSupported()) {
                arrayList.add(obj);
            }
        }
        this.f77308e = arrayList;
    }

    @Override // okhttp3.internal.platform.ContextAwarePlatform
    public final void a(Context context) {
        this.d = context;
    }

    @Override // okhttp3.internal.platform.Platform
    public final CertificateChainCleaner b(X509TrustManager x509TrustManager) {
        X509TrustManagerExtensions x509TrustManagerExtensions;
        x509TrustManager.getClass();
        AndroidCertificateChainCleaner.d.getClass();
        try {
            x509TrustManagerExtensions = new X509TrustManagerExtensions(x509TrustManager);
        } catch (IllegalArgumentException unused) {
            x509TrustManagerExtensions = null;
        }
        AndroidCertificateChainCleaner androidCertificateChainCleaner = x509TrustManagerExtensions != null ? new AndroidCertificateChainCleaner(x509TrustManager, x509TrustManagerExtensions) : null;
        return androidCertificateChainCleaner != null ? androidCertificateChainCleaner : super.b(x509TrustManager);
    }

    @Override // okhttp3.internal.platform.Platform
    public final TrustRootIndex c(X509TrustManager x509TrustManager) {
        x509TrustManager.getClass();
        StrictMode.noteSlowCall("buildTrustRootIndex");
        return super.c(x509TrustManager);
    }

    @Override // okhttp3.internal.platform.Platform
    public final Object d() {
        if (Build.VERSION.SDK_INT < 30) {
            return super.d();
        }
        CloseGuard closeGuard = new CloseGuard();
        closeGuard.open("response.body().close()");
        return closeGuard;
    }

    @Override // okhttp3.internal.platform.Platform
    public final void e(int i2, String str, Throwable th) {
        if (i2 == 5) {
            AndroidPlatform.f77309e.getClass();
        } else {
            AndroidPlatform.f77309e.getClass();
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public final void f(Object obj, String str) {
        if (Build.VERSION.SDK_INT < 30) {
            super.f(obj, str);
        } else {
            obj.getClass();
            ((CloseGuard) obj).warnIfOpen();
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public final SSLContext g() {
        StrictMode.noteSlowCall("newSSLContext");
        return super.g();
    }

    @Override // okhttp3.internal.platform.ContextAwarePlatform
    /* JADX INFO: renamed from: getApplicationContext, reason: from getter */
    public final Context getD() {
        return this.d;
    }
}
