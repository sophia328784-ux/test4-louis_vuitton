package androidx.datastore.preferences.core;

import androidx.datastore.core.DataStoreFactory;
import androidx.datastore.core.FileStorage;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import defpackage.wp;
import io.jsonwebtoken.JwtParser;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;", "", "datastore-preferences-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class PreferenceDataStoreFactory {
    public static PreferenceDataStore a(ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, CoroutineScope coroutineScope, final Function0 function0) {
        list.getClass();
        coroutineScope.getClass();
        return new PreferenceDataStore(new PreferenceDataStore(DataStoreFactory.a(new FileStorage(PreferencesFileSerializer.f12888a, null, new Function0<File>() { // from class: androidx.datastore.preferences.core.PreferenceDataStoreFactory$create$delegate$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                File file = (File) function0.mo47invoke();
                file.getClass();
                String name = file.getName();
                name.getClass();
                if (!StringsKt.R(JwtParser.SEPARATOR_CHAR, name, "").equals("preferences_pb")) {
                    wp.e("File extension for file: ", file, " does not match required extension for Preferences file: preferences_pb");
                    return null;
                }
                File absoluteFile = file.getAbsoluteFile();
                absoluteFile.getClass();
                return absoluteFile;
            }
        }, 2, null), replaceFileCorruptionHandler, list, coroutineScope)));
    }
}
