package okhttp3.internal.platform;

import android.os.Build;
import com.networkbench.agent.impl.socket.k;
import defpackage.r81;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.internal.platform.android.AndroidLog;
import okhttp3.internal.tls.BasicCertificateChainCleaner;
import okhttp3.internal.tls.BasicTrustRootIndex;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.TrustRootIndex;
import okio.Buffer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/platform/Platform;", "", "<init>", "()V", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class Platform {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f77312a = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile Android10Platform f77313b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Logger f77314c;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u001c\u0010\u000b\u001a\n \n*\u0004\u0018\u00010\t0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lokhttp3/internal/platform/Platform$Companion;", "", "Lokhttp3/internal/platform/Platform;", "platform", "Lokhttp3/internal/platform/Platform;", "", "INFO", "I", "WARN", "Ljava/util/logging/Logger;", "kotlin.jvm.PlatformType", "logger", "Ljava/util/logging/Logger;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static ArrayList a(List list) {
            list.getClass();
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((Protocol) obj) != Protocol.HTTP_1_0) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((Protocol) it.next()).toString());
            }
            return arrayList2;
        }

        public static byte[] b(List list) {
            list.getClass();
            Buffer buffer = new Buffer();
            for (String str : a(list)) {
                buffer.m0(str.length());
                buffer.M0(str);
            }
            return buffer.E(buffer.f77390c);
        }
    }

    static {
        Android10Platform android10Platform = null;
        try {
            for (Map.Entry entry : AndroidLog.f77319b.entrySet()) {
                AndroidLog.b((String) entry.getKey(), (String) entry.getValue());
            }
        } catch (RuntimeException e2) {
            System.err.println("Possibly running android unit test without robolectric");
            e2.printStackTrace();
        } catch (UnsatisfiedLinkError e3) {
            System.err.println("Possibly running android unit test without robolectric");
            e3.printStackTrace();
        }
        Android10Platform.f77307f.getClass();
        Android10Platform android10Platform2 = Android10Platform.g ? new Android10Platform() : null;
        if (android10Platform2 == null) {
            AndroidPlatform.f77309e.getClass();
        } else {
            android10Platform = android10Platform2;
        }
        if (android10Platform == null) {
            r81.c(Build.VERSION.SDK_INT, "Expected Android API level 21+ but was ");
        } else {
            f77313b = android10Platform;
            f77314c = Logger.getLogger(OkHttpClient.class.getName());
        }
    }

    public CertificateChainCleaner b(X509TrustManager x509TrustManager) {
        x509TrustManager.getClass();
        return new BasicCertificateChainCleaner(c(x509TrustManager));
    }

    public TrustRootIndex c(X509TrustManager x509TrustManager) {
        x509TrustManager.getClass();
        X509Certificate[] acceptedIssuers = x509TrustManager.getAcceptedIssuers();
        return new BasicTrustRootIndex((X509Certificate[]) Arrays.copyOf(acceptedIssuers, acceptedIssuers.length));
    }

    public Object d() {
        if (f77314c.isLoggable(Level.FINE)) {
            return new Throwable("response.body().close()");
        }
        return null;
    }

    public void e(int i2, String str, Throwable th) {
        f77314c.log(Level.WARNING, str, th);
    }

    public void f(Object obj, String str) {
        if (obj == null) {
            str = str.concat(" To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);");
        }
        e(5, str, (Throwable) obj);
    }

    public SSLContext g() throws NoSuchAlgorithmException {
        SSLContext sSLContext = SSLContext.getInstance(k.f38194b);
        sSLContext.getClass();
        return sSLContext;
    }

    public final String toString() {
        return getClass().getSimpleName();
    }
}
