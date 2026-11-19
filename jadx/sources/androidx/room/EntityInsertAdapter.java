package androidx.room;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import kotlin.Metadata;
import kotlin.jdk7.AutoCloseableKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b'\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/room/EntityInsertAdapter;", "T", "", "<init>", "()V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class EntityInsertAdapter<T> {
    public abstract void a(SQLiteStatement sQLiteStatement, Object obj);

    public abstract String b();

    public final void c(SQLiteConnection sQLiteConnection, Object obj) {
        sQLiteConnection.getClass();
        if (obj == null) {
            return;
        }
        SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1(b());
        try {
            a(sQLiteStatementT1, obj);
            sQLiteStatementT1.Q1();
            AutoCloseableKt.a(sQLiteStatementT1, null);
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
