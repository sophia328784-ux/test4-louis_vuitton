package com.vuitton.android.presentation.screen.pdp.bottomsheet;

import android.content.Context;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.pdp.FindInStoreViewModel;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.FindInStoreBottomSheetKt;
import com.vuitton.android.presentation.screen.pdp.components.findinstore.FindInStoreComponentKt;
import com.vuitton.android.presentation.screen.pdp.models.FindInStoreViewState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.VariationUiModel;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import defpackage.d1;
import defpackage.gv;
import defpackage.k3;
import defpackage.m8;
import defpackage.n4;
import defpackage.yh;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\b²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00028\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00048\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00068\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/FindInStoreViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/pdp/FindInStoreBottomSheet;", "currentBottomSheet", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;", "currentSelectedSize", "Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;", "currentPlace", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FindInStoreBottomSheetKt {
    public static final void a(final FindInStoreViewModel findInStoreViewModel, final String str, final String str2, String str3, final VariationUiModel variationUiModel, final String str4, final ProductBackground productBackground, final boolean z, final Pair pair, final Function1 function1, final Function1 function2, final Function0 function0, final Function2 function3, Composer composer, final int i2, final int i3) {
        int i4;
        String str5;
        Object yhVar;
        int i5;
        LVModalBottomSheetState lVModalBottomSheetState;
        MutableState mutableState;
        MutableState mutableState2;
        Context context;
        Object k3Var;
        FindInStoreViewModel findInStoreViewModel2;
        LVModalBottomSheetState lVModalBottomSheetState2;
        String str6;
        findInStoreViewModel.getClass();
        str3.getClass();
        function1.getClass();
        function2.getClass();
        function0.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-1779802461);
        int i6 = i2 | (gapComposerH.K(findInStoreViewModel) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.K(str3) ? 2048 : 1024) | (gapComposerH.K(variationUiModel) ? 16384 : 8192);
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i6 |= gapComposerH.K(str4) ? 131072 : 65536;
        }
        int i7 = i6 | (gapComposerH.d(productBackground == null ? -1 : productBackground.ordinal()) ? 1048576 : 524288) | (gapComposerH.b(z) ? 8388608 : 4194304) | (gapComposerH.y(pair) ? 67108864 : 33554432) | (gapComposerH.y(function1) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if ((i3 & 6) == 0) {
            i4 = i3 | (gapComposerH.y(function2) ? 4 : 2);
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.y(function0) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(function3) ? 256 : 128;
        }
        int i8 = i4;
        if (gapComposerH.p(i7 & 1, ((i7 & 306783379) == 306783378 && (i8 & 147) == 146) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(findInStoreViewModel.getN(), gapComposerH);
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(null);
                gapComposerH.q(objX);
            }
            MutableState mutableState3 = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(variationUiModel);
                gapComposerH.q(objX2);
            }
            MutableState mutableState4 = (MutableState) objX2;
            Context context2 = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(null);
                gapComposerH.q(objX3);
            }
            MutableState mutableState5 = (MutableState) objX3;
            Unit unit = Unit.f71739a;
            int i9 = i7 & 14;
            int i10 = i7 & 7168;
            boolean z2 = (i9 == 4) | (i10 == 2048);
            Object objX4 = gapComposerH.x();
            if (z2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1(findInStoreViewModel, str3, mutableState5, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX4);
            boolean z3 = (i9 == 4) | ((i7 & 1879048192) == 536870912);
            Object objX5 = gapComposerH.x();
            if (z3 || objX5 == composer$Companion$Empty$1) {
                objX5 = new FindInStoreBottomSheetKt$FindInStoreBottomSheet$2$1(findInStoreViewModel, function1, null);
                gapComposerH.q(objX5);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX5);
            Modifier modifierC = SizeKt.c(new DTFunctionNameModifier("FindInStoreBottomSheet-79N4jBc"), 0.9f);
            FindInStoreViewState findInStoreViewState = (FindInStoreViewState) mutableStateB.getF10755b();
            VariationUiModel variationUiModel2 = (VariationUiModel) mutableState4.getF10755b();
            String str7 = variationUiModel2 != null ? variationUiModel2.f61767b : str3;
            String strA = StringResourceUiModelKt.a(((FindInStoreViewState) mutableStateB.getF10755b()).d, context2);
            VariationUiModel variationUiModel3 = (VariationUiModel) mutableState4.getF10755b();
            String str8 = (variationUiModel3 == null || (str6 = variationUiModel3.d) == null) ? str2 : str6;
            VariationUiModel variationUiModel4 = (VariationUiModel) mutableState4.getF10755b();
            boolean zY = gapComposerH.y(lVModalBottomSheetStateF);
            Object objX6 = gapComposerH.x();
            if (zY || objX6 == composer$Companion$Empty$1) {
                objX6 = new m8(lVModalBottomSheetStateF, mutableState3, 2);
                gapComposerH.q(objX6);
            }
            Function0 function4 = (Function0) objX6;
            boolean zY2 = ((i8 & 896) == 256) | (i9 == 4) | gapComposerH.y(lVModalBottomSheetStateF) | (i10 == 2048);
            Object objX7 = gapComposerH.x();
            if (zY2 || objX7 == composer$Companion$Empty$1) {
                i5 = i8;
                yhVar = new yh(function3, findInStoreViewModel, str3, lVModalBottomSheetStateF, mutableState3, 6);
                lVModalBottomSheetState = lVModalBottomSheetStateF;
                mutableState = mutableState3;
                gapComposerH.q(yhVar);
            } else {
                yhVar = objX7;
                i5 = i8;
                mutableState = mutableState3;
                lVModalBottomSheetState = lVModalBottomSheetStateF;
            }
            Function0 function5 = (Function0) yhVar;
            boolean zY3 = (i9 == 4) | (i10 == 2048) | gapComposerH.y(context2) | gapComposerH.K(mutableStateB);
            Object objX8 = gapComposerH.x();
            if (zY3 || objX8 == composer$Companion$Empty$1) {
                mutableState2 = mutableStateB;
                context = context2;
                d1 d1Var = new d1((Object) findInStoreViewModel, str3, (Object) context, (Object) mutableState2, (Object) mutableState5, 7);
                gapComposerH.q(d1Var);
                objX8 = d1Var;
            } else {
                mutableState2 = mutableStateB;
                context = context2;
            }
            Function1 function6 = (Function1) objX8;
            boolean zK = (i9 == 4) | (i10 == 2048) | gapComposerH.K(mutableState2) | gapComposerH.y(context);
            Object objX9 = gapComposerH.x();
            if (zK || objX9 == composer$Companion$Empty$1) {
                findInStoreViewModel2 = findInStoreViewModel;
                k3Var = new k3((Object) findInStoreViewModel2, str3, context, mutableState2, 10);
                str5 = str3;
                gapComposerH.q(k3Var);
            } else {
                str5 = str3;
                k3Var = objX9;
                findInStoreViewModel2 = findInStoreViewModel;
            }
            Function1 function7 = (Function1) k3Var;
            boolean z4 = (i9 == 4) | (i10 == 2048);
            Object objX10 = gapComposerH.x();
            if (z4 || objX10 == composer$Companion$Empty$1) {
                objX10 = new gv(findInStoreViewModel2, str5, 13);
                gapComposerH.q(objX10);
            }
            Function1 function8 = (Function1) objX10;
            boolean zY4 = (i9 == 4) | gapComposerH.y(lVModalBottomSheetState);
            Object objX11 = gapComposerH.x();
            if (zY4 || objX11 == composer$Companion$Empty$1) {
                FindInStoreViewModel findInStoreViewModel3 = findInStoreViewModel2;
                lVModalBottomSheetState2 = lVModalBottomSheetState;
                k3 k3Var2 = new k3(lVModalBottomSheetState2, mutableState4, mutableState5, findInStoreViewModel3, 11);
                gapComposerH.q(k3Var2);
                objX11 = k3Var2;
            } else {
                lVModalBottomSheetState2 = lVModalBottomSheetState;
            }
            int i11 = i7 << 6;
            FindInStoreComponentKt.a(modifierC, findInStoreViewState, str7, str, strA, str8, variationUiModel4, str4, productBackground, z, pair, function4, function5, function6, function7, function2, function8, (Function1) objX11, gapComposerH, (i11 & 7168) | 6 | (29360128 & i11) | (234881024 & i11) | (i11 & 1879048192), ((i7 >> 24) & 14) | ((i5 << 15) & ImageMetadata.JPEG_GPS_COORDINATES));
            if (lVModalBottomSheetState2.a()) {
                gapComposerH.L(-719685368);
                LVModalBottomSheetState lVModalBottomSheetState3 = lVModalBottomSheetState2;
                LVModalBottomSheetKt.b(Modifier.Companion.f8607b, StringResources_androidKt.c(gapComposerH, R.string.alt_close), null, lVModalBottomSheetState3, null, 0L, false, null, ComposableLambdaKt.b(-391643340, new n4((Object) findInStoreViewModel, (Object) lVModalBottomSheetState3, function0, (Object) mutableState, (Object) mutableState2, 11), gapComposerH), gapComposerH, (LVModalBottomSheetState.f48797e << 9) | 100663302, 244);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-717996705);
                gapComposerH.Z(false);
            }
        } else {
            str5 = str3;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final String str9 = str5;
            recomposeScopeImplB0.d = new Function2() { // from class: uy
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    FindInStoreBottomSheetKt.a(findInStoreViewModel, str, str2, str9, variationUiModel, str4, productBackground, z, pair, function1, function2, function0, function3, (Composer) obj, iA, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }
}
