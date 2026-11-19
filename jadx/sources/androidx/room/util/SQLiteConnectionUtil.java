package androidx.room.util;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import kotlin.Metadata;
import kotlin.jdk7.AutoCloseableKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"room-runtime_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class SQLiteConnectionUtil {
    public static final int a(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("SELECT changes()");
        try {
            sQLiteStatementT1.Q1();
            int i2 = (int) sQLiteStatementT1.getLong(0);
            AutoCloseableKt.a(sQLiteStatementT1, null);
            return i2;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                AutoCloseableKt.a(sQLiteStatementT1, th);
                throw th2;
            }
        }
    }
}
