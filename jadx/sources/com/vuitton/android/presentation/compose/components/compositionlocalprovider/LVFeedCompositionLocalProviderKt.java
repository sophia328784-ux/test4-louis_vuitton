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
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.ContactUsTrackerEntryPoint;
import com.vuitton.android.presentation.contact.ContactUsTrackerEntryPointKt;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackerEntryPoint;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackerEntryPoint;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackerEntryPointKt;
import com.vuitton.android.presentation.tracking.GA4Tracker;
import com.vuitton.android.presentation.tracking.GA4TrackerEntryPoint;
import com.vuitton.android.presentation.tracking.GA4TrackerEntryPointKt;
import com.vuitton.android.presentation.utils.MockUtilsKt;
import com.vuitton.android.presentation.utils.MockUtilsKt$noOpTracker$1;
import dagger.hilt.android.EntryPointAccessors;
import defpackage.ql;
import defpackage.z4;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVFeedCompositionLocalProviderKt {
    public static final void a(Function2 function2, Composer composer, int i2) {
        function2.getClass();
        GapComposer gapComposerH = composer.h(-657126302);
        if (gapComposerH.p(i2 & 1, (i2 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = FeedTrackerEntryPointKt.f57934a;
            MockUtilsKt$noOpTracker$1 mockUtilsKt$noOpTracker$1 = MockUtilsKt.f65860a;
            CompositionLocalKt.b(new ProvidedValue[]{staticProvidableCompositionLocal.c(new FeedTracker(mockUtilsKt$noOpTracker$1)), GA4TrackerEntryPointKt.f65812a.c(new GA4Tracker(mockUtilsKt$noOpTracker$1)), ContactUsTrackerEntryPointKt.f51125a.c(new ContactUsTracker(mockUtilsKt$noOpTracker$1)), AICompanionTrackerEntryPointKt.f52911a.c(new AICompanionTracker(mockUtilsKt$noOpTracker$1))}, ComposableLambdaKt.b(1432338338, new z4(3, function2), gapComposerH), gapComposerH, 56);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z4(function2, i2, 4);
        }
    }

    public static final void b(ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(390810434);
        if (gapComposerH.p(i2 & 1, (i2 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            ContactUsTracker contactUsTrackerO = ((ContactUsTrackerEntryPoint) EntryPointAccessors.a(context, ContactUsTrackerEntryPoint.class)).o();
            contactUsTrackerO.a(ContactUsOrigin.FEED.getValue());
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = ((FeedTrackerEntryPoint) EntryPointAccessors.a(context, FeedTrackerEntryPoint.class)).j();
                gapComposerH.q(objX);
            }
            FeedTracker feedTracker = (FeedTracker) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = ((GA4TrackerEntryPoint) EntryPointAccessors.a(context, GA4TrackerEntryPoint.class)).b();
                gapComposerH.q(objX2);
            }
            GA4Tracker gA4Tracker = (GA4Tracker) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = ((AICompanionTrackerEntryPoint) EntryPointAccessors.a(context, AICompanionTrackerEntryPoint.class)).h();
                gapComposerH.q(objX3);
            }
            CompositionLocalKt.b(new ProvidedValue[]{ContactUsTrackerEntryPointKt.f51125a.c(contactUsTrackerO), FeedTrackerEntryPointKt.f57934a.c(feedTracker), GA4TrackerEntryPointKt.f65812a.c(gA4Tracker), AICompanionTrackerEntryPointKt.f52911a.c((AICompanionTracker) objX3)}, composableLambdaImpl, gapComposerH, 56);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ql(composableLambdaImpl, i2, 13);
        }
    }
}
