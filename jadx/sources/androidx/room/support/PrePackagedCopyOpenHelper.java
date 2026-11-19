package androidx.room.support;

import android.content.Context;
import androidx.room.DatabaseConfiguration;
import androidx.room.DelegatingOpenHelper;
import androidx.room.util.DBUtil;
import androidx.room.util.MigrationUtil;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory;
import androidx.sqlite.util.ProcessLock;
import defpackage.az;
import defpackage.md;
import defpackage.r81;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002BC\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\u0001¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/room/support/PrePackagedCopyOpenHelper;", "Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "Landroidx/room/DelegatingOpenHelper;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "", "copyFromAssetPath", "Ljava/io/File;", "copyFromFile", "Ljava/util/concurrent/Callable;", "Ljava/io/InputStream;", "copyFromInputStream", "", "databaseVersion", "delegate", "<init>", "(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;ILandroidx/sqlite/db/SupportSQLiteOpenHelper;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PrePackagedCopyOpenHelper implements SupportSQLiteOpenHelper, DelegatingOpenHelper {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f19725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f19726c;
    public final File d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Callable f19727e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f19728f;
    public final SupportSQLiteOpenHelper g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public DatabaseConfiguration f19729h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f19730i;

    public PrePackagedCopyOpenHelper(Context context, String str, File file, Callable<InputStream> callable, int i2, SupportSQLiteOpenHelper supportSQLiteOpenHelper) {
        context.getClass();
        supportSQLiteOpenHelper.getClass();
        this.f19725b = context;
        this.f19726c = str;
        this.d = file;
        this.f19727e = callable;
        this.f19728f = i2;
        this.g = supportSQLiteOpenHelper;
    }

    public final void c(File file, boolean z) throws IOException {
        ReadableByteChannel readableByteChannelNewChannel;
        Context context = this.f19725b;
        String str = this.f19726c;
        if (str != null) {
            readableByteChannelNewChannel = Channels.newChannel(context.getAssets().open(str));
        } else {
            File file2 = this.d;
            if (file2 != null) {
                readableByteChannelNewChannel = new FileInputStream(file2).getChannel();
            } else {
                Callable callable = this.f19727e;
                if (callable == null) {
                    md.k("copyFromAssetPath, copyFromFile and copyFromInputStream are all null!");
                    return;
                } else {
                    try {
                        readableByteChannelNewChannel = Channels.newChannel((InputStream) callable.call());
                    } catch (Exception e2) {
                        throw new IOException("inputStreamCallable exception on call", e2);
                    }
                }
            }
        }
        ReadableByteChannel readableByteChannel = readableByteChannelNewChannel;
        File fileCreateTempFile = File.createTempFile("room-copy-helper", ".tmp", context.getCacheDir());
        fileCreateTempFile.deleteOnExit();
        FileChannel channel = new FileOutputStream(fileCreateTempFile).getChannel();
        channel.getClass();
        readableByteChannel.getClass();
        try {
            channel.transferFrom(readableByteChannel, 0L, Long.MAX_VALUE);
            channel.force(false);
            readableByteChannel.close();
            channel.close();
            File parentFile = file.getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                az.y(file.getAbsolutePath(), "Failed to create directories for ");
                return;
            }
            DatabaseConfiguration databaseConfiguration = this.f19729h;
            if (databaseConfiguration == null) {
                Intrinsics.h("databaseConfiguration");
                throw null;
            }
            if (databaseConfiguration.q != null) {
                try {
                    final int iF = DBUtil.f(fileCreateTempFile);
                    FrameworkSQLiteOpenHelperFactory frameworkSQLiteOpenHelperFactory = new FrameworkSQLiteOpenHelperFactory();
                    SupportSQLiteOpenHelper.Configuration.f19874f.getClass();
                    SupportSQLiteOpenHelper.Configuration.Builder builder = new SupportSQLiteOpenHelper.Configuration.Builder(context);
                    builder.f19880b = fileCreateTempFile.getAbsolutePath();
                    final int i2 = iF >= 1 ? iF : 1;
                    builder.f19881c = new SupportSQLiteOpenHelper.Callback(i2) { // from class: androidx.room.support.PrePackagedCopyOpenHelper$createFrameworkOpenHelper$configuration$1
                        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
                        public final void c(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                        }

                        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
                        public final void e(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                            int i3 = iF;
                            if (i3 < 1) {
                                frameworkSQLiteDatabase.f19886b.setVersion(i3);
                            }
                        }

                        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
                        public final void f(FrameworkSQLiteDatabase frameworkSQLiteDatabase, int i3, int i4) {
                        }
                    };
                    SupportSQLiteOpenHelper supportSQLiteOpenHelperA = frameworkSQLiteOpenHelperFactory.a(builder.a());
                    try {
                        SupportSQLiteDatabase writableDatabase = z ? ((FrameworkSQLiteOpenHelper) supportSQLiteOpenHelperA).getWritableDatabase() : ((FrameworkSQLiteOpenHelper) supportSQLiteOpenHelperA).h();
                        DatabaseConfiguration databaseConfiguration2 = this.f19729h;
                        if (databaseConfiguration2 == null) {
                            Intrinsics.h("databaseConfiguration");
                            throw null;
                        }
                        databaseConfiguration2.q.getClass();
                        writableDatabase.getClass();
                        ((FrameworkSQLiteOpenHelper) supportSQLiteOpenHelperA).close();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.a(supportSQLiteOpenHelperA, th);
                            throw th2;
                        }
                    }
                } catch (IOException e3) {
                    r81.g("Malformed database file, unable to read version.", e3);
                    return;
                }
            }
            if (fileCreateTempFile.renameTo(file)) {
                return;
            }
            throw new IOException("Failed to move intermediate file (" + fileCreateTempFile.getAbsolutePath() + ") to destination (" + file.getAbsolutePath() + ").");
        } catch (Throwable th3) {
            readableByteChannel.close();
            channel.close();
            throw th3;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.g.close();
        this.f19730i = false;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    /* JADX INFO: renamed from: getDatabaseName */
    public final String getF19888c() {
        return this.g.getF19888c();
    }

    @Override // androidx.room.DelegatingOpenHelper
    /* JADX INFO: renamed from: getDelegate, reason: from getter */
    public final SupportSQLiteOpenHelper getG() {
        return this.g;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public final SupportSQLiteDatabase getWritableDatabase() {
        boolean z = this.f19730i;
        SupportSQLiteOpenHelper supportSQLiteOpenHelper = this.g;
        if (!z) {
            String f19888c = supportSQLiteOpenHelper.getF19888c();
            if (f19888c != null) {
                Context context = this.f19725b;
                File databasePath = context.getDatabasePath(f19888c);
                DatabaseConfiguration databaseConfiguration = this.f19729h;
                if (databaseConfiguration == null) {
                    Intrinsics.h("databaseConfiguration");
                    throw null;
                }
                ProcessLock processLock = new ProcessLock(f19888c, context.getFilesDir(), databaseConfiguration.w);
                try {
                    processLock.a(processLock.f19919a);
                    if (databasePath.exists()) {
                        try {
                            int iF = DBUtil.f(databasePath);
                            int i2 = this.f19728f;
                            if (iF != i2) {
                                DatabaseConfiguration databaseConfiguration2 = this.f19729h;
                                if (databaseConfiguration2 == null) {
                                    Intrinsics.h("databaseConfiguration");
                                    throw null;
                                }
                                if (!MigrationUtil.b(databaseConfiguration2, iF, i2) && context.deleteDatabase(f19888c)) {
                                    c(databasePath, true);
                                }
                            }
                        } catch (IOException unused) {
                        }
                    } else {
                        try {
                            c(databasePath, true);
                        } catch (IOException e2) {
                            throw new RuntimeException("Unable to copy database file.", e2);
                        }
                    }
                    processLock.b();
                } catch (Throwable th) {
                    processLock.b();
                    throw th;
                }
            } else {
                md.k("Required value was null.");
            }
            this.f19730i = true;
        }
        return supportSQLiteOpenHelper.getWritableDatabase();
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public final void setWriteAheadLoggingEnabled(boolean z) {
        this.g.setWriteAheadLoggingEnabled(z);
    }
}
