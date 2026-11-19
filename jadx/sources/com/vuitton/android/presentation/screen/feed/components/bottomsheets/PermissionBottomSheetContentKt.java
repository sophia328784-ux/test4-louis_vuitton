package com.vuitton.android.presentation.screen.feed.components.bottomsheets;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVFeedCompositionLocalProviderKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import defpackage.gi0;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PermissionBottomSheetContentKt {
    public static final void a(final PermissionsUiModel permissionsUiModel, final Function0 function0, final Function0 function1, Composer composer, int i2) {
        permissionsUiModel.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1228251081);
        int i3 = (gapComposerH.y(permissionsUiModel) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVFeedCompositionLocalProviderKt.b(ComposableLambdaKt.b(-1951907422, new Function2() { // from class: com.vuitton.android.presentation.screen.feed.components.bottomsheets.b
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        FeedTracker feedTracker = (FeedTracker) composer2.k(FeedTrackerEntryPointKt.f57934a);
                        Unit unit = Unit.f71739a;
                        boolean zY = composer2.y(feedTracker);
                        Object objX = composer2.x();
                        if (zY || objX == Composer.Companion.f7939a) {
                            objX = new PermissionBottomSheetContentKt$PermissionBottomSheetContent$1$1$1(feedTracker, null);
                            composer2.q(objX);
                        }
                        EffectsKt.e(composer2, unit, (Function2) objX);
                        Context context = (Context) composer2.k(AndroidCompositionLocals_androidKt.f9936b);
                        Modifier modifierG = n00.g("PermissionBottomSheetContent$lambda$0", "feedBottomSheet_permission_view");
                        PermissionsBottomSheet permissionsBottomSheet = permissionsUiModel.f62372a;
                        String strA = StringResourceUiModelKt.a(permissionsBottomSheet.f62363a, context);
                        String strA2 = StringResourceUiModelKt.a(permissionsBottomSheet.f62364b, context);
                        String strA3 = StringResourceUiModelKt.a(permissionsBottomSheet.d, context);
                        StringResourceUiModel.ResId resId = permissionsBottomSheet.f62365c;
                        LVModalBottomSheetKt.a(modifierG, null, strA, null, null, strA2, null, strA3, null, false, null, function0, null, false, null, null, resId != null ? StringResourceUiModelKt.a(resId, context) : null, false, function1, composer2, 0, 0, 391002);
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
            recomposeScopeImplB0.d = new gi0(i2, 14, permissionsUiModel, function0, function1);
        }
    }
}
