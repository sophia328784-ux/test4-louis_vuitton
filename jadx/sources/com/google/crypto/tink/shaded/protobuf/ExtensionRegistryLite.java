package com.google.crypto.tink.shaded.protobuf;

import defpackage.r81;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class ExtensionRegistryLite {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile ExtensionRegistryLite f34172b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ExtensionRegistryLite f34173c = new ExtensionRegistryLite();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f34174a = Collections.EMPTY_MAP;

    public static final class ObjectIntPair {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f34175a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f34176b;

        public ObjectIntPair(MessageLite messageLite, int i2) {
            this.f34175a = messageLite;
            this.f34176b = i2;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof ObjectIntPair)) {
                return false;
            }
            ObjectIntPair objectIntPair = (ObjectIntPair) obj;
            return this.f34175a == objectIntPair.f34175a && this.f34176b == objectIntPair.f34176b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f34175a) * 65535) + this.f34176b;
        }
    }

    public static ExtensionRegistryLite b() {
        ExtensionRegistryLite extensionRegistryLite;
        ExtensionRegistryLite extensionRegistryLite2 = f34172b;
        if (extensionRegistryLite2 != null) {
            return extensionRegistryLite2;
        }
        synchronized (ExtensionRegistryLite.class) {
            try {
                extensionRegistryLite = f34172b;
                if (extensionRegistryLite == null) {
                    Class cls = ExtensionRegistryFactory.f34171a;
                    ExtensionRegistryLite extensionRegistryLite3 = null;
                    if (cls != null) {
                        try {
                            extensionRegistryLite3 = (ExtensionRegistryLite) cls.getDeclaredMethod("getEmptyRegistry", null).invoke(null, null);
                        } catch (Exception unused) {
                        }
                    }
                    extensionRegistryLite = extensionRegistryLite3 != null ? extensionRegistryLite3 : f34173c;
                    f34172b = extensionRegistryLite;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return extensionRegistryLite;
    }

    public final void a(MessageLite messageLite, int i2) {
        if (this.f34174a.get(new ObjectIntPair(messageLite, i2)) == null) {
            return;
        }
        r81.h();
    }
}
