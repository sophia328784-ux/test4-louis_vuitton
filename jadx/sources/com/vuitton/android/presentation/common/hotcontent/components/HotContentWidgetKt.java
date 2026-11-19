package com.vuitton.android.presentation.common.hotcontent.components;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.runtime.Applier;
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
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVCapsulePageControlKt;
import com.vuitton.android.presentation.common.hotcontent.components.HotContentWidgetKt;
import com.vuitton.android.presentation.common.hotcontent.models.HotContentItemUiModel;
import com.vuitton.android.presentation.compose.components.AccessibilityPagerButtonsKt;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.db;
import defpackage.n00;
import defpackage.p10;
import defpackage.r10;
import defpackage.v10;
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
import net.rtccloud.sdk.internal.Constants;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0003¨\u0006\u0003²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "hasEntranceAnimated", "isFirstSwipe", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class HotContentWidgetKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50891a;

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
            f50891a = iArr;
        }
    }

    public static final void a(final List list, final boolean z, final boolean z2, final long j2, final LVColorScheme lVColorScheme, final Function1 function1, final Function0 function0, Composer composer, final int i2) {
        LVColorScheme lVColorScheme2;
        GapComposer gapComposerH = composer.h(84827327);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(list) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.b(z2) ? 256 : 128) | (gapComposerH.e(j2) ? 2048 : 1024) | (gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536) | (gapComposerH.y(function0) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (i3 & 599187) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zY = gapComposerH.y(list);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new db(list, 5);
                gapComposerH.q(objX);
            }
            final PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX, gapComposerH, 0, 3);
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("HotContentCarousel");
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, horizontal, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function7);
            PagerKt.a(pagerStateB, null, PaddingKt.c(LVAppDesignKitTheme.l(gapComposerH).f48417f, 2), null, 1, LVAppDesignKitTheme.l(gapComposerH).f48415c, null, null, false, false, null, null, null, ComposableLambdaKt.b(1454342952, new v10(ComposableLambdaKt.b(-774665041, new Function4() { // from class: u10
                @Override // kotlin.jvm.functions.Function4
                public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
                    Modifier modifierB;
                    int iIntValue = ((Integer) obj2).intValue();
                    Composer composer2 = (Composer) obj3;
                    ((Integer) obj4).getClass();
                    ((PagerScope) obj).getClass();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Integer numValueOf2 = Integer.valueOf(iIntValue + 1);
                    List list2 = list;
                    String strB = StringResources_androidKt.b(R.string.alt_tab, new Object[]{numValueOf2, Integer.valueOf(list2.size())}, composer2);
                    int iK = pagerStateB.k();
                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                    if (iIntValue == iK) {
                        DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(-1186470398, composer2, "HotContentCarousel$lambda$1$0");
                        boolean zK = composer2.K(strB);
                        Object objX2 = composer2.x();
                        if (zK || objX2 == composer$Companion$Empty$2) {
                            objX2 = new lt(strB, 6);
                            composer2.q(objX2);
                        }
                        modifierB = SemanticsModifierKt.b(dTFunctionNameModifierJ, true, (Function1) objX2);
                        composer2.F();
                    } else {
                        DTFunctionNameModifier dTFunctionNameModifierJ2 = pq0.j(-1186260032, composer2, "HotContentCarousel$lambda$1$0");
                        Object objX3 = composer2.x();
                        if (objX3 == composer$Companion$Empty$2) {
                            objX3 = new dy(22);
                            composer2.q(objX3);
                        }
                        modifierB = SemanticsModifierKt.b(dTFunctionNameModifierJ2, false, (Function1) objX3);
                        composer2.F();
                    }
                    HotContentWidgetKt.b(modifierB, (HotContentItemUiModel) list2.get(iIntValue), lVColorScheme, z, j2, function1, composer2, 0);
                    return Unit.f71739a;
                }
            }, gapComposerH), 0), gapComposerH), gapComposerH, 24576, 24576, 16330);
            gapComposerH = gapComposerH;
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("HotContentCarousel"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
            Updater.c(gapComposerH, modifierC2, function7);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("HotContentCarousel");
            BiasAlignment biasAlignment = Alignment.Companion.f8587f;
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
            LVCapsulePageControlKt.a(boxScopeInstance.g(dTFunctionNameModifier2, biasAlignment), pagerStateB, lVColorScheme, false, gapComposerH, (i3 >> 6) & 896, 8);
            if (z2) {
                Modifier modifierM2 = PaddingKt.m(SizeKt.d(boxScopeInstance.g(n00.i(gapComposerH, 1936907543, "HotContentCarousel"), Alignment.Companion.f8590j), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                int i4 = WhenMappings.f50891a[lVColorScheme.ordinal()];
                if (i4 == 1) {
                    lVColorScheme2 = LVColorScheme.INVERT;
                } else {
                    if (i4 != 2) {
                        v40.g();
                        return;
                    }
                    lVColorScheme2 = LVColorScheme.DEFAULT;
                }
                AccessibilityPagerButtonsKt.b(modifierM2, pagerStateB, lVColorScheme2, Arrangement.f4919b, Alignment.Companion.l, Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposerH, 27648, 32);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1937561023);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = Integer.valueOf(pagerStateB.k());
                gapComposerH.q(objX2);
            }
            int iIntValue = ((Number) objX2).intValue();
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(objX3);
            }
            MutableState mutableState = (MutableState) objX3;
            if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                gapComposerH.L(1653156784);
                Integer numValueOf2 = Integer.valueOf(pagerStateB.k());
                boolean zK = gapComposerH.K(pagerStateB) | ((i3 & 3670016) == 1048576);
                Object objX4 = gapComposerH.x();
                if (zK || objX4 == composer$Companion$Empty$1) {
                    HotContentWidgetKt$HotContentCarousel$2$1 hotContentWidgetKt$HotContentCarousel$2$1 = new HotContentWidgetKt$HotContentCarousel$2$1(pagerStateB, iIntValue, function0, mutableState, null);
                    gapComposerH.q(hotContentWidgetKt$HotContentCarousel$2$1);
                    objX4 = hotContentWidgetKt$HotContentCarousel$2$1;
                }
                EffectsKt.e(gapComposerH, numValueOf2, (Function2) objX4);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1653359555);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(list, z, z2, j2, lVColorScheme, function1, function0, i2) { // from class: w10

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ List f80725b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ boolean f80726c;
                public final /* synthetic */ boolean d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ long f80727e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ LVColorScheme f80728f;
                public final /* synthetic */ Function1 g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function0 f80729h;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    HotContentWidgetKt.a(this.f80725b, this.f80726c, this.d, this.f80727e, this.f80728f, this.g, this.f80729h, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(Modifier modifier, final HotContentItemUiModel hotContentItemUiModel, LVColorScheme lVColorScheme, boolean z, long j2, final Function1 function1, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "HotContentCarouselItemDispatcher");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-512757502);
        final int i3 = 2;
        int i4 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.K(hotContentItemUiModel) ? 32 : 16) | (gapComposerH.d(lVColorScheme.ordinal()) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.e(j2) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536);
        final int i5 = 0;
        final int i6 = 1;
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z2 = hotContentItemUiModel instanceof HotContentItemUiModel.Order;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z2) {
                gapComposerH.L(1161289810);
                HotContentItemUiModel.Order order = (HotContentItemUiModel.Order) hotContentItemUiModel;
                boolean z3 = ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | ((i4 & 112) == 32);
                Object objX = gapComposerH.x();
                if (z3 || objX == composer$Companion$Empty$1) {
                    objX = new Function0() { // from class: q10
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            switch (i6) {
                                case 0:
                                    function1.invoke(hotContentItemUiModel);
                                    break;
                                case 1:
                                    function1.invoke(hotContentItemUiModel);
                                    break;
                                default:
                                    function1.invoke(hotContentItemUiModel);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX);
                }
                HotContentOrderItemKt.a(modifier2, order, lVColorScheme, z, j2, (Function0) objX, gapComposerH, i4 & Constants.CallType.HOST);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else if (hotContentItemUiModel instanceof HotContentItemUiModel.StoreAppointment) {
                gapComposerH.L(1161300181);
                HotContentItemUiModel.StoreAppointment storeAppointment = (HotContentItemUiModel.StoreAppointment) hotContentItemUiModel;
                int i7 = ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072 ? 1 : 0) | ((i4 & 112) != 32 ? 0 : 1);
                Object objX2 = gapComposerH.x();
                if (i7 != 0 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new Function0() { // from class: q10
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            switch (i3) {
                                case 0:
                                    function1.invoke(hotContentItemUiModel);
                                    break;
                                case 1:
                                    function1.invoke(hotContentItemUiModel);
                                    break;
                                default:
                                    function1.invoke(hotContentItemUiModel);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX2);
                }
                HotContentStoreAppointmentItemKt.a(modifier2, storeAppointment, lVColorScheme, (Function0) objX2, gapComposerH, i4 & 1022);
                gapComposerH.Z(false);
            } else {
                if (!(hotContentItemUiModel instanceof HotContentItemUiModel.CareService)) {
                    throw d21.u(gapComposerH, 1161288538, false);
                }
                gapComposerH.L(1161307504);
                HotContentItemUiModel.CareService careService = (HotContentItemUiModel.CareService) hotContentItemUiModel;
                int i8 = ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072 ? 1 : 0) | ((i4 & 112) != 32 ? 0 : 1);
                Object objX3 = gapComposerH.x();
                if (i8 != 0 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new Function0() { // from class: q10
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            switch (i5) {
                                case 0:
                                    function1.invoke(hotContentItemUiModel);
                                    break;
                                case 1:
                                    function1.invoke(hotContentItemUiModel);
                                    break;
                                default:
                                    function1.invoke(hotContentItemUiModel);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX3);
                }
                HotContentCareServiceItemKt.d(modifier2, careService, lVColorScheme, (Function0) objX3, gapComposerH, i4 & 1022);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new r10(modifier2, hotContentItemUiModel, lVColorScheme, z, j2, function1, i2);
        }
    }

    public static final void c(Modifier modifier, final List list, final boolean z, final boolean z2, final boolean z3, LVColorScheme lVColorScheme, final Function1 function1, final Function0 function0, Composer composer, final int i2, final int i3) {
        boolean z4;
        final LVColorScheme lVColorScheme2;
        final Modifier modifier2;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "HotContentWidget");
        }
        list.getClass();
        function1.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-781976776);
        int i4 = i2 | 6;
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(list) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            z4 = z2;
            i4 |= gapComposerH.b(z4) ? 2048 : 1024;
        } else {
            z4 = z2;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.b(z3) ? 16384 : 8192;
        }
        int i5 = i3 & 32;
        int i6 = ImageMetadata.EDGE_MODE;
        if (i5 != 0) {
            i4 |= i6;
        } else if ((196608 & i2) == 0) {
            i6 = gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 131072 : 65536;
            i4 |= i6;
        }
        if ((1572864 & i2) == 0) {
            i4 |= gapComposerH.y(function1) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i4 |= gapComposerH.y(function0) ? 8388608 : 4194304;
        }
        if (gapComposerH.p(i4 & 1, (4793491 & i4) != 4793490)) {
            final DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("HotContentWidget");
            final LVColorScheme lVColorScheme3 = i5 != 0 ? LVColorScheme.DEFAULT : lVColorScheme;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object[] objArr = new Object[0];
            boolean z5 = (i4 & 896) == 256;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z5 || objX == composer$Companion$Empty$1) {
                objX = new p10(z, 0);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) RememberSaveableKt.d(objArr, (Function0) objX, gapComposerH, 0);
            Object objX2 = gapComposerH.x();
            Object obj = objX2;
            if (objX2 == composer$Companion$Empty$1) {
                Boolean bool = (Boolean) mutableState.getF10755b();
                bool.getClass();
                MutableTransitionState mutableTransitionState = new MutableTransitionState(bool);
                mutableTransitionState.g(Boolean.TRUE);
                gapComposerH.q(mutableTransitionState);
                obj = mutableTransitionState;
            }
            MutableTransitionState mutableTransitionState2 = (MutableTransitionState) obj;
            Boolean boolValueOf = Boolean.valueOf(mutableTransitionState2.f());
            Object f10755b = ((SnapshotMutableStateImpl) mutableTransitionState2.f3906b).getF10755b();
            boolean zY = gapComposerH.y(mutableTransitionState2) | gapComposerH.K(mutableState);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new HotContentWidgetKt$HotContentWidget$1$1(mutableTransitionState2, mutableState, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.g(boolValueOf, f10755b, (Function2) objX3, gapComposerH);
            final long j2 = ((Boolean) mutableState.getF10755b()).booleanValue() ? 0L : 1300L;
            if (list.isEmpty()) {
                RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    final int i7 = 0;
                    final boolean z6 = z4;
                    final LVColorScheme lVColorScheme4 = lVColorScheme3;
                    recomposeScopeImplB0.d = new Function2() { // from class: s10
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj2, Object obj3) {
                            switch (i7) {
                                case 0:
                                    ((Integer) obj3).getClass();
                                    HotContentWidgetKt.c(dTFunctionNameModifier, list, z, z6, z3, lVColorScheme4, function1, function0, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1), i3);
                                    break;
                                default:
                                    ((Integer) obj3).getClass();
                                    HotContentWidgetKt.c(dTFunctionNameModifier, list, z, z6, z3, lVColorScheme4, function1, function0, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1), i3);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    return;
                }
                return;
            }
            modifier2 = dTFunctionNameModifier;
            TweenSpec tweenSpecC = AnimationSpecKt.c(1000, 0, null, 6);
            Alignment.f8582a.getClass();
            GapComposer gapComposer2 = gapComposerH;
            AnimatedVisibilityKt.b(mutableTransitionState2, modifier2, EnterExitTransitionKt.d(tweenSpecC, Alignment.Companion.f8591k, null, 12).b(EnterExitTransitionKt.f(AnimationSpecKt.c(300, 1000, null, 4), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2)), null, null, ComposableLambdaKt.b(1855188832, new Function3() { // from class: t10
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj2, Object obj3, Object obj4) {
                    Composer composer2 = (Composer) obj3;
                    ((Integer) obj4).getClass();
                    ((AnimatedVisibilityScope) obj2).getClass();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    List list2 = list;
                    int size = list2.size();
                    LVColorScheme lVColorScheme5 = lVColorScheme3;
                    boolean z7 = z2;
                    long j3 = j2;
                    Function1 function2 = function1;
                    if (size == 1) {
                        HotContentWidgetKt.b(PaddingKt.k(pq0.j(291389233, composer2, "HotContentWidget$lambda$6"), LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), (HotContentItemUiModel) CollectionsKt.B(list2), lVColorScheme5, z7, j3, function2, composer2, 0);
                        composer2.F();
                    } else {
                        composer2.L(425056142);
                        HotContentWidgetKt.a(list2, z7, z3, j3, lVColorScheme5, function2, function0, composer2, 0);
                        composer2.F();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer2, 196992 | ((i4 << 3) & 112));
            lVColorScheme2 = lVColorScheme3;
            gapComposer = gapComposer2;
        } else {
            GapComposer gapComposer3 = gapComposerH;
            gapComposer3.D();
            lVColorScheme2 = lVColorScheme;
            modifier2 = modifierE;
            gapComposer = gapComposer3;
        }
        RecomposeScopeImpl recomposeScopeImplB1 = gapComposer.b0();
        if (recomposeScopeImplB1 != null) {
            final int i8 = 1;
            recomposeScopeImplB1.d = new Function2() { // from class: s10
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    switch (i8) {
                        case 0:
                            ((Integer) obj3).getClass();
                            HotContentWidgetKt.c(modifier2, list, z, z2, z3, lVColorScheme2, function1, function0, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1), i3);
                            break;
                        default:
                            ((Integer) obj3).getClass();
                            HotContentWidgetKt.c(modifier2, list, z, z2, z3, lVColorScheme2, function1, function0, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1), i3);
                            break;
                    }
                    return Unit.f71739a;
                }
            };
        }
    }
}
