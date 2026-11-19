package androidx.room.driver;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.db.SupportSQLiteDatabase;
import java.io.IOException;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/room/driver/SupportSQLiteConnection;", "Landroidx/sqlite/SQLiteConnection;", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "db", "<init>", "(Landroidx/sqlite/db/SupportSQLiteDatabase;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SupportSQLiteConnection implements SQLiteConnection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SupportSQLiteDatabase f19679b;

    public SupportSQLiteConnection(SupportSQLiteDatabase supportSQLiteDatabase) {
        supportSQLiteDatabase.getClass();
        this.f19679b = supportSQLiteDatabase;
    }

    @Override // androidx.sqlite.SQLiteConnection
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final SupportSQLiteStatement T1(String str) {
        str.getClass();
        SupportSQLiteStatement.f19689e.getClass();
        SupportSQLiteDatabase supportSQLiteDatabase = this.f19679b;
        supportSQLiteDatabase.getClass();
        str.getClass();
        String string = StringsKt.a0(str).toString();
        if (string.length() >= 3) {
            String upperCase = string.substring(0, 3).toUpperCase(Locale.ROOT);
            upperCase.getClass();
            int iHashCode = upperCase.hashCode();
            if (iHashCode == 79487 ? upperCase.equals("PRA") : !(iHashCode == 81978 ? !upperCase.equals("SEL") : !(iHashCode == 85954 && upperCase.equals("WIT")))) {
                return new SupportSQLiteStatement.SupportAndroidSQLiteStatement(supportSQLiteDatabase, str);
            }
        }
        return new SupportSQLiteStatement.SupportOtherAndroidSQLiteStatement(supportSQLiteDatabase, str);
    }

    @Override // java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f19679b.close();
    }
}
