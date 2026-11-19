package com.vuitton.android.presentation.screen.pdp.components.findinstore;

import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVDisclaimerKt;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVReadOnlyTextFieldKt;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import com.vuitton.android.presentation.screen.pdp.components.PdpReferencesRowKt;
import com.vuitton.android.presentation.screen.pdp.components.findinstore.FindInStoreComponentKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpVariationTextListKt;
import com.vuitton.android.presentation.screen.pdp.models.FindInStoreViewState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.VariationUiModel;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import com.vuitton.foundation.model.domain.model.product.universal.VariationType;
import defpackage.a;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import defpackage.x3;
import java.util.ArrayList;
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
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "displayStoreWithAvailabilityOnly", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FindInStoreComponentKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f61426a;

        static {
            int[] iArr = new int[VariationType.values().length];
            try {
                iArr[VariationType.MODEL_SIZE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[VariationType.SIZE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f61426a = iArr;
        }
    }

    public static final void a(Modifier modifier, final FindInStoreViewState findInStoreViewState, final String str, final String str2, final String str3, final String str4, final VariationUiModel variationUiModel, final String str5, final ProductBackground productBackground, final boolean z, final Pair pair, final Function0 function0, final Function0 function1, final Function1 function2, final Function1 function3, Function1 function4, final Function1 function5, final Function1 function6, Composer composer, final int i2, final int i3) {
        GapComposer gapComposer;
        Function1 function7;
        boolean z2;
        boolean z3;
        Modifier modifierE = modifier;
        Function1 function8 = function4;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "FindInStoreComponent-F3VNa6g");
        }
        findInStoreViewState.getClass();
        List list = findInStoreViewState.f61547e;
        str.getClass();
        str3.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function8.getClass();
        function5.getClass();
        function6.getClass();
        GapComposer gapComposerH = composer.h(-1033152565);
        int i4 = (i2 & 6) == 0 ? (gapComposerH.K(modifierE) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(findInStoreViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(str) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.K(str2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.K(str3) ? 16384 : 8192;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i4 |= gapComposerH.K(str4) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i4 |= gapComposerH.K(variationUiModel) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i4 |= gapComposerH.K(str5) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i4 |= gapComposerH.d(productBackground == null ? -1 : productBackground.ordinal()) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposerH.b(z) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        int i5 = (i3 & 6) == 0 ? (gapComposerH.y(pair) ? 4 : 2) | i3 : i3;
        int i6 = (i3 & 48) == 0 ? i5 | (gapComposerH.y(function0) ? 32 : 16) : i5;
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i6 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i6 |= gapComposerH.y(function2) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i6 |= gapComposerH.y(function3) ? 16384 : 8192;
        }
        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            i6 |= gapComposerH.y(function8) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i6 |= gapComposerH.y(function5) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i6 |= gapComposerH.y(function6) ? 8388608 : 4194304;
        }
        int i7 = i6;
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i7 & 4793491) == 4793490) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Modifier modifierD = ScrollKt.d(WindowInsetsPadding_androidKt.b(PaddingKt.k(modifierE, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2)), ScrollKt.b(gapComposerH), false, 14);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function9 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function9);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.check_store_availability), PaddingKt.m(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "FindInStoreComponent-F3VNa6g"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131064);
            int i8 = i4 >> 18;
            PdpReferencesRowKt.b(tr.d("FindInStoreComponent-F3VNa6g", 1.0f), str4, productBackground, str, str2, gapComposerH, ((i4 >> 12) & 112) | 6 | (i8 & 896) | ((i4 << 3) & 57344));
            gapComposer = gapComposerH;
            SpacerKt.a(gapComposer, SizeKt.o(new DTFunctionNameModifier("FindInStoreComponent-F3VNa6g"), LVAppDesignKitTheme.l(gapComposer).g));
            gapComposer.L(1369594381);
            if (variationUiModel == null || pair == null) {
                z2 = false;
            } else {
                Object obj = pair.f71706c;
                int i9 = WhenMappings.f61426a[((VariationType) pair.f71705b).ordinal()];
                if (i9 == 1) {
                    PdpVariationTextListKt.b(PaddingKt.m(n00.i(gapComposer, -1280056593, "FindInStoreComponent-F3VNa6g"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48418h, 7), StringResources_androidKt.c(gapComposer, R.string.product_detail_size), str, true, (List) obj, function6, gapComposer, (i4 & 896) | 3072 | ((i7 >> 6) & ImageMetadata.JPEG_GPS_COORDINATES), 0);
                    z2 = false;
                    gapComposer.Z(false);
                } else if (i9 != 2) {
                    gapComposer.L(-1279030524);
                    z2 = false;
                    gapComposer.Z(false);
                } else {
                    PdpVariationTextListKt.b(PaddingKt.m(n00.i(gapComposer, -1279519890, "FindInStoreComponent-F3VNa6g"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48418h, 7), StringResources_androidKt.c(gapComposer, R.string.product_detail_size), str, false, (List) obj, function6, gapComposer, (i4 & 896) | 3072 | ((i7 >> 6) & ImageMetadata.JPEG_GPS_COORDINATES), 0);
                    z2 = false;
                    gapComposer.Z(false);
                }
            }
            Modifier modifierM = PaddingKt.m(o60.d(gapComposer, z2, "FindInStoreComponent-F3VNa6g", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48418h, 7);
            gapComposer.L(1369642136);
            String strC = str3.length() == 0 ? StringResources_androidKt.c(gapComposer, R.string.availability_in_store_hint) : str3;
            gapComposer.Z(false);
            LVReadOnlyTextFieldKt.a("", modifierM, null, null, false, strC, false, null, null, null, null, function0, Integer.valueOf(LVAppDesignKitTheme.g(gapComposer).m), gapComposer, 6, i7 & 112, 10204);
            if (z) {
                gapComposer.L(-490517099);
                LVButtonKt.b((i7 << 21) & 1879048192, 496, gapComposer, PaddingKt.m(tr.d("FindInStoreComponent-F3VNa6g", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48418h, 7), LVAppDesignKitTheme.b(gapComposer).f48449e, Integer.valueOf(LVAppDesignKitTheme.g(gapComposer).L0), null, StringResources_androidKt.c(gapComposer, R.string.locate_use_current_location), function1, false, false, false);
                gapComposer.Z(false);
            } else {
                gapComposer.L(-490084339);
                gapComposer.Z(false);
            }
            LVDisclaimerKt.a(PaddingKt.m(new DTFunctionNameModifier("FindInStoreComponent-F3VNa6g"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48419i, 7), StringResources_androidKt.c(gapComposer, R.string.locate_disclaimer), null, 0L, null, null, gapComposer, 0, 60);
            if (findInStoreViewState.f61545b) {
                LVFlowerLoaderKt.a(PaddingKt.m(n00.i(gapComposer, -489851064, "FindInStoreComponent-F3VNa6g"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), null, false, gapComposer, 0, 6);
                gapComposer.Z(false);
            } else {
                if (findInStoreViewState.f61546c) {
                    FindInStoreNoResultKt.a(PaddingKt.m(o60.c(gapComposer, -489649595, "FindInStoreComponent-F3VNa6g", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48419i, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48417f, 5), str5, function8, gapComposer, (i8 & 112) | ((i7 >> 9) & 896));
                    gapComposer.Z(false);
                } else if (list.isEmpty()) {
                    function7 = function8;
                    if (str3.length() > 0) {
                        FindInStoreNoResultKt.a(PaddingKt.m(o60.c(gapComposer, -486744213, "FindInStoreComponent-F3VNa6g", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48417f, 7), str5, function7, gapComposer, (i8 & 112) | ((i7 >> 9) & 896));
                        gapComposer.Z(false);
                    } else {
                        gapComposer.L(-486373267);
                        gapComposer.Z(false);
                    }
                } else {
                    gapComposer.L(-489093517);
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : list) {
                        if (((Boolean) mutableState.getF10755b()).booleanValue() ? ((StoreUiModel) obj2).g : true) {
                            arrayList.add(obj2);
                        }
                    }
                    if (list.isEmpty()) {
                        gapComposer.L(-488340403);
                        gapComposer.Z(false);
                    } else {
                        Modifier modifierM2 = PaddingKt.m(n00.i(gapComposer, -488809371, "FindInStoreComponent-F3VNa6g"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).g, 7);
                        boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
                        boolean z4 = (i7 & 3670016) == 1048576;
                        Object objX2 = gapComposer.x();
                        if (z4 || objX2 == composer$Companion$Empty$1) {
                            objX2 = new x3(function5, mutableState, 8);
                            gapComposer.q(objX2);
                        }
                        FindInStoreHeaderKt.a(modifierM2, zBooleanValue, (Function1) objX2, gapComposer, 0);
                        gapComposer.Z(false);
                    }
                    if (arrayList.isEmpty()) {
                        function7 = function8;
                        FindInStoreNoResultKt.a(PaddingKt.m(o60.c(gapComposer, -487212189, "FindInStoreComponent-F3VNa6g", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48417f, 7), str5, function7, gapComposer, (i8 & 112) | ((i7 >> 9) & 896));
                        z3 = false;
                        gapComposer.Z(false);
                    } else {
                        gapComposer.L(-488268266);
                        int i10 = 0;
                        for (Object obj3 : arrayList) {
                            int i11 = i10 + 1;
                            if (i10 < 0) {
                                CollectionsKt.t0();
                                throw null;
                            }
                            FindInStoreRowKt.b((StoreUiModel) obj3, function3, function2, function8, gapComposer, ((i7 >> 9) & 112) | ((i7 >> 3) & 896) | ((i7 >> 6) & 7168));
                            Function1 function10 = function8;
                            if (i10 < arrayList.size() - 1) {
                                DividerKt.a(PaddingKt.k(n00.i(gapComposer, -2023579542, "FindInStoreComponent-F3VNa6g"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48417f, 1), LVAppDesignKitTheme.d(gapComposer).f48385c, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 0);
                                gapComposer.Z(false);
                            } else {
                                SpacerKt.a(gapComposer, SizeKt.o(n00.i(gapComposer, -2023188818, "FindInStoreComponent-F3VNa6g"), LVAppDesignKitTheme.l(gapComposer).f48417f));
                                gapComposer.Z(false);
                            }
                            function8 = function10;
                            i10 = i11;
                        }
                        function7 = function8;
                        z3 = false;
                        gapComposer.Z(false);
                    }
                    gapComposer.Z(z3);
                }
                gapComposer.Z(true);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            }
            function7 = function8;
            gapComposer.Z(true);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        } else {
            gapComposer = gapComposerH;
            function7 = function8;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Function1 function11 = function7;
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2() { // from class: vy
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj4, Object obj5) {
                    ((Integer) obj5).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    FindInStoreComponentKt.a(modifier2, findInStoreViewState, str, str2, str3, str4, variationUiModel, str5, productBackground, z, pair, function0, function1, function2, function3, function11, function5, function6, (Composer) obj4, iA, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }
}
