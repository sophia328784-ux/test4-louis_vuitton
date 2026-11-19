package com.vuitton.android.presentation.screen.feed.components.bottomsheets;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVFeedCompositionLocalProviderKt;
import com.vuitton.android.presentation.model.calendar.CalendarEventUiModel;
import com.vuitton.android.presentation.screen.feed.components.c;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackerEntryPointKt;
import defpackage.p0;
import defpackage.w;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CalendarEventBottomSheetContentKt {
    public static final void a(final CalendarEventUiModel calendarEventUiModel, final FeedTab feedTab, final c cVar, final c cVar2, final Function0 function0, Composer composer, int i2) {
        calendarEventUiModel.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(985100894);
        int i3 = (gapComposerH.y(calendarEventUiModel) ? 4 : 2) | i2 | (gapComposerH.d(feedTab == null ? -1 : feedTab.ordinal()) ? 32 : 16) | (gapComposerH.y(cVar) ? 256 : 128) | (gapComposerH.y(cVar2) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVFeedCompositionLocalProviderKt.b(ComposableLambdaKt.b(65668855, new Function2() { // from class: com.vuitton.android.presentation.screen.feed.components.bottomsheets.a
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        FeedTracker feedTracker = (FeedTracker) composer2.k(FeedTrackerEntryPointKt.f57934a);
                        Unit unit = Unit.f71739a;
                        boolean zY = composer2.y(feedTracker);
                        CalendarEventUiModel calendarEventUiModel2 = calendarEventUiModel;
                        boolean zY2 = zY | composer2.y(calendarEventUiModel2);
                        Object objX = composer2.x();
                        if (zY2 || objX == Composer.Companion.f7939a) {
                            objX = new CalendarEventBottomSheetContentKt$CalendarEventBottomSheetContent$1$1$1(feedTracker, calendarEventUiModel2, null);
                            composer2.q(objX);
                        }
                        EffectsKt.e(composer2, unit, (Function2) objX);
                        LVCustomBottomSheetContentKt.a(ModifierExtKt.e(new DTFunctionNameModifier("CalendarEventBottomSheetContent$lambda$0"), "feedBottomSheet_calendarEvent_view"), Call.Parameters.DEFAULT_CAMERA_ZOOM, calendarEventUiModel2.d, null, null, null, null, false, null, null, ComposableLambdaKt.b(31947266, new p0(calendarEventUiModel2, feedTracker, feedTab, cVar, cVar2, function0, 5), composer2), composer2, 0, 48, 2042);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 6);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w(calendarEventUiModel, feedTab, cVar, cVar2, function0, i2, 10);
        }
    }
}
