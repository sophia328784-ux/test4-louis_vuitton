package androidx.datastore.preferences.protobuf;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ExtensionRegistryLite {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile ExtensionRegistryLite f12929b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ExtensionRegistryLite f12930c = new ExtensionRegistryLite();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f12931a = Collections.EMPTY_MAP;

    public static final class ObjectIntPair {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f12932a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f12933b;

        public ObjectIntPair(int i2, MessageLite messageLite) {
            this.f12932a = messageLite;
            this.f12933b = i2;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof ObjectIntPair)) {
                return false;
            }
            ObjectIntPair objectIntPair = (ObjectIntPair) obj;
            return this.f12932a == objectIntPair.f12932a && this.f12933b == objectIntPair.f12933b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f12932a) * 65535) + this.f12933b;
        }
    }

    public static ExtensionRegistryLite a() {
        ExtensionRegistryLite extensionRegistryLite;
        Protobuf protobuf = Protobuf.f12985c;
        ExtensionRegistryLite extensionRegistryLite2 = f12929b;
        if (extensionRegistryLite2 != null) {
            return extensionRegistryLite2;
        }
        synchronized (ExtensionRegistryLite.class) {
            try {
                extensionRegistryLite = f12929b;
                if (extensionRegistryLite == null) {
                    Class cls = ExtensionRegistryFactory.f12928a;
                    ExtensionRegistryLite extensionRegistryLite3 = null;
                    if (cls != null) {
                        try {
                            extensionRegistryLite3 = (ExtensionRegistryLite) cls.getDeclaredMethod("getEmptyRegistry", null).invoke(null, null);
                        } catch (Exception unused) {
                        }
                    }
                    extensionRegistryLite = extensionRegistryLite3 != null ? extensionRegistryLite3 : f12930c;
                    f12929b = extensionRegistryLite;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return extensionRegistryLite;
    }
}
