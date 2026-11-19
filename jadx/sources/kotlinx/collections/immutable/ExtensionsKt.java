package kotlinx.collections.immutable;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlinx.collections.immutable.implementations.immutableList.PersistentVectorBuilder;
import kotlinx.collections.immutable.implementations.immutableList.SmallPersistentVector;
import kotlinx.collections.immutable.implementations.immutableList.UtilsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-collections-immutable"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class ExtensionsKt {
    public static final ImmutableList a(Iterable iterable) {
        iterable.getClass();
        ImmutableList immutableList = iterable instanceof ImmutableList ? (ImmutableList) iterable : null;
        if (immutableList == null) {
            immutableList = iterable instanceof PersistentList ? (PersistentList) iterable : null;
            if (immutableList == null) {
                PersistentList.Builder builder = iterable instanceof PersistentList.Builder ? (PersistentList.Builder) iterable : null;
                PersistentList persistentListBuild = builder != null ? builder.build() : null;
                if (persistentListBuild != null) {
                    return persistentListBuild;
                }
                SmallPersistentVector smallPersistentVectorB = UtilsKt.b();
                smallPersistentVectorB.getClass();
                if (!(iterable instanceof Collection)) {
                    PersistentVectorBuilder persistentVectorBuilderH = smallPersistentVectorB.h();
                    CollectionsKt.j(persistentVectorBuilderH, iterable);
                    return persistentVectorBuilderH.build();
                }
                Collection collection = (Collection) iterable;
                Object[] objArr = smallPersistentVectorB.f74621c;
                if (collection.size() + objArr.length > 32) {
                    PersistentVectorBuilder persistentVectorBuilderH2 = smallPersistentVectorB.h();
                    persistentVectorBuilderH2.addAll(collection);
                    return persistentVectorBuilderH2.build();
                }
                Object[] objArrCopyOf = Arrays.copyOf(objArr, collection.size() + objArr.length);
                int length = objArr.length;
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    objArrCopyOf[length] = it.next();
                    length++;
                }
                return new SmallPersistentVector(objArrCopyOf);
            }
        }
        return immutableList;
    }
}
