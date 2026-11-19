package com.google.crypto.tink.subtle;

import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.subtle.EngineWrapper;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class EngineFactory<T_WRAPPER extends EngineWrapper<JcePrimitiveT>, JcePrimitiveT> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final EngineFactory f34305b = new EngineFactory(new EngineWrapper.TCipher());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final EngineFactory f34306c = new EngineFactory(new EngineWrapper.TMac());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Policy f34307a;

    public static class AndroidPolicy<JcePrimitiveT> implements Policy<JcePrimitiveT> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final EngineWrapper f34308a;

        public AndroidPolicy(EngineWrapper engineWrapper) {
            this.f34308a = engineWrapper;
        }

        @Override // com.google.crypto.tink.subtle.EngineFactory.Policy
        public final Object a(String str) {
            String[] strArr = {"GmsCore_OpenSSL", "AndroidOpenSSL"};
            EngineFactory engineFactory = EngineFactory.f34305b;
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < 2; i2++) {
                Provider provider = Security.getProvider(strArr[i2]);
                if (provider != null) {
                    arrayList.add(provider);
                }
            }
            Iterator it = arrayList.iterator();
            Exception exc = null;
            while (true) {
                boolean zHasNext = it.hasNext();
                EngineWrapper engineWrapper = this.f34308a;
                if (!zHasNext) {
                    return engineWrapper.a(str, null);
                }
                try {
                    return engineWrapper.a(str, (Provider) it.next());
                } catch (Exception e2) {
                    if (exc == null) {
                        exc = e2;
                    }
                }
            }
        }
    }

    public static class DefaultPolicy<JcePrimitiveT> implements Policy<JcePrimitiveT> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final EngineWrapper f34309a;

        public DefaultPolicy(EngineWrapper engineWrapper) {
            this.f34309a = engineWrapper;
        }

        @Override // com.google.crypto.tink.subtle.EngineFactory.Policy
        public final Object a(String str) {
            return this.f34309a.a(str, null);
        }
    }

    public static class FipsPolicy<JcePrimitiveT> implements Policy<JcePrimitiveT> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final EngineWrapper f34310a;

        public FipsPolicy(EngineWrapper engineWrapper) {
            this.f34310a = engineWrapper;
        }

        @Override // com.google.crypto.tink.subtle.EngineFactory.Policy
        public final Object a(String str) throws GeneralSecurityException {
            String[] strArr = {"GmsCore_OpenSSL", "AndroidOpenSSL", "Conscrypt"};
            EngineFactory engineFactory = EngineFactory.f34305b;
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < 3; i2++) {
                Provider provider = Security.getProvider(strArr[i2]);
                if (provider != null) {
                    arrayList.add(provider);
                }
            }
            Iterator it = arrayList.iterator();
            Exception exc = null;
            while (it.hasNext()) {
                try {
                    return this.f34310a.a(str, (Provider) it.next());
                } catch (Exception e2) {
                    if (exc == null) {
                        exc = e2;
                    }
                }
            }
            throw new GeneralSecurityException("No good Provider found.", exc);
        }
    }

    public interface Policy<JcePrimitiveT> {
        Object a(String str);
    }

    static {
        new EngineFactory(new EngineWrapper.TSignature());
        new EngineFactory(new EngineWrapper.TMessageDigest());
        new EngineFactory(new EngineWrapper.TKeyAgreement());
        new EngineFactory(new EngineWrapper.TKeyPairGenerator());
        new EngineFactory(new EngineWrapper.TKeyFactory());
    }

    public EngineFactory(T_WRAPPER t_wrapper) {
        if (TinkFipsUtil.a()) {
            this.f34307a = new FipsPolicy(t_wrapper);
        } else if ("The Android Project".equals(System.getProperty("java.vendor"))) {
            this.f34307a = new AndroidPolicy(t_wrapper);
        } else {
            this.f34307a = new DefaultPolicy(t_wrapper);
        }
    }

    public final Object a(String str) {
        return this.f34307a.a(str);
    }
}
