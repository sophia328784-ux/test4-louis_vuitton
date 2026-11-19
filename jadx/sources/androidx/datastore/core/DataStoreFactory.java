package androidx.datastore.core;

import androidx.datastore.core.handlers.NoOpCorruptionHandler;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/datastore/core/DataStoreFactory;", "", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class DataStoreFactory {
    public static DataStoreImpl a(FileStorage fileStorage, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, CoroutineScope coroutineScope) {
        list.getClass();
        coroutineScope.getClass();
        CorruptionHandler noOpCorruptionHandler = replaceFileCorruptionHandler;
        if (replaceFileCorruptionHandler == null) {
            noOpCorruptionHandler = new NoOpCorruptionHandler();
        }
        DataMigrationInitializer.f12612a.getClass();
        return new DataStoreImpl(fileStorage, CollectionsKt.O(new DataMigrationInitializer$Companion$getInitializer$1(list, null)), noOpCorruptionHandler, coroutineScope);
    }
}
