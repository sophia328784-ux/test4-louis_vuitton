package com.vuitton.android.presentation.contact.compose;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.lifecycle.Lifecycle;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.components.LifecycleEventKt;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.ContactUsTrackerEntryPointKt;
import com.vuitton.android.presentation.contact.models.ContactUsTrackingUiModel;
import com.vuitton.android.presentation.contact.models.ContactUsTrackingUiModelKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import defpackage.b3;
import defpackage.t8;
import defpackage.w0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ContactUsBottomSheetKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f51130a;

        static {
            int[] iArr = new int[ContactUsMode.values().length];
            try {
                iArr[ContactUsMode.DISTANT_CARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f51130a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:94:0x018c  */
    public static final void a(ContactUsUiModel contactUsUiModel, LVModalBottomSheetState lVModalBottomSheetState, LVModalBottomSheetState lVModalBottomSheetState2, Function1 function1, Function0 function0, Composer composer, int i2) {
        int i3;
        Function1 function2;
        Function0 function3;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        int i4;
        boolean z;
        LVModalBottomSheetState lVModalBottomSheetState3;
        boolean z2;
        Object objX;
        contactUsUiModel.getClass();
        lVModalBottomSheetState.getClass();
        lVModalBottomSheetState2.getClass();
        function1.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1048917793);
        if ((i2 & 6) == 0) {
            i3 = ((i2 & 8) == 0 ? gapComposerH.K(contactUsUiModel) : gapComposerH.y(contactUsUiModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= (i2 & 64) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= (i2 & 512) == 0 ? gapComposerH.K(lVModalBottomSheetState2) : gapComposerH.y(lVModalBottomSheetState2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            function2 = function1;
            i3 |= gapComposerH.y(function2) ? 2048 : 1024;
        } else {
            function2 = function1;
        }
        if ((i2 & 24576) == 0) {
            function3 = function0;
            i3 |= gapComposerH.y(function3) ? 16384 : 8192;
        } else {
            function3 = function0;
        }
        int i5 = i3;
        if (gapComposerH.p(i5 & 1, (i5 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            ContactUsTracker contactUsTracker = (ContactUsTracker) gapComposerH.k(ContactUsTrackerEntryPointKt.f51125a);
            Lifecycle.Event eventA = LifecycleEventKt.a(gapComposerH);
            if (contactUsUiModel.f51162k && eventA == Lifecycle.Event.ON_RESUME) {
                contactUsTracker.f51122a.a(ContactUsTrackingUiModelKt.a(new ContactUsTrackingUiModel.OnPowerfrontCloseEvent(contactUsTracker.f51123b)));
            }
            boolean zA = lVModalBottomSheetState.a();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (zA) {
                gapComposerH.L(1872812080);
                String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_close);
                boolean z3 = (i5 & 112) == 32 || ((i5 & 64) != 0 && gapComposerH.y(lVModalBottomSheetState));
                Object objX2 = gapComposerH.x();
                if (z3 || objX2 == composer$Companion$Empty$2) {
                    objX2 = new t8(lVModalBottomSheetState, 4);
                    gapComposerH.q(objX2);
                }
                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(676547799, new w0(contactUsUiModel, contactUsTracker, lVModalBottomSheetState, function2, context, lVModalBottomSheetState2, function3), gapComposerH);
                int i6 = (LVModalBottomSheetState.f48797e << 9) | 100663296 | ((i5 << 6) & 7168);
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                i4 = R.string.alt_close;
                z = false;
                LVModalBottomSheetKt.b(null, strC, (Function0) objX2, lVModalBottomSheetState, null, 0L, false, null, composableLambdaImplB, gapComposerH, i6, 241);
                gapComposerH.Z(false);
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                i4 = R.string.alt_close;
                z = false;
                gapComposerH.L(1875819235);
                gapComposerH.Z(false);
            }
            if (lVModalBottomSheetState2.a()) {
                gapComposerH.L(1875901664);
                String strC2 = StringResources_androidKt.c(gapComposerH, i4);
                if ((i5 & 896) != 256) {
                    lVModalBottomSheetState3 = lVModalBottomSheetState2;
                    if ((i5 & 512) == 0 || !gapComposerH.y(lVModalBottomSheetState3)) {
                        z2 = z;
                    }
                    objX = gapComposerH.x();
                    if (z2 || objX == composer$Companion$Empty$1) {
                        objX = new t8(lVModalBottomSheetState3, 5);
                        gapComposerH.q(objX);
                    }
                    ComposableSingletons$ContactUsBottomSheetKt.f51126a.getClass();
                    LVModalBottomSheetKt.b(null, strC2, (Function0) objX, lVModalBottomSheetState3, null, 0L, false, null, ComposableSingletons$ContactUsBottomSheetKt.f51127b, gapComposerH, (LVModalBottomSheetState.f48797e << 9) | 100663296 | ((i5 << 3) & 7168), 241);
                    gapComposerH.Z(z);
                } else {
                    lVModalBottomSheetState3 = lVModalBottomSheetState2;
                }
                z2 = true;
                objX = gapComposerH.x();
                if (z2) {
                    objX = new t8(lVModalBottomSheetState3, 5);
                    gapComposerH.q(objX);
                } else {
                    objX = new t8(lVModalBottomSheetState3, 5);
                    gapComposerH.q(objX);
                }
                ComposableSingletons$ContactUsBottomSheetKt.f51126a.getClass();
                LVModalBottomSheetKt.b(null, strC2, (Function0) objX, lVModalBottomSheetState3, null, 0L, false, null, ComposableSingletons$ContactUsBottomSheetKt.f51127b, gapComposerH, (LVModalBottomSheetState.f48797e << 9) | 100663296 | ((i5 << 3) & 7168), 241);
                gapComposerH.Z(z);
            } else {
                gapComposerH.L(1876248771);
                gapComposerH.Z(z);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3((Object) contactUsUiModel, (Object) lVModalBottomSheetState, (Object) lVModalBottomSheetState2, (Object) function1, function0, i2, 9);
        }
    }
}
