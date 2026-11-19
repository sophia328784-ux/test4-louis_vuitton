package com.vuitton.android.presentation.screen.feed.components;

import android.content.Context;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListItemInfo;
import androidx.compose.foundation.lazy.LazyListLayoutInfo;
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
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.compose.NestedScroll;
import com.vuitton.android.presentation.compose.components.ScrollProgressTrackerKt;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.screen.feed.components.ComposableSingletons$FeedDiscoverSuccessScreenKt;
import com.vuitton.android.presentation.screen.feed.components.FeedDiscoverSuccessScreenKt;
import com.vuitton.android.presentation.screen.feed.components.subcomponents.FeedGenericSectionKt;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.feed.models.uimodels.FeedUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.d21;
import defpackage.ew;
import defpackage.lx;
import defpackage.mx;
import defpackage.qx;
import java.util.Iterator;
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
public abstract class FeedDiscoverSuccessScreenKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57819a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f57819a = iArr;
        }
    }

    public static final void a(final LazyListState lazyListState, LVColorScheme lVColorScheme, final FeedUiModel feedUiModel, final boolean z, final boolean z2, final A11ySettings a11ySettings, final Function1 function1, final Function0 function0, final Function1 function2, final Function1 function3, final Function1 function4, final Function1 function5, final Function2 function6, final Function2 function7, final Function1 function8, Composer composer, final int i2, final int i3, final int i4) {
        int i5;
        boolean z3;
        int i6;
        GapComposer gapComposer;
        final LVColorScheme lVColorScheme2;
        long j2;
        NestedScrollDispatcher nestedScrollDispatcher;
        GapComposer gapComposer2;
        LVColorScheme lVColorScheme3;
        lazyListState.getClass();
        feedUiModel.getClass();
        a11ySettings.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        GapComposer gapComposerH = composer.h(-307551714);
        if ((i2 & 6) == 0) {
            i5 = (gapComposerH.K(lazyListState) ? 4 : 2) | i2;
        } else {
            i5 = i2;
        }
        int i7 = i4 & 2;
        if (i7 != 0) {
            i5 |= 48;
        } else if ((i2 & 48) == 0) {
            i5 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(feedUiModel) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i5 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            z3 = z2;
            i5 |= gapComposerH.b(z3) ? 16384 : 8192;
        } else {
            z3 = z2;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i5 |= gapComposerH.K(a11ySettings) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i5 |= gapComposerH.y(function1) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i5 |= gapComposerH.y(function0) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i5 |= gapComposerH.y(function2) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i5 |= gapComposerH.y(function3) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i6 = i3 | (gapComposerH.y(function4) ? 4 : 2);
        } else {
            i6 = i3;
        }
        if ((i3 & 48) == 0) {
            i6 |= gapComposerH.y(function5) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i6 |= gapComposerH.y(function6) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i6 |= gapComposerH.y(function7) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i6 |= gapComposerH.y(function8) ? 16384 : 8192;
        }
        int i8 = i6;
        if (gapComposerH.p(i5 & 1, ((i5 & 306783379) == 306783378 && (i8 & 9363) == 9362) ? false : true)) {
            LVColorScheme lVColorScheme4 = i7 != 0 ? LVColorScheme.DEFAULT : lVColorScheme;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            final FeedTracker feedTracker = (FeedTracker) gapComposerH.k(FeedTrackerEntryPointKt.f57934a);
            boolean zA = AccessibilityExtKt.a(gapComposerH);
            final LVColorScheme lVColorScheme5 = lVColorScheme4;
            boolean zB = ((i5 & 3670016) == 1048576) | gapComposerH.b(zA);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zB || objX == composer$Companion$Empty$1) {
                objX = new NestedScroll(Call.Parameters.DEFAULT_CAMERA_ZOOM, new lx(zA, lazyListState, function1, 0), new ew(27), 1, null);
                gapComposerH.q(objX);
            }
            NestedScroll nestedScroll = (NestedScroll) objX;
            int i9 = i5 & 14;
            boolean z4 = (i9 == 4) | ((i5 & 29360128) == 8388608);
            Object objX2 = gapComposerH.x();
            if (z4 || objX2 == composer$Companion$Empty$1) {
                objX2 = new FeedDiscoverSuccessScreenKt$FeedDiscoverSuccessScreen$1$1(lazyListState, function0, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.g(lazyListState, function0, (Function2) objX2, gapComposerH);
            int i10 = WhenMappings.f57819a[lVColorScheme5.ordinal()];
            if (i10 == 1) {
                gapComposerH.L(795600332);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                gapComposerH.Z(false);
            } else {
                if (i10 != 2) {
                    throw d21.u(gapComposerH, 795597787, false);
                }
                gapComposerH.L(795602834);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                gapComposerH.Z(false);
            }
            boolean zY = gapComposerH.y(feedTracker);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new mx(feedTracker, 0);
                gapComposerH.q(objX3);
            }
            ScrollProgressTrackerKt.c(lazyListState, (Function1) objX3, gapComposerH, i9);
            Unit unit = Unit.f71739a;
            boolean zY2 = gapComposerH.y(feedTracker);
            Object objX4 = gapComposerH.x();
            if (zY2 || objX4 == composer$Companion$Empty$1) {
                nestedScrollDispatcher = null;
                objX4 = new FeedDiscoverSuccessScreenKt$FeedDiscoverSuccessScreen$3$1(feedTracker, null);
                gapComposerH.q(objX4);
            } else {
                nestedScrollDispatcher = null;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX4);
            Modifier modifierA = NestedScrollModifierKt.a(new DTFunctionNameModifier("FeedDiscoverSuccessScreen").o(SizeKt.f5052c), nestedScroll, nestedScrollDispatcher);
            boolean zE = gapComposerH.e(j2) | gapComposerH.y(feedUiModel) | gapComposerH.y(context) | ((i5 & 7168) == 2048) | ((i5 & 112) == 32) | ((i5 & 57344) == 16384) | ((458752 & i5) == 131072) | ((i8 & 57344) == 16384) | ((1879048192 & i5) == 536870912) | ((234881024 & i5) == 67108864) | ((i8 & 14) == 4) | ((i8 & 112) == 32) | ((i8 & 7168) == 2048) | ((i8 & 896) == 256) | gapComposerH.y(feedTracker);
            Object objX5 = gapComposerH.x();
            if (zE || objX5 == composer$Companion$Empty$1) {
                gapComposer2 = gapComposerH;
                final boolean z5 = z3;
                final long j3 = j2;
                Function1 function9 = new Function1() { // from class: nx
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r25v1, types: [java.lang.Throwable] */
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        LazyListScope lazyListScope = (LazyListScope) obj;
                        lazyListScope.getClass();
                        ComposableSingletons$FeedDiscoverSuccessScreenKt.f57753a.getClass();
                        String str = null;
                        int i11 = 3;
                        LazyListScope.f(lazyListScope, null, ComposableSingletons$FeedDiscoverSuccessScreenKt.f57754b, 3);
                        boolean z6 = true;
                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-965221846, true, new fa(j3, 1)), 3);
                        LazyListScope.f(lazyListScope, null, ComposableSingletons$FeedDiscoverSuccessScreenKt.f57755c, 3);
                        Iterator it = feedUiModel.f57983a.iterator();
                        int i12 = 0;
                        final int i13 = 0;
                        while (it.hasNext()) {
                            Object next = it.next();
                            int i14 = i13 + 1;
                            if (i13 < 0) {
                                ?? r25 = str;
                                CollectionsKt.t0();
                                throw r25;
                            }
                            final EditorialModuleUiModel editorialModuleUiModel = (EditorialModuleUiModel) next;
                            LazyListScope.f(lazyListScope, str, new ComposableLambdaImpl(-1170675544, z6, new px(i13, i12)), i11);
                            String f50852a = editorialModuleUiModel.getF50852a();
                            final Context context2 = context;
                            final boolean z7 = z;
                            final LVColorScheme lVColorScheme6 = lVColorScheme5;
                            final boolean z8 = z5;
                            final A11ySettings a11ySettings2 = a11ySettings;
                            final Function1 function10 = function8;
                            String str2 = str;
                            final Function1 function11 = function3;
                            final Function1 function12 = function2;
                            final Function1 function13 = function4;
                            Iterator it2 = it;
                            final Function1 function14 = function5;
                            final Function2 function15 = function7;
                            final Function2 function16 = function6;
                            final FeedTracker feedTracker2 = feedTracker;
                            LazyListScope.f(lazyListScope, f50852a, new ComposableLambdaImpl(-1084283809, true, new Function3() { // from class: com.vuitton.android.presentation.screen.feed.components.d
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj2, Object obj3, Object obj4) {
                                    Composer composer2 = (Composer) obj3;
                                    int iIntValue = ((Integer) obj4).intValue();
                                    ((LazyItemScope) obj2).getClass();
                                    if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                        FeedTab feedTab = FeedTab.DISCOVER;
                                        Function1 function17 = function10;
                                        boolean zK = composer2.K(function17);
                                        final EditorialModuleUiModel editorialModuleUiModel2 = editorialModuleUiModel;
                                        boolean zK2 = zK | composer2.K(editorialModuleUiModel2);
                                        Object objX6 = composer2.x();
                                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                        if (zK2 || objX6 == composer$Companion$Empty$2) {
                                            objX6 = new qx(function17, editorialModuleUiModel2, 0);
                                            composer2.q(objX6);
                                        }
                                        Function0 function18 = (Function0) objX6;
                                        final Function2 function19 = function15;
                                        boolean zK3 = composer2.K(function19) | composer2.K(editorialModuleUiModel2);
                                        Object objX7 = composer2.x();
                                        if (zK3 || objX7 == composer$Companion$Empty$2) {
                                            objX7 = new Function1<SkuIdUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.feed.components.FeedDiscoverSuccessScreenKt$FeedDiscoverSuccessScreen$4$1$2$2$2$1
                                                @Override // kotlin.jvm.functions.Function1
                                                public final Object invoke(Object obj5) {
                                                    String str3 = ((SkuIdUiModel) obj5).f61764b;
                                                    str3.getClass();
                                                    function19.invoke(new SkuIdUiModel(str3), editorialModuleUiModel2.getF50852a());
                                                    return Unit.f71739a;
                                                }
                                            };
                                            composer2.q(objX7);
                                        }
                                        FeedGenericSectionKt.a(context2, i13, feedTab, z7, lVColorScheme6, z8, a11ySettings2, false, editorialModuleUiModel2, null, function18, null, function11, function12, null, function13, function14, (Function1) objX7, function16, feedTracker2, composer2, KyberEngine.KyberPolyBytes, 19072);
                                    } else {
                                        composer2.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }), 2);
                            z6 = true;
                            i13 = i14;
                            str = str2;
                            it = it2;
                            i11 = 3;
                            i12 = 0;
                        }
                        ComposableSingletons$FeedDiscoverSuccessScreenKt.f57753a.getClass();
                        LazyListScope.f(lazyListScope, str, ComposableSingletons$FeedDiscoverSuccessScreenKt.d, 3);
                        return Unit.f71739a;
                    }
                };
                lVColorScheme3 = lVColorScheme5;
                gapComposer2.q(function9);
                objX5 = function9;
            } else {
                lVColorScheme3 = lVColorScheme5;
                gapComposer2 = gapComposerH;
            }
            GapComposer gapComposer3 = gapComposer2;
            LazyDslKt.a(modifierA, lazyListState, null, null, null, null, false, null, (Function1) objX5, gapComposer3, (i5 << 3) & 112, 508);
            gapComposer = gapComposer3;
            lVColorScheme2 = lVColorScheme3;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            lVColorScheme2 = lVColorScheme;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: ox
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    FeedDiscoverSuccessScreenKt.a(lazyListState, lVColorScheme2, feedUiModel, z, z2, a11ySettings, function1, function0, function2, function3, function4, function5, function6, function7, function8, (Composer) obj, iA, iA2, i4);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final boolean b(LazyListState lazyListState) {
        LazyListItemInfo lazyListItemInfo;
        lazyListState.getClass();
        LazyListLayoutInfo lazyListLayoutInfoJ = lazyListState.j();
        return (lazyListLayoutInfoJ.getN() == 0 || (lazyListItemInfo = (LazyListItemInfo) CollectionsKt.N(lazyListLayoutInfoJ.getF5211k())) == null || lazyListItemInfo.getF5212a() != lazyListLayoutInfoJ.getN() - 1) ? false : true;
    }
}
