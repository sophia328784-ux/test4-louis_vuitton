package androidx.datastore.core;

import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.internal.ContextScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/datastore/core/MultiProcessDataStoreFactory;", "", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class MultiProcessDataStoreFactory {
    public static DataStoreImpl a(Serializer serializer, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, final ContextScope contextScope, Function0 function0) {
        list.getClass();
        FileStorage fileStorage = new FileStorage(serializer, new Function1<File, InterProcessCoordinator>() { // from class: androidx.datastore.core.MultiProcessDataStoreFactory$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                File file = (File) obj;
                file.getClass();
                return new MultiProcessCoordinator(contextScope.f75106b, file);
            }
        }, function0);
        DataMigrationInitializer.f12612a.getClass();
        return new DataStoreImpl(fileStorage, CollectionsKt.O(new DataMigrationInitializer$Companion$getInitializer$1(list, null)), replaceFileCorruptionHandler, contextScope);
    }
}
