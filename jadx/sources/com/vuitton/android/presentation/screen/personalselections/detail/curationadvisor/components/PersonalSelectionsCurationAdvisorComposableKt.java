package com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.github.druk.dnssd.NSType;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorProductState;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorViewState;
import defpackage.d21;
import defpackage.kn0;
import defpackage.ni0;
import defpackage.oe;
import defpackage.pj0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsCurationAdvisorComposableKt {
    public static final void a(PersonalSelectionsCurationAdvisorViewState personalSelectionsCurationAdvisorViewState, PersonalSelectionsCurationAdvisorProductState personalSelectionsCurationAdvisorProductState, ContactUsUiModel contactUsUiModel, Function3 function3, Function0 function0, Function0 function1, Function0 function2, Function0 function4, Function0 function5, Function0 function6, Function0 function7, Function1 function8, Function1 function9, Function1 function10, Function1 function11, Function1 function12, Function1 function13, Function1 function14, Composer composer, int i2) {
        GapComposer gapComposer;
        personalSelectionsCurationAdvisorViewState.getClass();
        personalSelectionsCurationAdvisorProductState.getClass();
        contactUsUiModel.getClass();
        function3.getClass();
        function0.getClass();
        defpackage.a.D(function1, function2, function4, function5, function6);
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        function11.getClass();
        function12.getClass();
        function13.getClass();
        function14.getClass();
        GapComposer gapComposerH = composer.h(-1896156013);
        int i3 = i2 | (gapComposerH.K(personalSelectionsCurationAdvisorViewState) ? 4 : 2) | (gapComposerH.K(personalSelectionsCurationAdvisorProductState) ? 32 : 16) | (gapComposerH.K(contactUsUiModel) ? 256 : 128) | (gapComposerH.y(function3) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288) | (gapComposerH.y(function4) ? 8388608 : 4194304) | (gapComposerH.y(function5) ? 67108864 : 33554432) | (gapComposerH.y(function6) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i4 = (gapComposerH.y(function7) ? (char) 4 : (char) 2) | (gapComposerH.y(function8) ? ' ' : (char) 16) | (gapComposerH.y(function9) ? 256 : 128) | (gapComposerH.y(function10) ? (char) 2048 : (char) 1024) | (gapComposerH.y(function11) ? (char) 16384 : (char) 8192) | (gapComposerH.y(function12) ? (char) 0 : (char) 0) | (gapComposerH.y(function13) ? (char) 0 : (char) 0) | (gapComposerH.y(function14) ? (char) 0 : (char) 0);
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (i4 & 4793491) == 4793490) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if ((personalSelectionsCurationAdvisorViewState instanceof PersonalSelectionsCurationAdvisorViewState.Error) || (personalSelectionsCurationAdvisorViewState instanceof PersonalSelectionsCurationAdvisorViewState.Expired) || (personalSelectionsCurationAdvisorViewState instanceof PersonalSelectionsCurationAdvisorViewState.Loading)) {
                gapComposer = gapComposerH;
                gapComposer.L(-972794257);
                ScaffoldKt.a(null, ComposableLambdaKt.b(2014556879, new kn0(function2, 1), gapComposer), null, null, null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(1133446682, new ni0(personalSelectionsCurationAdvisorViewState, function4, 12), gapComposer), gapComposer, 805306416, NSType.MAILB);
                gapComposer.Z(false);
            } else {
                if (!(personalSelectionsCurationAdvisorViewState instanceof PersonalSelectionsCurationAdvisorViewState.Success)) {
                    throw d21.u(gapComposerH, -1139764671, false);
                }
                gapComposerH.L(-971094589);
                PersonalSelectionsCurationAdvisorViewState.Success success = (PersonalSelectionsCurationAdvisorViewState.Success) personalSelectionsCurationAdvisorViewState;
                SnackbarHostState snackbarHostState = new SnackbarHostState();
                boolean z = ((i4 & 29360128) == 8388608) | ((i4 & 112) == 32);
                Object objX = gapComposerH.x();
                if (z || objX == Composer.Companion.f7939a) {
                    objX = new pj0(function14, function8, 2);
                    gapComposerH.q(objX);
                }
                int i5 = i3 << 3;
                PersonalSelectionsCurationAdvisorScreenKt.c(success, personalSelectionsCurationAdvisorProductState, snackbarHostState, contactUsUiModel, function3, function0, function1, function2, function5, function6, function7, (Function1) objX, function9, function10, function11, function12, function13, gapComposerH, (i5 & 29360128) | (i3 & 126) | (i5 & 7168) | (i5 & 57344) | (i5 & ImageMetadata.JPEG_GPS_COORDINATES) | (i5 & 3670016) | (i3 & 234881024) | (i3 & 1879048192));
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oe(personalSelectionsCurationAdvisorViewState, personalSelectionsCurationAdvisorProductState, contactUsUiModel, function3, function0, function1, function2, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, i2);
        }
    }
}
