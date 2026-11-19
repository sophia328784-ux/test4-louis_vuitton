package com.vuitton.android.presentation.screen.distantrepairs.form.datepicker;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Dp;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairCalendarViewState;
import defpackage.gf;
import defpackage.lf;
import defpackage.rt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;", "slotSelected", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DistantRepairBottomSheetDatePickerKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f57325a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f57325a = 80.0f;
    }

    /* JADX WARN: Code duplicated, block: B:53:0x009b  */
    /* JADX WARN: Code duplicated, block: B:55:0x009f  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:58:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:61:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:64:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:65:0x00be  */
    /* JADX WARN: Code duplicated, block: B:68:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:74:0x00da  */
    /* JADX WARN: Code duplicated, block: B:75:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:81:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:84:0x0104  */
    /* JADX WARN: Code duplicated, block: B:86:0x014c  */
    /* JADX WARN: Code duplicated, block: B:89:0x0159  */
    /* JADX WARN: Code duplicated, block: B:91:? A[RETURN, SYNTHETIC] */
    public static final void a(String str, DistantRepairCalendarViewState distantRepairCalendarViewState, SnackbarHostState snackbarHostState, Function2 function2, Function1 function1, Function0 function0, String str2, Composer composer, int i2, int i3) {
        int i4;
        SnackbarHostState snackbarHostState2;
        Function2 function3;
        Function0 function4;
        String strC;
        boolean z;
        GapComposer gapComposer;
        Function0 function5;
        String str3;
        RecomposeScopeImpl recomposeScopeImplB0;
        int i5;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Object objX;
        Object objX2;
        str.getClass();
        distantRepairCalendarViewState.getClass();
        snackbarHostState.getClass();
        function2.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(2101741273);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(distantRepairCalendarViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            snackbarHostState2 = snackbarHostState;
            i4 |= gapComposerH.K(snackbarHostState2) ? 256 : 128;
        } else {
            snackbarHostState2 = snackbarHostState;
        }
        if ((i2 & 3072) == 0) {
            function3 = function2;
            i4 |= gapComposerH.y(function3) ? 2048 : 1024;
        } else {
            function3 = function2;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        int i6 = i3 & 32;
        if (i6 == 0) {
            if ((196608 & i2) == 0) {
                function4 = function0;
                i4 |= gapComposerH.y(function4) ? 131072 : 65536;
            }
            if ((1572864 & i2) == 0) {
                if ((i3 & 64) == 0) {
                    strC = str2;
                    int i7 = gapComposerH.K(strC) ? 1048576 : 524288;
                    i4 |= i7;
                } else {
                    strC = str2;
                }
                i4 |= i7;
            } else {
                strC = str2;
            }
            if ((599187 & i4) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i4 & 1, z)) {
                gapComposerH.y0();
                i5 = i2 & 1;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i5 != 0 || gapComposerH.h0()) {
                    if (i6 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new rt(2);
                            gapComposerH.q(objX);
                        }
                        function4 = (Function0) objX;
                    }
                    if ((i3 & 64) != 0) {
                        strC = StringResources_androidKt.c(gapComposerH, R.string.osa_cta_calendar_select);
                    }
                } else {
                    gapComposerH.D();
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = SnapshotStateKt.g(distantRepairCalendarViewState.f57378f.f57366b);
                    gapComposerH.q(objX2);
                }
                SnackbarHostState snackbarHostState3 = snackbarHostState2;
                Function2 function6 = function3;
                Function0 function7 = function4;
                str3 = strC;
                gapComposer = gapComposerH;
                LVCustomBottomSheetContentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, StringResources_androidKt.c(gapComposerH, R.string.dr_pick_date), "careservicesCalendar_title_text", StringResources_androidKt.c(gapComposerH, R.string.dr_month_availabilities), "careservicesCalendar_description_text", null, true, "careservicesCalendar_cross_button", null, ComposableLambdaKt.b(-144485340, new lf(snackbarHostState3, distantRepairCalendarViewState, function6, str, function7, (MutableState) objX2, str3, function1), gapComposerH), gapComposer, 818088960, 48, 1347);
                function5 = function7;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                function5 = function4;
                str3 = strC;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new gf(str, distantRepairCalendarViewState, snackbarHostState, function2, function1, function5, str3, i2, i3);
            }
        }
        i4 |= ImageMetadata.EDGE_MODE;
        function4 = function0;
        if ((1572864 & i2) == 0) {
            if ((i3 & 64) == 0) {
                strC = str2;
                if (gapComposerH.K(strC)) {
                }
                i4 |= i7;
            } else {
                strC = str2;
            }
            i4 |= i7;
        } else {
            strC = str2;
        }
        if ((599187 & i4) != 599186) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i4 & 1, z)) {
            gapComposerH.y0();
            i5 = i2 & 1;
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i5 != 0) {
                if (i6 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new rt(2);
                        gapComposerH.q(objX);
                    }
                    function4 = (Function0) objX;
                }
                if ((i3 & 64) != 0) {
                    strC = StringResources_androidKt.c(gapComposerH, R.string.osa_cta_calendar_select);
                }
            } else {
                if (i6 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new rt(2);
                        gapComposerH.q(objX);
                    }
                    function4 = (Function0) objX;
                }
                if ((i3 & 64) != 0) {
                    strC = StringResources_androidKt.c(gapComposerH, R.string.osa_cta_calendar_select);
                }
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(distantRepairCalendarViewState.f57378f.f57366b);
                gapComposerH.q(objX2);
            }
            SnackbarHostState snackbarHostState4 = snackbarHostState2;
            Function2 function8 = function3;
            Function0 function9 = function4;
            str3 = strC;
            gapComposer = gapComposerH;
            LVCustomBottomSheetContentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, StringResources_androidKt.c(gapComposerH, R.string.dr_pick_date), "careservicesCalendar_title_text", StringResources_androidKt.c(gapComposerH, R.string.dr_month_availabilities), "careservicesCalendar_description_text", null, true, "careservicesCalendar_cross_button", null, ComposableLambdaKt.b(-144485340, new lf(snackbarHostState4, distantRepairCalendarViewState, function8, str, function9, (MutableState) objX2, str3, function1), gapComposerH), gapComposer, 818088960, 48, 1347);
            function5 = function9;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            function5 = function4;
            str3 = strC;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gf(str, distantRepairCalendarViewState, snackbarHostState, function2, function1, function5, str3, i2, i3);
        }
    }
}
