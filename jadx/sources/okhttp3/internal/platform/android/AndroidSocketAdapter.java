package okhttp3.internal.platform.android;

import defpackage.md;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLSocket;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import okhttp3.internal.platform.AndroidPlatform;
import okhttp3.internal.platform.Platform;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0007B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lokhttp3/internal/platform/android/AndroidSocketAdapter;", "Lokhttp3/internal/platform/android/SocketAdapter;", "Ljava/lang/Class;", "Ljavax/net/ssl/SSLSocket;", "sslSocketClass", "<init>", "(Ljava/lang/Class;)V", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class AndroidSocketAdapter implements SocketAdapter {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f77321e = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final AndroidSocketAdapter$Companion$factory$1 f77322f = new AndroidSocketAdapter$Companion$factory$1();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f77323a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Method f77324b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Method f77325c;
    public final Method d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/platform/android/AndroidSocketAdapter$Companion;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public AndroidSocketAdapter(Class<? super SSLSocket> cls) throws NoSuchMethodException {
        cls.getClass();
        this.f77323a = cls;
        Method declaredMethod = cls.getDeclaredMethod("setUseSessionTickets", Boolean.TYPE);
        declaredMethod.getClass();
        this.f77324b = declaredMethod;
        cls.getMethod("setHostname", String.class);
        this.f77325c = cls.getMethod("getAlpnSelectedProtocol", null);
        this.d = cls.getMethod("setAlpnProtocols", byte[].class);
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    public final boolean a(SSLSocket sSLSocket) {
        return this.f77323a.isInstance(sSLSocket);
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    public final String b(SSLSocket sSLSocket) {
        if (this.f77323a.isInstance(sSLSocket)) {
            try {
                byte[] bArr = (byte[]) this.f77325c.invoke(sSLSocket, null);
                if (bArr != null) {
                    return new String(bArr, Charsets.UTF_8);
                }
            } catch (IllegalAccessException e2) {
                md.h(e2);
                return null;
            } catch (InvocationTargetException e3) {
                Throwable cause = e3.getCause();
                if (!(cause instanceof NullPointerException) || !Intrinsics.c(((NullPointerException) cause).getMessage(), "ssl == null")) {
                    md.h(e3);
                    return null;
                }
            }
        }
        return null;
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    public final void c(SSLSocket sSLSocket, String str, List list) {
        list.getClass();
        if (this.f77323a.isInstance(sSLSocket)) {
            try {
                this.f77324b.invoke(sSLSocket, Boolean.TRUE);
                Method method = this.d;
                Platform.f77312a.getClass();
                method.invoke(sSLSocket, Platform.Companion.b(list));
            } catch (IllegalAccessException e2) {
                md.h(e2);
            } catch (InvocationTargetException e3) {
                md.h(e3);
            }
        }
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    public final boolean isSupported() {
        AndroidPlatform.f77309e.getClass();
        return false;
    }
}
