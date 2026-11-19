package kotlinx.serialization.json.internal;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lkotlinx/serialization/json/internal/DescriptorSchemaCache;", "", "<init>", "()V", "Key", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DescriptorSchemaCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f75782a = new ConcurrentHashMap(16);

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;", "T", "", "<init>", "()V", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Key<T> {
    }

    public final Object a(SerialDescriptor serialDescriptor, Key key, Function0 function0) {
        serialDescriptor.getClass();
        key.getClass();
        ConcurrentHashMap concurrentHashMap = this.f75782a;
        Map map = (Map) concurrentHashMap.get(serialDescriptor);
        Object obj = map != null ? map.get(key) : null;
        Object obj2 = obj != null ? obj : null;
        if (obj2 != null) {
            return obj2;
        }
        Object objMo47invoke = function0.mo47invoke();
        objMo47invoke.getClass();
        Object concurrentHashMap2 = concurrentHashMap.get(serialDescriptor);
        if (concurrentHashMap2 == null) {
            concurrentHashMap2 = new ConcurrentHashMap(2);
            concurrentHashMap.put(serialDescriptor, concurrentHashMap2);
        }
        ((Map) concurrentHashMap2).put(key, objMo47invoke);
        return objMo47invoke;
    }
}
