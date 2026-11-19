package com.vuitton.android.presentation.compose.components.compositionlocalprovider;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.ContactUsTrackerEntryPoint;
import com.vuitton.android.presentation.contact.ContactUsTrackerEntryPointKt;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackerEntryPoint;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackerEntryPoint;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceTracker;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceTrackerEntryPoint;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.tracking.LegalConsentsTracker;
import com.vuitton.android.presentation.screen.tracking.LegalConsentsTrackerEntryPoint;
import com.vuitton.android.presentation.screen.tracking.LegalConsentsTrackerKt;
import com.vuitton.android.presentation.tracking.AppsFlyerTrackerEntryPoint;
import com.vuitton.android.presentation.tracking.AppsFlyerTrackerEntryPointKt;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import com.vuitton.android.presentation.tracking.GA4Tracker;
import com.vuitton.android.presentation.tracking.GA4TrackerEntryPoint;
import com.vuitton.android.presentation.tracking.GA4TrackerEntryPointKt;
import dagger.hilt.android.EntryPointAccessors;
import defpackage.ql;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVPdpLocalProviderKt {
    public static final void a(ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1119020190);
        if (gapComposerH.p(i2 & 1, (i2 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            LegalConsentsTracker legalConsentsTrackerG = ((LegalConsentsTrackerEntryPoint) EntryPointAccessors.a(context, LegalConsentsTrackerEntryPoint.class)).g();
            ContactUsTracker contactUsTrackerO = ((ContactUsTrackerEntryPoint) EntryPointAccessors.a(context, ContactUsTrackerEntryPoint.class)).o();
            contactUsTrackerO.a(ContactUsOrigin.PDP.getValue());
            PdpTracker pdpTrackerN = ((PdpTrackerEntryPoint) EntryPointAccessors.a(context, PdpTrackerEntryPoint.class)).n();
            ReinsuranceTracker reinsuranceTrackerM = ((ReinsuranceTrackerEntryPoint) EntryPointAccessors.a(context, ReinsuranceTrackerEntryPoint.class)).m();
            GA4Tracker gA4TrackerB = ((GA4TrackerEntryPoint) EntryPointAccessors.a(context, GA4TrackerEntryPoint.class)).b();
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = ((AICompanionTrackerEntryPoint) EntryPointAccessors.a(context, AICompanionTrackerEntryPoint.class)).h();
                gapComposerH.q(objX);
            }
            AICompanionTracker aICompanionTracker = (AICompanionTracker) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = ((AppsFlyerTrackerEntryPoint) EntryPointAccessors.a(context, AppsFlyerTrackerEntryPoint.class)).c();
                gapComposerH.q(objX2);
            }
            CompositionLocalKt.b(new ProvidedValue[]{AppsFlyerTrackerEntryPointKt.f65808a.c((AppsFlyerUiTracker) objX2), LegalConsentsTrackerKt.f65398a.c(legalConsentsTrackerG), ContactUsTrackerEntryPointKt.f51125a.c(contactUsTrackerO), PdpTrackerEntryPointKt.f61588a.c(pdpTrackerN), ReinsuranceTrackerEntryPointKt.f63416a.c(reinsuranceTrackerM), GA4TrackerEntryPointKt.f65812a.c(gA4TrackerB), AICompanionTrackerEntryPointKt.f52911a.c(aICompanionTracker)}, composableLambdaImpl, gapComposerH, 56);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ql(composableLambdaImpl, i2, 16);
        }
    }
}
