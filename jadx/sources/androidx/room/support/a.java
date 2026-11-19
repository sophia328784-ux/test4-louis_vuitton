package androidx.room.support;

import androidx.sqlite.db.SupportSQLiteStatement;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f19732b;

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SupportSQLiteStatement supportSQLiteStatement = (SupportSQLiteStatement) obj;
        switch (this.f19732b) {
            case 0:
                int i2 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteStatement.f19717i;
                supportSQLiteStatement.getClass();
                return Integer.valueOf(supportSQLiteStatement.S());
            case 1:
                int i3 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteStatement.f19717i;
                supportSQLiteStatement.getClass();
                supportSQLiteStatement.execute();
                return Unit.f71739a;
            default:
                int i4 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteStatement.f19717i;
                supportSQLiteStatement.getClass();
                return Long.valueOf(supportSQLiteStatement.G0());
        }
    }
}
