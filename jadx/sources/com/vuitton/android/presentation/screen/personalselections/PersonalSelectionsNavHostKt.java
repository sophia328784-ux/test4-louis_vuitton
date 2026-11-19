package com.vuitton.android.presentation.screen.personalselections;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavHostKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.ContactUsTrackerEntryPointKt;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionTypeUiModel;
import defpackage.le;
import defpackage.yk0;
import defpackage.yn0;
import defpackage.z8;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000¨\u0006\u0005²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00048\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState;", "viewState", "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "contactUsUiModel", "Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState;", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsNavHostKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f62393a;

        static {
            int[] iArr = new int[SelectionTypeUiModel.values().length];
            try {
                iArr[SelectionTypeUiModel.IN_STORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SelectionTypeUiModel.ADVISOR_CURATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f62393a = iArr;
        }
    }

    public static final void a(NavHostController navHostController, Function0 function0, PersonalSelectionsRoute personalSelectionsRoute, Function3 function3, Function0 function1, Function1 function2, Function1 function4, Function1 function5, Function1 function6, Function1 function7, Function1 function8, Function1 function9, Composer composer, int i2) {
        GapComposer gapComposer;
        navHostController.getClass();
        function0.getClass();
        personalSelectionsRoute.getClass();
        function3.getClass();
        function1.getClass();
        function2.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        GapComposer gapComposerH = composer.h(1896204619);
        int i3 = i2 | (gapComposerH.y(navHostController) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.K(personalSelectionsRoute) ? 256 : 128) | (gapComposerH.y(function3) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288) | (gapComposerH.y(function5) ? 8388608 : 4194304) | (gapComposerH.y(function6) ? 67108864 : 33554432) | (gapComposerH.y(function7) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i4 = '0' | (gapComposerH.y(function8) ? (char) 4 : (char) 2);
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (i4 & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            ContactUsTracker contactUsTracker = (ContactUsTracker) gapComposerH.k(ContactUsTrackerEntryPointKt.f51125a);
            contactUsTracker.a(ContactUsOrigin.PERSONAL_SELECTION.getValue());
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new yk0(29);
                gapComposerH.q(objX);
            }
            Function1 function10 = (Function1) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new yn0(0);
                gapComposerH.q(objX2);
            }
            Function1 function11 = (Function1) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new yn0(1);
                gapComposerH.q(objX3);
            }
            Function1 function12 = (Function1) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new yn0(2);
                gapComposerH.q(objX4);
            }
            Function1 function13 = (Function1) objX4;
            boolean zY = ((i3 & 7168) == 2048) | gapComposerH.y(contactUsTracker) | ((i3 & 57344) == 16384) | gapComposerH.y(navHostController) | ((i3 & 112) == 32) | gapComposerH.y(context) | ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | ((i3 & 3670016) == 1048576) | ((i3 & 29360128) == 8388608) | ((i3 & 234881024) == 67108864) | ((i3 & 1879048192) == 536870912) | ((i4 & 14) == 4);
            Object objX5 = gapComposerH.x();
            if (zY || objX5 == composer$Companion$Empty$1) {
                z8 z8Var = new z8(contactUsTracker, function3, function1, navHostController, function0, context, function2, function4, function5, function6, function7, function8, function9);
                gapComposerH.q(z8Var);
                objX5 = z8Var;
            }
            gapComposer = gapComposerH;
            NavHostKt.b(navHostController, personalSelectionsRoute, null, null, null, function10, function11, function12, function13, (Function1) objX5, gapComposer, (i3 & 14) | 920125440 | ((i3 >> 3) & 112), 1084);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new le(navHostController, function0, personalSelectionsRoute, function3, function1, function2, function4, function5, function6, function7, function8, function9, i2);
        }
    }
}
