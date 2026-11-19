package com.vuitton.android.presentation.screen.feed.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSegmentedControlKt;
import com.vuitton.android.designkit.ui.theme.molecules.SegmentedControlState;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVFeedCompositionLocalProviderKt;
import com.vuitton.android.presentation.contact.compose.ContactUsIconKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.model.common.mapper.FeatureThemeMapperKt;
import com.vuitton.android.presentation.screen.account.editavatar.components.TopBarAvatarKt;
import com.vuitton.android.presentation.screen.account.lvpass.components.TopBarQRCodeKt;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import defpackage.d21;
import defpackage.v40;
import defpackage.zl;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeedHeaderKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57833a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f57834b;

        static {
            int[] iArr = new int[FeatureThemeUiModel.values().length];
            try {
                iArr[FeatureThemeUiModel.LIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FeatureThemeUiModel.DARK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f57833a = iArr;
            int[] iArr2 = new int[FeedTab.values().length];
            try {
                iArr2[FeedTab.DISCOVER.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[FeedTab.FOR_YOU.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f57834b = iArr2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:91:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:98:0x01b5  */
    public static final void a(final ContactUsUiModel contactUsUiModel, final FeatureThemeUiModel featureThemeUiModel, final boolean z, FeedTab feedTab, Float f2, final Function0 function0, final Function0 function1, final Function0 function2, final Function0 function3, final Function1 function4, final Function0 function5, Composer composer, int i2) {
        FeedTab feedTab2;
        Pair pair;
        boolean z2;
        int i3;
        final SegmentedControlState segmentedControlStateC;
        boolean zK;
        Object objX;
        featureThemeUiModel.getClass();
        function4.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(-759276798);
        int i4 = i2 | (gapComposerH.K(contactUsUiModel) ? 4 : 2) | (gapComposerH.d(featureThemeUiModel.ordinal()) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.d(feedTab == null ? -1 : feedTab.ordinal()) ? 2048 : 1024) | (gapComposerH.K(f2) ? 16384 : 8192) | (gapComposerH.y(function0) ? 131072 : 65536) | (gapComposerH.y(function1) ? 1048576 : 524288) | (gapComposerH.y(function2) ? 8388608 : 4194304) | (gapComposerH.y(function3) ? 67108864 : 33554432) | (gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && ((gapComposerH.y(function5) ? (char) 4 : (char) 2) & 3) == 2) ? false : true)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i5 = WhenMappings.f57833a[featureThemeUiModel.ordinal()];
            if (i5 == 1) {
                gapComposerH.L(479455267);
                pair = new Pair(new Color(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a), new Color(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k));
                gapComposerH.Z(false);
            } else {
                if (i5 != 2) {
                    throw d21.u(gapComposerH, 479453819, false);
                }
                gapComposerH.L(479459951);
                pair = new Pair(new Color(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48378f), new Color(LVAppDesignKitTheme.c(gapComposerH).f48361b.m));
                gapComposerH.Z(false);
            }
            final long j2 = ((Color) pair.f71705b).f8872a;
            final long j3 = ((Color) pair.f71706c).f8872a;
            List listP = CollectionsKt.P(StringResources_androidKt.c(gapComposerH, R.string.feed_tab_explorer), StringResources_androidKt.c(gapComposerH, R.string.feed_tab_for_you));
            int i6 = feedTab == null ? -1 : WhenMappings.f57834b[feedTab.ordinal()];
            if (i6 != -1) {
                z2 = true;
                if (i6 != 1) {
                    if (i6 != 2) {
                        v40.g();
                        return;
                    }
                    i3 = 1;
                }
                segmentedControlStateC = LVSegmentedControlKt.c(i3, gapComposerH, listP);
                ((SnapshotMutableStateImpl) segmentedControlStateC.f48700c).setValue(f2);
                if ((i4 & 7168) != 2048) {
                    z2 = false;
                }
                zK = gapComposerH.K(segmentedControlStateC) | z2;
                objX = gapComposerH.x();
                if (!zK || objX == Composer.Companion.f7939a) {
                    feedTab2 = feedTab;
                    objX = new FeedHeaderKt$FeedHeader$5$1(feedTab2, segmentedControlStateC, null);
                    gapComposerH.q(objX);
                } else {
                    feedTab2 = feedTab;
                }
                EffectsKt.e(gapComposerH, feedTab2, (Function2) objX);
                LVFeedCompositionLocalProviderKt.b(ComposableLambdaKt.b(-1960985079, new Function2() { // from class: ey
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Integer) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            Modifier modifierH = PaddingKt.h(BackgroundKt.b(tr.d("FeedHeader$lambda$5", 1.0f), j2, RectangleShapeKt.f8913a), WindowInsetsKt.e(TopAppBarDefaults.c(composer2), composer2));
                            Alignment.f8582a.getClass();
                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iHashCode = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                            ComposeUiNode.b0.getClass();
                            Function0 function6 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function6);
                            } else {
                                composer2.o();
                            }
                            Function2 function7 = ComposeUiNode.Companion.f9644f;
                            Updater.c(composer2, measurePolicyD, function7);
                            Function2 function8 = ComposeUiNode.Companion.f9643e;
                            Updater.c(composer2, persistentCompositionLocalMapN, function8);
                            Integer numValueOf = Integer.valueOf(iHashCode);
                            Function2 function9 = ComposeUiNode.Companion.g;
                            Updater.c(composer2, numValueOf, function9);
                            Function1 function10 = ComposeUiNode.Companion.f9645h;
                            Updater.b(composer2, function10);
                            Function2 function11 = ComposeUiNode.Companion.d;
                            Modifier modifierK = PaddingKt.k(PaddingKt.m(n00.c(composer2, modifierC, function11, "FeedHeader$lambda$5", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48416e, 5), LVAppDesignKitTheme.l(composer2).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, composer2, 54);
                            int iHashCode2 = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                            Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierK);
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function6);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, rowMeasurePolicyA, function7);
                            Updater.c(composer2, persistentCompositionLocalMapN2, function8);
                            cj.s(iHashCode2, composer2, function9, composer2, function10);
                            Updater.c(composer2, modifierC2, function11);
                            Modifier modifierE = ModifierExtKt.e(PaddingKt.k(cj.b("FeedHeader$lambda$5", RowScopeInstance.f5040a, 1.0f, false), LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "feed_tabs_view");
                            FeatureThemeUiModel featureThemeUiModel2 = featureThemeUiModel;
                            LVColorScheme lVColorSchemeA = FeatureThemeMapperKt.a(featureThemeUiModel2);
                            SegmentedControlState segmentedControlState = segmentedControlStateC;
                            boolean zK2 = composer2.K(segmentedControlState);
                            Function0 function12 = function2;
                            boolean zK3 = zK2 | composer2.K(function12);
                            Function0 function13 = function3;
                            boolean zK4 = zK3 | composer2.K(function13);
                            Object objX2 = composer2.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (zK4 || objX2 == composer$Companion$Empty$1) {
                                objX2 = new pp(segmentedControlState, function12, function13, 9);
                                composer2.q(objX2);
                            }
                            LVSegmentedControlKt.a(modifierE, segmentedControlState, true, lVColorSchemeA, true, (Function0) objX2, composer2, 24960, 0);
                            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("FeedHeader$lambda$5");
                            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, composer2, 0);
                            int iHashCode3 = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer2.n();
                            Modifier modifierC3 = ComposedModifierKt.c(composer2, dTFunctionNameModifier);
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function6);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, rowMeasurePolicyA2, function7);
                            Updater.c(composer2, persistentCompositionLocalMapN3, function8);
                            cj.s(iHashCode3, composer2, function9, composer2, function10);
                            Updater.c(composer2, modifierC3, function11);
                            if (z) {
                                composer2.L(-1971668181);
                                TopBarQRCodeKt.a(null, j3, function1, composer2, 0, 1);
                                composer2 = composer2;
                                composer2.F();
                            } else {
                                composer2.L(-1971483669);
                                composer2.F();
                            }
                            ContactUsUiModel contactUsUiModel2 = contactUsUiModel;
                            if (contactUsUiModel2.f51154a) {
                                composer2.L(-1971405890);
                                Modifier modifierE2 = ModifierExtKt.e(new DTFunctionNameModifier("FeedHeader$lambda$5"), "feed_contactUs_button");
                                Function1 function14 = function4;
                                boolean zK5 = composer2.K(function14);
                                Object objX3 = composer2.x();
                                if (zK5 || objX3 == composer$Companion$Empty$1) {
                                    objX3 = new u8(function14, 22);
                                    composer2.q(objX3);
                                }
                                ContactUsIconKt.a(modifierE2, contactUsUiModel2, function5, (Function0) objX3, FeatureThemeMapperKt.a(featureThemeUiModel2) == LVColorScheme.INVERT, null, composer2, 0, 32);
                                composer2.F();
                            } else {
                                composer2.L(-1970870613);
                                composer2.F();
                            }
                            TopBarAvatarKt.a(n00.g("FeedHeader$lambda$5", "feed_avatar_button"), null, function0, composer2, 0, 2);
                            composer2.r();
                            composer2.r();
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 6);
            } else {
                z2 = true;
            }
            i3 = 0;
            segmentedControlStateC = LVSegmentedControlKt.c(i3, gapComposerH, listP);
            ((SnapshotMutableStateImpl) segmentedControlStateC.f48700c).setValue(f2);
            if ((i4 & 7168) != 2048) {
                z2 = false;
            }
            zK = gapComposerH.K(segmentedControlStateC) | z2;
            objX = gapComposerH.x();
            if (zK) {
                feedTab2 = feedTab;
                objX = new FeedHeaderKt$FeedHeader$5$1(feedTab2, segmentedControlStateC, null);
                gapComposerH.q(objX);
            } else {
                feedTab2 = feedTab;
                objX = new FeedHeaderKt$FeedHeader$5$1(feedTab2, segmentedControlStateC, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, feedTab2, (Function2) objX);
            LVFeedCompositionLocalProviderKt.b(ComposableLambdaKt.b(-1960985079, new Function2() { // from class: ey
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierH = PaddingKt.h(BackgroundKt.b(tr.d("FeedHeader$lambda$5", 1.0f), j2, RectangleShapeKt.f8913a), WindowInsetsKt.e(TopAppBarDefaults.c(composer2), composer2));
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                        ComposeUiNode.b0.getClass();
                        Function0 function6 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function6);
                        } else {
                            composer2.o();
                        }
                        Function2 function7 = ComposeUiNode.Companion.f9644f;
                        Updater.c(composer2, measurePolicyD, function7);
                        Function2 function8 = ComposeUiNode.Companion.f9643e;
                        Updater.c(composer2, persistentCompositionLocalMapN, function8);
                        Integer numValueOf = Integer.valueOf(iHashCode);
                        Function2 function9 = ComposeUiNode.Companion.g;
                        Updater.c(composer2, numValueOf, function9);
                        Function1 function10 = ComposeUiNode.Companion.f9645h;
                        Updater.b(composer2, function10);
                        Function2 function11 = ComposeUiNode.Companion.d;
                        Modifier modifierK = PaddingKt.k(PaddingKt.m(n00.c(composer2, modifierC, function11, "FeedHeader$lambda$5", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48416e, 5), LVAppDesignKitTheme.l(composer2).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                        RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, composer2, 54);
                        int iHashCode2 = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                        Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierK);
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function6);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, rowMeasurePolicyA, function7);
                        Updater.c(composer2, persistentCompositionLocalMapN2, function8);
                        cj.s(iHashCode2, composer2, function9, composer2, function10);
                        Updater.c(composer2, modifierC2, function11);
                        Modifier modifierE = ModifierExtKt.e(PaddingKt.k(cj.b("FeedHeader$lambda$5", RowScopeInstance.f5040a, 1.0f, false), LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "feed_tabs_view");
                        FeatureThemeUiModel featureThemeUiModel2 = featureThemeUiModel;
                        LVColorScheme lVColorSchemeA = FeatureThemeMapperKt.a(featureThemeUiModel2);
                        SegmentedControlState segmentedControlState = segmentedControlStateC;
                        boolean zK2 = composer2.K(segmentedControlState);
                        Function0 function12 = function2;
                        boolean zK3 = zK2 | composer2.K(function12);
                        Function0 function13 = function3;
                        boolean zK4 = zK3 | composer2.K(function13);
                        Object objX2 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zK4 || objX2 == composer$Companion$Empty$1) {
                            objX2 = new pp(segmentedControlState, function12, function13, 9);
                            composer2.q(objX2);
                        }
                        LVSegmentedControlKt.a(modifierE, segmentedControlState, true, lVColorSchemeA, true, (Function0) objX2, composer2, 24960, 0);
                        DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("FeedHeader$lambda$5");
                        RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, composer2, 0);
                        int iHashCode3 = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer2.n();
                        Modifier modifierC3 = ComposedModifierKt.c(composer2, dTFunctionNameModifier);
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function6);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, rowMeasurePolicyA2, function7);
                        Updater.c(composer2, persistentCompositionLocalMapN3, function8);
                        cj.s(iHashCode3, composer2, function9, composer2, function10);
                        Updater.c(composer2, modifierC3, function11);
                        if (z) {
                            composer2.L(-1971668181);
                            TopBarQRCodeKt.a(null, j3, function1, composer2, 0, 1);
                            composer2 = composer2;
                            composer2.F();
                        } else {
                            composer2.L(-1971483669);
                            composer2.F();
                        }
                        ContactUsUiModel contactUsUiModel2 = contactUsUiModel;
                        if (contactUsUiModel2.f51154a) {
                            composer2.L(-1971405890);
                            Modifier modifierE2 = ModifierExtKt.e(new DTFunctionNameModifier("FeedHeader$lambda$5"), "feed_contactUs_button");
                            Function1 function14 = function4;
                            boolean zK5 = composer2.K(function14);
                            Object objX3 = composer2.x();
                            if (zK5 || objX3 == composer$Companion$Empty$1) {
                                objX3 = new u8(function14, 22);
                                composer2.q(objX3);
                            }
                            ContactUsIconKt.a(modifierE2, contactUsUiModel2, function5, (Function0) objX3, FeatureThemeMapperKt.a(featureThemeUiModel2) == LVColorScheme.INVERT, null, composer2, 0, 32);
                            composer2.F();
                        } else {
                            composer2.L(-1970870613);
                            composer2.F();
                        }
                        TopBarAvatarKt.a(n00.g("FeedHeader$lambda$5", "feed_avatar_button"), null, function0, composer2, 0, 2);
                        composer2.r();
                        composer2.r();
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 6);
        } else {
            feedTab2 = feedTab;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zl(contactUsUiModel, featureThemeUiModel, z, feedTab2, f2, function0, function1, function2, function3, function4, function5, i2);
        }
    }
}
