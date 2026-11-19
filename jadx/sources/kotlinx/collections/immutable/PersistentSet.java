package kotlinx.collections.immutable;

import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableSet;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/collections/immutable/PersistentSet;", "E", "Lkotlinx/collections/immutable/ImmutableSet;", "Lkotlinx/collections/immutable/PersistentCollection;", "Builder", "kotlinx-collections-immutable"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PersistentSet<E> extends ImmutableSet<E>, PersistentCollection<E> {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\bf\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u00022\b\u0012\u0004\u0012\u00028\u00010\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/collections/immutable/PersistentSet$Builder;", "E", "", "Lkotlinx/collections/immutable/PersistentCollection$Builder;", "kotlinx-collections-immutable"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface Builder<E> extends Set<E>, PersistentCollection.Builder<E>, KMutableSet {
    }
}
