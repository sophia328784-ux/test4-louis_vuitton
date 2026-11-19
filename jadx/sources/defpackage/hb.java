package defpackage;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.Easing;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemInfo;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureResult;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureResultKt;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
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
import coil3.Extras;
import coil3.Image_androidKt;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.util.ContextsKt;
import com.airbnb.lottie.value.LottieFrameInfo;
import com.batch.android.s.b;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVCheckboxKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVRadioButtonKt;
import com.vuitton.android.presentation.compose.animation.EnterTransitionKt;
import com.vuitton.android.presentation.compose.animation.ExitTransitionKt;
import com.vuitton.android.presentation.screen.booking.confirmation.components.BookingConfirmationScreenKt;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hb implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69672b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f69673c;

    public /* synthetic */ hb(int i2, int i3) {
        this.f69672b = i3;
        this.f69673c = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws Exception {
        Easing easing;
        SQLiteStatement sQLiteStatement;
        int i2 = this.f69672b;
        int i3 = this.f69673c;
        switch (i2) {
            case 0:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.g(semanticsPropertyReceiver, new CollectionItemInfo(i3, 1, 0, 1));
                return Unit.f71739a;
            case 1:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                float f2 = BookingConfirmationScreenKt.f54386a;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.g(semanticsPropertyReceiver2, new CollectionItemInfo(i3, 1, 0, 1));
                return Unit.f71739a;
            case 2:
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope.getClass();
                return EnterTransitionKt.a(animatedContentTransitionScope, i3, 1);
            case 3:
                AnimatedContentTransitionScope animatedContentTransitionScope2 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope2.getClass();
                return ExitTransitionKt.a(animatedContentTransitionScope2, i3, 1);
            case 4:
                AnimatedContentTransitionScope animatedContentTransitionScope3 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope3.getClass();
                return EnterTransitionKt.b(animatedContentTransitionScope3, i3, 1);
            case 5:
                AnimatedContentTransitionScope animatedContentTransitionScope4 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope4.getClass();
                return ExitTransitionKt.b(animatedContentTransitionScope4, i3, 1);
            case 6:
                ((Integer) obj).intValue();
                float f3 = DatePickerKt.f6780a;
                return Integer.valueOf(i3);
            case 7:
                Extras.Key key = ImageRequests_androidKt.f21651a;
                return Image_androidKt.b(ContextsKt.a(i3, ((ImageRequest) obj).f21612a));
            case 8:
                Extras.Key key2 = ImageRequests_androidKt.f21651a;
                return Image_androidKt.b(ContextsKt.a(i3, ((ImageRequest) obj).f21612a));
            case 9:
                CubicBezierEasing cubicBezierEasing = LVButtonKt.f48454a;
                ((LottieFrameInfo) obj).getClass();
                return new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_ATOP);
            case 10:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVCheckboxKt.f48456a;
                ((LottieFrameInfo) obj).getClass();
                return new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_ATOP);
            case 11:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = LVCheckboxKt.f48456a;
                ((LottieFrameInfo) obj).getClass();
                return new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_ATOP);
            case 12:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = LVCheckboxKt.f48456a;
                ((LottieFrameInfo) obj).getClass();
                return new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_ATOP);
            case 13:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.g(semanticsPropertyReceiver3, new CollectionItemInfo(0, 1, i3, 1));
                return Unit.f71739a;
            case 14:
                int iIntValue = ((Integer) obj).intValue();
                int i4 = (iIntValue == 0 || iIntValue == i3) ? 500 : 300;
                if (iIntValue == 0) {
                    easing = EasingKt.f3864c;
                } else {
                    easing = iIntValue == i3 ? EasingKt.f3863b : EasingKt.d;
                }
                return AnimationSpecKt.c(i4, 0, easing, 2);
            case 15:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = LVRadioButtonKt.f48494a;
                ((LottieFrameInfo) obj).getClass();
                return new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_ATOP);
            case 16:
                LazyStaggeredGridMeasureResult lazyStaggeredGridMeasureResult = LazyStaggeredGridMeasureResultKt.f5641a;
                return Integer.valueOf(((LazyStaggeredGridItemInfo) obj).getF5212a() - i3);
            case 17:
                ((LottieFrameInfo) obj).getClass();
                return new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_ATOP);
            case 18:
                ((LottieFrameInfo) obj).getClass();
                return new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_ATOP);
            case 19:
                ((LottieFrameInfo) obj).getClass();
                return new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_ATOP);
            case 20:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                SemanticsPropertiesKt.g(semanticsPropertyReceiver4, new CollectionItemInfo(i3, 1, 0, 1));
                return Unit.f71739a;
            case 21:
                SemanticsPropertyReceiver semanticsPropertyReceiver5 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver5.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver5, new CollectionInfo(i3, 1));
                return Unit.f71739a;
            case 22:
                SemanticsPropertyReceiver semanticsPropertyReceiver6 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver6.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver6, new CollectionInfo(1, i3));
                return Unit.f71739a;
            case 23:
                SemanticsPropertyReceiver semanticsPropertyReceiver7 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver7.getClass();
                SemanticsPropertiesKt.g(semanticsPropertyReceiver7, new CollectionItemInfo(i3, 1, 0, 1));
                return Unit.f71739a;
            case 24:
                SemanticsPropertyReceiver semanticsPropertyReceiver8 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver8.getClass();
                SemanticsPropertiesKt.g(semanticsPropertyReceiver8, new CollectionItemInfo(i3, 1, 0, 1));
                return Unit.f71739a;
            case 25:
                SemanticsPropertyReceiver semanticsPropertyReceiver9 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver9.getClass();
                SemanticsPropertiesKt.g(semanticsPropertyReceiver9, new CollectionItemInfo(i3, 1, 0, 1));
                return Unit.f71739a;
            default:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion = WorkSpecDao_Impl.f20530c;
                sQLiteConnection.getClass();
                SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))");
                try {
                    sQLiteStatementT1.a(1, i3);
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
                        int i5 = iC14;
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
                        int i6 = (int) sQLiteStatementT1.getLong(iC10);
                        BackoffPolicy backoffPolicyB = WorkTypeConverters.b((int) sQLiteStatementT1.getLong(iC11));
                        long j5 = sQLiteStatementT1.getLong(iC12);
                        long j6 = sQLiteStatementT1.getLong(iC13);
                        long j7 = sQLiteStatementT1.getLong(i5);
                        int i7 = iC15;
                        long j8 = sQLiteStatementT1.getLong(i7);
                        int i8 = iC;
                        int i9 = iC16;
                        boolean z = ((int) sQLiteStatementT1.getLong(i9)) != 0;
                        int i10 = iC17;
                        int i11 = iC2;
                        OutOfQuotaPolicy outOfQuotaPolicyD = WorkTypeConverters.d((int) sQLiteStatementT1.getLong(i10));
                        int i12 = iC18;
                        int i13 = iC3;
                        int i14 = (int) sQLiteStatementT1.getLong(i12);
                        int i15 = iC19;
                        int i16 = (int) sQLiteStatementT1.getLong(i15);
                        int i17 = iC20;
                        long j9 = sQLiteStatementT1.getLong(i17);
                        int i18 = iC21;
                        int i19 = (int) sQLiteStatementT1.getLong(i18);
                        int i20 = iC22;
                        int i21 = (int) sQLiteStatementT1.getLong(i20);
                        int i22 = iC23;
                        Boolean boolValueOf = null;
                        String strM4 = sQLiteStatementT1.isNull(i22) ? null : sQLiteStatementT1.m1(i22);
                        int i23 = iC24;
                        Integer numValueOf = sQLiteStatementT1.isNull(i23) ? null : Integer.valueOf((int) sQLiteStatementT1.getLong(i23));
                        if (numValueOf != null) {
                            boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                        }
                        int i24 = iC25;
                        Boolean bool = boolValueOf;
                        NetworkType networkTypeC = WorkTypeConverters.c((int) sQLiteStatementT1.getLong(i24));
                        int i25 = iC26;
                        NetworkRequestCompat networkRequestCompatG = WorkTypeConverters.g(sQLiteStatementT1.getBlob(i25));
                        iC25 = i24;
                        iC26 = i25;
                        int i26 = iC27;
                        boolean z2 = ((int) sQLiteStatementT1.getLong(i26)) != 0;
                        iC27 = i26;
                        int i27 = iC28;
                        boolean z3 = ((int) sQLiteStatementT1.getLong(i27)) != 0;
                        int i28 = iC29;
                        boolean z4 = ((int) sQLiteStatementT1.getLong(i28)) != 0;
                        iC29 = i28;
                        int i29 = iC30;
                        int i30 = iC31;
                        int i31 = iC32;
                        int i32 = iC33;
                        iC33 = i32;
                        sQLiteStatement = sQLiteStatementT1;
                        try {
                            arrayList2.add(new WorkSpec(strM1, stateE, strM2, strM3, dataA, dataA2, j2, j3, j4, new Constraints(networkRequestCompatG, networkTypeC, z2, z3, z4, ((int) sQLiteStatementT1.getLong(i29)) != 0, sQLiteStatementT1.getLong(i30), sQLiteStatementT1.getLong(i31), WorkTypeConverters.a(sQLiteStatementT1.getBlob(i32))), i6, backoffPolicyB, j5, j6, j7, j8, z, outOfQuotaPolicyD, i14, i16, j9, i19, i21, strM4, bool));
                            iC30 = i29;
                            iC2 = i11;
                            iC17 = i10;
                            iC19 = i15;
                            iC22 = i20;
                            iC24 = i23;
                            iC = i8;
                            iC15 = i7;
                            iC32 = i31;
                            iC16 = i9;
                            iC20 = i17;
                            iC21 = i18;
                            iC23 = i22;
                            arrayList = arrayList2;
                            iC28 = i27;
                            iC3 = i13;
                            sQLiteStatementT1 = sQLiteStatement;
                            iC18 = i12;
                            iC31 = i30;
                            iC14 = i5;
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
