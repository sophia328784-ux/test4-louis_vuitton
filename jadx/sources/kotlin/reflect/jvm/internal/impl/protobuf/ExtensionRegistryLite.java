package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class ExtensionRegistryLite {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f73721b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f73722a;

    public static final class ObjectIntPair {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f73723a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f73724b;

        public ObjectIntPair(Object obj, int i2) {
            this.f73723a = obj;
            this.f73724b = i2;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof ObjectIntPair)) {
                return false;
            }
            ObjectIntPair objectIntPair = (ObjectIntPair) obj;
            return this.f73723a == objectIntPair.f73723a && this.f73724b == objectIntPair.f73724b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f73723a) * 65535) + this.f73724b;
        }
    }

    static {
        new ExtensionRegistryLite(0);
    }

    public ExtensionRegistryLite() {
        this.f73722a = new HashMap();
    }

    public final void a(GeneratedMessageLite.GeneratedExtension generatedExtension) {
        this.f73722a.put(new ObjectIntPair(generatedExtension.f73738a, generatedExtension.d.f73736b), generatedExtension);
    }

    public ExtensionRegistryLite(int i2) {
        this.f73722a = Collections.EMPTY_MAP;
    }
}
