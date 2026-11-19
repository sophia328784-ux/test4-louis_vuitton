package androidx.sqlite.db;

import android.content.ContentValues;
import android.database.Cursor;
import java.io.Closeable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteDatabase;", "Ljava/io/Closeable;", "sqlite_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface SupportSQLiteDatabase extends Closeable {
    boolean I1();

    void P();

    void R(String str);

    int R1(ContentValues contentValues, Object[] objArr);

    SupportSQLiteStatement T0(String str);

    default void W0() {
        P();
    }

    void a0();

    void b0();

    void d1(Object[] objArr);

    boolean isOpen();

    void t0();

    Cursor w0(SupportSQLiteQuery supportSQLiteQuery);

    boolean z1();
}
