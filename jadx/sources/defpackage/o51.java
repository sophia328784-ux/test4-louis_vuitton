package defpackage;

import android.graphics.drawable.Drawable;
import android.opengl.GLSurfaceView;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.media3.ui.PlayerView;
import androidx.room.util.SQLiteConnectionUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.window.layout.WindowMetricsCalculator;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkProgressDao_Impl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTypeConverters;
import androidx.work.impl.utils.NetworkRequestCompat;
import com.appsflyer.internal.AFa1mSDK;
import com.batch.android.s.b;
import com.dynamicyield.sdk.wrapper.core.enums.ChoiceType;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.VisualSearchVariation;
import com.linkplay.core.device.LPDevice;
import com.vuitton.android.presentation.extensions.SemanticsPropertyReceiverExtKt;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListAdapter;
import com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsView;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistItemUiModel;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import okio.internal.ZipEntry;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class o51 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76705b;

    public /* synthetic */ o51(int i2) {
        this.f76705b = i2;
    }

    private final Object a(Object obj) throws Exception {
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        WorkSpecDao_Impl.Companion companion = WorkSpecDao_Impl.f20530c;
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("SELECT * FROM workspec WHERE state=1");
        try {
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
                int i2 = iC14;
                ArrayList arrayList2 = arrayList;
                WorkInfo.State stateE = WorkTypeConverters.e((int) sQLiteStatementT1.getLong(iC2));
                String strM2 = sQLiteStatementT1.m1(iC3);
                String strM3 = sQLiteStatementT1.m1(iC4);
                byte[] blob = sQLiteStatementT1.getBlob(iC5);
                Data.f20243b.getClass();
                Data dataA = Data.Companion.a(blob);
                Data dataA2 = Data.Companion.a(sQLiteStatementT1.getBlob(iC6));
                long j2 = sQLiteStatementT1.getLong(iC7);
                long j3 = sQLiteStatementT1.getLong(iC8);
                long j4 = sQLiteStatementT1.getLong(iC9);
                int i3 = (int) sQLiteStatementT1.getLong(iC10);
                int i4 = iC2;
                int i5 = iC3;
                BackoffPolicy backoffPolicyB = WorkTypeConverters.b((int) sQLiteStatementT1.getLong(iC11));
                long j5 = sQLiteStatementT1.getLong(iC12);
                long j6 = sQLiteStatementT1.getLong(iC13);
                long j7 = sQLiteStatementT1.getLong(i2);
                int i6 = iC15;
                long j8 = sQLiteStatementT1.getLong(i6);
                int i7 = iC;
                int i8 = iC16;
                boolean z = ((int) sQLiteStatementT1.getLong(i8)) != 0;
                int i9 = iC17;
                int i10 = iC4;
                OutOfQuotaPolicy outOfQuotaPolicyD = WorkTypeConverters.d((int) sQLiteStatementT1.getLong(i9));
                int i11 = iC18;
                int i12 = iC5;
                int i13 = (int) sQLiteStatementT1.getLong(i11);
                int i14 = iC19;
                int i15 = (int) sQLiteStatementT1.getLong(i14);
                int i16 = iC20;
                long j9 = sQLiteStatementT1.getLong(i16);
                int i17 = iC21;
                int i18 = (int) sQLiteStatementT1.getLong(i17);
                int i19 = iC22;
                int i20 = (int) sQLiteStatementT1.getLong(i19);
                int i21 = iC23;
                Boolean boolValueOf = null;
                String strM4 = sQLiteStatementT1.isNull(i21) ? null : sQLiteStatementT1.m1(i21);
                int i22 = iC24;
                Integer numValueOf = sQLiteStatementT1.isNull(i22) ? null : Integer.valueOf((int) sQLiteStatementT1.getLong(i22));
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                int i23 = iC25;
                Boolean bool = boolValueOf;
                NetworkType networkTypeC = WorkTypeConverters.c((int) sQLiteStatementT1.getLong(i23));
                int i24 = iC26;
                NetworkRequestCompat networkRequestCompatG = WorkTypeConverters.g(sQLiteStatementT1.getBlob(i24));
                iC25 = i23;
                iC26 = i24;
                int i25 = iC27;
                boolean z2 = ((int) sQLiteStatementT1.getLong(i25)) != 0;
                iC27 = i25;
                int i26 = iC28;
                boolean z3 = ((int) sQLiteStatementT1.getLong(i26)) != 0;
                int i27 = iC29;
                boolean z4 = ((int) sQLiteStatementT1.getLong(i27)) != 0;
                iC29 = i27;
                int i28 = iC30;
                int i29 = iC31;
                int i30 = iC32;
                int i31 = iC33;
                iC33 = i31;
                arrayList2.add(new WorkSpec(strM1, stateE, strM2, strM3, dataA, dataA2, j2, j3, j4, new Constraints(networkRequestCompatG, networkTypeC, z2, z3, z4, ((int) sQLiteStatementT1.getLong(i28)) != 0, sQLiteStatementT1.getLong(i29), sQLiteStatementT1.getLong(i30), WorkTypeConverters.a(sQLiteStatementT1.getBlob(i31))), i3, backoffPolicyB, j5, j6, j7, j8, z, outOfQuotaPolicyD, i13, i15, j9, i18, i20, strM4, bool));
                iC30 = i28;
                iC4 = i10;
                iC17 = i9;
                iC19 = i14;
                iC22 = i19;
                iC24 = i22;
                iC31 = i29;
                iC32 = i30;
                iC2 = i4;
                iC14 = i2;
                iC3 = i5;
                arrayList = arrayList2;
                iC = i7;
                iC15 = i6;
                iC16 = i8;
                iC20 = i16;
                iC21 = i17;
                iC23 = i21;
                iC28 = i26;
                iC5 = i12;
                iC18 = i11;
            }
            return arrayList;
        } finally {
            sQLiteStatementT1.close();
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws Exception {
        Boolean boolValueOf;
        Boolean boolValueOf2;
        Boolean boolValueOf3;
        switch (this.f76705b) {
            case 0:
                PlayerView playerView = (PlayerView) obj;
                playerView.getClass();
                View view = playerView.f18031e;
                if (view instanceof GLSurfaceView) {
                    ((GLSurfaceView) view).onPause();
                }
                ViewPropertyAnimator viewPropertyAnimatorAnimate = playerView.animate();
                if (viewPropertyAnimatorAnimate != null) {
                    viewPropertyAnimatorAnimate.cancel();
                }
                playerView.setBackground(null);
                playerView.setPlayer(null);
                return Unit.f71739a;
            case 1:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                classSerialDescriptorBuilder.getClass();
                EmptyList emptyList = EmptyList.f71768b;
                classSerialDescriptorBuilder.a(b.a.f24015b, IntSerializer.f75625b, emptyList, false);
                StringSerializer stringSerializer = StringSerializer.f75684a;
                PrimitiveSerialDescriptor primitiveSerialDescriptor = StringSerializer.f75685b;
                classSerialDescriptorBuilder.a("name", primitiveSerialDescriptor, emptyList, false);
                classSerialDescriptorBuilder.a("type", new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.ChoiceType", ChoiceType.values()).getF19838b(), emptyList, false);
                classSerialDescriptorBuilder.a("variations", new ArrayListSerializer(VisualSearchVariation.INSTANCE.serializer()).f75570b, emptyList, false);
                classSerialDescriptorBuilder.a("groups", new ArrayListSerializer(stringSerializer).f75570b, emptyList, false);
                classSerialDescriptorBuilder.a("decisionId", primitiveSerialDescriptor, emptyList, false);
                return Unit.f71739a;
            case 2:
                return Unit.f71739a;
            case 3:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver);
                return Unit.f71739a;
            case 4:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 5:
                ((WatchSettingsView) obj).G();
                return Unit.f71739a;
            case 6:
                ((WatchSettingsView) obj).x();
                return Unit.f71739a;
            case 7:
                LPDevice lPDevice = (LPDevice) obj;
                int i2 = WifiDeviceListAdapter.SpeakerRoomCard.d;
                lPDevice.getClass();
                String friendlyName = lPDevice.getDeviceStatus().getFriendlyName();
                friendlyName.getClass();
                return friendlyName;
            case 8:
                return ((WindowInsetsHolder) obj).l;
            case 9:
                return ((WindowInsetsHolder) obj).g;
            case 10:
                return ((WindowInsetsHolder) obj).f5078f;
            case 11:
                return ((WindowInsetsHolder) obj).f5076c;
            case 12:
                return ((WindowInsetsHolder) obj).f5077e;
            case 13:
                WindowMetricsCalculator windowMetricsCalculator = (WindowMetricsCalculator) obj;
                WindowMetricsCalculator.Companion companion = WindowMetricsCalculator.Companion.f20194a;
                windowMetricsCalculator.getClass();
                return windowMetricsCalculator;
            case 14:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver2);
                return Unit.f71739a;
            case 15:
                ((AnimatedContentTransitionScope) obj).getClass();
                EnterTransition.f3626a.getClass();
                return EnterTransition.f3627b;
            case 16:
                ((AnimatedContentTransitionScope) obj).getClass();
                ExitTransition.f3629a.getClass();
                return ExitTransition.f3630b;
            case 17:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertyReceiverExtKt.a(semanticsPropertyReceiver3);
                return Unit.f71739a;
            case 18:
                WishlistItemUiModel wishlistItemUiModel = (WishlistItemUiModel) obj;
                wishlistItemUiModel.getClass();
                return wishlistItemUiModel.f65739a;
            case 19:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                WorkProgressDao_Impl.Companion companion2 = WorkProgressDao_Impl.f20508b;
                sQLiteConnection.getClass();
                SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("DELETE FROM WorkProgress");
                try {
                    sQLiteStatementT1.Q1();
                    return Unit.f71739a;
                } finally {
                    sQLiteStatementT1.close();
                }
            case 20:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion3 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection2.getClass();
                SQLiteStatement sQLiteStatementT2 = sQLiteConnection2.T1("Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)");
                try {
                    int i3 = sQLiteStatementT2.Q1() ? (int) sQLiteStatementT2.getLong(0) : 0;
                    sQLiteStatementT2.close();
                    return Integer.valueOf(i3);
                } catch (Throwable th) {
                    sQLiteStatementT2.close();
                    throw th;
                }
            case 21:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion4 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection3.getClass();
                SQLiteStatement sQLiteStatementT3 = sQLiteConnection3.T1("UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)");
                try {
                    sQLiteStatementT3.Q1();
                    return Integer.valueOf(SQLiteConnectionUtil.a(sQLiteConnection3));
                } finally {
                    sQLiteStatementT3.close();
                }
            case 22:
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion5 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection4.getClass();
                SQLiteStatement sQLiteStatementT4 = sQLiteConnection4.T1("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time");
                try {
                    int iC = SQLiteStatementUtil.c(sQLiteStatementT4, b.a.f24015b);
                    int iC2 = SQLiteStatementUtil.c(sQLiteStatementT4, "state");
                    int iC3 = SQLiteStatementUtil.c(sQLiteStatementT4, "worker_class_name");
                    int iC4 = SQLiteStatementUtil.c(sQLiteStatementT4, "input_merger_class_name");
                    int iC5 = SQLiteStatementUtil.c(sQLiteStatementT4, "input");
                    int iC6 = SQLiteStatementUtil.c(sQLiteStatementT4, "output");
                    int iC7 = SQLiteStatementUtil.c(sQLiteStatementT4, "initial_delay");
                    int iC8 = SQLiteStatementUtil.c(sQLiteStatementT4, "interval_duration");
                    int iC9 = SQLiteStatementUtil.c(sQLiteStatementT4, "flex_duration");
                    int iC10 = SQLiteStatementUtil.c(sQLiteStatementT4, "run_attempt_count");
                    int iC11 = SQLiteStatementUtil.c(sQLiteStatementT4, "backoff_policy");
                    int iC12 = SQLiteStatementUtil.c(sQLiteStatementT4, "backoff_delay_duration");
                    int iC13 = SQLiteStatementUtil.c(sQLiteStatementT4, "last_enqueue_time");
                    int iC14 = SQLiteStatementUtil.c(sQLiteStatementT4, "minimum_retention_duration");
                    int iC15 = SQLiteStatementUtil.c(sQLiteStatementT4, "schedule_requested_at");
                    int iC16 = SQLiteStatementUtil.c(sQLiteStatementT4, "run_in_foreground");
                    int iC17 = SQLiteStatementUtil.c(sQLiteStatementT4, "out_of_quota_policy");
                    int iC18 = SQLiteStatementUtil.c(sQLiteStatementT4, "period_count");
                    int iC19 = SQLiteStatementUtil.c(sQLiteStatementT4, "generation");
                    int iC20 = SQLiteStatementUtil.c(sQLiteStatementT4, "next_schedule_time_override");
                    int iC21 = SQLiteStatementUtil.c(sQLiteStatementT4, "next_schedule_time_override_generation");
                    int iC22 = SQLiteStatementUtil.c(sQLiteStatementT4, "stop_reason");
                    int iC23 = SQLiteStatementUtil.c(sQLiteStatementT4, "trace_tag");
                    int iC24 = SQLiteStatementUtil.c(sQLiteStatementT4, "backoff_on_system_interruptions");
                    int iC25 = SQLiteStatementUtil.c(sQLiteStatementT4, "required_network_type");
                    int iC26 = SQLiteStatementUtil.c(sQLiteStatementT4, "required_network_request");
                    int iC27 = SQLiteStatementUtil.c(sQLiteStatementT4, "requires_charging");
                    int iC28 = SQLiteStatementUtil.c(sQLiteStatementT4, "requires_device_idle");
                    int iC29 = SQLiteStatementUtil.c(sQLiteStatementT4, "requires_battery_not_low");
                    int iC30 = SQLiteStatementUtil.c(sQLiteStatementT4, "requires_storage_not_low");
                    int iC31 = SQLiteStatementUtil.c(sQLiteStatementT4, "trigger_content_update_delay");
                    int iC32 = SQLiteStatementUtil.c(sQLiteStatementT4, "trigger_max_content_delay");
                    int iC33 = SQLiteStatementUtil.c(sQLiteStatementT4, "content_uri_triggers");
                    ArrayList arrayList = new ArrayList();
                    while (sQLiteStatementT4.Q1()) {
                        String strM1 = sQLiteStatementT4.m1(iC);
                        int i4 = iC;
                        int i5 = iC14;
                        WorkInfo.State stateE = WorkTypeConverters.e((int) sQLiteStatementT4.getLong(iC2));
                        String strM2 = sQLiteStatementT4.m1(iC3);
                        String strM3 = sQLiteStatementT4.m1(iC4);
                        byte[] blob = sQLiteStatementT4.getBlob(iC5);
                        Data.f20243b.getClass();
                        Data dataA = Data.Companion.a(blob);
                        Data dataA2 = Data.Companion.a(sQLiteStatementT4.getBlob(iC6));
                        long j2 = sQLiteStatementT4.getLong(iC7);
                        long j3 = sQLiteStatementT4.getLong(iC8);
                        long j4 = sQLiteStatementT4.getLong(iC9);
                        int i6 = (int) sQLiteStatementT4.getLong(iC10);
                        int i7 = iC5;
                        int i8 = iC4;
                        BackoffPolicy backoffPolicyB = WorkTypeConverters.b((int) sQLiteStatementT4.getLong(iC11));
                        long j5 = sQLiteStatementT4.getLong(iC12);
                        long j6 = sQLiteStatementT4.getLong(iC13);
                        long j7 = sQLiteStatementT4.getLong(i5);
                        int i9 = iC15;
                        long j8 = sQLiteStatementT4.getLong(i9);
                        int i10 = iC3;
                        int i11 = iC16;
                        boolean z = ((int) sQLiteStatementT4.getLong(i11)) != 0;
                        int i12 = iC2;
                        int i13 = iC17;
                        OutOfQuotaPolicy outOfQuotaPolicyD = WorkTypeConverters.d((int) sQLiteStatementT4.getLong(i13));
                        iC17 = i13;
                        int i14 = iC18;
                        int i15 = (int) sQLiteStatementT4.getLong(i14);
                        iC18 = i14;
                        int i16 = iC19;
                        int i17 = (int) sQLiteStatementT4.getLong(i16);
                        int i18 = iC20;
                        long j9 = sQLiteStatementT4.getLong(i18);
                        int i19 = iC21;
                        int i20 = (int) sQLiteStatementT4.getLong(i19);
                        iC21 = i19;
                        iC22 = iC22;
                        int i21 = (int) sQLiteStatementT4.getLong(iC22);
                        iC23 = iC23;
                        String strM4 = sQLiteStatementT4.isNull(iC23) ? null : sQLiteStatementT4.m1(iC23);
                        int i22 = iC24;
                        Integer numValueOf = sQLiteStatementT4.isNull(i22) ? null : Integer.valueOf((int) sQLiteStatementT4.getLong(i22));
                        if (numValueOf != null) {
                            boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                        } else {
                            boolValueOf = null;
                        }
                        int i23 = iC25;
                        NetworkType networkTypeC = WorkTypeConverters.c((int) sQLiteStatementT4.getLong(i23));
                        int i24 = iC26;
                        NetworkRequestCompat networkRequestCompatG = WorkTypeConverters.g(sQLiteStatementT4.getBlob(i24));
                        int i25 = iC27;
                        boolean z2 = ((int) sQLiteStatementT4.getLong(i25)) != 0;
                        int i26 = iC28;
                        boolean z3 = ((int) sQLiteStatementT4.getLong(i26)) != 0;
                        int i27 = iC29;
                        boolean z4 = ((int) sQLiteStatementT4.getLong(i27)) != 0;
                        iC29 = i27;
                        int i28 = iC30;
                        int i29 = iC31;
                        int i30 = iC32;
                        iC31 = i29;
                        int i31 = iC33;
                        arrayList.add(new WorkSpec(strM1, stateE, strM2, strM3, dataA, dataA2, j2, j3, j4, new Constraints(networkRequestCompatG, networkTypeC, z2, z3, z4, ((int) sQLiteStatementT4.getLong(i28)) != 0, sQLiteStatementT4.getLong(i29), sQLiteStatementT4.getLong(i30), WorkTypeConverters.a(sQLiteStatementT4.getBlob(i31))), i6, backoffPolicyB, j5, j6, j7, j8, z, outOfQuotaPolicyD, i15, i17, j9, i20, i21, strM4, boolValueOf));
                        iC2 = i12;
                        iC16 = i11;
                        iC19 = i16;
                        iC20 = i18;
                        iC24 = i22;
                        iC25 = i23;
                        iC26 = i24;
                        iC27 = i25;
                        iC28 = i26;
                        iC33 = i31;
                        iC32 = i30;
                        iC30 = i28;
                        iC4 = i8;
                        iC = i4;
                        iC14 = i5;
                        iC5 = i7;
                        iC3 = i10;
                        iC15 = i9;
                        break;
                    }
                    return arrayList;
                } finally {
                    sQLiteStatementT4.close();
                }
            case 23:
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion6 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection5.getClass();
                SQLiteStatement sQLiteStatementT5 = sQLiteConnection5.T1("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1");
                try {
                    return Boolean.valueOf(sQLiteStatementT5.Q1() && ((int) sQLiteStatementT5.getLong(0)) != 0);
                } finally {
                    sQLiteStatementT5.close();
                }
            case 24:
                SQLiteConnection sQLiteConnection6 = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion7 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection6.getClass();
                SQLiteStatement sQLiteStatementT6 = sQLiteConnection6.T1("SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?");
                try {
                    sQLiteStatementT6.a(1, 200L);
                    int iC34 = SQLiteStatementUtil.c(sQLiteStatementT6, b.a.f24015b);
                    int iC35 = SQLiteStatementUtil.c(sQLiteStatementT6, "state");
                    int iC36 = SQLiteStatementUtil.c(sQLiteStatementT6, "worker_class_name");
                    int iC37 = SQLiteStatementUtil.c(sQLiteStatementT6, "input_merger_class_name");
                    int iC38 = SQLiteStatementUtil.c(sQLiteStatementT6, "input");
                    int iC39 = SQLiteStatementUtil.c(sQLiteStatementT6, "output");
                    int iC40 = SQLiteStatementUtil.c(sQLiteStatementT6, "initial_delay");
                    int iC41 = SQLiteStatementUtil.c(sQLiteStatementT6, "interval_duration");
                    int iC42 = SQLiteStatementUtil.c(sQLiteStatementT6, "flex_duration");
                    int iC43 = SQLiteStatementUtil.c(sQLiteStatementT6, "run_attempt_count");
                    int iC44 = SQLiteStatementUtil.c(sQLiteStatementT6, "backoff_policy");
                    int iC45 = SQLiteStatementUtil.c(sQLiteStatementT6, "backoff_delay_duration");
                    int iC46 = SQLiteStatementUtil.c(sQLiteStatementT6, "last_enqueue_time");
                    int iC47 = SQLiteStatementUtil.c(sQLiteStatementT6, "minimum_retention_duration");
                    int iC48 = SQLiteStatementUtil.c(sQLiteStatementT6, "schedule_requested_at");
                    int iC49 = SQLiteStatementUtil.c(sQLiteStatementT6, "run_in_foreground");
                    int iC50 = SQLiteStatementUtil.c(sQLiteStatementT6, "out_of_quota_policy");
                    int iC51 = SQLiteStatementUtil.c(sQLiteStatementT6, "period_count");
                    int iC52 = SQLiteStatementUtil.c(sQLiteStatementT6, "generation");
                    int iC53 = SQLiteStatementUtil.c(sQLiteStatementT6, "next_schedule_time_override");
                    int iC54 = SQLiteStatementUtil.c(sQLiteStatementT6, "next_schedule_time_override_generation");
                    int iC55 = SQLiteStatementUtil.c(sQLiteStatementT6, "stop_reason");
                    int iC56 = SQLiteStatementUtil.c(sQLiteStatementT6, "trace_tag");
                    int iC57 = SQLiteStatementUtil.c(sQLiteStatementT6, "backoff_on_system_interruptions");
                    int iC58 = SQLiteStatementUtil.c(sQLiteStatementT6, "required_network_type");
                    int iC59 = SQLiteStatementUtil.c(sQLiteStatementT6, "required_network_request");
                    int iC60 = SQLiteStatementUtil.c(sQLiteStatementT6, "requires_charging");
                    int iC61 = SQLiteStatementUtil.c(sQLiteStatementT6, "requires_device_idle");
                    int iC62 = SQLiteStatementUtil.c(sQLiteStatementT6, "requires_battery_not_low");
                    int iC63 = SQLiteStatementUtil.c(sQLiteStatementT6, "requires_storage_not_low");
                    int iC64 = SQLiteStatementUtil.c(sQLiteStatementT6, "trigger_content_update_delay");
                    int iC65 = SQLiteStatementUtil.c(sQLiteStatementT6, "trigger_max_content_delay");
                    int iC66 = SQLiteStatementUtil.c(sQLiteStatementT6, "content_uri_triggers");
                    ArrayList arrayList2 = new ArrayList();
                    while (sQLiteStatementT6.Q1()) {
                        String strM5 = sQLiteStatementT6.m1(iC34);
                        int i32 = iC47;
                        ArrayList arrayList3 = arrayList2;
                        WorkInfo.State stateE2 = WorkTypeConverters.e((int) sQLiteStatementT6.getLong(iC35));
                        String strM6 = sQLiteStatementT6.m1(iC36);
                        String strM7 = sQLiteStatementT6.m1(iC37);
                        byte[] blob2 = sQLiteStatementT6.getBlob(iC38);
                        Data.f20243b.getClass();
                        Data dataA3 = Data.Companion.a(blob2);
                        Data dataA4 = Data.Companion.a(sQLiteStatementT6.getBlob(iC39));
                        long j10 = sQLiteStatementT6.getLong(iC40);
                        long j11 = sQLiteStatementT6.getLong(iC41);
                        long j12 = sQLiteStatementT6.getLong(iC42);
                        int i33 = (int) sQLiteStatementT6.getLong(iC43);
                        int i34 = iC38;
                        int i35 = iC37;
                        BackoffPolicy backoffPolicyB2 = WorkTypeConverters.b((int) sQLiteStatementT6.getLong(iC44));
                        long j13 = sQLiteStatementT6.getLong(iC45);
                        long j14 = sQLiteStatementT6.getLong(iC46);
                        long j15 = sQLiteStatementT6.getLong(i32);
                        int i36 = iC48;
                        long j16 = sQLiteStatementT6.getLong(i36);
                        int i37 = iC49;
                        iC48 = i36;
                        boolean z5 = ((int) sQLiteStatementT6.getLong(i37)) != 0;
                        int i38 = iC36;
                        int i39 = iC50;
                        OutOfQuotaPolicy outOfQuotaPolicyD2 = WorkTypeConverters.d((int) sQLiteStatementT6.getLong(i39));
                        int i40 = iC51;
                        int i41 = iC35;
                        int i42 = (int) sQLiteStatementT6.getLong(i40);
                        iC50 = i39;
                        int i43 = iC52;
                        int i44 = (int) sQLiteStatementT6.getLong(i43);
                        long j17 = sQLiteStatementT6.getLong(iC53);
                        int i45 = iC54;
                        int i46 = (int) sQLiteStatementT6.getLong(i45);
                        iC54 = i45;
                        iC55 = iC55;
                        int i47 = (int) sQLiteStatementT6.getLong(iC55);
                        iC56 = iC56;
                        String strM8 = sQLiteStatementT6.isNull(iC56) ? null : sQLiteStatementT6.m1(iC56);
                        int i48 = iC57;
                        Integer numValueOf2 = sQLiteStatementT6.isNull(i48) ? null : Integer.valueOf((int) sQLiteStatementT6.getLong(i48));
                        if (numValueOf2 != null) {
                            boolValueOf2 = Boolean.valueOf(numValueOf2.intValue() != 0);
                        } else {
                            boolValueOf2 = null;
                        }
                        int i49 = iC58;
                        NetworkType networkTypeC2 = WorkTypeConverters.c((int) sQLiteStatementT6.getLong(i49));
                        int i50 = iC59;
                        NetworkRequestCompat networkRequestCompatG2 = WorkTypeConverters.g(sQLiteStatementT6.getBlob(i50));
                        int i51 = iC60;
                        boolean z6 = ((int) sQLiteStatementT6.getLong(i51)) != 0;
                        int i52 = iC61;
                        boolean z7 = ((int) sQLiteStatementT6.getLong(i52)) != 0;
                        int i53 = iC62;
                        boolean z8 = ((int) sQLiteStatementT6.getLong(i53)) != 0;
                        iC62 = i53;
                        int i54 = iC63;
                        int i55 = iC64;
                        int i56 = iC65;
                        iC64 = i55;
                        int i57 = iC66;
                        iC66 = i57;
                        arrayList3.add(new WorkSpec(strM5, stateE2, strM6, strM7, dataA3, dataA4, j10, j11, j12, new Constraints(networkRequestCompatG2, networkTypeC2, z6, z7, z8, ((int) sQLiteStatementT6.getLong(i54)) != 0, sQLiteStatementT6.getLong(i55), sQLiteStatementT6.getLong(i56), WorkTypeConverters.a(sQLiteStatementT6.getBlob(i57))), i33, backoffPolicyB2, j13, j14, j15, j16, z5, outOfQuotaPolicyD2, i42, i44, j17, i46, i47, strM8, boolValueOf2));
                        iC61 = i52;
                        iC35 = i41;
                        iC51 = i40;
                        iC52 = i43;
                        iC57 = i48;
                        iC58 = i49;
                        iC59 = i50;
                        iC60 = i51;
                        iC65 = i56;
                        iC63 = i54;
                        iC47 = i32;
                        iC37 = i35;
                        iC36 = i38;
                        iC49 = i37;
                        arrayList2 = arrayList3;
                        iC38 = i34;
                        break;
                    }
                    return arrayList2;
                } finally {
                    sQLiteStatementT6.close();
                }
            case 25:
                SQLiteConnection sQLiteConnection7 = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion8 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection7.getClass();
                SQLiteStatement sQLiteStatementT7 = sQLiteConnection7.T1("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1");
                try {
                    int iC67 = SQLiteStatementUtil.c(sQLiteStatementT7, b.a.f24015b);
                    int iC68 = SQLiteStatementUtil.c(sQLiteStatementT7, "state");
                    int iC69 = SQLiteStatementUtil.c(sQLiteStatementT7, "worker_class_name");
                    int iC70 = SQLiteStatementUtil.c(sQLiteStatementT7, "input_merger_class_name");
                    int iC71 = SQLiteStatementUtil.c(sQLiteStatementT7, "input");
                    int iC72 = SQLiteStatementUtil.c(sQLiteStatementT7, "output");
                    int iC73 = SQLiteStatementUtil.c(sQLiteStatementT7, "initial_delay");
                    int iC74 = SQLiteStatementUtil.c(sQLiteStatementT7, "interval_duration");
                    int iC75 = SQLiteStatementUtil.c(sQLiteStatementT7, "flex_duration");
                    int iC76 = SQLiteStatementUtil.c(sQLiteStatementT7, "run_attempt_count");
                    int iC77 = SQLiteStatementUtil.c(sQLiteStatementT7, "backoff_policy");
                    int iC78 = SQLiteStatementUtil.c(sQLiteStatementT7, "backoff_delay_duration");
                    int iC79 = SQLiteStatementUtil.c(sQLiteStatementT7, "last_enqueue_time");
                    int iC80 = SQLiteStatementUtil.c(sQLiteStatementT7, "minimum_retention_duration");
                    int iC81 = SQLiteStatementUtil.c(sQLiteStatementT7, "schedule_requested_at");
                    int iC82 = SQLiteStatementUtil.c(sQLiteStatementT7, "run_in_foreground");
                    int iC83 = SQLiteStatementUtil.c(sQLiteStatementT7, "out_of_quota_policy");
                    int iC84 = SQLiteStatementUtil.c(sQLiteStatementT7, "period_count");
                    int iC85 = SQLiteStatementUtil.c(sQLiteStatementT7, "generation");
                    int iC86 = SQLiteStatementUtil.c(sQLiteStatementT7, "next_schedule_time_override");
                    int iC87 = SQLiteStatementUtil.c(sQLiteStatementT7, "next_schedule_time_override_generation");
                    int iC88 = SQLiteStatementUtil.c(sQLiteStatementT7, "stop_reason");
                    int iC89 = SQLiteStatementUtil.c(sQLiteStatementT7, "trace_tag");
                    int iC90 = SQLiteStatementUtil.c(sQLiteStatementT7, "backoff_on_system_interruptions");
                    int iC91 = SQLiteStatementUtil.c(sQLiteStatementT7, "required_network_type");
                    int iC92 = SQLiteStatementUtil.c(sQLiteStatementT7, "required_network_request");
                    int iC93 = SQLiteStatementUtil.c(sQLiteStatementT7, "requires_charging");
                    int iC94 = SQLiteStatementUtil.c(sQLiteStatementT7, "requires_device_idle");
                    int iC95 = SQLiteStatementUtil.c(sQLiteStatementT7, "requires_battery_not_low");
                    int iC96 = SQLiteStatementUtil.c(sQLiteStatementT7, "requires_storage_not_low");
                    int iC97 = SQLiteStatementUtil.c(sQLiteStatementT7, "trigger_content_update_delay");
                    int iC98 = SQLiteStatementUtil.c(sQLiteStatementT7, "trigger_max_content_delay");
                    int iC99 = SQLiteStatementUtil.c(sQLiteStatementT7, "content_uri_triggers");
                    ArrayList arrayList4 = new ArrayList();
                    while (sQLiteStatementT7.Q1()) {
                        String strM9 = sQLiteStatementT7.m1(iC67);
                        int i58 = iC80;
                        int i59 = iC79;
                        WorkInfo.State stateE3 = WorkTypeConverters.e((int) sQLiteStatementT7.getLong(iC68));
                        String strM10 = sQLiteStatementT7.m1(iC69);
                        String strM11 = sQLiteStatementT7.m1(iC70);
                        byte[] blob3 = sQLiteStatementT7.getBlob(iC71);
                        Data.f20243b.getClass();
                        Data dataA5 = Data.Companion.a(blob3);
                        Data dataA6 = Data.Companion.a(sQLiteStatementT7.getBlob(iC72));
                        long j18 = sQLiteStatementT7.getLong(iC73);
                        long j19 = sQLiteStatementT7.getLong(iC74);
                        long j20 = sQLiteStatementT7.getLong(iC75);
                        int i60 = (int) sQLiteStatementT7.getLong(iC76);
                        int i61 = iC71;
                        int i62 = iC70;
                        BackoffPolicy backoffPolicyB3 = WorkTypeConverters.b((int) sQLiteStatementT7.getLong(iC77));
                        long j21 = sQLiteStatementT7.getLong(iC78);
                        long j22 = sQLiteStatementT7.getLong(i59);
                        long j23 = sQLiteStatementT7.getLong(i58);
                        int i63 = iC81;
                        long j24 = sQLiteStatementT7.getLong(i63);
                        int i64 = iC69;
                        int i65 = iC82;
                        boolean z9 = ((int) sQLiteStatementT7.getLong(i65)) != 0;
                        int i66 = iC68;
                        int i67 = iC83;
                        OutOfQuotaPolicy outOfQuotaPolicyD3 = WorkTypeConverters.d((int) sQLiteStatementT7.getLong(i67));
                        iC83 = i67;
                        int i68 = iC84;
                        int i69 = (int) sQLiteStatementT7.getLong(i68);
                        iC84 = i68;
                        int i70 = iC85;
                        int i71 = (int) sQLiteStatementT7.getLong(i70);
                        int i72 = iC86;
                        long j25 = sQLiteStatementT7.getLong(i72);
                        int i73 = iC87;
                        int i74 = (int) sQLiteStatementT7.getLong(i73);
                        iC87 = i73;
                        iC88 = iC88;
                        int i75 = (int) sQLiteStatementT7.getLong(iC88);
                        iC89 = iC89;
                        String strM12 = sQLiteStatementT7.isNull(iC89) ? null : sQLiteStatementT7.m1(iC89);
                        int i76 = iC90;
                        Integer numValueOf3 = sQLiteStatementT7.isNull(i76) ? null : Integer.valueOf((int) sQLiteStatementT7.getLong(i76));
                        if (numValueOf3 != null) {
                            boolValueOf3 = Boolean.valueOf(numValueOf3.intValue() != 0);
                        } else {
                            boolValueOf3 = null;
                        }
                        int i77 = iC91;
                        NetworkType networkTypeC3 = WorkTypeConverters.c((int) sQLiteStatementT7.getLong(i77));
                        int i78 = iC92;
                        NetworkRequestCompat networkRequestCompatG3 = WorkTypeConverters.g(sQLiteStatementT7.getBlob(i78));
                        int i79 = iC93;
                        boolean z10 = ((int) sQLiteStatementT7.getLong(i79)) != 0;
                        int i80 = iC94;
                        boolean z11 = ((int) sQLiteStatementT7.getLong(i80)) != 0;
                        int i81 = iC95;
                        boolean z12 = ((int) sQLiteStatementT7.getLong(i81)) != 0;
                        iC95 = i81;
                        int i82 = iC96;
                        int i83 = iC97;
                        int i84 = iC98;
                        iC97 = i83;
                        int i85 = iC99;
                        arrayList4.add(new WorkSpec(strM9, stateE3, strM10, strM11, dataA5, dataA6, j18, j19, j20, new Constraints(networkRequestCompatG3, networkTypeC3, z10, z11, z12, ((int) sQLiteStatementT7.getLong(i82)) != 0, sQLiteStatementT7.getLong(i83), sQLiteStatementT7.getLong(i84), WorkTypeConverters.a(sQLiteStatementT7.getBlob(i85))), i60, backoffPolicyB3, j21, j22, j23, j24, z9, outOfQuotaPolicyD3, i69, i71, j25, i74, i75, strM12, boolValueOf3));
                        iC68 = i66;
                        iC82 = i65;
                        iC85 = i70;
                        iC86 = i72;
                        iC90 = i76;
                        iC91 = i77;
                        iC92 = i78;
                        iC93 = i79;
                        iC94 = i80;
                        iC99 = i85;
                        iC98 = i84;
                        iC96 = i82;
                        iC80 = i58;
                        iC70 = i62;
                        iC71 = i61;
                        iC69 = i64;
                        iC81 = i63;
                        iC79 = i59;
                        break;
                    }
                    return arrayList4;
                } finally {
                    sQLiteStatementT7.close();
                }
            case 26:
                return a(obj);
            case 27:
                ((Drawable) obj).getClass();
                return Unit.f71739a;
            case 28:
                ((ZipEntry) obj).getClass();
                return Boolean.TRUE;
            default:
                return AFa1mSDK.registerClient(obj);
        }
    }
}
