package androidx.room.util;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.TransactionElement;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.sqlite.db.SupportSQLiteQuery;
import defpackage.md;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.io.CloseableKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.internal.ContextScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {}, d2 = {}, k = 4, mv = {2, 0, 0}, xi = 48)
public abstract class DBUtil {
    public static final void a(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        ListBuilder listBuilderV = CollectionsKt.v();
        SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (sQLiteStatementT1.Q1()) {
            try {
                listBuilderV.add(sQLiteStatementT1.m1(0));
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    AutoCloseableKt.a(sQLiteStatementT1, th);
                    throw th2;
                }
            }
        }
        AutoCloseableKt.a(sQLiteStatementT1, null);
        ListIterator listIterator = CollectionsKt.r(listBuilderV).listIterator(0);
        while (listIterator.hasNext()) {
            String str = (String) listIterator.next();
            if (StringsKt.P(str, "room_fts_content_sync_", false)) {
                SQLite.a(sQLiteConnection, "DROP TRIGGER IF EXISTS ".concat(str));
            }
        }
    }

    public static final CoroutineContext b(RoomDatabase roomDatabase, boolean z, ContinuationImpl continuationImpl) {
        ContinuationInterceptor continuationInterceptor;
        if (!roomDatabase.q()) {
            return roomDatabase.j().f75106b;
        }
        TransactionElement transactionElement = (TransactionElement) continuationImpl.getContext().get(TransactionElement.f19514c);
        if (transactionElement != null && (continuationInterceptor = transactionElement.f19515b) != null) {
            ContextScope contextScope = roomDatabase.f19456a;
            if (contextScope == null) {
                Intrinsics.h("coroutineScope");
                throw null;
            }
            CoroutineContext coroutineContextPlus = contextScope.f75106b.plus(continuationInterceptor);
            if (coroutineContextPlus != null) {
                return coroutineContextPlus;
            }
        }
        if (z) {
            CoroutineContext coroutineContext = roomDatabase.f19457b;
            if (coroutineContext != null) {
                return coroutineContext;
            }
            Intrinsics.h("transactionContext");
            throw null;
        }
        ContextScope contextScope2 = roomDatabase.f19456a;
        if (contextScope2 != null) {
            return contextScope2.f75106b;
        }
        Intrinsics.h("coroutineScope");
        throw null;
    }

    public static final Object c(RoomDatabase roomDatabase, boolean z, boolean z2, Function1 function1) {
        roomDatabase.getClass();
        roomDatabase.a();
        roomDatabase.b();
        return RunBlockingUninterruptible_androidKt.a(new DBUtil__DBUtil_androidKt$performBlocking$1(null, roomDatabase, z2, z, function1));
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    public static final Object d(RoomDatabase roomDatabase, boolean z, boolean z2, Function1 function1, ContinuationImpl continuationImpl) throws Throwable {
        DBUtil__DBUtil_androidKt$performSuspending$1 dBUtil__DBUtil_androidKt$performSuspending$1;
        RoomDatabase roomDatabase2;
        boolean z3;
        Function1 function2;
        if (continuationImpl instanceof DBUtil__DBUtil_androidKt$performSuspending$1) {
            dBUtil__DBUtil_androidKt$performSuspending$1 = (DBUtil__DBUtil_androidKt$performSuspending$1) continuationImpl;
            int i2 = dBUtil__DBUtil_androidKt$performSuspending$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dBUtil__DBUtil_androidKt$performSuspending$1.g = i2 - Integer.MIN_VALUE;
            } else {
                dBUtil__DBUtil_androidKt$performSuspending$1 = new DBUtil__DBUtil_androidKt$performSuspending$1(continuationImpl);
            }
        } else {
            dBUtil__DBUtil_androidKt$performSuspending$1 = new DBUtil__DBUtil_androidKt$performSuspending$1(continuationImpl);
        }
        DBUtil__DBUtil_androidKt$performSuspending$1 dBUtil__DBUtil_androidKt$performSuspending$2 = dBUtil__DBUtil_androidKt$performSuspending$1;
        Object obj = dBUtil__DBUtil_androidKt$performSuspending$2.f19753f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dBUtil__DBUtil_androidKt$performSuspending$2.g;
        if (i3 == 0) {
            ResultKt.b(obj);
            if (roomDatabase.q() && roomDatabase.u() && roomDatabase.r()) {
                DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 = new DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1(z2, z, roomDatabase, null, function1);
                dBUtil__DBUtil_androidKt$performSuspending$2.g = 1;
                Object objX = roomDatabase.x(z, dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1, dBUtil__DBUtil_androidKt$performSuspending$2);
                if (objX != coroutineSingletons) {
                    return objX;
                }
            } else {
                dBUtil__DBUtil_androidKt$performSuspending$2.f19750b = roomDatabase;
                dBUtil__DBUtil_androidKt$performSuspending$2.f19751c = function1;
                dBUtil__DBUtil_androidKt$performSuspending$2.d = z;
                dBUtil__DBUtil_androidKt$performSuspending$2.f19752e = z2;
                dBUtil__DBUtil_androidKt$performSuspending$2.g = 2;
                CoroutineContext coroutineContextB = b(roomDatabase, z2, dBUtil__DBUtil_androidKt$performSuspending$2);
                if (coroutineContextB != coroutineSingletons) {
                    roomDatabase2 = roomDatabase;
                    obj = coroutineContextB;
                    z3 = z2;
                    function2 = function1;
                }
            }
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return obj;
        }
        if (i3 != 2) {
            if (i3 == 3) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        boolean z4 = dBUtil__DBUtil_androidKt$performSuspending$2.f19752e;
        z = dBUtil__DBUtil_androidKt$performSuspending$2.d;
        Function1 function3 = dBUtil__DBUtil_androidKt$performSuspending$2.f19751c;
        RoomDatabase roomDatabase3 = dBUtil__DBUtil_androidKt$performSuspending$2.f19750b;
        ResultKt.b(obj);
        z3 = z4;
        function2 = function3;
        roomDatabase2 = roomDatabase3;
        DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1 dBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1 = new DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1(null, roomDatabase2, z, z3, function2);
        dBUtil__DBUtil_androidKt$performSuspending$2.f19750b = null;
        dBUtil__DBUtil_androidKt$performSuspending$2.f19751c = null;
        dBUtil__DBUtil_androidKt$performSuspending$2.g = 3;
        Object objF = BuildersKt.f((CoroutineContext) obj, dBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1, dBUtil__DBUtil_androidKt$performSuspending$2);
        return objF == coroutineSingletons ? coroutineSingletons : objF;
    }

    public static final Cursor e(RoomDatabase roomDatabase, SupportSQLiteQuery supportSQLiteQuery) {
        roomDatabase.getClass();
        supportSQLiteQuery.getClass();
        roomDatabase.a();
        roomDatabase.b();
        return roomDatabase.l().getWritableDatabase().w0(supportSQLiteQuery);
    }

    public static final int f(File file) throws IOException {
        FileChannel channel = new FileInputStream(file).getChannel();
        try {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            channel.tryLock(60L, 4L, true);
            channel.position(60L);
            if (channel.read(byteBufferAllocate) != 4) {
                throw new IOException("Bad database header, unable to read 4 bytes at offset 60");
            }
            byteBufferAllocate.rewind();
            int i2 = byteBufferAllocate.getInt();
            channel.close();
            return i2;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.a(channel, th);
                throw th2;
            }
        }
    }
}
