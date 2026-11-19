package androidx.datastore;

import android.content.Context;
import java.io.File;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"datastore_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public abstract class DataStoreFile {
    public static final File a(Context context, String str) {
        context.getClass();
        return new File(context.getApplicationContext().getFilesDir(), "datastore/".concat(str));
    }
}
