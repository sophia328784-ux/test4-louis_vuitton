package androidx.sqlite.db.framework;

import android.database.sqlite.SQLiteProgram;
import androidx.sqlite.db.SupportSQLiteProgram;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;", "Landroidx/sqlite/db/SupportSQLiteProgram;", "Landroid/database/sqlite/SQLiteProgram;", "delegate", "<init>", "(Landroid/database/sqlite/SQLiteProgram;)V", "sqlite-framework_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class FrameworkSQLiteProgram implements SupportSQLiteProgram {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SQLiteProgram f19902b;

    public FrameworkSQLiteProgram(SQLiteProgram sQLiteProgram) {
        sQLiteProgram.getClass();
        this.f19902b = sQLiteProgram;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void O0(int i2, String str) {
        str.getClass();
        this.f19902b.bindString(i2, str);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void a(int i2, long j2) {
        this.f19902b.bindLong(i2, j2);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void b(int i2, byte[] bArr) {
        bArr.getClass();
        this.f19902b.bindBlob(i2, bArr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f19902b.close();
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void l(int i2) {
        this.f19902b.bindNull(i2);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void t1(double d, int i2) {
        this.f19902b.bindDouble(i2, d);
    }
}
