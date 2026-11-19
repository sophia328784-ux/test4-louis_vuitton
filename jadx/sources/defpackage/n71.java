package defpackage;

import androidx.room.util.SQLiteConnectionUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.impl.model.WorkSpecDao_Impl;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n71 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f76462c;
    public final /* synthetic */ String d;

    public /* synthetic */ n71(int i2, String str, long j2) {
        this.f76461b = i2;
        this.f76462c = j2;
        this.d = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws Exception {
        int i2 = this.f76461b;
        String str = this.d;
        long j2 = this.f76462c;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        WorkSpecDao_Impl.Companion companion = WorkSpecDao_Impl.f20530c;
        switch (i2) {
            case 0:
                sQLiteConnection.getClass();
                SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("UPDATE workspec SET last_enqueue_time=? WHERE id=?");
                try {
                    sQLiteStatementT1.a(1, j2);
                    sQLiteStatementT1.A(2, str);
                    sQLiteStatementT1.Q1();
                    return Unit.f71739a;
                } finally {
                    sQLiteStatementT1.close();
                }
            default:
                sQLiteConnection.getClass();
                SQLiteStatement sQLiteStatementT2 = sQLiteConnection.T1("UPDATE workspec SET schedule_requested_at=? WHERE id=?");
                try {
                    sQLiteStatementT2.a(1, j2);
                    sQLiteStatementT2.A(2, str);
                    sQLiteStatementT2.Q1();
                    return Integer.valueOf(SQLiteConnectionUtil.a(sQLiteConnection));
                } finally {
                    sQLiteStatementT2.close();
                }
        }
    }
}
