package com.vuitton.android.presentation.screen.catalog.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.screen.catalog.CatalogTracker;
import com.vuitton.android.presentation.screen.catalog.CatalogTrackerEntryPointKt;
import defpackage.cj;
import defpackage.nk;
import defpackage.t;
import defpackage.tr;
import defpackage.w3;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "shouldTrackCarouselMSwipe", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CatalogSubcategoryBottomSheetContentKt {
    public static final void a(LazyListState lazyListState, EditorialModuleUiModel.CarouselMUiModel carouselMUiModel, List list, String str, A11ySettings a11ySettings, Function1 function1, Function1 function2, Composer composer, int i2) {
        Function1 function3;
        Function1 function4;
        GapComposer gapComposer;
        lazyListState.getClass();
        str.getClass();
        a11ySettings.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1827637333);
        int i3 = (gapComposerH.K(lazyListState) ? 4 : 2) | i2 | (gapComposerH.y(carouselMUiModel) ? 32 : 16) | (gapComposerH.y(list) ? 256 : 128);
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(str) ? 2048 : 1024;
        }
        int i4 = i3 | (gapComposerH.K(a11ySettings) ? 16384 : 8192);
        if ((196608 & i2) == 0) {
            function3 = function1;
            i4 |= gapComposerH.y(function3) ? 131072 : 65536;
        } else {
            function3 = function1;
        }
        if ((1572864 & i2) == 0) {
            function4 = function2;
            i4 |= gapComposerH.y(function4) ? 1048576 : 524288;
        } else {
            function4 = function2;
        }
        int i5 = i4;
        if (gapComposerH.p(i5 & 1, (599187 & i5) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            CatalogTracker catalogTracker = (CatalogTracker) gapComposerH.k(CatalogTrackerEntryPointKt.f55232a);
            Modifier modifierD = tr.d("CatalogSubcategoryBottomSheetContent", 1.0f);
            PaddingValuesImpl paddingValuesImplE = PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, 5);
            boolean zY = gapComposerH.y(list) | ((458752 & i5) == 131072) | ((3670016 & i5) == 1048576) | gapComposerH.y(carouselMUiModel) | ((57344 & i5) == 16384) | gapComposerH.y(catalogTracker) | ((i5 & 7168) == 2048);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                nk nkVar = new nk(list, carouselMUiModel, function3, function4, a11ySettings, catalogTracker, str);
                gapComposerH.q(nkVar);
                objX = nkVar;
            }
            gapComposer = gapComposerH;
            LazyDslKt.a(modifierD, lazyListState, paddingValuesImplE, null, null, null, false, null, (Function1) objX, gapComposer, ((i5 << 3) & 112) | 6, 504);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w3(lazyListState, carouselMUiModel, list, str, a11ySettings, function1, function2, i2, 2);
        }
    }

    public static final void b(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(139007436);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierJ = PaddingKt.j(tr.d("SubcategoryGroupSeparator", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f);
            Alignment.f8582a.getClass();
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c), vertical, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierJ);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            DividerKt.a(cj.b("SubcategoryGroupSeparator", rowScopeInstance, 1.0f, true), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).f48394c, gapComposerH, 0), null, SizeKt.o(new DTFunctionNameModifier("SubcategoryGroupSeparator"), IconSize.f48348b), LVAppDesignKitTheme.c(gapComposerH).f48361b.d, gapComposerH, 56, 0);
            gapComposerH = gapComposerH;
            DividerKt.a(cj.b("SubcategoryGroupSeparator", rowScopeInstance, 1.0f, true), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new t(i2, 28);
        }
    }
}
