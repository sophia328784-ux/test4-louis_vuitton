package defpackage;

import androidx.room.util.SQLiteConnectionUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkNameDao_Impl;
import androidx.work.impl.model.WorkProgressDao_Impl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTagDao_Impl;
import androidx.work.impl.model.WorkTypeConverters;
import com.batch.android.s.b;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistItemUiModel;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class k71 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f71584c;

    public /* synthetic */ k71(String str, int i2) {
        this.f71583b = i2;
        this.f71584c = str;
    }

    /* JADX WARN: Code duplicated, block: B:76:0x015e  */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws Exception {
        WorkSpec workSpec;
        WorkInfo.State stateE;
        int i2 = this.f71583b;
        String str = this.f71584c;
        switch (i2) {
            case 0:
                String str2 = ((WishlistItemUiModel) obj).f65740b;
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                return Boolean.valueOf(Intrinsics.c(str2, str));
            case 1:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                WorkNameDao_Impl.Companion companion2 = WorkNameDao_Impl.f20503c;
                sQLiteConnection.getClass();
                SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("SELECT name FROM workname WHERE work_spec_id=?");
                try {
                    sQLiteStatementT1.A(1, str);
                    ArrayList arrayList = new ArrayList();
                    while (sQLiteStatementT1.Q1()) {
                        arrayList.add(sQLiteStatementT1.m1(0));
                    }
                    sQLiteStatementT1.close();
                    return arrayList;
                } catch (Throwable th) {
                    sQLiteStatementT1.close();
                    throw th;
                }
            case 2:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                WorkProgressDao_Impl.Companion companion3 = WorkProgressDao_Impl.f20508b;
                sQLiteConnection2.getClass();
                SQLiteStatement sQLiteStatementT2 = sQLiteConnection2.T1("DELETE from WorkProgress where work_spec_id=?");
                try {
                    sQLiteStatementT2.A(1, str);
                    sQLiteStatementT2.Q1();
                    return Unit.f71739a;
                } finally {
                    sQLiteStatementT2.close();
                }
            case 3:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion4 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection3.getClass();
                SQLiteStatement sQLiteStatementT3 = sQLiteConnection3.T1("SELECT * FROM workspec WHERE id=?");
                try {
                    sQLiteStatementT3.A(1, str);
                    int iC = SQLiteStatementUtil.c(sQLiteStatementT3, b.a.f24015b);
                    int iC2 = SQLiteStatementUtil.c(sQLiteStatementT3, "state");
                    int iC3 = SQLiteStatementUtil.c(sQLiteStatementT3, "worker_class_name");
                    int iC4 = SQLiteStatementUtil.c(sQLiteStatementT3, "input_merger_class_name");
                    int iC5 = SQLiteStatementUtil.c(sQLiteStatementT3, "input");
                    int iC6 = SQLiteStatementUtil.c(sQLiteStatementT3, "output");
                    int iC7 = SQLiteStatementUtil.c(sQLiteStatementT3, "initial_delay");
                    int iC8 = SQLiteStatementUtil.c(sQLiteStatementT3, "interval_duration");
                    int iC9 = SQLiteStatementUtil.c(sQLiteStatementT3, "flex_duration");
                    int iC10 = SQLiteStatementUtil.c(sQLiteStatementT3, "run_attempt_count");
                    int iC11 = SQLiteStatementUtil.c(sQLiteStatementT3, "backoff_policy");
                    int iC12 = SQLiteStatementUtil.c(sQLiteStatementT3, "backoff_delay_duration");
                    int iC13 = SQLiteStatementUtil.c(sQLiteStatementT3, "last_enqueue_time");
                    int iC14 = SQLiteStatementUtil.c(sQLiteStatementT3, "minimum_retention_duration");
                    int iC15 = SQLiteStatementUtil.c(sQLiteStatementT3, "schedule_requested_at");
                    int iC16 = SQLiteStatementUtil.c(sQLiteStatementT3, "run_in_foreground");
                    int iC17 = SQLiteStatementUtil.c(sQLiteStatementT3, "out_of_quota_policy");
                    int iC18 = SQLiteStatementUtil.c(sQLiteStatementT3, "period_count");
                    int iC19 = SQLiteStatementUtil.c(sQLiteStatementT3, "generation");
                    int iC20 = SQLiteStatementUtil.c(sQLiteStatementT3, "next_schedule_time_override");
                    int iC21 = SQLiteStatementUtil.c(sQLiteStatementT3, "next_schedule_time_override_generation");
                    int iC22 = SQLiteStatementUtil.c(sQLiteStatementT3, "stop_reason");
                    int iC23 = SQLiteStatementUtil.c(sQLiteStatementT3, "trace_tag");
                    int iC24 = SQLiteStatementUtil.c(sQLiteStatementT3, "backoff_on_system_interruptions");
                    int iC25 = SQLiteStatementUtil.c(sQLiteStatementT3, "required_network_type");
                    int iC26 = SQLiteStatementUtil.c(sQLiteStatementT3, "required_network_request");
                    int iC27 = SQLiteStatementUtil.c(sQLiteStatementT3, "requires_charging");
                    int iC28 = SQLiteStatementUtil.c(sQLiteStatementT3, "requires_device_idle");
                    int iC29 = SQLiteStatementUtil.c(sQLiteStatementT3, "requires_battery_not_low");
                    int iC30 = SQLiteStatementUtil.c(sQLiteStatementT3, "requires_storage_not_low");
                    int iC31 = SQLiteStatementUtil.c(sQLiteStatementT3, "trigger_content_update_delay");
                    int iC32 = SQLiteStatementUtil.c(sQLiteStatementT3, "trigger_max_content_delay");
                    int iC33 = SQLiteStatementUtil.c(sQLiteStatementT3, "content_uri_triggers");
                    if (sQLiteStatementT3.Q1()) {
                        String strM1 = sQLiteStatementT3.m1(iC);
                        WorkInfo.State stateE2 = WorkTypeConverters.e((int) sQLiteStatementT3.getLong(iC2));
                        String strM2 = sQLiteStatementT3.m1(iC3);
                        String strM3 = sQLiteStatementT3.m1(iC4);
                        byte[] blob = sQLiteStatementT3.getBlob(iC5);
                        Data.f20243b.getClass();
                        Data dataA = Data.Companion.a(blob);
                        Data dataA2 = Data.Companion.a(sQLiteStatementT3.getBlob(iC6));
                        long j2 = sQLiteStatementT3.getLong(iC7);
                        long j3 = sQLiteStatementT3.getLong(iC8);
                        long j4 = sQLiteStatementT3.getLong(iC9);
                        int i3 = (int) sQLiteStatementT3.getLong(iC10);
                        BackoffPolicy backoffPolicyB = WorkTypeConverters.b((int) sQLiteStatementT3.getLong(iC11));
                        long j5 = sQLiteStatementT3.getLong(iC12);
                        long j6 = sQLiteStatementT3.getLong(iC13);
                        long j7 = sQLiteStatementT3.getLong(iC14);
                        long j8 = sQLiteStatementT3.getLong(iC15);
                        boolean z = ((int) sQLiteStatementT3.getLong(iC16)) != 0;
                        OutOfQuotaPolicy outOfQuotaPolicyD = WorkTypeConverters.d((int) sQLiteStatementT3.getLong(iC17));
                        int i4 = (int) sQLiteStatementT3.getLong(iC18);
                        int i5 = (int) sQLiteStatementT3.getLong(iC19);
                        long j9 = sQLiteStatementT3.getLong(iC20);
                        int i6 = (int) sQLiteStatementT3.getLong(iC21);
                        int i7 = (int) sQLiteStatementT3.getLong(iC22);
                        String strM4 = sQLiteStatementT3.isNull(iC23) ? null : sQLiteStatementT3.m1(iC23);
                        Integer numValueOf = sQLiteStatementT3.isNull(iC24) ? null : Integer.valueOf((int) sQLiteStatementT3.getLong(iC24));
                        workSpec = new WorkSpec(strM1, stateE2, strM2, strM3, dataA, dataA2, j2, j3, j4, new Constraints(WorkTypeConverters.g(sQLiteStatementT3.getBlob(iC26)), WorkTypeConverters.c((int) sQLiteStatementT3.getLong(iC25)), ((int) sQLiteStatementT3.getLong(iC27)) != 0, ((int) sQLiteStatementT3.getLong(iC28)) != 0, ((int) sQLiteStatementT3.getLong(iC29)) != 0, ((int) sQLiteStatementT3.getLong(iC30)) != 0, sQLiteStatementT3.getLong(iC31), sQLiteStatementT3.getLong(iC32), WorkTypeConverters.a(sQLiteStatementT3.getBlob(iC33))), i3, backoffPolicyB, j5, j6, j7, j8, z, outOfQuotaPolicyD, i4, i5, j9, i6, i7, strM4, numValueOf != null ? Boolean.valueOf(numValueOf.intValue() != 0) : null);
                    } else {
                        workSpec = null;
                    }
                    return workSpec;
                } finally {
                    sQLiteStatementT3.close();
                }
            case 4:
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion5 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection4.getClass();
                SQLiteStatement sQLiteStatementT4 = sQLiteConnection4.T1("DELETE FROM workspec WHERE id=?");
                try {
                    sQLiteStatementT4.A(1, str);
                    sQLiteStatementT4.Q1();
                    return Unit.f71739a;
                } finally {
                    sQLiteStatementT4.close();
                }
            case 5:
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion6 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection5.getClass();
                SQLiteStatement sQLiteStatementT5 = sQLiteConnection5.T1("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)");
                try {
                    sQLiteStatementT5.A(1, str);
                    ArrayList arrayList2 = new ArrayList();
                    while (sQLiteStatementT5.Q1()) {
                        arrayList2.add(new WorkSpec.IdAndState(sQLiteStatementT5.m1(0), WorkTypeConverters.e((int) sQLiteStatementT5.getLong(1))));
                    }
                    sQLiteStatementT5.close();
                    return arrayList2;
                } catch (Throwable th2) {
                    sQLiteStatementT5.close();
                    throw th2;
                }
            case 6:
                SQLiteConnection sQLiteConnection6 = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion7 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection6.getClass();
                SQLiteStatement sQLiteStatementT6 = sQLiteConnection6.T1("SELECT state FROM workspec WHERE id=?");
                try {
                    sQLiteStatementT6.A(1, str);
                    if (sQLiteStatementT6.Q1()) {
                        Integer numValueOf2 = sQLiteStatementT6.isNull(0) ? null : Integer.valueOf((int) sQLiteStatementT6.getLong(0));
                        if (numValueOf2 != null) {
                            stateE = WorkTypeConverters.e(numValueOf2.intValue());
                        } else {
                            stateE = null;
                        }
                        break;
                    } else {
                        stateE = null;
                    }
                    return stateE;
                } finally {
                    sQLiteStatementT6.close();
                }
            case 7:
                SQLiteConnection sQLiteConnection7 = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion8 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection7.getClass();
                SQLiteStatement sQLiteStatementT7 = sQLiteConnection7.T1("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)");
                try {
                    sQLiteStatementT7.A(1, str);
                    ArrayList arrayList3 = new ArrayList();
                    while (sQLiteStatementT7.Q1()) {
                        arrayList3.add(sQLiteStatementT7.m1(0));
                    }
                    sQLiteStatementT7.close();
                    return arrayList3;
                } catch (Throwable th3) {
                    sQLiteStatementT7.close();
                    throw th3;
                }
            case 8:
                SQLiteConnection sQLiteConnection8 = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion9 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection8.getClass();
                SQLiteStatement sQLiteStatementT8 = sQLiteConnection8.T1("UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?");
                try {
                    sQLiteStatementT8.A(1, str);
                    sQLiteStatementT8.Q1();
                    return Integer.valueOf(SQLiteConnectionUtil.a(sQLiteConnection8));
                } finally {
                    sQLiteStatementT8.close();
                }
            case 9:
                SQLiteConnection sQLiteConnection9 = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion10 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection9.getClass();
                SQLiteStatement sQLiteStatementT9 = sQLiteConnection9.T1("UPDATE workspec SET run_attempt_count=0 WHERE id=?");
                try {
                    sQLiteStatementT9.A(1, str);
                    sQLiteStatementT9.Q1();
                    return Integer.valueOf(SQLiteConnectionUtil.a(sQLiteConnection9));
                } finally {
                    sQLiteStatementT9.close();
                }
            case 10:
                SQLiteConnection sQLiteConnection10 = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion11 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection10.getClass();
                SQLiteStatement sQLiteStatementT10 = sQLiteConnection10.T1("UPDATE workspec SET period_count=period_count+1 WHERE id=?");
                try {
                    sQLiteStatementT10.A(1, str);
                    sQLiteStatementT10.Q1();
                    return Unit.f71739a;
                } finally {
                    sQLiteStatementT10.close();
                }
            case 11:
                SQLiteConnection sQLiteConnection11 = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion12 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection11.getClass();
                SQLiteStatement sQLiteStatementT11 = sQLiteConnection11.T1("SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)");
                try {
                    sQLiteStatementT11.A(1, str);
                    ArrayList arrayList4 = new ArrayList();
                    while (sQLiteStatementT11.Q1()) {
                        byte[] blob2 = sQLiteStatementT11.getBlob(0);
                        Data.f20243b.getClass();
                        arrayList4.add(Data.Companion.a(blob2));
                    }
                    sQLiteStatementT11.close();
                    return arrayList4;
                } catch (Throwable th4) {
                    sQLiteStatementT11.close();
                    throw th4;
                }
            case 12:
                SQLiteConnection sQLiteConnection12 = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion13 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection12.getClass();
                SQLiteStatement sQLiteStatementT12 = sQLiteConnection12.T1("UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?");
                try {
                    sQLiteStatementT12.A(1, str);
                    sQLiteStatementT12.Q1();
                    return Integer.valueOf(SQLiteConnectionUtil.a(sQLiteConnection12));
                } finally {
                    sQLiteStatementT12.close();
                }
            default:
                SQLiteConnection sQLiteConnection13 = (SQLiteConnection) obj;
                WorkTagDao_Impl.Companion companion14 = WorkTagDao_Impl.f20535c;
                sQLiteConnection13.getClass();
                SQLiteStatement sQLiteStatementT13 = sQLiteConnection13.T1("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?");
                try {
                    sQLiteStatementT13.A(1, str);
                    ArrayList arrayList5 = new ArrayList();
                    while (sQLiteStatementT13.Q1()) {
                        arrayList5.add(sQLiteStatementT13.m1(0));
                    }
                    sQLiteStatementT13.close();
                    return arrayList5;
                } catch (Throwable th5) {
                    sQLiteStatementT13.close();
                    throw th5;
                }
        }
    }
}
