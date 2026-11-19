package androidx.collection;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010&\n\u0002\b\u0005\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003B\u0017\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\u0006\u0010\u0005\u001a\u00028\u0001¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/collection/MapEntry;", "K", "V", "", ConfigurationName.KEY, "value", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
final class MapEntry<K, V> implements Map.Entry<K, V>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f3295b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f3296c;

    public MapEntry(K k2, V v) {
        this.f3295b = k2;
        this.f3296c = v;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f3295b;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f3296c;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
