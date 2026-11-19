package androidx.sqlite.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import defpackage.md;
import defpackage.o60;
import java.io.Closeable;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0001"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "Ljava/io/Closeable;", "Callback", "Configuration", "Factory", "sqlite_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface SupportSQLiteOpenHelper extends Closeable {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;", "", "", "version", "<init>", "(I)V", "Companion", "sqlite_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f19873a;

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$Companion;", "", "", "TAG", "Ljava/lang/String;", "sqlite_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            new Companion(null);
        }

        public Callback(int i2) {
            this.f19873a = i2;
        }

        public static void a(String str) {
            if (StringsKt.s(str, ":memory:", true)) {
                return;
            }
            int length = str.length() - 1;
            int i2 = 0;
            boolean z = false;
            while (i2 <= length) {
                boolean z2 = Intrinsics.d(str.charAt(!z ? i2 : length), 32) <= 0;
                if (z) {
                    if (!z2) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z2) {
                    i2++;
                } else {
                    z = true;
                }
            }
            if (str.subSequence(i2, length + 1).toString().length() == 0) {
                return;
            }
            try {
                SQLiteDatabase.deleteDatabase(new File(str));
            } catch (Exception unused) {
            }
        }

        public void b(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
        }

        public abstract void c(FrameworkSQLiteDatabase frameworkSQLiteDatabase);

        public void d(FrameworkSQLiteDatabase frameworkSQLiteDatabase, int i2, int i3) {
            throw new SQLiteException(o60.h(i2, i3, "Can't downgrade database from version ", " to "));
        }

        public void e(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
        }

        public abstract void f(FrameworkSQLiteDatabase frameworkSQLiteDatabase, int i2, int i3);
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;", "", "sqlite_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface Factory {
        SupportSQLiteOpenHelper a(Configuration configuration);
    }

    String getDatabaseName();

    SupportSQLiteDatabase getWritableDatabase();

    void setWriteAheadLoggingEnabled(boolean z);

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0002\r\u000eB5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "", "name", "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;", "callback", "", "useNoBackupDirectory", "allowDataLossOnRecovery", "<init>", "(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;ZZ)V", "Builder", "Companion", "sqlite_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Configuration {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Companion f19874f = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f19875a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f19876b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Callback f19877c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f19878e;

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "sqlite_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Context f19879a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f19880b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public Callback f19881c;
            public boolean d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f19882e;

            public Builder(Context context) {
                context.getClass();
                this.f19879a = context;
            }

            public final Configuration a() {
                String str;
                Callback callback = this.f19881c;
                if (callback == null) {
                    md.n("Must set a callback to create the configuration.");
                    return null;
                }
                if (!this.d || ((str = this.f19880b) != null && str.length() != 0)) {
                    return new Configuration(this.f19879a, this.f19880b, callback, this.d, this.f19882e);
                }
                md.n("Must set a non-null database name to a configuration that uses the no backup directory.");
                return null;
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Companion;", "", "sqlite_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        public Configuration(Context context, String str, Callback callback, boolean z, boolean z2) {
            context.getClass();
            callback.getClass();
            this.f19875a = context;
            this.f19876b = str;
            this.f19877c = callback;
            this.d = z;
            this.f19878e = z2;
        }

        public /* synthetic */ Configuration(Context context, String str, Callback callback, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(context, str, callback, (i2 & 8) != 0 ? false : z, (i2 & 16) != 0 ? false : z2);
        }
    }
}
