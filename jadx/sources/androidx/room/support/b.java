package androidx.room.support;

import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteStatement;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteStatement f19733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f19734c;

    public /* synthetic */ b(AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteStatement autoClosingSupportSQLiteStatement, Function1 function1) {
        this.f19733b = autoClosingSupportSQLiteStatement;
        this.f19734c = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SupportSQLiteDatabase supportSQLiteDatabase = (SupportSQLiteDatabase) obj;
        int i2 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteStatement.f19717i;
        supportSQLiteDatabase.getClass();
        AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteStatement autoClosingSupportSQLiteStatement = this.f19733b;
        SupportSQLiteStatement supportSQLiteStatementT0 = supportSQLiteDatabase.T0(autoClosingSupportSQLiteStatement.f19718b);
        int length = autoClosingSupportSQLiteStatement.d.length;
        for (int i3 = 1; i3 < length; i3++) {
            int i4 = autoClosingSupportSQLiteStatement.d[i3];
            if (i4 == 1) {
                supportSQLiteStatementT0.a(i3, autoClosingSupportSQLiteStatement.f19720e[i3]);
            } else if (i4 == 2) {
                supportSQLiteStatementT0.t1(autoClosingSupportSQLiteStatement.f19721f[i3], i3);
            } else if (i4 == 3) {
                String str = autoClosingSupportSQLiteStatement.g[i3];
                str.getClass();
                supportSQLiteStatementT0.O0(i3, str);
            } else if (i4 == 4) {
                byte[] bArr = autoClosingSupportSQLiteStatement.f19722h[i3];
                bArr.getClass();
                supportSQLiteStatementT0.b(i3, bArr);
            } else if (i4 == 5) {
                supportSQLiteStatementT0.l(i3);
            }
        }
        return this.f19734c.invoke(supportSQLiteStatementT0);
    }
}
