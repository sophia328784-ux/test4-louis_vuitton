package androidx.sqlite.driver;

import android.database.sqlite.SQLiteDatabase;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/sqlite/driver/AndroidSQLiteConnection;", "Landroidx/sqlite/SQLiteConnection;", "Landroid/database/sqlite/SQLiteDatabase;", "db", "<init>", "(Landroid/database/sqlite/SQLiteDatabase;)V", "sqlite-framework_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AndroidSQLiteConnection implements SQLiteConnection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SQLiteDatabase f19906b;

    public AndroidSQLiteConnection(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.getClass();
        this.f19906b = sQLiteDatabase;
    }

    @Override // androidx.sqlite.SQLiteConnection
    public final SQLiteStatement T1(String str) {
        str.getClass();
        SQLiteDatabase sQLiteDatabase = this.f19906b;
        if (!sQLiteDatabase.isOpen()) {
            SQLite.b(21, "connection is closed");
            throw null;
        }
        AndroidSQLiteStatement.f19907e.getClass();
        String string = StringsKt.a0(str).toString();
        if (string.length() >= 3) {
            String upperCase = string.substring(0, 3).toUpperCase(Locale.ROOT);
            upperCase.getClass();
            int iHashCode = upperCase.hashCode();
            if (iHashCode == 79487 ? upperCase.equals("PRA") : !(iHashCode == 81978 ? !upperCase.equals("SEL") : !(iHashCode == 85954 && upperCase.equals("WIT")))) {
                return new AndroidSQLiteStatement.SelectAndroidSQLiteStatement(sQLiteDatabase, str);
            }
        }
        return new AndroidSQLiteStatement.OtherAndroidSQLiteStatement(sQLiteDatabase, str);
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.f19906b.close();
    }
}
