package com.dynatrace.agent.storage.db;

import android.database.Cursor;
import android.os.CancellationSignal;
import androidx.room.CoroutinesRoom;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.batch.android.s.b;
import defpackage.n00;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
public final class EventDao_Impl implements EventDao {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RoomDatabase f26896a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EntityInsertionAdapter f26897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EntityDeletionOrUpdateAdapter f26898c;
    public final SharedSQLiteStatement d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SharedSQLiteStatement f26899e;

    /* JADX INFO: renamed from: com.dynatrace.agent.storage.db.EventDao_Impl$1, reason: invalid class name */
    public class AnonymousClass1 extends EntityInsertionAdapter<EventRecord> {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "INSERT OR ABORT INTO `events` (`id`,`event`,`timestamp`,`isPriorityData`,`eventSizeBytes`) VALUES (nullif(?, 0),?,?,?,?)";
        }
    }

    /* JADX INFO: renamed from: com.dynatrace.agent.storage.db.EventDao_Impl$2, reason: invalid class name */
    public class AnonymousClass2 extends EntityDeletionOrUpdateAdapter<EventRecord> {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "DELETE FROM `events` WHERE `id` = ?";
        }
    }

    /* JADX INFO: renamed from: com.dynatrace.agent.storage.db.EventDao_Impl$3, reason: invalid class name */
    public class AnonymousClass3 extends SharedSQLiteStatement {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "DELETE FROM events WHERE ? < ? - timestamp";
        }
    }

    /* JADX INFO: renamed from: com.dynatrace.agent.storage.db.EventDao_Impl$4, reason: invalid class name */
    public class AnonymousClass4 extends SharedSQLiteStatement {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "DELETE FROM events";
        }
    }

    public EventDao_Impl(RoomDatabase roomDatabase) {
        this.f26896a = roomDatabase;
        this.f26897b = new AnonymousClass1(roomDatabase);
        this.f26898c = new AnonymousClass2(roomDatabase);
        this.d = new AnonymousClass3(roomDatabase);
        this.f26899e = new AnonymousClass4(roomDatabase);
    }

    @Override // com.dynatrace.agent.storage.db.EventDao
    public final Object a(final List list, Continuation continuation) {
        Callable<Unit> callable = new Callable<Unit>() { // from class: com.dynatrace.agent.storage.db.EventDao_Impl.6
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                EventDao_Impl.this.f26896a.c();
                try {
                    EntityDeletionOrUpdateAdapter entityDeletionOrUpdateAdapter = EventDao_Impl.this.f26898c;
                    List list2 = list;
                    entityDeletionOrUpdateAdapter.getClass();
                    list2.getClass();
                    SupportSQLiteStatement supportSQLiteStatementA = entityDeletionOrUpdateAdapter.a();
                    try {
                        Iterator it = list2.iterator();
                        while (it.hasNext()) {
                            supportSQLiteStatementA.a(1, ((EventRecord) it.next()).f26922a);
                            supportSQLiteStatementA.S();
                        }
                        entityDeletionOrUpdateAdapter.c(supportSQLiteStatementA);
                        EventDao_Impl.this.f26896a.w();
                        Unit unit = Unit.f71739a;
                        EventDao_Impl.this.f26896a.h();
                        return unit;
                    } catch (Throwable th) {
                        entityDeletionOrUpdateAdapter.c(supportSQLiteStatementA);
                        throw th;
                    }
                } catch (Throwable th2) {
                    EventDao_Impl.this.f26896a.h();
                    throw th2;
                }
            }
        };
        return CoroutinesRoom.f19369a.b(this.f26896a, true, callable, (ContinuationImpl) continuation);
    }

    @Override // com.dynatrace.agent.storage.db.EventDao
    public final Object b(final List list, Continuation continuation) {
        Callable<Unit> callable = new Callable<Unit>() { // from class: com.dynatrace.agent.storage.db.EventDao_Impl.12
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                StringBuilder sbT = n00.t("DELETE FROM events WHERE id IN (");
                StringUtil.a(sbT, list.size());
                sbT.append(")");
                String string = sbT.toString();
                RoomDatabase roomDatabase = EventDao_Impl.this.f26896a;
                roomDatabase.getClass();
                roomDatabase.a();
                roomDatabase.b();
                SupportSQLiteStatement supportSQLiteStatementT0 = roomDatabase.l().getWritableDatabase().T0(string);
                Iterator it = list.iterator();
                int i2 = 1;
                while (it.hasNext()) {
                    supportSQLiteStatementT0.a(i2, ((Long) it.next()).longValue());
                    i2++;
                }
                EventDao_Impl.this.f26896a.c();
                try {
                    supportSQLiteStatementT0.S();
                    EventDao_Impl.this.f26896a.w();
                    return Unit.f71739a;
                } finally {
                    EventDao_Impl.this.f26896a.h();
                }
            }
        };
        return CoroutinesRoom.f19369a.b(this.f26896a, true, callable, (ContinuationImpl) continuation);
    }

    @Override // com.dynatrace.agent.storage.db.EventDao
    public final Object c(final long j2, final long j3, Continuation continuation) {
        Callable<Unit> callable = new Callable<Unit>() { // from class: com.dynatrace.agent.storage.db.EventDao_Impl.7
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                SupportSQLiteStatement supportSQLiteStatementA = EventDao_Impl.this.d.a();
                supportSQLiteStatementA.a(1, j3);
                supportSQLiteStatementA.a(2, j2);
                try {
                    EventDao_Impl.this.f26896a.c();
                    try {
                        supportSQLiteStatementA.S();
                        EventDao_Impl.this.f26896a.w();
                        Unit unit = Unit.f71739a;
                        EventDao_Impl.this.f26896a.h();
                        EventDao_Impl.this.d.c(supportSQLiteStatementA);
                        return unit;
                    } catch (Throwable th) {
                        EventDao_Impl.this.f26896a.h();
                        throw th;
                    }
                } catch (Throwable th2) {
                    EventDao_Impl.this.d.c(supportSQLiteStatementA);
                    throw th2;
                }
            }
        };
        return CoroutinesRoom.f19369a.b(this.f26896a, true, callable, (ContinuationImpl) continuation);
    }

    @Override // com.dynatrace.agent.storage.db.EventDao
    public final Object d(final EventRecord eventRecord, Continuation continuation) {
        Callable<Unit> callable = new Callable<Unit>() { // from class: com.dynatrace.agent.storage.db.EventDao_Impl.5
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                EventDao_Impl.this.f26896a.c();
                try {
                    EntityInsertionAdapter entityInsertionAdapter = EventDao_Impl.this.f26897b;
                    EventRecord eventRecord2 = eventRecord;
                    SupportSQLiteStatement supportSQLiteStatementA = entityInsertionAdapter.a();
                    try {
                        supportSQLiteStatementA.a(1, eventRecord2.f26922a);
                        supportSQLiteStatementA.O0(2, eventRecord2.f26923b);
                        supportSQLiteStatementA.a(3, eventRecord2.f26924c);
                        supportSQLiteStatementA.a(4, eventRecord2.d ? 1L : 0L);
                        supportSQLiteStatementA.a(5, eventRecord2.f26925e);
                        supportSQLiteStatementA.G0();
                        entityInsertionAdapter.c(supportSQLiteStatementA);
                        EventDao_Impl.this.f26896a.w();
                        Unit unit = Unit.f71739a;
                        EventDao_Impl.this.f26896a.h();
                        return unit;
                    } catch (Throwable th) {
                        entityInsertionAdapter.c(supportSQLiteStatementA);
                        throw th;
                    }
                } catch (Throwable th2) {
                    EventDao_Impl.this.f26896a.h();
                    throw th2;
                }
            }
        };
        return CoroutinesRoom.f19369a.b(this.f26896a, true, callable, (ContinuationImpl) continuation);
    }

    @Override // com.dynatrace.agent.storage.db.EventDao
    public final Object e(Continuation continuation) {
        Callable<Unit> callable = new Callable<Unit>() { // from class: com.dynatrace.agent.storage.db.EventDao_Impl.8
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                SupportSQLiteStatement supportSQLiteStatementA = EventDao_Impl.this.f26899e.a();
                try {
                    EventDao_Impl.this.f26896a.c();
                    try {
                        supportSQLiteStatementA.S();
                        EventDao_Impl.this.f26896a.w();
                        Unit unit = Unit.f71739a;
                        EventDao_Impl.this.f26896a.h();
                        EventDao_Impl.this.f26899e.c(supportSQLiteStatementA);
                        return unit;
                    } catch (Throwable th) {
                        EventDao_Impl.this.f26896a.h();
                        throw th;
                    }
                } catch (Throwable th2) {
                    EventDao_Impl.this.f26899e.c(supportSQLiteStatementA);
                    throw th2;
                }
            }
        };
        return CoroutinesRoom.f19369a.b(this.f26896a, true, callable, (ContinuationImpl) continuation);
    }

    @Override // com.dynatrace.agent.storage.db.EventDao
    public final Object f(boolean z, int i2, Continuation continuation) {
        final RoomSQLiteQuery roomSQLiteQueryC = RoomSQLiteQuery.c(2, "SELECT id, timestamp, isPriorityData, eventSizeBytes FROM events WHERE isPriorityData = ? LIMIT ?");
        roomSQLiteQueryC.a(1, z ? 1L : 0L);
        roomSQLiteQueryC.a(2, i2);
        return CoroutinesRoom.f19369a.a(this.f26896a, new CancellationSignal(), new Callable<List<EventMetadata>>() { // from class: com.dynatrace.agent.storage.db.EventDao_Impl.10
            @Override // java.util.concurrent.Callable
            public List<EventMetadata> call() throws Exception {
                Cursor cursorE = DBUtil.e(EventDao_Impl.this.f26896a, roomSQLiteQueryC);
                try {
                    ArrayList arrayList = new ArrayList(cursorE.getCount());
                    while (cursorE.moveToNext()) {
                        arrayList.add(new EventMetadata(cursorE.getLong(0), cursorE.getLong(1), cursorE.getInt(2) != 0, cursorE.getInt(3)));
                    }
                    cursorE.close();
                    roomSQLiteQueryC.release();
                    return arrayList;
                } catch (Throwable th) {
                    cursorE.close();
                    roomSQLiteQueryC.release();
                    throw th;
                }
            }
        }, (ContinuationImpl) continuation);
    }

    @Override // com.dynatrace.agent.storage.db.EventDao
    public final Object g(List list, Continuation continuation) {
        StringBuilder sbT = n00.t("SELECT * FROM events WHERE id IN (");
        int size = list.size();
        StringUtil.a(sbT, size);
        sbT.append(")");
        final RoomSQLiteQuery roomSQLiteQueryC = RoomSQLiteQuery.c(size, sbT.toString());
        Iterator it = list.iterator();
        int i2 = 1;
        while (it.hasNext()) {
            roomSQLiteQueryC.a(i2, ((Long) it.next()).longValue());
            i2++;
        }
        return CoroutinesRoom.f19369a.a(this.f26896a, new CancellationSignal(), new Callable<List<EventRecord>>() { // from class: com.dynatrace.agent.storage.db.EventDao_Impl.11
            @Override // java.util.concurrent.Callable
            public List<EventRecord> call() throws Exception {
                Cursor cursorE = DBUtil.e(EventDao_Impl.this.f26896a, roomSQLiteQueryC);
                try {
                    int iA = CursorUtil.a(cursorE, b.a.f24015b);
                    int iA2 = CursorUtil.a(cursorE, MvelScriptManager.VAR_EVENT);
                    int iA3 = CursorUtil.a(cursorE, "timestamp");
                    int iA4 = CursorUtil.a(cursorE, "isPriorityData");
                    int iA5 = CursorUtil.a(cursorE, "eventSizeBytes");
                    ArrayList arrayList = new ArrayList(cursorE.getCount());
                    while (cursorE.moveToNext()) {
                        arrayList.add(new EventRecord(cursorE.getLong(iA), cursorE.getString(iA2), cursorE.getLong(iA3), cursorE.getInt(iA4) != 0, cursorE.getInt(iA5)));
                    }
                    cursorE.close();
                    roomSQLiteQueryC.release();
                    return arrayList;
                } catch (Throwable th) {
                    cursorE.close();
                    roomSQLiteQueryC.release();
                    throw th;
                }
            }
        }, (ContinuationImpl) continuation);
    }
}
