package androidx.room.util;

import androidx.sqlite.SQLiteStatement;
import defpackage.no0;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {}, d2 = {}, k = 4, mv = {2, 0, 0}, xi = 48)
public abstract class SQLiteStatementUtil {
    public static final int a(SQLiteStatement sQLiteStatement, String str) {
        sQLiteStatement.getClass();
        int iB = b(sQLiteStatement, str);
        if (iB >= 0) {
            return iB;
        }
        int iB2 = b(sQLiteStatement, "`" + str + '`');
        if (iB2 >= 0) {
            return iB2;
        }
        return -1;
    }

    public static final int b(SQLiteStatement sQLiteStatement, String str) {
        sQLiteStatement.getClass();
        if (sQLiteStatement instanceof MappedColumnsSQLiteStatementWrapper) {
            Integer num = (Integer) ((MappedColumnsSQLiteStatementWrapper) sQLiteStatement).d.get(str);
            if (num != null) {
                return num.intValue();
            }
            return -1;
        }
        int columnCount = sQLiteStatement.getColumnCount();
        for (int i2 = 0; i2 < columnCount; i2++) {
            if (str.equals(sQLiteStatement.getColumnName(i2))) {
                return i2;
            }
        }
        return -1;
    }

    public static final int c(SQLiteStatement sQLiteStatement, String str) {
        sQLiteStatement.getClass();
        int iA = a(sQLiteStatement, str);
        if (iA >= 0) {
            return iA;
        }
        int columnCount = sQLiteStatement.getColumnCount();
        ArrayList arrayList = new ArrayList(columnCount);
        for (int i2 = 0; i2 < columnCount; i2++) {
            arrayList.add(sQLiteStatement.getColumnName(i2));
        }
        no0.r("Column '", str, "' does not exist. Available columns: [", CollectionsKt.K(arrayList, null, null, null, null, 63), 93);
        return 0;
    }
}
