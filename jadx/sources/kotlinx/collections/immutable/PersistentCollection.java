package kotlinx.collections.immutable;

import java.util.Collection;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableCollection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/collections/immutable/PersistentCollection;", "E", "Lkotlinx/collections/immutable/ImmutableCollection;", "Builder", "kotlinx-collections-immutable"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PersistentCollection<E> extends ImmutableCollection<E> {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001f\n\u0000\bf\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/collections/immutable/PersistentCollection$Builder;", "E", "", "kotlinx-collections-immutable"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface Builder<E> extends Collection<E>, KMutableCollection {
    }
}
