package kotlinx.collections.immutable;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableMap;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0006\b\u0001\u0010\u0002 \u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003:\u0001\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/collections/immutable/PersistentMap;", "K", "V", "Lkotlinx/collections/immutable/ImmutableMap;", "Builder", "kotlinx-collections-immutable"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PersistentMap<K, V> extends ImmutableMap<K, V> {

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0000\bf\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/collections/immutable/PersistentMap$Builder;", "K", "V", "", "kotlinx-collections-immutable"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface Builder<K, V> extends Map<K, V>, KMutableMap {
    }
}
