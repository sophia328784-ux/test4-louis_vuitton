package androidx.room.util;

import android.database.Cursor;
import defpackage.fc;
import defpackage.md;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"room-runtime_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class CursorUtil {
    public static final int a(Cursor cursor, String str) {
        String strH;
        cursor.getClass();
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex < 0) {
            columnIndex = cursor.getColumnIndex("`" + str + '`');
            if (columnIndex < 0) {
                columnIndex = -1;
            }
        }
        if (columnIndex >= 0) {
            return columnIndex;
        }
        try {
            String[] columnNames = cursor.getColumnNames();
            columnNames.getClass();
            strH = ArraysKt.H(columnNames, null, null, null, null, 63);
        } catch (Exception unused) {
            strH = "unknown";
        }
        md.n(fc.i("column '", str, "' does not exist. Available columns: ", strH));
        return 0;
    }
}
