package androidx.room.util;

import androidx.sqlite.SQLiteStatement;
import defpackage.md;
import kotlin.Metadata;
import kotlin.collections.builders.MapBuilder;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;", "Landroidx/sqlite/SQLiteStatement;", "delegate", "", "", "columnNames", "", "mapping", "<init>", "(Landroidx/sqlite/SQLiteStatement;[Ljava/lang/String;[I)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MappedColumnsSQLiteStatementWrapper implements SQLiteStatement {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SQLiteStatement f19764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f19765c;
    public final MapBuilder d;

    public MappedColumnsSQLiteStatementWrapper(SQLiteStatement sQLiteStatement, String[] strArr, int[] iArr) {
        sQLiteStatement.getClass();
        strArr.getClass();
        iArr.getClass();
        this.f19764b = sQLiteStatement;
        this.f19765c = iArr;
        if (strArr.length != iArr.length) {
            md.n("Expected columnNames.size == mapping.size");
            throw null;
        }
        MapBuilder mapBuilder = new MapBuilder();
        int length = strArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            mapBuilder.put(strArr[i2], Integer.valueOf(this.f19765c[i3]));
            i2++;
            i3++;
        }
        int columnCount = this.f19764b.getColumnCount();
        for (int i4 = 0; i4 < columnCount; i4++) {
            if (!mapBuilder.containsKey(this.f19764b.getColumnName(i4))) {
                mapBuilder.put(this.f19764b.getColumnName(i4), Integer.valueOf(i4));
            }
        }
        this.d = mapBuilder.c();
    }

    @Override // androidx.sqlite.SQLiteStatement
    public final void A(int i2, String str) {
        str.getClass();
        this.f19764b.A(i2, str);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public final boolean Q1() {
        return this.f19764b.Q1();
    }

    @Override // androidx.sqlite.SQLiteStatement
    public final void a(int i2, long j2) {
        this.f19764b.a(i2, j2);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public final void b(int i2, byte[] bArr) {
        bArr.getClass();
        this.f19764b.b(i2, bArr);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public final boolean c1() {
        return this.f19764b.c1();
    }

    @Override // java.lang.AutoCloseable
    public final void close() throws Exception {
        this.f19764b.close();
    }

    @Override // androidx.sqlite.SQLiteStatement
    public final byte[] getBlob(int i2) {
        return this.f19764b.getBlob(i2);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public final int getColumnCount() {
        return this.f19764b.getColumnCount();
    }

    @Override // androidx.sqlite.SQLiteStatement
    public final String getColumnName(int i2) {
        return this.f19764b.getColumnName(i2);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public final long getLong(int i2) {
        return this.f19764b.getLong(i2);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public final boolean isNull(int i2) {
        return this.f19764b.isNull(i2);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public final void l(int i2) {
        this.f19764b.l(i2);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public final String m1(int i2) {
        return this.f19764b.m1(i2);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public final void reset() {
        this.f19764b.reset();
    }
}
