package androidx.datastore.preferences;

import android.content.Context;
import androidx.datastore.DataStoreFile;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.core.PreferenceDataStore;
import androidx.datastore.preferences.core.PreferenceDataStoreFactory;
import androidx.datastore.preferences.core.Preferences;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001BI\b\u0000\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0007\u0012\u001e\u0010\f\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u000b0\n0\t\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;", "Lkotlin/properties/ReadOnlyProperty;", "Landroid/content/Context;", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/preferences/core/Preferences;", "", "name", "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;", "corruptionHandler", "Lkotlin/Function1;", "", "Landroidx/datastore/core/DataMigration;", "produceMigrations", "Lkotlinx/coroutines/CoroutineScope;", "scope", "<init>", "(Ljava/lang/String;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;)V", "datastore-preferences_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PreferenceDataStoreSingletonDelegate implements ReadOnlyProperty<Context, DataStore<Preferences>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f12863a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ReplaceFileCorruptionHandler f12864b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f12865c;
    public final CoroutineScope d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f12866e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile PreferenceDataStore f12867f;

    public PreferenceDataStoreSingletonDelegate(String str, ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, Function1<? super Context, ? extends List<? extends DataMigration<Preferences>>> function1, CoroutineScope coroutineScope) {
        str.getClass();
        function1.getClass();
        coroutineScope.getClass();
        this.f12863a = str;
        this.f12864b = replaceFileCorruptionHandler;
        this.f12865c = function1;
        this.d = coroutineScope;
        this.f12866e = new Object();
    }

    @Override // kotlin.properties.ReadOnlyProperty
    public final Object b(Object obj, KProperty kProperty) {
        PreferenceDataStore preferenceDataStore;
        Context context = (Context) obj;
        context.getClass();
        kProperty.getClass();
        PreferenceDataStore preferenceDataStore2 = this.f12867f;
        if (preferenceDataStore2 != null) {
            return preferenceDataStore2;
        }
        synchronized (this.f12866e) {
            try {
                if (this.f12867f == null) {
                    final Context applicationContext = context.getApplicationContext();
                    ReplaceFileCorruptionHandler replaceFileCorruptionHandler = this.f12864b;
                    Function1 function1 = this.f12865c;
                    applicationContext.getClass();
                    this.f12867f = PreferenceDataStoreFactory.a(replaceFileCorruptionHandler, (List) function1.invoke(applicationContext), this.d, new Function0<File>() { // from class: androidx.datastore.preferences.PreferenceDataStoreSingletonDelegate$getValue$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            Context context2 = applicationContext;
                            context2.getClass();
                            String str = this.f12863a;
                            str.getClass();
                            return DataStoreFile.a(context2, str.concat(".preferences_pb"));
                        }
                    });
                }
                preferenceDataStore = this.f12867f;
                preferenceDataStore.getClass();
            } catch (Throwable th) {
                throw th;
            }
        }
        return preferenceDataStore;
    }
}
