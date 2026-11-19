package defpackage;

import android.graphics.DashPathEffect;
import androidx.compose.foundation.text.AndroidCursorHandle_androidKt;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt;
import androidx.compose.foundation.text.selection.SelectionHandleAnchor;
import androidx.compose.foundation.text.selection.SelectionHandleInfo;
import androidx.compose.foundation.text.selection.SelectionHandlesKt;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPathEffect;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTypeConverters;
import androidx.work.impl.utils.NetworkRequestCompat;
import com.batch.android.s.b;
import com.vuitton.android.designkit.ui.theme.atoms.LVDragHandleKt;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.VtoCameraButtonKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailFollowUpBffKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailFollowUpKt;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeHomeSlideshowKt;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r5 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79247b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f79248c;

    public /* synthetic */ r5(long j2, int i2) {
        this.f79247b = i2;
        this.f79248c = j2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws Exception {
        SQLiteStatement sQLiteStatement;
        Boolean boolValueOf;
        int i2 = this.f79247b;
        long j2 = this.f79248c;
        switch (i2) {
            case 0:
                CacheDrawScope cacheDrawScope = (CacheDrawScope) obj;
                float f2 = AndroidCursorHandle_androidKt.f5847a;
                float fIntBitsToFloat = Float.intBitsToFloat((int) (cacheDrawScope.f8706b.b() >> 32)) / 2.0f;
                return cacheDrawScope.e(new s5(fIntBitsToFloat, AndroidSelectionHandles_androidKt.d(cacheDrawScope, fIntBitsToFloat), ColorFilter.Companion.a(ColorFilter.f8873b, j2), 0));
            case 1:
                DrawScope drawScope = (DrawScope) obj;
                drawScope.getClass();
                AndroidPath androidPathA = AndroidPath_androidKt.a();
                androidPathA.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                androidPathA.c(Float.intBitsToFloat((int) (drawScope.b() >> 32)), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                androidPathA.c(Float.intBitsToFloat((int) (drawScope.b() >> 32)) / 2.0f, Float.intBitsToFloat((int) (drawScope.b() & BodyPartID.bodyIdMax)));
                androidPathA.close();
                DrawScope.U(drawScope, androidPathA, this.f79248c, null, 60);
                return Unit.f71739a;
            case 2:
                ((SemanticsPropertyReceiver) obj).a(SelectionHandlesKt.f6431c, new SelectionHandleInfo(Handle.Cursor, this.f79248c, SelectionHandleAnchor.Middle, true, null));
                return Unit.f71739a;
            case 3:
                return Long.valueOf(j2);
            case 4:
                DrawScope drawScope2 = (DrawScope) obj;
                drawScope2.getClass();
                DrawScope.r0(drawScope2, this.f79248c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, null, 126);
                return Unit.f71739a;
            case 5:
                DrawScope drawScope3 = (DrawScope) obj;
                float f3 = LVDragHandleKt.f48470a;
                drawScope3.getClass();
                float f4 = LVDragHandleKt.f48470a;
                float fU1 = drawScope3.u1(f4);
                long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(drawScope3.u1(f4) / 2.0f)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32);
                Offset.Companion companion = Offset.f8806b;
                DrawScope.x0(drawScope3, this.f79248c, jFloatToRawIntBits, (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope3.b() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(drawScope3.u1(f4) / 2.0f)) & BodyPartID.bodyIdMax), fU1, 0, null, 496);
                return Unit.f71739a;
            case 6:
                DrawScope drawScope4 = (DrawScope) obj;
                drawScope4.getClass();
                DrawScope.r0(drawScope4, this.f79248c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, null, 126);
                return Unit.f71739a;
            case 7:
                DrawScope drawScope5 = (DrawScope) obj;
                drawScope5.getClass();
                DrawScope.r0(drawScope5, this.f79248c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, null, 126);
                return Unit.f71739a;
            case 8:
                DrawScope drawScope6 = (DrawScope) obj;
                drawScope6.getClass();
                DrawScope.r0(drawScope6, this.f79248c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, null, 126);
                return Unit.f71739a;
            case 9:
                DrawScope drawScope7 = (DrawScope) obj;
                drawScope7.getClass();
                float fIntBitsToFloat2 = Float.intBitsToFloat((int) (drawScope7.b() & BodyPartID.bodyIdMax));
                long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) & BodyPartID.bodyIdMax);
                Offset.Companion companion2 = Offset.f8806b;
                DrawScope.x0(drawScope7, this.f79248c, jFloatToRawIntBits2, (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32), Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, new AndroidPathEffect(new DashPathEffect(RepairDetailFollowUpBffKt.f63845a, Call.Parameters.DEFAULT_CAMERA_ZOOM)), 472);
                return Unit.f71739a;
            case 10:
                DrawScope drawScope8 = (DrawScope) obj;
                drawScope8.getClass();
                DrawScope.r0(drawScope8, this.f79248c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, new Stroke(2.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, null, 30, null), 110);
                return Unit.f71739a;
            case 11:
                DrawScope drawScope9 = (DrawScope) obj;
                drawScope9.getClass();
                DrawScope.r0(drawScope9, this.f79248c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, null, 126);
                return Unit.f71739a;
            case 12:
                DrawScope drawScope10 = (DrawScope) obj;
                drawScope10.getClass();
                DrawScope.r0(drawScope10, this.f79248c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, null, 126);
                return Unit.f71739a;
            case 13:
                DrawScope drawScope11 = (DrawScope) obj;
                drawScope11.getClass();
                DrawScope.r0(drawScope11, this.f79248c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, new Stroke(2.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, null, 30, null), 110);
                return Unit.f71739a;
            case 14:
                DrawScope drawScope12 = (DrawScope) obj;
                drawScope12.getClass();
                DrawScope.r0(drawScope12, this.f79248c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, null, 126);
                return Unit.f71739a;
            case 15:
                DrawScope drawScope13 = (DrawScope) obj;
                drawScope13.getClass();
                DrawScope.r0(drawScope13, this.f79248c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, null, 126);
                return Unit.f71739a;
            case 16:
                DrawScope drawScope14 = (DrawScope) obj;
                drawScope14.getClass();
                float fIntBitsToFloat3 = Float.intBitsToFloat((int) (drawScope14.b() & BodyPartID.bodyIdMax));
                long jFloatToRawIntBits3 = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) & BodyPartID.bodyIdMax);
                Offset.Companion companion3 = Offset.f8806b;
                DrawScope.x0(drawScope14, this.f79248c, jFloatToRawIntBits3, (((long) Float.floatToRawIntBits(fIntBitsToFloat3)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32), Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, new AndroidPathEffect(new DashPathEffect(RepairDetailFollowUpKt.f63847a, Call.Parameters.DEFAULT_CAMERA_ZOOM)), 472);
                return Unit.f71739a;
            case 17:
                ContentDrawScope contentDrawScope = (ContentDrawScope) obj;
                float f5 = StoreModeHomeSlideshowKt.f64837a;
                contentDrawScope.getClass();
                contentDrawScope.R1();
                DrawScope.q1(contentDrawScope, new SolidColor(j2, null), 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, 0, 126);
                return Unit.f71739a;
            case 18:
                DrawScope drawScope15 = (DrawScope) obj;
                float f6 = VtoCameraButtonKt.f62053a;
                drawScope15.getClass();
                float fIntBitsToFloat4 = Float.intBitsToFloat((int) (drawScope15.b() >> 32)) / 2.0f;
                float fIntBitsToFloat5 = Float.intBitsToFloat((int) (drawScope15.b() & BodyPartID.bodyIdMax)) / 2.0f;
                long jFloatToRawIntBits4 = (((long) Float.floatToRawIntBits(fIntBitsToFloat4)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat5)) & BodyPartID.bodyIdMax);
                Offset.Companion companion4 = Offset.f8806b;
                float fC = Size.c(drawScope15.b()) / 2.0f;
                float f7 = VtoCameraButtonKt.f62054b;
                float fB = fC - (ResourcesExtKt.b(f7) / 2.0f);
                Stroke stroke = new Stroke(ResourcesExtKt.b(f7), Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, null, 30, null);
                long j3 = this.f79248c;
                DrawScope.r0(drawScope15, j3, fB, jFloatToRawIntBits4, stroke, 104);
                DrawScope.r0(drawScope15, j3, (Size.c(drawScope15.b()) / 2.0f) - ResourcesExtKt.b(VtoCameraButtonKt.f62053a), (((long) Float.floatToRawIntBits(fIntBitsToFloat5)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(fIntBitsToFloat4)) << 32), null, 120);
                return Unit.f71739a;
            default:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion5 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection.getClass();
                SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC");
                try {
                    sQLiteStatementT1.a(1, j2);
                    int iC = SQLiteStatementUtil.c(sQLiteStatementT1, b.a.f24015b);
                    int iC2 = SQLiteStatementUtil.c(sQLiteStatementT1, "state");
                    int iC3 = SQLiteStatementUtil.c(sQLiteStatementT1, "worker_class_name");
                    int iC4 = SQLiteStatementUtil.c(sQLiteStatementT1, "input_merger_class_name");
                    int iC5 = SQLiteStatementUtil.c(sQLiteStatementT1, "input");
                    int iC6 = SQLiteStatementUtil.c(sQLiteStatementT1, "output");
                    int iC7 = SQLiteStatementUtil.c(sQLiteStatementT1, "initial_delay");
                    int iC8 = SQLiteStatementUtil.c(sQLiteStatementT1, "interval_duration");
                    int iC9 = SQLiteStatementUtil.c(sQLiteStatementT1, "flex_duration");
                    int iC10 = SQLiteStatementUtil.c(sQLiteStatementT1, "run_attempt_count");
                    int iC11 = SQLiteStatementUtil.c(sQLiteStatementT1, "backoff_policy");
                    int iC12 = SQLiteStatementUtil.c(sQLiteStatementT1, "backoff_delay_duration");
                    int iC13 = SQLiteStatementUtil.c(sQLiteStatementT1, "last_enqueue_time");
                    int iC14 = SQLiteStatementUtil.c(sQLiteStatementT1, "minimum_retention_duration");
                    int iC15 = SQLiteStatementUtil.c(sQLiteStatementT1, "schedule_requested_at");
                    int iC16 = SQLiteStatementUtil.c(sQLiteStatementT1, "run_in_foreground");
                    int iC17 = SQLiteStatementUtil.c(sQLiteStatementT1, "out_of_quota_policy");
                    int iC18 = SQLiteStatementUtil.c(sQLiteStatementT1, "period_count");
                    int iC19 = SQLiteStatementUtil.c(sQLiteStatementT1, "generation");
                    int iC20 = SQLiteStatementUtil.c(sQLiteStatementT1, "next_schedule_time_override");
                    int iC21 = SQLiteStatementUtil.c(sQLiteStatementT1, "next_schedule_time_override_generation");
                    int iC22 = SQLiteStatementUtil.c(sQLiteStatementT1, "stop_reason");
                    int iC23 = SQLiteStatementUtil.c(sQLiteStatementT1, "trace_tag");
                    int iC24 = SQLiteStatementUtil.c(sQLiteStatementT1, "backoff_on_system_interruptions");
                    int iC25 = SQLiteStatementUtil.c(sQLiteStatementT1, "required_network_type");
                    int iC26 = SQLiteStatementUtil.c(sQLiteStatementT1, "required_network_request");
                    int iC27 = SQLiteStatementUtil.c(sQLiteStatementT1, "requires_charging");
                    int iC28 = SQLiteStatementUtil.c(sQLiteStatementT1, "requires_device_idle");
                    int iC29 = SQLiteStatementUtil.c(sQLiteStatementT1, "requires_battery_not_low");
                    int iC30 = SQLiteStatementUtil.c(sQLiteStatementT1, "requires_storage_not_low");
                    int iC31 = SQLiteStatementUtil.c(sQLiteStatementT1, "trigger_content_update_delay");
                    int iC32 = SQLiteStatementUtil.c(sQLiteStatementT1, "trigger_max_content_delay");
                    int iC33 = SQLiteStatementUtil.c(sQLiteStatementT1, "content_uri_triggers");
                    ArrayList arrayList = new ArrayList();
                    while (sQLiteStatementT1.Q1()) {
                        String strM1 = sQLiteStatementT1.m1(iC);
                        ArrayList arrayList2 = arrayList;
                        int i3 = iC;
                        WorkInfo.State stateE = WorkTypeConverters.e((int) sQLiteStatementT1.getLong(iC2));
                        String strM2 = sQLiteStatementT1.m1(iC3);
                        String strM3 = sQLiteStatementT1.m1(iC4);
                        byte[] blob = sQLiteStatementT1.getBlob(iC5);
                        Data.f20243b.getClass();
                        Data dataA = Data.Companion.a(blob);
                        Data dataA2 = Data.Companion.a(sQLiteStatementT1.getBlob(iC6));
                        long j4 = sQLiteStatementT1.getLong(iC7);
                        long j5 = sQLiteStatementT1.getLong(iC8);
                        long j6 = sQLiteStatementT1.getLong(iC9);
                        int i4 = (int) sQLiteStatementT1.getLong(iC10);
                        BackoffPolicy backoffPolicyB = WorkTypeConverters.b((int) sQLiteStatementT1.getLong(iC11));
                        long j7 = sQLiteStatementT1.getLong(iC12);
                        long j8 = sQLiteStatementT1.getLong(iC13);
                        long j9 = sQLiteStatementT1.getLong(iC14);
                        int i5 = iC15;
                        long j10 = sQLiteStatementT1.getLong(i5);
                        int i6 = iC14;
                        int i7 = iC16;
                        boolean z = ((int) sQLiteStatementT1.getLong(i7)) != 0;
                        int i8 = iC17;
                        OutOfQuotaPolicy outOfQuotaPolicyD = WorkTypeConverters.d((int) sQLiteStatementT1.getLong(i8));
                        int i9 = iC18;
                        int i10 = iC2;
                        int i11 = (int) sQLiteStatementT1.getLong(i9);
                        int i12 = iC19;
                        int i13 = (int) sQLiteStatementT1.getLong(i12);
                        int i14 = iC20;
                        long j11 = sQLiteStatementT1.getLong(i14);
                        int i15 = iC13;
                        int i16 = iC21;
                        int i17 = (int) sQLiteStatementT1.getLong(i16);
                        int i18 = iC22;
                        int i19 = (int) sQLiteStatementT1.getLong(i18);
                        int i20 = iC23;
                        String strM4 = sQLiteStatementT1.isNull(i20) ? null : sQLiteStatementT1.m1(i20);
                        int i21 = iC24;
                        Integer numValueOf = sQLiteStatementT1.isNull(i21) ? null : Integer.valueOf((int) sQLiteStatementT1.getLong(i21));
                        if (numValueOf != null) {
                            boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                        } else {
                            boolValueOf = null;
                        }
                        int i22 = iC25;
                        NetworkType networkTypeC = WorkTypeConverters.c((int) sQLiteStatementT1.getLong(i22));
                        int i23 = iC26;
                        NetworkRequestCompat networkRequestCompatG = WorkTypeConverters.g(sQLiteStatementT1.getBlob(i23));
                        iC25 = i22;
                        iC26 = i23;
                        int i24 = iC27;
                        boolean z2 = ((int) sQLiteStatementT1.getLong(i24)) != 0;
                        iC27 = i24;
                        int i25 = iC28;
                        boolean z3 = ((int) sQLiteStatementT1.getLong(i25)) != 0;
                        int i26 = iC29;
                        boolean z4 = ((int) sQLiteStatementT1.getLong(i26)) != 0;
                        iC29 = i26;
                        int i27 = iC30;
                        int i28 = iC31;
                        int i29 = iC32;
                        int i30 = iC33;
                        iC33 = i30;
                        sQLiteStatement = sQLiteStatementT1;
                        try {
                            arrayList2.add(new WorkSpec(strM1, stateE, strM2, strM3, dataA, dataA2, j4, j5, j6, new Constraints(networkRequestCompatG, networkTypeC, z2, z3, z4, ((int) sQLiteStatementT1.getLong(i27)) != 0, sQLiteStatementT1.getLong(i28), sQLiteStatementT1.getLong(i29), WorkTypeConverters.a(sQLiteStatementT1.getBlob(i30))), i4, backoffPolicyB, j7, j8, j9, j10, z, outOfQuotaPolicyD, i11, i13, j11, i17, i19, strM4, boolValueOf));
                            iC32 = i29;
                            iC13 = i15;
                            iC20 = i14;
                            iC21 = i16;
                            iC23 = i20;
                            arrayList = arrayList2;
                            iC28 = i25;
                            iC2 = i10;
                            sQLiteStatementT1 = sQLiteStatement;
                            iC18 = i9;
                            iC31 = i28;
                            iC14 = i6;
                            iC15 = i5;
                            iC16 = i7;
                            iC17 = i8;
                            iC19 = i12;
                            iC22 = i18;
                            iC24 = i21;
                            iC30 = i27;
                            iC = i3;
                        } catch (Throwable th) {
                            th = th;
                            sQLiteStatement.close();
                            throw th;
                        }
                        break;
                    }
                    SQLiteStatement sQLiteStatement2 = sQLiteStatementT1;
                    ArrayList arrayList3 = arrayList;
                    sQLiteStatement2.close();
                    return arrayList3;
                } catch (Throwable th2) {
                    th = th2;
                    sQLiteStatement = sQLiteStatementT1;
                }
                break;
        }
    }
}
