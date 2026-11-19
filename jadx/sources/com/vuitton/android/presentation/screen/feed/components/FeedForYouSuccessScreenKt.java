package com.vuitton.android.presentation.screen.feed.components;

import android.content.Context;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.AccessibilityExtKt;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.compose.NestedScroll;
import com.vuitton.android.presentation.compose.components.ScrollProgressTrackerKt;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.model.common.mapper.FeatureThemeMapperKt;
import com.vuitton.android.presentation.screen.feed.components.ComposableSingletons$FeedForYouSuccessScreenKt;
import com.vuitton.android.presentation.screen.feed.components.FeedForYouSuccessScreenKt;
import com.vuitton.android.presentation.screen.feed.components.subcomponents.FeedGenericSectionKt;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.feed.models.FeedViewState;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.feed.models.uimodels.FeedUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.ew;
import defpackage.gv;
import defpackage.lx;
import defpackage.mx;
import defpackage.qx;
import defpackage.tx;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeedForYouSuccessScreenKt {
    public static final void a(final LazyListState lazyListState, final FeedViewState feedViewState, final FeedUiModel feedUiModel, final Function1 function1, final Function0 function0, Function0 function2, Function0 function3, final boolean z, final Function1 function4, final Function1 function5, final Function1 function6, final Function1 function7, final Function1 function8, final Function2 function9, final Function2 function10, final Function2 function11, final Function1 function12, Composer composer, final int i2, final int i3, final int i4) {
        Function0 function13;
        final Function0 function14;
        int i5;
        GapComposer gapComposer;
        Function0 function15;
        NestedScrollDispatcher nestedScrollDispatcher;
        GapComposer gapComposer2;
        lazyListState.getClass();
        feedViewState.getClass();
        feedUiModel.getClass();
        function1.getClass();
        function0.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        function11.getClass();
        function12.getClass();
        GapComposer gapComposerH = composer.h(1598014892);
        int i6 = (gapComposerH.K(lazyListState) ? 4 : 2) | i2;
        if ((i2 & 48) == 0) {
            i6 |= gapComposerH.y(feedViewState) ? 32 : 16;
        }
        int i7 = i6 | (gapComposerH.y(feedUiModel) ? 256 : 128);
        if ((i2 & 3072) == 0) {
            i7 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i7 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        int i8 = i4 & 32;
        if (i8 != 0) {
            i7 |= ImageMetadata.EDGE_MODE;
            function13 = function2;
        } else {
            function13 = function2;
            if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                i7 |= gapComposerH.y(function13) ? 131072 : 65536;
            }
        }
        int i9 = i4 & 64;
        if (i9 != 0) {
            i7 |= 1572864;
            function14 = function3;
        } else {
            function14 = function3;
            if ((i2 & 1572864) == 0) {
                i7 |= gapComposerH.y(function14) ? 1048576 : 524288;
            }
        }
        if ((i2 & 12582912) == 0) {
            i7 |= gapComposerH.b(z) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i7 |= gapComposerH.y(function4) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i7 |= gapComposerH.y(function5) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | (gapComposerH.y(function6) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.y(function7) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(function8) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposerH.y(function9) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i5 |= gapComposerH.y(function10) ? 16384 : 8192;
        }
        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            i5 |= gapComposerH.y(function11) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i5 |= gapComposerH.y(function12) ? 1048576 : 524288;
        }
        int i10 = i5;
        if (gapComposerH.p(i7 & 1, ((i7 & 306783379) == 306783378 && (599187 & i10) == 599186) ? false : true)) {
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i8 != 0) {
                Object objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = new ew(29);
                    gapComposerH.q(objX);
                }
                function15 = (Function0) objX;
            } else {
                function15 = function13;
            }
            if (i9 != 0) {
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new tx(0);
                    gapComposerH.q(objX2);
                }
                function14 = (Function0) objX2;
            } else {
                function14 = function14;
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final FeedTracker feedTracker = (FeedTracker) gapComposerH.k(FeedTrackerEntryPointKt.f57934a);
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            boolean zA = AccessibilityExtKt.a(gapComposerH);
            final Function0 function16 = function15;
            int i11 = i7;
            boolean zB = ((i7 & 7168) == 2048) | gapComposerH.b(zA);
            Object objX3 = gapComposerH.x();
            if (zB || objX3 == composer$Companion$Empty$1) {
                objX3 = new NestedScroll(Call.Parameters.DEFAULT_CAMERA_ZOOM, new lx(zA, lazyListState, function1, 1), new tx(1), 1, null);
                gapComposerH.q(objX3);
            }
            NestedScroll nestedScroll = (NestedScroll) objX3;
            int i12 = i11 & 14;
            boolean z2 = (i12 == 4) | ((i11 & 57344) == 16384);
            Object objX4 = gapComposerH.x();
            if (z2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new FeedForYouSuccessScreenKt$FeedForYouSuccessScreen$3$1(lazyListState, function0, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.g(lazyListState, function0, (Function2) objX4, gapComposerH);
            boolean zY = gapComposerH.y(feedTracker);
            Object objX5 = gapComposerH.x();
            if (zY || objX5 == composer$Companion$Empty$1) {
                objX5 = new mx(feedTracker, 1);
                gapComposerH.q(objX5);
            }
            ScrollProgressTrackerKt.c(lazyListState, (Function1) objX5, gapComposerH, i12);
            Unit unit = Unit.f71739a;
            boolean zY2 = gapComposerH.y(feedTracker);
            Object objX6 = gapComposerH.x();
            if (zY2 || objX6 == composer$Companion$Empty$1) {
                nestedScrollDispatcher = null;
                objX6 = new FeedForYouSuccessScreenKt$FeedForYouSuccessScreen$5$1(feedTracker, null);
                gapComposerH.q(objX6);
            } else {
                nestedScrollDispatcher = null;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX6);
            Modifier modifierA = NestedScrollModifierKt.a(new DTFunctionNameModifier("FeedForYouSuccessScreen").o(SizeKt.f5052c), nestedScroll, nestedScrollDispatcher);
            boolean zY3 = gapComposerH.y(feedViewState) | ((i10 & 3670016) == 1048576) | gapComposerH.y(feedTracker) | gapComposerH.y(feedUiModel) | gapComposerH.y(context) | ((i11 & 29360128) == 8388608) | ((i11 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | ((i10 & 14) == 4) | ((i11 & 3670016) == 1048576) | ((i11 & 1879048192) == 536870912) | ((i11 & 234881024) == 67108864) | ((i10 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | ((i10 & 112) == 32) | ((i10 & 896) == 256) | ((i10 & 57344) == 16384) | ((i10 & 7168) == 2048);
            Object objX7 = gapComposerH.x();
            if (zY3 || objX7 == composer$Companion$Empty$1) {
                gapComposer2 = gapComposerH;
                Function1 function17 = new Function1() { // from class: ux
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r26v2, types: [java.lang.Throwable] */
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        LazyListScope lazyListScope = (LazyListScope) obj;
                        lazyListScope.getClass();
                        ComposableSingletons$FeedForYouSuccessScreenKt.f57765a.getClass();
                        String str = null;
                        LazyListScope.f(lazyListScope, null, ComposableSingletons$FeedForYouSuccessScreenKt.f57766b, 3);
                        final FeedViewState feedViewState2 = feedViewState;
                        boolean z3 = true;
                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(1311861792, true, new d3(feedViewState2, 19)), 3);
                        List list = feedViewState2.f57926e;
                        int i13 = 2;
                        FeedTracker feedTracker2 = feedTracker;
                        if (list != null) {
                            if (list.isEmpty()) {
                                list = null;
                            }
                            if (list != null) {
                                LazyListScope.f(lazyListScope, null, ComposableSingletons$FeedForYouSuccessScreenKt.f57767c, 3);
                                LazyListScope.f(lazyListScope, "hotcontent_widget", new ComposableLambdaImpl(-1469570655, true, new g1(feedViewState2, function12, feedTracker2, 19)), 2);
                            }
                        }
                        Iterator it = feedUiModel.f57983a.iterator();
                        int i14 = 0;
                        while (it.hasNext()) {
                            Object next = it.next();
                            int i15 = i14 + 1;
                            if (i14 < 0) {
                                ?? r26 = str;
                                CollectionsKt.t0();
                                throw r26;
                            }
                            final EditorialModuleUiModel editorialModuleUiModel = (EditorialModuleUiModel) next;
                            String f50852a = editorialModuleUiModel.getF50852a();
                            final FeedTracker feedTracker3 = feedTracker2;
                            final int i16 = i14;
                            int i17 = i13;
                            final Context context2 = context;
                            boolean z4 = z3;
                            final boolean z5 = z;
                            final Function0 function18 = function16;
                            final Function1 function19 = function6;
                            final Function0 function20 = function14;
                            final Function1 function21 = function5;
                            final Function1 function22 = function4;
                            String str2 = str;
                            final Function2 function23 = function11;
                            final Function1 function24 = function7;
                            Iterator it2 = it;
                            final Function1 function25 = function8;
                            final Function2 function26 = function10;
                            final Function2 function27 = function9;
                            LazyListScope.f(lazyListScope, f50852a, new ComposableLambdaImpl(-1320232478, z4, new Function3() { // from class: com.vuitton.android.presentation.screen.feed.components.e
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj2, Object obj3, Object obj4) {
                                    Composer composer2 = (Composer) obj3;
                                    int iIntValue = ((Integer) obj4).intValue();
                                    ((LazyItemScope) obj2).getClass();
                                    if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                        FeedTab feedTab = FeedTab.FOR_YOU;
                                        FeedViewState feedViewState3 = feedViewState2;
                                        boolean z6 = feedViewState3.m;
                                        LVColorScheme lVColorSchemeA = FeatureThemeMapperKt.a(feedViewState3.f57923a);
                                        A11ySettings a11ySettings = feedViewState3.f57928h;
                                        Function1 function28 = function19;
                                        boolean zK = composer2.K(function28);
                                        final EditorialModuleUiModel editorialModuleUiModel2 = editorialModuleUiModel;
                                        boolean zK2 = zK | composer2.K(editorialModuleUiModel2);
                                        Object objX8 = composer2.x();
                                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                        if (zK2 || objX8 == composer$Companion$Empty$2) {
                                            objX8 = new qx(function28, editorialModuleUiModel2, 1);
                                            composer2.q(objX8);
                                        }
                                        Function0 function29 = (Function0) objX8;
                                        Function2 function30 = function23;
                                        boolean zK3 = composer2.K(function30) | composer2.K(editorialModuleUiModel2);
                                        Object objX9 = composer2.x();
                                        if (zK3 || objX9 == composer$Companion$Empty$2) {
                                            objX9 = new gv(function30, editorialModuleUiModel2, 9);
                                            composer2.q(objX9);
                                        }
                                        Function1 function31 = (Function1) objX9;
                                        final Function2 function32 = function26;
                                        boolean zK4 = composer2.K(function32) | composer2.K(editorialModuleUiModel2);
                                        Object objX10 = composer2.x();
                                        if (zK4 || objX10 == composer$Companion$Empty$2) {
                                            objX10 = new Function1<SkuIdUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.feed.components.FeedForYouSuccessScreenKt$FeedForYouSuccessScreen$6$1$4$1$3$1
                                                @Override // kotlin.jvm.functions.Function1
                                                public final Object invoke(Object obj5) {
                                                    String str3 = ((SkuIdUiModel) obj5).f61764b;
                                                    str3.getClass();
                                                    function32.invoke(new SkuIdUiModel(str3), editorialModuleUiModel2.getF50852a());
                                                    return Unit.f71739a;
                                                }
                                            };
                                            composer2.q(objX10);
                                        }
                                        FeedGenericSectionKt.a(context2, i16, feedTab, z6, lVColorSchemeA, z5, a11ySettings, true, editorialModuleUiModel2, function18, function29, function20, function21, function22, function31, function24, function25, (Function1) objX10, function27, feedTracker3, composer2, 12583296, 0);
                                    } else {
                                        composer2.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }), i17);
                            i13 = i17;
                            z3 = z4;
                            feedTracker2 = feedTracker3;
                            i14 = i15;
                            it = it2;
                            str = str2;
                        }
                        ComposableSingletons$FeedForYouSuccessScreenKt.f57765a.getClass();
                        LazyListScope.f(lazyListScope, str, ComposableSingletons$FeedForYouSuccessScreenKt.d, 3);
                        return Unit.f71739a;
                    }
                };
                function13 = function16;
                gapComposer2.q(function17);
                objX7 = function17;
            } else {
                function13 = function16;
                gapComposer2 = gapComposerH;
            }
            GapComposer gapComposer3 = gapComposer2;
            LazyDslKt.a(modifierA, lazyListState, null, null, null, null, false, null, (Function1) objX7, gapComposer3, (i11 << 3) & 112, 508);
            gapComposer = gapComposer3;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        final Function0 function18 = function14;
        final Function0 function19 = function13;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: vx
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    FeedForYouSuccessScreenKt.a(lazyListState, feedViewState, feedUiModel, function1, function0, function19, function18, z, function4, function5, function6, function7, function8, function9, function10, function11, function12, (Composer) obj, iA, iA2, i4);
                    return Unit.f71739a;
                }
            };
        }
    }
}
