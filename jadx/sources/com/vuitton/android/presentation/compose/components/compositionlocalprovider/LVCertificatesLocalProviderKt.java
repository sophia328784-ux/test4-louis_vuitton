package com.vuitton.android.presentation.compose.components.compositionlocalprovider;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.ContactUsTrackerEntryPoint;
import com.vuitton.android.presentation.contact.ContactUsTrackerEntryPointKt;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import dagger.hilt.android.EntryPointAccessors;
import defpackage.ql;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVCertificatesLocalProviderKt {
    public static final void a(ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1883511556);
        if (gapComposerH.p(i2 & 1, (i2 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ContactUsTracker contactUsTrackerO = ((ContactUsTrackerEntryPoint) EntryPointAccessors.a((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b), ContactUsTrackerEntryPoint.class)).o();
            contactUsTrackerO.a(ContactUsOrigin.CERTIFICATES.getValue());
            CompositionLocalKt.a(ContactUsTrackerEntryPointKt.f51125a.c(contactUsTrackerO), composableLambdaImpl, gapComposerH, 56);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ql(composableLambdaImpl, i2, 8);
        }
    }
}
