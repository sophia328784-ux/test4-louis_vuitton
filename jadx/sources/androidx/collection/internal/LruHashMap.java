package androidx.collection.internal;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u001f\b\u0016\u0012\u0014\u0010\n\u001a\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0000¢\u0006\u0004\b\b\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/collection/internal/LruHashMap;", "", "K", "V", "", "initialCapacity", "", "loadFactor", "<init>", "(IF)V", "original", "(Landroidx/collection/internal/LruHashMap;)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LruHashMap<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f3402a;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LruHashMap(LruHashMap<? extends K, V> lruHashMap) {
        this(0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3, null);
        lruHashMap.getClass();
        Set<Map.Entry<K, V>> setEntrySet = lruHashMap.f3402a.entrySet();
        setEntrySet.getClass();
        for (Map.Entry<K, V> entry : setEntrySet) {
            K key = entry.getKey();
            V value = entry.getValue();
            key.getClass();
            value.getClass();
            this.f3402a.put(key, value);
        }
    }

    public LruHashMap(int i2, float f2) {
        this.f3402a = new LinkedHashMap(i2, f2, true);
    }

    public /* synthetic */ LruHashMap(int i2, float f2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 16 : i2, (i3 & 2) != 0 ? 0.75f : f2);
    }

    public LruHashMap() {
        this(0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3, null);
    }
}
