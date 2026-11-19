package com.vuitton.android.presentation.contact.compose;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import defpackage.k4;
import defpackage.sp;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ContactUsModalBottomSheetKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f51139a;

        static {
            int[] iArr = new int[ContactUsMode.values().length];
            try {
                iArr[ContactUsMode.DISTANT_CARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f51139a = iArr;
        }
    }

    public static final void a(ContactUsUiModel contactUsUiModel, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Function0 function6, Function0 function7, Composer composer, int i2) {
        int i3;
        Function0 function8;
        Function0 function9;
        Function0 function10;
        Function0 function11;
        GapComposer gapComposer;
        contactUsUiModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        GapComposer gapComposerH = composer.h(-1789297472);
        if ((i2 & 6) == 0) {
            i3 = ((i2 & 8) == 0 ? gapComposerH.K(contactUsUiModel) : gapComposerH.y(contactUsUiModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            function8 = function0;
            i3 |= gapComposerH.y(function8) ? 32 : 16;
        } else {
            function8 = function0;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function3) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function4) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            function9 = function5;
            i3 |= gapComposerH.y(function9) ? 1048576 : 524288;
        } else {
            function9 = function5;
        }
        if ((12582912 & i2) == 0) {
            function10 = function6;
            i3 |= gapComposerH.y(function10) ? 8388608 : 4194304;
        } else {
            function10 = function6;
        }
        if ((100663296 & i2) == 0) {
            function11 = function7;
            i3 |= gapComposerH.y(function11) ? 67108864 : 33554432;
        } else {
            function11 = function7;
        }
        if (gapComposerH.p(i3 & 1, (38347923 & i3) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            LVCustomBottomSheetContentKt.a(PaddingKt.m(new DTFunctionNameModifier("ContactUsModalBottomSheet"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, 7), Call.Parameters.DEFAULT_CAMERA_ZOOM, StringResources_androidKt.c(gapComposerH, WhenMappings.f51139a[contactUsUiModel.l.ordinal()] == 1 ? R.string.care_contact_bottomsheet_title : R.string.csc_contact_bottomsheet_title), null, null, null, null, false, null, null, ComposableLambdaKt.b(-1795878005, new sp(contactUsUiModel, function8, function10, function11, function4, function9, function1, function2, function3), gapComposerH), gapComposer, 0, 48, 2042);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new k4(contactUsUiModel, function0, function1, function2, function3, function4, function5, function6, function7, i2, 4);
        }
    }
}
