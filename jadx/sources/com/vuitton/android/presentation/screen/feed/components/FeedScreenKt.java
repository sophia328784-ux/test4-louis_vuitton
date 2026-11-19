package com.vuitton.android.presentation.screen.feed.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.AccessibilityExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.model.common.mapper.FeatureThemeMapperKt;
import com.vuitton.android.presentation.screen.feed.components.FeedDiscoverScreenKt;
import com.vuitton.android.presentation.screen.feed.components.FeedForYouScreenKt;
import com.vuitton.android.presentation.screen.feed.components.FeedScreenKt;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.feed.models.FeedViewState;
import defpackage.d1;
import defpackage.g0;
import defpackage.q8;
import defpackage.qb0;
import defpackage.ss;
import defpackage.tx;
import defpackage.v40;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;", "currentSelectedTab", "", "hasSyncedInitialTab", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeedScreenKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f57835a = CollectionsKt.P(FeedTab.DISCOVER, FeedTab.FOR_YOU);

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57848a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f57849b;

        static {
            int[] iArr = new int[FeedTab.values().length];
            try {
                iArr[FeedTab.DISCOVER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FeedTab.FOR_YOU.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f57848a = iArr;
            int[] iArr2 = new int[LVColorScheme.values().length];
            try {
                iArr2[LVColorScheme.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[LVColorScheme.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f57849b = iArr2;
        }
    }

    public static final void a(final FeedViewState feedViewState, final FeedTab feedTab, final boolean z, final SnackbarHostState snackbarHostState, final Function1 function1, final Function0 function0, final Function0 function2, final Function0 function3, final Function0 function4, final Function0 function5, final Function0 function6, final Function1 function7, final qb0 qb0Var, final Function1 function8, final Function1 function9, final d1 d1Var, final Function2 function10, final Function1 function11, final Function2 function12, final Function1 function13, final Function0 function14, final Function1 function15, final Function2 function16, final Function1 function17, final Function1 function18, Composer composer, final int i2) {
        GapComposer gapComposer;
        int i3;
        feedViewState.getClass();
        snackbarHostState.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function8.getClass();
        function9.getClass();
        function11.getClass();
        function12.getClass();
        function13.getClass();
        function14.getClass();
        function15.getClass();
        function17.getClass();
        function18.getClass();
        GapComposer gapComposerH = composer.h(-1548329264);
        int i4 = i2 | (gapComposerH.y(feedViewState) ? 4 : 2) | (gapComposerH.d(feedTab == null ? -1 : feedTab.ordinal()) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function0) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288) | (gapComposerH.y(function3) ? 8388608 : 4194304) | (gapComposerH.y(function4) ? 67108864 : 33554432) | (gapComposerH.y(function5) ? 536870912 : 268435456);
        int i5 = (gapComposerH.y(function6) ? (char) 4 : (char) 2) | (gapComposerH.y(function7) ? ' ' : (char) 16) | (gapComposerH.y(qb0Var) ? 256 : 128) | (gapComposerH.y(function8) ? 2048 : 1024) | (gapComposerH.y(function9) ? 16384 : 8192) | (gapComposerH.y(d1Var) ? (char) 0 : (char) 0) | (gapComposerH.y(function10) ? (char) 0 : (char) 0) | (gapComposerH.y(function11) ? (char) 0 : (char) 0) | (gapComposerH.y(function12) ? (char) 0 : (char) 0) | (gapComposerH.y(function13) ? (char) 0 : (char) 0);
        int i6 = (gapComposerH.y(function14) ? (char) 4 : (char) 2) | (gapComposerH.y(function15) ? ' ' : (char) 16) | (gapComposerH.y(function16) ? 256 : 128) | (gapComposerH.y(function17) ? (char) 2048 : (char) 1024) | (gapComposerH.y(function18) ? 16384 : 8192);
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 306783379) == 306783378 && (i6 & 9363) == 9362) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i7 = feedTab == null ? -1 : WhenMappings.f57848a[feedTab.ordinal()];
            if (i7 == -1 || i7 == 1) {
                i3 = 0;
            } else {
                if (i7 != 2) {
                    v40.g();
                    return;
                }
                i3 = 1;
            }
            final boolean zA = AccessibilityExtKt.a(gapComposerH);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new tx(7);
                gapComposerH.q(objX);
            }
            final PagerState pagerStateB = PagerStateKt.b(i3, (Function0) objX, gapComposerH, KyberEngine.KyberPolyBytes, 2);
            MutableState mutableStateL = SnapshotStateKt.l(feedTab, gapComposerH);
            Object[] objArr = new Object[0];
            int i8 = i4 & 112;
            boolean z2 = i8 == 32;
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new ss(feedTab, 11);
                gapComposerH.q(objX2);
            }
            MutableState mutableState = (MutableState) RememberSaveableKt.d(objArr, (Function0) objX2, gapComposerH, 0);
            boolean zK = gapComposerH.K(pagerStateB) | gapComposerH.K(mutableStateL) | ((i6 & 112) == 32);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                objX3 = new FeedScreenKt$FeedScreen$2$1(pagerStateB, function15, mutableStateL, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, pagerStateB, (Function2) objX3);
            boolean zK2 = gapComposerH.K(pagerStateB) | (i8 == 32) | gapComposerH.K(mutableState);
            Object objX4 = gapComposerH.x();
            if (zK2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new FeedScreenKt$FeedScreen$3$1(feedTab, pagerStateB, mutableState, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, feedTab, (Function2) objX4);
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(feedViewState) | ((i4 & 57344) == 16384);
            Object objX5 = gapComposerH.x();
            if (zY || objX5 == composer$Companion$Empty$1) {
                objX5 = new FeedScreenKt$FeedScreen$4$1(feedViewState, function1, null);
                gapComposerH.q(objX5);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX5);
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(-1809378420, new q8(feedViewState, feedTab, pagerStateB, function0, function2, function15, function13, function14), gapComposerH), null, ComposableLambdaKt.b(-46163894, new g0(snackbarHostState, 27), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(1281470689, new Function3() { // from class: gy
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    long j2;
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    List list = FeedScreenKt.f57835a;
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("FeedScreen$lambda$11"), Call.Parameters.DEFAULT_CAMERA_ZOOM, paddingValues.getF5031b(), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                        final FeedViewState feedViewState2 = feedViewState;
                        int i9 = FeedScreenKt.WhenMappings.f57849b[FeatureThemeMapperKt.a(feedViewState2.f57923a).ordinal()];
                        if (i9 == 1) {
                            composer2.L(-1162272430);
                            j2 = LVAppDesignKitTheme.c(composer2).f48361b.f48374a;
                            composer2.F();
                        } else {
                            if (i9 != 2) {
                                throw o60.v(composer2, -1162276149);
                            }
                            composer2.L(-1162269320);
                            j2 = LVAppDesignKitTheme.c(composer2).f48361b.f48378f;
                            composer2.F();
                        }
                        Modifier modifierB = BackgroundKt.b(modifierM, j2, RectangleShapeKt.f8913a);
                        FillElement fillElement = SizeKt.f5052c;
                        Modifier modifierO = modifierB.o(fillElement);
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierO);
                        ComposeUiNode.b0.getClass();
                        Function0 function19 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function19);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        Modifier modifierO2 = new DTFunctionNameModifier("FeedScreen$lambda$11").o(fillElement);
                        boolean z3 = !zA;
                        final boolean z4 = z;
                        final SnackbarHostState snackbarHostState2 = snackbarHostState;
                        final Function0 function20 = function4;
                        final Function1 function21 = function7;
                        final qb0 qb0Var2 = qb0Var;
                        final Function1 function22 = function8;
                        final Function1 function23 = function9;
                        final d1 d1Var2 = d1Var;
                        final Function2 function24 = function10;
                        final Function1 function25 = function11;
                        final Function2 function26 = function12;
                        final Function1 function27 = function18;
                        final Function0 function28 = function3;
                        final Function0 function29 = function5;
                        final Function0 function30 = function6;
                        final Function2 function31 = function16;
                        final Function1 function32 = function17;
                        PagerKt.a(pagerStateB, modifierO2, null, null, 1, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, z3, false, null, null, null, ComposableLambdaKt.b(1357603048, new Function4() { // from class: iy
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj4, Object obj5, Object obj6, Object obj7) {
                                int iIntValue2 = ((Integer) obj5).intValue();
                                Composer composer3 = (Composer) obj6;
                                ((Integer) obj7).getClass();
                                List list2 = FeedScreenKt.f57835a;
                                ((PagerScope) obj4).getClass();
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                int i10 = FeedScreenKt.WhenMappings.f57848a[((FeedTab) FeedScreenKt.f57835a.get(iIntValue2)).ordinal()];
                                FeedViewState feedViewState3 = feedViewState2;
                                boolean z5 = z4;
                                SnackbarHostState snackbarHostState3 = snackbarHostState2;
                                Function1 function33 = function21;
                                qb0 qb0Var3 = qb0Var2;
                                Function1 function34 = function22;
                                Function1 function35 = function23;
                                d1 d1Var3 = d1Var2;
                                Function2 function36 = function24;
                                Function1 function37 = function25;
                                Function2 function38 = function26;
                                Function1 function39 = function27;
                                if (i10 == 1) {
                                    composer3.L(-1354502934);
                                    FeedDiscoverScreenKt.a(feedViewState3, z5, snackbarHostState3, function20, function33, qb0Var3, function34, function35, d1Var3, function36, function37, function38, function39, composer3, 0);
                                    composer3.F();
                                } else {
                                    if (i10 != 2) {
                                        throw o60.v(composer3, -1013525686);
                                    }
                                    composer3.L(-1353485948);
                                    FeedForYouScreenKt.a(feedViewState3, z5, snackbarHostState3, function28, function33, qb0Var3, function29, function30, function34, function35, d1Var3, function36, function37, function38, function31, function32, function39, composer3, 0);
                                    composer3.F();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, 24624, 24576, 16108);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposer), gapComposer, 805309488, 501);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(feedTab, z, snackbarHostState, function1, function0, function2, function3, function4, function5, function6, function7, qb0Var, function8, function9, d1Var, function10, function11, function12, function13, function14, function15, function16, function17, function18, i2) { // from class: hy

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ FeedTab f69804c;
                public final /* synthetic */ boolean d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ SnackbarHostState f69805e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function1 f69806f;
                public final /* synthetic */ Function0 g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function0 f69807h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function0 f69808i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function0 f69809j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function0 f69810k;
                public final /* synthetic */ Function0 l;
                public final /* synthetic */ Function1 m;
                public final /* synthetic */ qb0 n;
                public final /* synthetic */ Function1 o;
                public final /* synthetic */ Function1 p;
                public final /* synthetic */ d1 q;
                public final /* synthetic */ Function2 r;
                public final /* synthetic */ Function1 s;
                public final /* synthetic */ Function2 t;
                public final /* synthetic */ Function1 u;
                public final /* synthetic */ Function0 v;
                public final /* synthetic */ Function1 w;
                public final /* synthetic */ Function2 x;
                public final /* synthetic */ Function1 y;
                public final /* synthetic */ Function1 z;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(3073);
                    FeedScreenKt.a(this.f69803b, this.f69804c, this.d, this.f69805e, this.f69806f, this.g, this.f69807h, this.f69808i, this.f69809j, this.f69810k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, this.w, this.x, this.y, this.z, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
