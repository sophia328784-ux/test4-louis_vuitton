package androidx.work.impl;

import android.content.Context;
import androidx.work.Logger;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/work/impl/WorkDatabasePathHelper;", "", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class WorkDatabasePathHelper {
    public static final void a(Context context) {
        context.getClass();
        File databasePath = context.getDatabasePath("androidx.work.workdb");
        databasePath.getClass();
        if (databasePath.exists()) {
            Logger loggerA = Logger.a();
            String[] strArr = WorkDatabasePathHelperKt.f20338a;
            loggerA.getClass();
            File databasePath2 = context.getDatabasePath("androidx.work.workdb");
            databasePath2.getClass();
            File noBackupFilesDir = context.getNoBackupFilesDir();
            noBackupFilesDir.getClass();
            String[] strArr2 = WorkDatabasePathHelperKt.f20338a;
            int iG = MapsKt.g(strArr2.length);
            if (iG < 16) {
                iG = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(iG);
            for (String str : strArr2) {
                Pair pair = new Pair(new File(databasePath2.getPath() + str), new File(noBackupFilesDir.getPath() + str));
                linkedHashMap.put(pair.f71705b, pair.f71706c);
            }
            for (Map.Entry entry : MapsKt.l(linkedHashMap, new Pair(databasePath2, noBackupFilesDir)).entrySet()) {
                File file = (File) entry.getKey();
                File file2 = (File) entry.getValue();
                if (file.exists()) {
                    if (file2.exists()) {
                        Logger loggerA2 = Logger.a();
                        String[] strArr3 = WorkDatabasePathHelperKt.f20338a;
                        file2.toString();
                        loggerA2.getClass();
                    }
                    if (file.renameTo(file2)) {
                        file.toString();
                        file2.toString();
                    } else {
                        file.toString();
                        file2.toString();
                    }
                    Logger loggerA3 = Logger.a();
                    String[] strArr4 = WorkDatabasePathHelperKt.f20338a;
                    loggerA3.getClass();
                }
            }
        }
    }
}
