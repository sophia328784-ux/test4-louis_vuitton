package com.vuitton.android.presentation.screen.osa.form.contactinformation.components;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.presentation.screen.orders.components.returns.legacy.LoadingAnimationKt;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.osa.models.AutomationTagsOSA$AddToCalendarAction;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.aj0;
import defpackage.cj;
import defpackage.d21;
import defpackage.dj0;
import defpackage.il;
import defpackage.oi0;
import defpackage.p1;
import defpackage.z2;
import java.time.LocalDateTime;
import java.time.format.FormatStyle;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OsaContactFormBottomSheetScreenKt {
    public static final void a(Modifier modifier, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AlreadyExistAccountBottomSheet");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1145859888);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function0) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function2) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.osa_bottom_mandatory_login_title);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.osa_cta_login_confirm);
            int i4 = i3 & 7168;
            boolean z = ((i3 & 112) == 32) | (i4 == 2048);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = new il(function0, function2, 5);
                gapComposerH.q(objX);
            }
            Function0 function3 = (Function0) objX;
            String strC3 = StringResources_androidKt.c(gapComposerH, R.string.osa_cta_cancel_account_check);
            boolean z2 = ((i3 & 896) == 256) | (i4 == 2048);
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new il(function1, function2, 6);
                gapComposerH.q(objX2);
            }
            gapComposer = gapComposerH;
            LVModalBottomSheetKt.a(modifier2, null, null, null, null, strC, null, strC2, null, false, null, function3, strC3, false, null, (Function0) objX2, null, false, null, gapComposer, i3 & 14, 0, 976734);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oi0(modifier2, function0, function1, function2, i2, 3);
        }
    }

    public static final void b(Modifier modifier, InAppDispatch inAppDispatch, boolean z, LocalDateTime localDateTime, String str, Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        String strB;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AppointmentConfirmBottomSheet");
        }
        Modifier modifier2 = modifierE;
        inAppDispatch.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(535192144);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(inAppDispatch) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(localDateTime) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(str) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(hapticFeedback);
            Object objX = gapComposerH.x();
            String strF = null;
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new OsaContactFormBottomSheetScreenKt$AppointmentConfirmBottomSheet$1$1(hapticFeedback, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            if (z) {
                strB = cj.f(gapComposerH, 991028153, R.string.osa_appointment_modification_confirmation_bottom_sheet_navigation_title, gapComposerH, false);
            } else {
                gapComposerH.L(991174938);
                gapComposerH.L(-1076405360);
                strB = (str == null || localDateTime == null) ? null : StringResources_androidKt.b(R.string.osa_appointment_creation_confirmation_bottom_sheet_success_message, new Object[]{str, DateTimeUtils.i(DateTimeUtils.f65832a, localDateTime, false, 6)}, gapComposerH);
                gapComposerH.Z(false);
                if (strB == null) {
                    strB = cj.f(gapComposerH, -1076393244, R.string.osa_appointment_creation_confirmation_notification, gapComposerH, false);
                } else {
                    gapComposerH.L(-1076405272);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(false);
            }
            if (z) {
                gapComposerH.L(991712571);
                if (localDateTime == null) {
                    gapComposerH.L(991732286);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(991732287);
                    strF = String.format(StringResources_androidKt.c(gapComposerH, R.string.osa_appointment_modification_confirmation_bottom_sheet_success_message), Arrays.copyOf(new Object[]{DateTimeUtils.l(localDateTime, inAppDispatch), DateTimeUtils.c(inAppDispatch, localDateTime, FormatStyle.FULL)}, 2));
                    gapComposerH.Z(false);
                }
                if (strF == null) {
                    strF = cj.f(gapComposerH, -1076376552, R.string.osa_appointment_creation_confirmation_bottom_sheet_success_description, gapComposerH, false);
                } else {
                    gapComposerH.L(-1076387929);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(false);
            } else {
                strF = cj.f(gapComposerH, 992180826, R.string.osa_appointment_creation_confirmation_bottom_sheet_success_description, gapComposerH, false);
            }
            String str2 = strF;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.osa_cta_calendar);
            int i4 = LVAppDesignKitTheme.g(gapComposerH).I0;
            ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a.getClass();
            gapComposer = gapComposerH;
            LVModalBottomSheetKt.a(modifier2, null, strB, "osa_appointmentConfirmedDetailsDescription_text", ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60711b, str2, "osa_appointmentConfirmedMail_text", strC, Integer.valueOf(i4), false, AutomationTagsOSA$AddToCalendarAction.f60911a, function0, null, false, null, null, null, false, null, gapComposer, (i3 & 14) | 1600512, ((i3 >> 12) & 112) | 6, 1044994);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p1(modifier2, inAppDispatch, z, localDateTime, str, function0, i2);
        }
    }

    public static final void c(Modifier modifier, Function0 function0, Function0 function1, Composer composer, int i2) {
        int i3;
        Function0 function2;
        Function0 function3;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "GuestWithAppointmentConfirmBottomSheet");
        }
        Modifier modifier2 = modifierE;
        modifier2.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-879940299);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            function2 = function0;
            i3 |= gapComposerH.y(function2) ? 32 : 16;
        } else {
            function2 = function0;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            function3 = function1;
            i3 |= gapComposerH.y(function3) ? 256 : 128;
        } else {
            function3 = function1;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            LVModalBottomSheetKt.a(modifier2, null, StringResources_androidKt.c(gapComposerH, R.string.osa_guest_appointment_unicity_title), null, null, StringResources_androidKt.c(gapComposerH, R.string.osa_guest_appointment_unicity_description), null, StringResources_androidKt.c(gapComposerH, R.string.osa_cta_create_account), null, false, null, function2, StringResources_androidKt.c(gapComposerH, R.string.osa_cta_keep_previous), false, null, function3, null, false, null, gapComposer, i3 & 14, (i3 & 112) | ((i3 << 12) & 3670016), 976730);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new dj0(modifier2, function0, function1, i2, 0);
        }
    }

    public static final void d(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(1488488547);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = SizeKt.d(PaddingKt.m(WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("LoadingBottomSheet")), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).l, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).m, 5), 1.0f);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            LoadingAnimationKt.a(gapComposerH, 0);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new aj0(i2, 1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x015b  */
    /* JADX WARN: Code duplicated, block: B:105:0x0163  */
    /* JADX WARN: Code duplicated, block: B:107:0x0168  */
    /* JADX WARN: Code duplicated, block: B:110:0x0170  */
    /* JADX WARN: Code duplicated, block: B:112:0x0176  */
    /* JADX WARN: Code duplicated, block: B:120:0x0192  */
    /* JADX WARN: Code duplicated, block: B:123:0x019b  */
    /* JADX WARN: Code duplicated, block: B:125:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:126:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:128:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:129:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:131:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:132:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:134:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:135:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:137:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:138:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:141:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:144:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:146:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:147:0x020e  */
    /* JADX WARN: Code duplicated, block: B:149:0x021b  */
    /* JADX WARN: Code duplicated, block: B:150:0x0246  */
    /* JADX WARN: Code duplicated, block: B:152:0x0257  */
    /* JADX WARN: Code duplicated, block: B:153:0x026e  */
    /* JADX WARN: Code duplicated, block: B:155:0x0276  */
    /* JADX WARN: Code duplicated, block: B:159:0x02ac  */
    /* JADX WARN: Code duplicated, block: B:163:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:165:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:168:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:170:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x0079  */
    /* JADX WARN: Code duplicated, block: B:30:0x007e  */
    /* JADX WARN: Code duplicated, block: B:32:0x0086  */
    /* JADX WARN: Code duplicated, block: B:33:0x0089  */
    /* JADX WARN: Code duplicated, block: B:37:0x0097  */
    /* JADX WARN: Code duplicated, block: B:38:0x009c  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:45:0x00af  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:48:0x00be  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:53:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:56:0x00de  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:63:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:64:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:68:0x0102  */
    /* JADX WARN: Code duplicated, block: B:70:0x0108  */
    /* JADX WARN: Code duplicated, block: B:71:0x010b  */
    /* JADX WARN: Code duplicated, block: B:75:0x0115  */
    /* JADX WARN: Code duplicated, block: B:77:0x011b  */
    /* JADX WARN: Code duplicated, block: B:78:0x011e  */
    /* JADX WARN: Code duplicated, block: B:80:0x0123  */
    /* JADX WARN: Code duplicated, block: B:83:0x012b  */
    /* JADX WARN: Code duplicated, block: B:85:0x0131  */
    /* JADX WARN: Code duplicated, block: B:86:0x0134  */
    /* JADX WARN: Code duplicated, block: B:90:0x013c  */
    /* JADX WARN: Code duplicated, block: B:92:0x0142  */
    /* JADX WARN: Code duplicated, block: B:93:0x0145  */
    /* JADX WARN: Code duplicated, block: B:97:0x014d  */
    /* JADX WARN: Code duplicated, block: B:99:0x0153  */
    public static final void e(Modifier modifier, final InAppDispatch inAppDispatch, final OsaContactFormBottomSheetScreen osaContactFormBottomSheetScreen, String str, LocalDateTime localDateTime, boolean z, LocalDateTime localDateTime2, String str2, final Function0 function0, final Function0 function1, final Function0 function2, final Function0 function3, final Function0 function4, final Function0 function5, final Function0 function6, final Function0 function7, Composer composer, final int i2, final int i3, final int i4) {
        String str3;
        int i5;
        LocalDateTime localDateTime3;
        int i6;
        int i7;
        int i8;
        boolean z2;
        int i9;
        int i10;
        int i11;
        LocalDateTime localDateTime4;
        int i12;
        int i13;
        Modifier modifier2;
        int i14;
        int i15;
        int i16;
        int i17;
        boolean z3;
        String str4;
        final LocalDateTime localDateTime5;
        final boolean z4;
        final Modifier modifier3;
        final String str5;
        final LocalDateTime localDateTime6;
        RecomposeScopeImpl recomposeScopeImplB0;
        DTFunctionNameModifier dTFunctionNameModifier;
        String str6;
        LocalDateTime localDateTime7;
        boolean z5;
        LocalDateTime localDateTime8;
        String str7;
        DTFunctionNameModifier dTFunctionNameModifier2;
        boolean z6;
        String str8;
        LocalDateTime localDateTime9;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "OsaContactFormBottomSheetLayout");
        }
        inAppDispatch.getClass();
        osaContactFormBottomSheetScreen.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        defpackage.a.D(function3, function4, function5, function6, function7);
        GapComposer gapComposerH = composer.h(479216990);
        int i23 = i2 | 6 | (gapComposerH.y(inAppDispatch) ? 32 : 16);
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i23 |= gapComposerH.K(osaContactFormBottomSheetScreen) ? 256 : 128;
        }
        int i24 = i4 & 8;
        if (i24 == 0) {
            if ((i2 & 3072) == 0) {
                str3 = str;
                i23 |= gapComposerH.K(str3) ? 2048 : 1024;
            }
            i5 = i4 & 16;
            if (i5 != 0) {
                i7 = i23 | 24576;
                localDateTime3 = localDateTime;
            } else {
                localDateTime3 = localDateTime;
                if (gapComposerH.y(localDateTime3)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i7 = i23 | i6;
            }
            i8 = i4 & 32;
            if (i8 != 0) {
                i10 = i7 | ImageMetadata.EDGE_MODE;
                z2 = z;
            } else {
                z2 = z;
                if (gapComposerH.b(z2)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i10 = i7 | i9;
            }
            i11 = i4 & 64;
            if (i11 != 0) {
                i13 = i10 | 1572864;
                localDateTime4 = localDateTime2;
            } else {
                localDateTime4 = localDateTime2;
                if (gapComposerH.y(localDateTime4)) {
                    i12 = 1048576;
                } else {
                    i12 = 524288;
                }
                i13 = i10 | i12;
            }
            modifier2 = modifierE;
            i14 = i4 & 128;
            if (i14 != 0) {
                i16 = i13 | 12582912;
            } else {
                if (gapComposerH.K(str2)) {
                    i15 = 8388608;
                } else {
                    i15 = 4194304;
                }
                i16 = i13 | i15;
            }
            if ((i2 & 100663296) == 0) {
                if (gapComposerH.y(function0)) {
                    i22 = 67108864;
                } else {
                    i22 = 33554432;
                }
                i16 |= i22;
            }
            if ((i2 & 805306368) == 0) {
                if (gapComposerH.y(function1)) {
                    i21 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i21 = 268435456;
                }
                i16 |= i21;
            }
            if ((i3 & 6) == 0) {
                if (gapComposerH.y(function2)) {
                    i20 = 4;
                } else {
                    i20 = 2;
                }
                i17 = i3 | i20;
            } else {
                i17 = i3;
            }
            if ((i3 & 48) == 0) {
                if (gapComposerH.y(function3)) {
                    i19 = 32;
                } else {
                    i19 = 16;
                }
                i17 |= i19;
            }
            if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
                if (gapComposerH.y(function4)) {
                    i18 = 256;
                } else {
                    i18 = 128;
                }
                i17 |= i18;
            }
            if ((i3 & 3072) == 0) {
                i17 |= gapComposerH.y(function5) ? 2048 : 1024;
            }
            if ((i3 & 24576) != 0) {
                i17 |= gapComposerH.y(function6) ? 16384 : 8192;
            }
            if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                i17 |= gapComposerH.y(function7) ? 131072 : 65536;
            }
            if ((i16 & 306783379) == 306783378 || (i17 & 74899) != 74898) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i16 & 1, z3)) {
                dTFunctionNameModifier = new DTFunctionNameModifier("OsaContactFormBottomSheetLayout");
                if (i24 != 0) {
                    str6 = null;
                } else {
                    str6 = str3;
                }
                if (i5 != 0) {
                    localDateTime7 = null;
                } else {
                    localDateTime7 = localDateTime3;
                }
                if (i8 != 0) {
                    z5 = false;
                } else {
                    z5 = z2;
                }
                if (i11 != 0) {
                    localDateTime8 = null;
                } else {
                    localDateTime8 = localDateTime4;
                }
                if (i14 != 0) {
                    str7 = null;
                } else {
                    str7 = str2;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                if (osaContactFormBottomSheetScreen.equals(OsaContactFormBottomSheetScreen.LoadingBottomSheet.f60716a)) {
                    gapComposerH.L(-117134952);
                    d(gapComposerH, 0);
                    gapComposerH.Z(false);
                } else {
                    if (osaContactFormBottomSheetScreen.equals(OsaContactFormBottomSheetScreen.AlreadyExistAccountBottomSheet.f60713a)) {
                        gapComposerH.L(-117009123);
                        int i25 = i16 >> 21;
                        a(dTFunctionNameModifier, function0, function1, function2, gapComposerH, (i25 & 896) | (i25 & 112) | 6 | ((i17 << 9) & 7168));
                        gapComposerH.Z(false);
                    } else {
                        if (osaContactFormBottomSheetScreen.equals(OsaContactFormBottomSheetScreen.AppointmentConfirmBottomSheet.f60714a)) {
                            gapComposerH.L(-116668960);
                            int i26 = i16 & 126;
                            int i27 = i16 >> 9;
                            dTFunctionNameModifier2 = dTFunctionNameModifier;
                            b(dTFunctionNameModifier2, inAppDispatch, z5, localDateTime8, str7, function3, gapComposerH, i26 | (i27 & 896) | (i27 & 7168) | (i27 & 57344) | ((i17 << 12) & ImageMetadata.JPEG_GPS_COORDINATES));
                            z6 = z5;
                            localDateTime4 = localDateTime8;
                            str8 = str7;
                            gapComposerH.Z(false);
                        } else {
                            dTFunctionNameModifier2 = dTFunctionNameModifier;
                            z6 = z5;
                            localDateTime4 = localDateTime8;
                            str8 = str7;
                            if (osaContactFormBottomSheetScreen.equals(OsaContactFormBottomSheetScreen.GuestWithAppointmentConfirmBottomSheet.f60715a)) {
                                gapComposerH.L(-116173890);
                                int i28 = i17 >> 3;
                                c(dTFunctionNameModifier2, function4, function5, gapComposerH, (i28 & 896) | 6 | (i28 & 112));
                                gapComposerH.Z(false);
                            } else {
                                if (osaContactFormBottomSheetScreen.equals(OsaContactFormBottomSheetScreen.ReplaceAppointmentBottomSheet.f60717a)) {
                                    throw d21.u(gapComposerH, 966051815, false);
                                }
                                gapComposerH.L(-115831123);
                                if (str6 != null || localDateTime7 == null) {
                                    str4 = str6;
                                    localDateTime9 = localDateTime7;
                                    gapComposerH.L(-115326908);
                                    gapComposerH.Z(false);
                                } else {
                                    gapComposerH.L(-115763202);
                                    int i29 = i16 & 126;
                                    int i30 = i16 >> 3;
                                    str4 = str6;
                                    localDateTime9 = localDateTime7;
                                    f(dTFunctionNameModifier2, inAppDispatch, str4, localDateTime9, function6, function7, gapComposerH, (i30 & 7168) | i29 | (i30 & 896) | (i17 & 57344) | (i17 & ImageMetadata.JPEG_GPS_COORDINATES));
                                    gapComposerH.Z(false);
                                }
                                gapComposerH.Z(false);
                            }
                        }
                        str4 = str6;
                        localDateTime9 = localDateTime7;
                    }
                    z4 = z6;
                    str5 = str8;
                    modifier3 = dTFunctionNameModifier2;
                    localDateTime5 = localDateTime9;
                }
                dTFunctionNameModifier2 = dTFunctionNameModifier;
                z6 = z5;
                localDateTime4 = localDateTime8;
                str8 = str7;
                str4 = str6;
                localDateTime9 = localDateTime7;
                z4 = z6;
                str5 = str8;
                modifier3 = dTFunctionNameModifier2;
                localDateTime5 = localDateTime9;
            } else {
                gapComposerH.D();
                str4 = str3;
                localDateTime5 = localDateTime3;
                z4 = z2;
                modifier3 = modifier2;
                str5 = str2;
            }
            localDateTime6 = localDateTime4;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                final String str9 = str4;
                recomposeScopeImplB0.d = new Function2() { // from class: ej0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i2 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i3);
                        OsaContactFormBottomSheetScreenKt.e(modifier3, inAppDispatch, osaContactFormBottomSheetScreen, str9, localDateTime5, z4, localDateTime6, str5, function0, function1, function2, function3, function4, function5, function6, function7, (Composer) obj, iA, iA2, i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i23 |= 3072;
        str3 = str;
        i5 = i4 & 16;
        if (i5 != 0) {
            i7 = i23 | 24576;
            localDateTime3 = localDateTime;
        } else {
            localDateTime3 = localDateTime;
            if (gapComposerH.y(localDateTime3)) {
                i6 = 16384;
            } else {
                i6 = 8192;
            }
            i7 = i23 | i6;
        }
        i8 = i4 & 32;
        if (i8 != 0) {
            i10 = i7 | ImageMetadata.EDGE_MODE;
            z2 = z;
        } else {
            z2 = z;
            if (gapComposerH.b(z2)) {
                i9 = 131072;
            } else {
                i9 = 65536;
            }
            i10 = i7 | i9;
        }
        i11 = i4 & 64;
        if (i11 != 0) {
            i13 = i10 | 1572864;
            localDateTime4 = localDateTime2;
        } else {
            localDateTime4 = localDateTime2;
            if (gapComposerH.y(localDateTime4)) {
                i12 = 1048576;
            } else {
                i12 = 524288;
            }
            i13 = i10 | i12;
        }
        modifier2 = modifierE;
        i14 = i4 & 128;
        if (i14 != 0) {
            i16 = i13 | 12582912;
        } else {
            if (gapComposerH.K(str2)) {
                i15 = 8388608;
            } else {
                i15 = 4194304;
            }
            i16 = i13 | i15;
        }
        if ((i2 & 100663296) == 0) {
            if (gapComposerH.y(function0)) {
                i22 = 67108864;
            } else {
                i22 = 33554432;
            }
            i16 |= i22;
        }
        if ((i2 & 805306368) == 0) {
            if (gapComposerH.y(function1)) {
                i21 = PKIFailureInfo.duplicateCertReq;
            } else {
                i21 = 268435456;
            }
            i16 |= i21;
        }
        if ((i3 & 6) == 0) {
            if (gapComposerH.y(function2)) {
                i20 = 4;
            } else {
                i20 = 2;
            }
            i17 = i3 | i20;
        } else {
            i17 = i3;
        }
        if ((i3 & 48) == 0) {
            if (gapComposerH.y(function3)) {
                i19 = 32;
            } else {
                i19 = 16;
            }
            i17 |= i19;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            if (gapComposerH.y(function4)) {
                i18 = 256;
            } else {
                i18 = 128;
            }
            i17 |= i18;
        }
        if ((i3 & 3072) == 0) {
            i17 |= gapComposerH.y(function5) ? 2048 : 1024;
        }
        if ((i3 & 24576) != 0) {
            i17 |= gapComposerH.y(function6) ? 16384 : 8192;
        }
        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            i17 |= gapComposerH.y(function7) ? 131072 : 65536;
        }
        if ((i16 & 306783379) == 306783378) {
            z3 = true;
        } else {
            z3 = true;
        }
        if (gapComposerH.p(i16 & 1, z3)) {
            dTFunctionNameModifier = new DTFunctionNameModifier("OsaContactFormBottomSheetLayout");
            if (i24 != 0) {
                str6 = null;
            } else {
                str6 = str3;
            }
            if (i5 != 0) {
                localDateTime7 = null;
            } else {
                localDateTime7 = localDateTime3;
            }
            if (i8 != 0) {
                z5 = false;
            } else {
                z5 = z2;
            }
            if (i11 != 0) {
                localDateTime8 = null;
            } else {
                localDateTime8 = localDateTime4;
            }
            if (i14 != 0) {
                str7 = null;
            } else {
                str7 = str2;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            if (osaContactFormBottomSheetScreen.equals(OsaContactFormBottomSheetScreen.LoadingBottomSheet.f60716a)) {
                gapComposerH.L(-117134952);
                d(gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                if (osaContactFormBottomSheetScreen.equals(OsaContactFormBottomSheetScreen.AlreadyExistAccountBottomSheet.f60713a)) {
                    gapComposerH.L(-117009123);
                    int i210 = i16 >> 21;
                    a(dTFunctionNameModifier, function0, function1, function2, gapComposerH, (i210 & 896) | (i210 & 112) | 6 | ((i17 << 9) & 7168));
                    gapComposerH.Z(false);
                } else {
                    if (osaContactFormBottomSheetScreen.equals(OsaContactFormBottomSheetScreen.AppointmentConfirmBottomSheet.f60714a)) {
                        gapComposerH.L(-116668960);
                        int i211 = i16 & 126;
                        int i212 = i16 >> 9;
                        dTFunctionNameModifier2 = dTFunctionNameModifier;
                        b(dTFunctionNameModifier2, inAppDispatch, z5, localDateTime8, str7, function3, gapComposerH, i211 | (i212 & 896) | (i212 & 7168) | (i212 & 57344) | ((i17 << 12) & ImageMetadata.JPEG_GPS_COORDINATES));
                        z6 = z5;
                        localDateTime4 = localDateTime8;
                        str8 = str7;
                        gapComposerH.Z(false);
                    } else {
                        dTFunctionNameModifier2 = dTFunctionNameModifier;
                        z6 = z5;
                        localDateTime4 = localDateTime8;
                        str8 = str7;
                        if (osaContactFormBottomSheetScreen.equals(OsaContactFormBottomSheetScreen.GuestWithAppointmentConfirmBottomSheet.f60715a)) {
                            gapComposerH.L(-116173890);
                            int i213 = i17 >> 3;
                            c(dTFunctionNameModifier2, function4, function5, gapComposerH, (i213 & 896) | 6 | (i213 & 112));
                            gapComposerH.Z(false);
                        } else {
                            if (osaContactFormBottomSheetScreen.equals(OsaContactFormBottomSheetScreen.ReplaceAppointmentBottomSheet.f60717a)) {
                                throw d21.u(gapComposerH, 966051815, false);
                            }
                            gapComposerH.L(-115831123);
                            if (str6 != null) {
                                str4 = str6;
                                localDateTime9 = localDateTime7;
                                gapComposerH.L(-115326908);
                                gapComposerH.Z(false);
                            } else {
                                str4 = str6;
                                localDateTime9 = localDateTime7;
                                gapComposerH.L(-115326908);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        }
                    }
                    str4 = str6;
                    localDateTime9 = localDateTime7;
                }
                z4 = z6;
                str5 = str8;
                modifier3 = dTFunctionNameModifier2;
                localDateTime5 = localDateTime9;
            }
            dTFunctionNameModifier2 = dTFunctionNameModifier;
            z6 = z5;
            localDateTime4 = localDateTime8;
            str8 = str7;
            str4 = str6;
            localDateTime9 = localDateTime7;
            z4 = z6;
            str5 = str8;
            modifier3 = dTFunctionNameModifier2;
            localDateTime5 = localDateTime9;
        } else {
            gapComposerH.D();
            str4 = str3;
            localDateTime5 = localDateTime3;
            z4 = z2;
            modifier3 = modifier2;
            str5 = str2;
        }
        localDateTime6 = localDateTime4;
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final String str10 = str4;
            recomposeScopeImplB0.d = new Function2() { // from class: ej0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    OsaContactFormBottomSheetScreenKt.e(modifier3, inAppDispatch, osaContactFormBottomSheetScreen, str10, localDateTime5, z4, localDateTime6, str5, function0, function1, function2, function3, function4, function5, function6, function7, (Composer) obj, iA, iA2, i4);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void f(Modifier modifier, InAppDispatch inAppDispatch, String str, LocalDateTime localDateTime, Function0 function0, Function0 function1, Composer composer, int i2) {
        int i3;
        Function0 function2;
        Function0 function3;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ReplaceAppointmentBottomSheet");
        }
        Modifier modifier2 = modifierE;
        modifier2.getClass();
        inAppDispatch.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(590929346);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(inAppDispatch) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(localDateTime) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            function2 = function0;
            i3 |= gapComposerH.y(function2) ? 16384 : 8192;
        } else {
            function2 = function0;
        }
        if ((196608 & i2) == 0) {
            function3 = function1;
            i3 |= gapComposerH.y(function3) ? 131072 : 65536;
        } else {
            function3 = function1;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strB = StringResources_androidKt.b(R.string.osa_appointment_unicity_title, new Object[]{str, DateTimeUtils.h(inAppDispatch, localDateTime, FormatStyle.FULL)}, gapComposerH);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.osa_appointment_unicity_description);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.osa_cta_confirm_new);
            String strC3 = StringResources_androidKt.c(gapComposerH, R.string.osa_cta_keep_previous);
            ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a.getClass();
            gapComposer = gapComposerH;
            LVModalBottomSheetKt.a(modifier2, null, strB, null, ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60712c, strC, null, strC2, null, false, null, function2, strC3, false, null, function3, null, false, null, gapComposer, (i3 & 14) | 24576, ((i3 >> 9) & 112) | ((i3 << 3) & 3670016), 976714);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2(modifier2, inAppDispatch, str, localDateTime, function0, function1, i2);
        }
    }
}
