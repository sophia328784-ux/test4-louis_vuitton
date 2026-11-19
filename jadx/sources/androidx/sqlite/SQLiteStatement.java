package androidx.sqlite;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00060\u0001j\u0002`\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/sqlite/SQLiteStatement;", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "sqlite_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface SQLiteStatement extends AutoCloseable {
    void A(int i2, String str);

    boolean Q1();

    void a(int i2, long j2);

    void b(int i2, byte[] bArr);

    default boolean c1() {
        return getLong(0) != 0;
    }

    byte[] getBlob(int i2);

    int getColumnCount();

    String getColumnName(int i2);

    long getLong(int i2);

    boolean isNull(int i2);

    void l(int i2);

    String m1(int i2);

    void reset();
}
