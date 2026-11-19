package androidx.room;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.room.driver.SupportSQLiteConnection;
import androidx.room.migration.Migration;
import androidx.room.util.MigrationUtil;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import defpackage.ct0;
import defpackage.fc;
import defpackage.md;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0017\u0018\u00002\u00020\u0001:\u0003\f\r\u000eB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nB!\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\u000b¨\u0006\u000f"}, d2 = {"Landroidx/room/RoomOpenHelper;", "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;", "Landroidx/room/DatabaseConfiguration;", "configuration", "Landroidx/room/RoomOpenHelper$Delegate;", "delegate", "", "identityHash", "legacyHash", "<init>", "(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V", "(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;)V", "Delegate", "ValidationResult", "Companion", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class RoomOpenHelper extends SupportSQLiteOpenHelper.Callback {
    public static final Companion g = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public DatabaseConfiguration f19481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f19482c;
    public final Delegate d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f19483e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f19484f;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/room/RoomOpenHelper$Companion;", "", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Deprecated
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b'\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/room/RoomOpenHelper$Delegate;", "", "", "version", "<init>", "(I)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class Delegate {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f19485a;

        public Delegate(int i2) {
            this.f19485a = i2;
        }

        public abstract void a(FrameworkSQLiteDatabase frameworkSQLiteDatabase);

        public abstract void b(FrameworkSQLiteDatabase frameworkSQLiteDatabase);

        public abstract void c();

        public abstract void d(FrameworkSQLiteDatabase frameworkSQLiteDatabase);

        public void e(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
        }

        public void f(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
        }

        public ValidationResult g(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
            throw new UnsupportedOperationException("validateMigration is deprecated");
        }
    }

    @Deprecated
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0017\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/room/RoomOpenHelper$ValidationResult;", "", "", "isValid", "", "expectedFoundMsg", "<init>", "(ZLjava/lang/String;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static class ValidationResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f19486a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f19487b;

        public ValidationResult(boolean z, String str) {
            this.f19486a = z;
            this.f19487b = str;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomOpenHelper(DatabaseConfiguration databaseConfiguration, Delegate delegate, String str, String str2) {
        super(delegate.f19485a);
        databaseConfiguration.getClass();
        delegate.getClass();
        str.getClass();
        str2.getClass();
        this.f19482c = databaseConfiguration.f19386e;
        this.f19481b = databaseConfiguration;
        this.d = delegate;
        this.f19483e = str;
        this.f19484f = str2;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public final void b(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public final void c(FrameworkSQLiteDatabase frameworkSQLiteDatabase) throws IOException {
        g.getClass();
        Cursor cursorW0 = frameworkSQLiteDatabase.w0(new SimpleSQLiteQuery("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'"));
        try {
            boolean z = false;
            if (cursorW0.moveToFirst() && cursorW0.getInt(0) == 0) {
                z = true;
            }
            cursorW0.close();
            Delegate delegate = this.d;
            delegate.a(frameworkSQLiteDatabase);
            if (!z) {
                ValidationResult validationResultG = delegate.g(frameworkSQLiteDatabase);
                if (!validationResultG.f19486a) {
                    ct0.o(validationResultG.f19487b, "Pre-packaged database has an invalid schema: ");
                    return;
                }
            }
            SQLiteDatabase sQLiteDatabase = frameworkSQLiteDatabase.f19886b;
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            String str = this.f19483e;
            str.getClass();
            sQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '" + str + "')");
            delegate.c();
            List list = this.f19482c;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).getClass();
                }
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.a(cursorW0, th);
                throw th2;
            }
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public final void d(FrameworkSQLiteDatabase frameworkSQLiteDatabase, int i2, int i3) throws IOException {
        f(frameworkSQLiteDatabase, i2, i3);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public final void e(FrameworkSQLiteDatabase frameworkSQLiteDatabase) throws IOException {
        g.getClass();
        Cursor cursorW0 = frameworkSQLiteDatabase.w0(new SimpleSQLiteQuery("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'"));
        try {
            boolean z = cursorW0.moveToFirst() && cursorW0.getInt(0) != 0;
            cursorW0.close();
            Delegate delegate = this.d;
            String str = this.f19483e;
            if (z) {
                Cursor cursorW1 = frameworkSQLiteDatabase.w0(new SimpleSQLiteQuery("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
                try {
                    String string = cursorW1.moveToFirst() ? cursorW1.getString(0) : null;
                    cursorW1.close();
                    if (!Intrinsics.c(str, string) && !Intrinsics.c(this.f19484f, string)) {
                        md.k(fc.i("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: ", str, ", found: ", string));
                        return;
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.a(cursorW1, th);
                        throw th2;
                    }
                }
            } else {
                ValidationResult validationResultG = delegate.g(frameworkSQLiteDatabase);
                if (!validationResultG.f19486a) {
                    ct0.o(validationResultG.f19487b, "Pre-packaged database has an invalid schema: ");
                    return;
                }
                delegate.e(frameworkSQLiteDatabase);
                SQLiteDatabase sQLiteDatabase = frameworkSQLiteDatabase.f19886b;
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                str.getClass();
                sQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '" + str + "')");
            }
            delegate.d(frameworkSQLiteDatabase);
            List list = this.f19482c;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).a(frameworkSQLiteDatabase);
                }
            }
            this.f19481b = null;
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                CloseableKt.a(cursorW0, th3);
                throw th4;
            }
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public final void f(FrameworkSQLiteDatabase frameworkSQLiteDatabase, int i2, int i3) throws IOException {
        SQLiteDatabase sQLiteDatabase = frameworkSQLiteDatabase.f19886b;
        DatabaseConfiguration databaseConfiguration = this.f19481b;
        Delegate delegate = this.d;
        if (databaseConfiguration != null) {
            RoomDatabase.MigrationContainer migrationContainer = databaseConfiguration.d;
            migrationContainer.getClass();
            List listA = MigrationUtil.a(migrationContainer, i2, i3);
            if (listA != null) {
                delegate.f(frameworkSQLiteDatabase);
                Iterator it = listA.iterator();
                while (it.hasNext()) {
                    ((Migration) it.next()).a(new SupportSQLiteConnection(frameworkSQLiteDatabase));
                }
                ValidationResult validationResultG = delegate.g(frameworkSQLiteDatabase);
                if (!validationResultG.f19486a) {
                    ct0.o(validationResultG.f19487b, "Migration didn't properly handle: ");
                    return;
                }
                delegate.e(frameworkSQLiteDatabase);
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                String str = this.f19483e;
                str.getClass();
                sQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '" + str + "')");
                return;
            }
        }
        DatabaseConfiguration databaseConfiguration2 = this.f19481b;
        if (databaseConfiguration2 == null || MigrationUtil.b(databaseConfiguration2, i2, i3)) {
            md.k(fc.f(i2, i3, "A migration from ", " to ", " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."));
            return;
        }
        if (databaseConfiguration2.t) {
            g.getClass();
            Cursor cursorW0 = frameworkSQLiteDatabase.w0(new SimpleSQLiteQuery("SELECT name, type FROM sqlite_master WHERE type = 'table' OR type = 'view'"));
            try {
                ListBuilder listBuilderV = CollectionsKt.v();
                while (cursorW0.moveToNext()) {
                    String string = cursorW0.getString(0);
                    string.getClass();
                    if (!StringsKt.P(string, "sqlite_", false) && !string.equals("android_metadata")) {
                        listBuilderV.add(new Pair(string, Boolean.valueOf(Intrinsics.c(cursorW0.getString(1), "view"))));
                    }
                }
                ListBuilder listBuilderR = CollectionsKt.r(listBuilderV);
                cursorW0.close();
                ListIterator listIterator = listBuilderR.listIterator(0);
                while (listIterator.hasNext()) {
                    Pair pair = (Pair) listIterator.next();
                    String str2 = (String) pair.f71705b;
                    if (((Boolean) pair.f71706c).booleanValue()) {
                        sQLiteDatabase.execSQL("DROP VIEW IF EXISTS " + str2);
                    } else {
                        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str2);
                    }
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.a(cursorW0, th);
                    throw th2;
                }
            }
        } else {
            delegate.b(frameworkSQLiteDatabase);
        }
        List list = this.f19482c;
        if (list != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ((RoomDatabase.Callback) it2.next()).getClass();
            }
        }
        delegate.a(frameworkSQLiteDatabase);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RoomOpenHelper(DatabaseConfiguration databaseConfiguration, Delegate delegate, String str) {
        this(databaseConfiguration, delegate, "", str);
        databaseConfiguration.getClass();
        delegate.getClass();
        str.getClass();
    }
}
