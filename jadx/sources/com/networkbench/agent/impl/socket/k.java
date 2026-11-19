package com.networkbench.agent.impl.socket;

import com.networkbench.agent.impl.util.ad;
import java.lang.reflect.Method;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLContextSpi;

/* JADX INFO: loaded from: classes2.dex */
public class k extends Provider.Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f38193a = "SSLContext";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f38194b = "TLS";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f38195c = {"Default", "SSL", "TLSv1.1", "TLSv1.2", "SSLv3", "TLSv1", f38194b};
    private Provider.Service d;

    private k(Provider.Service service) {
        super(service.getProvider(), service.getType(), service.getAlgorithm(), service.getClassName(), null, null);
        this.d = service;
    }

    public static boolean a() {
        Provider providerF;
        k kVarA;
        int i2 = 0;
        if (!l.a() || (providerF = f()) == null) {
            return false;
        }
        boolean zC = false;
        while (true) {
            String[] strArr = f38195c;
            if (i2 >= strArr.length) {
                return zC;
            }
            Provider.Service service = providerF.getService(f38193a, strArr[i2]);
            if (service != null && !(service instanceof k) && (kVarA = a(service)) != null) {
                zC |= kVarA.c();
            }
            i2++;
        }
    }

    private void b(Provider provider) throws Exception {
        provider.put(getType() + "" + getAlgorithm(), this.d.getClassName());
        Method declaredMethod = Provider.class.getDeclaredMethod("removeService", Provider.Service.class);
        declaredMethod.setAccessible(true);
        declaredMethod.invoke(provider, this);
    }

    private static Provider f() {
        try {
            SSLContext sSLContext = SSLContext.getInstance(f38194b);
            if (sSLContext != null) {
                return sSLContext.getProvider();
            }
            return null;
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    public boolean c() {
        Provider provider = getProvider();
        if (provider == null) {
            return false;
        }
        try {
            a(provider);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean d() {
        Provider provider = getProvider();
        if (provider == null || this.d == null) {
            com.networkbench.agent.impl.util.b.a(provider);
            com.networkbench.agent.impl.util.b.a(this.d);
            return false;
        }
        try {
            b(provider);
            return true;
        } catch (Throwable th) {
            com.networkbench.agent.impl.util.b.a(th);
            return false;
        }
    }

    public Provider.Service e() {
        return this.d;
    }

    @Override // java.security.Provider.Service
    public Object newInstance(Object obj) throws NoSuchAlgorithmException {
        Object objNewInstance = super.newInstance(obj);
        try {
            return a(objNewInstance);
        } catch (ThreadDeath e2) {
            throw e2;
        } catch (Throwable th) {
            th.printStackTrace();
            return objNewInstance;
        }
    }

    public static k a(Provider.Service service) {
        k kVar = new k(service);
        try {
            ad.a((Class<?>) Provider.Service.class, service, kVar);
            return kVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    private void a(Provider provider) throws Exception {
        Method declaredMethod = Provider.class.getDeclaredMethod("putService", Provider.Service.class);
        declaredMethod.setAccessible(true);
        declaredMethod.invoke(provider, this);
    }

    private Object a(Object obj) {
        l lVarA;
        boolean z = obj instanceof SSLContextSpi;
        com.networkbench.agent.impl.util.b.a(z);
        if (!z || (lVarA = l.a((SSLContextSpi) obj)) == null) {
            return obj;
        }
        com.networkbench.agent.impl.util.b.a(lVarA);
        return lVarA;
    }

    public static boolean b() {
        Provider providerF = f();
        int i2 = 0;
        if (providerF == null) {
            return false;
        }
        boolean zD = true;
        while (true) {
            String[] strArr = f38195c;
            if (i2 >= strArr.length) {
                return zD;
            }
            Provider.Service service = providerF.getService(f38193a, strArr[i2]);
            if (service != null && (service instanceof k)) {
                zD &= ((k) service).d();
            }
            i2++;
        }
    }
}
