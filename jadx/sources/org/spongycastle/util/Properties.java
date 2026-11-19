package org.spongycastle.util;

import java.security.AccessControlException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Properties {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f78265a = new ThreadLocal();

    /* JADX INFO: renamed from: org.spongycastle.util.Properties$1, reason: invalid class name */
    final class AnonymousClass1 implements PrivilegedAction {
        @Override // java.security.PrivilegedAction
        public final Object run() {
            Map map = (Map) Properties.f78265a.get();
            return map != null ? map.get("org.spongycastle.asn1.allow_unsafe_integer") : System.getProperty("org.spongycastle.asn1.allow_unsafe_integer");
        }
    }

    public static boolean a() {
        try {
            String str = (String) AccessController.doPrivileged(new AnonymousClass1());
            if (str != null) {
                return "true".equals(Strings.c(str));
            }
            return false;
        } catch (AccessControlException unused) {
            return false;
        }
    }
}
