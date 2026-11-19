package defpackage;

import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import androidx.work.impl.model.WorkSpecDao_Impl;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class rf0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79518b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f79519c;
    public final /* synthetic */ int d;

    public /* synthetic */ rf0(int i2, String str, int i3) {
        this.f79518b = i3;
        this.d = i2;
        this.f79519c = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws Exception {
        SystemIdInfo systemIdInfo;
        int i2 = this.f79518b;
        String str = this.f79519c;
        int i3 = this.d;
        switch (i2) {
            case 0:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.g(semanticsPropertyReceiver, new CollectionItemInfo(i3, 1, 0, 1));
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, str);
                return Unit.f71739a;
            case 1:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                SystemIdInfoDao_Impl.Companion companion = SystemIdInfoDao_Impl.f20496c;
                sQLiteConnection.getClass();
                SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?");
                try {
                    sQLiteStatementT1.A(1, str);
                    sQLiteStatementT1.a(2, i3);
                    int iC = SQLiteStatementUtil.c(sQLiteStatementT1, "work_spec_id");
                    int iC2 = SQLiteStatementUtil.c(sQLiteStatementT1, "generation");
                    int iC3 = SQLiteStatementUtil.c(sQLiteStatementT1, "system_id");
                    if (sQLiteStatementT1.Q1()) {
                        systemIdInfo = new SystemIdInfo(sQLiteStatementT1.m1(iC), (int) sQLiteStatementT1.getLong(iC2), (int) sQLiteStatementT1.getLong(iC3));
                        break;
                    } else {
                        systemIdInfo = null;
                    }
                    return systemIdInfo;
                } finally {
                    sQLiteStatementT1.close();
                }
            case 2:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion2 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection2.getClass();
                SQLiteStatement sQLiteStatementT2 = sQLiteConnection2.T1("UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)");
                try {
                    sQLiteStatementT2.A(1, str);
                    sQLiteStatementT2.a(2, i3);
                    sQLiteStatementT2.Q1();
                    return Unit.f71739a;
                } finally {
                    sQLiteStatementT2.close();
                }
            default:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion3 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection3.getClass();
                SQLiteStatement sQLiteStatementT3 = sQLiteConnection3.T1("UPDATE workspec SET stop_reason=? WHERE id=?");
                try {
                    sQLiteStatementT3.a(1, i3);
                    sQLiteStatementT3.A(2, str);
                    sQLiteStatementT3.Q1();
                    return Unit.f71739a;
                } finally {
                    sQLiteStatementT3.close();
                }
        }
    }

    public /* synthetic */ rf0(String str, int i2, int i3) {
        this.f79518b = i3;
        this.f79519c = str;
        this.d = i2;
    }
}
