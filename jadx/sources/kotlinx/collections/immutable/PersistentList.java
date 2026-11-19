package kotlinx.collections.immutable;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableList;
import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/collections/immutable/PersistentList;", "E", "Lkotlinx/collections/immutable/ImmutableList;", "Lkotlinx/collections/immutable/PersistentCollection;", "Builder", "kotlinx-collections-immutable"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PersistentList<E> extends ImmutableList<E>, PersistentCollection<E> {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\bf\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u00022\b\u0012\u0004\u0012\u00028\u00010\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/collections/immutable/PersistentList$Builder;", "E", "", "Lkotlinx/collections/immutable/PersistentCollection$Builder;", "kotlinx-collections-immutable"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface Builder<E> extends List<E>, PersistentCollection.Builder<E>, KMutableList {
        PersistentList build();
    }

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class DefaultImpls {
        public static ImmutableList a(AbstractPersistentList abstractPersistentList, int i2, int i3) {
            return new ImmutableList.SubList(abstractPersistentList, i2, i3);
        }
    }
}
