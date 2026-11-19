package com.vuitton.android.presentation.screen.pdp.components;

import android.content.Context;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.pdp.components.PdpMainViewKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.PdpVirtualStudioConfigValues;
import com.vuitton.android.presentation.screen.pdp.models.StoreButtonType;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PriceUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductCustomizationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SellableStatusUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.CatalogMode;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import com.vuitton.android.presentation.tracking.GA4Tracker;
import com.vuitton.android.presentation.tracking.GA4TrackerEntryPointKt;
import com.vuitton.foundation.model.domain.extensions.CollectionExtKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.collections.immutable.ExtensionsKt;
import kotlinx.collections.immutable.ImmutableList;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "hasTrackedYmalLoaded", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpMainViewKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f61405a;

        static {
            int[] iArr = new int[StoreButtonType.values().length];
            try {
                iArr[StoreButtonType.FIND_IN_STORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StoreButtonType.FIND_A_STORE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f61405a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:127:0x0256  */
    /* JADX WARN: Code duplicated, block: B:128:0x025a  */
    public static final void a(Modifier modifier, final PdpViewState pdpViewState, final ProductUiModel productUiModel, final ReinsuranceUiModel reinsuranceUiModel, final ImmutableList immutableList, final List list, final Function0 function0, final Function0 function1, final Function1 function2, final Function0 function3, final Function0 function4, final Function0 function5, final Function0 function6, final Function0 function7, final Function0 function8, final Function0 function9, final Function1 function10, final Function1 function11, final Function1 function12, final Function1 function13, final Function1 function14, final Function2 function15, final Function1 function16, final Function1 function17, final Function2 function18, final Function3 function19, final Function2 function20, Composer composer, final int i2) {
        GapComposer gapComposer;
        final Modifier modifier2;
        GA4Tracker gA4Tracker;
        AICompanionTracker aICompanionTracker;
        Object obj;
        GapComposer gapComposer2;
        String str;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PdpMainView");
        }
        pdpViewState.getClass();
        productUiModel.getClass();
        list.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        function11.getClass();
        function12.getClass();
        function13.getClass();
        function14.getClass();
        function15.getClass();
        function16.getClass();
        function17.getClass();
        function18.getClass();
        function19.getClass();
        function20.getClass();
        GapComposer gapComposerH = composer.h(1942110171);
        int i3 = i2 | 6 | (gapComposerH.y(pdpViewState) ? 32 : 16) | (gapComposerH.y(productUiModel) ? 256 : 128) | (gapComposerH.y(reinsuranceUiModel) ? 2048 : 1024) | (gapComposerH.y(immutableList) ? 16384 : 8192) | (gapComposerH.y(list) ? 131072 : 65536) | (gapComposerH.y(function0) ? 1048576 : 524288) | (gapComposerH.y(function1) ? 8388608 : 4194304) | (gapComposerH.y(function2) ? 67108864 : 33554432) | (gapComposerH.y(function3) ? PKIFailureInfo.duplicateCertReq : 268435456);
        Modifier modifier3 = modifierE;
        int i4 = (gapComposerH.y(function4) ? (char) 4 : (char) 2) | (gapComposerH.y(function5) ? ' ' : (char) 16) | (gapComposerH.y(function6) ? 256 : 128) | (gapComposerH.y(function7) ? 2048 : 1024) | (gapComposerH.y(function8) ? 16384 : 8192) | (gapComposerH.y(function9) ? 131072 : 65536) | (gapComposerH.y(function10) ? 1048576 : 524288) | (gapComposerH.y(function11) ? (char) 0 : (char) 0) | (gapComposerH.y(function12) ? (char) 0 : (char) 0) | (gapComposerH.y(function13) ? (char) 0 : (char) 0);
        int i5 = (gapComposerH.y(function14) ? (char) 4 : (char) 2) | (gapComposerH.y(function15) ? ' ' : (char) 16) | (gapComposerH.y(function16) ? 256 : 128) | (gapComposerH.y(function17) ? 2048 : 1024) | (gapComposerH.y(function18) ? (char) 16384 : (char) 8192) | (gapComposerH.y(function19) ? (char) 0 : (char) 0) | (gapComposerH.y(function20) ? (char) 0 : (char) 0);
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (i4 & 306783379) == 306783378 && (599187 & i5) == 599186) ? false : true)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PdpMainView");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            final PdpTracker pdpTracker = (PdpTracker) gapComposerH.k(PdpTrackerEntryPointKt.f61588a);
            GA4Tracker gA4Tracker2 = (GA4Tracker) gapComposerH.k(GA4TrackerEntryPointKt.f65812a);
            AICompanionTracker aICompanionTracker2 = (AICompanionTracker) gapComposerH.k(AICompanionTrackerEntryPointKt.f52911a);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                PriceUiModel priceUiModelA = ProductUiModelKt.a(productUiModel);
                if ((priceUiModelA != null ? priceUiModelA.f61723c : null) != null) {
                    gA4Tracker = gA4Tracker2;
                    aICompanionTracker = aICompanionTracker2;
                    if (priceUiModelA.f61723c.f61721c == 0.0d) {
                    }
                    if (priceUiModelA != null) {
                        objX = priceUiModelA.f61722b;
                    } else {
                        objX = null;
                    }
                    gapComposerH.q(objX);
                } else {
                    gA4Tracker = gA4Tracker2;
                    aICompanionTracker = aICompanionTracker2;
                }
                priceUiModelA = null;
                if (priceUiModelA != null) {
                    objX = priceUiModelA.f61722b;
                } else {
                    objX = null;
                }
                gapComposerH.q(objX);
            } else {
                gA4Tracker = gA4Tracker2;
                aICompanionTracker = aICompanionTracker2;
            }
            final String str2 = (String) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = Boolean.valueOf(productUiModel.M && !(productUiModel.T instanceof SellableStatusUiModel.SellableUiModel) && (str = productUiModel.A) != null && str.length() > 0);
                gapComposerH.q(objX2);
            }
            final boolean zBooleanValue = ((Boolean) objX2).booleanValue();
            boolean zK = gapComposerH.K(productUiModel);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                objX3 = ExtensionsKt.a(productUiModel.o);
                gapComposerH.q(objX3);
            }
            final ImmutableList immutableList2 = (ImmutableList) objX3;
            Modifier modifierD = SizeKt.d(dTFunctionNameModifier, 1.0f);
            final AICompanionTracker aICompanionTracker3 = aICompanionTracker;
            final GA4Tracker gA4Tracker3 = gA4Tracker;
            boolean zY = ((i5 & 14) == 4) | ((i3 & 3670016) == 1048576) | gapComposerH.y(pdpViewState) | gapComposerH.K(immutableList2) | gapComposerH.y(pdpTracker) | gapComposerH.y(productUiModel) | ((i3 & 29360128) == 8388608) | ((i4 & 234881024) == 67108864) | ((i3 & 1879048192) == 536870912) | ((i5 & 112) == 32) | ((i5 & 57344) == 16384) | ((i5 & 3670016) == 1048576) | ((i4 & 57344) == 16384) | ((i5 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | ((i5 & 7168) == 2048) | gapComposerH.y(context) | ((i4 & 1879048192) == 536870912) | ((i4 & 112) == 32) | ((i4 & 14) == 4) | ((i3 & 234881024) == 67108864) | gapComposerH.y(reinsuranceUiModel) | ((i4 & 7168) == 2048) | ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | ((i4 & 3670016) == 1048576) | ((i5 & 896) == 256) | gapComposerH.y(list) | gapComposerH.y(aICompanionTracker3) | ((i4 & 896) == 256) | gapComposerH.y(gA4Tracker3) | gapComposerH.y(immutableList) | ((i4 & 29360128) == 8388608);
            Object objX4 = gapComposerH.x();
            if (zY || objX4 == composer$Companion$Empty$1) {
                obj = new Function1() { // from class: nm0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Object next;
                        String str3;
                        LazyListScope lazyListScope = (LazyListScope) obj2;
                        lazyListScope.getClass();
                        PdpViewState pdpViewState2 = pdpViewState;
                        ImmutableList immutableList3 = immutableList2;
                        Function0 function21 = function0;
                        PdpTracker pdpTracker2 = pdpTracker;
                        ProductUiModel productUiModel2 = productUiModel;
                        PdpViewState pdpViewState3 = pdpViewState2;
                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(44075750, true, new w0(pdpViewState2, immutableList3, function21, pdpTracker2, productUiModel2, function1, function12)), 3);
                        boolean z = pdpViewState3.m;
                        CatalogMode catalogMode = pdpViewState3.v;
                        if (!z || catalogMode != CatalogMode.ONLINE) {
                            LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(1826422955, true, new xe0(productUiModel2, 7)), 3);
                        }
                        boolean z2 = pdpViewState3.m;
                        String str4 = str2;
                        if (!z2 || catalogMode == CatalogMode.IN_STORE) {
                            pl plVar = new pl(str4, zBooleanValue, pdpViewState3, productUiModel2, 4);
                            pdpViewState3 = pdpViewState3;
                            LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-524604972, true, plVar), 3);
                        }
                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(331682127, true, new p0((Object) r7, pdpViewState3, function3, function15, function18, function20, 17)), 3);
                        r7.getClass();
                        List list2 = r7.Z;
                        String str5 = r7.f61735b;
                        if (CollectionExtKt.a(list2)) {
                            List list3 = list2;
                            Iterator it = list3.iterator();
                            do {
                                if (!it.hasNext()) {
                                    next = null;
                                    break;
                                }
                                next = it.next();
                                str3 = ((ModelSizeVariationUiModel) next).f61533b;
                                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                            } while (!str3.equals(str5));
                            ModelSizeVariationUiModel modelSizeVariationUiModel = (ModelSizeVariationUiModel) next;
                            if (CollectionExtKt.a(modelSizeVariationUiModel != null ? modelSizeVariationUiModel.g : null)) {
                                ArrayList arrayList = new ArrayList();
                                for (Object obj3 : list3) {
                                    String str6 = ((ModelSizeVariationUiModel) obj3).f61533b;
                                    SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
                                    if (!str6.equals(str5)) {
                                        arrayList.add(obj3);
                                    }
                                }
                                if (!arrayList.isEmpty()) {
                                    Iterator it2 = arrayList.iterator();
                                    while (it2.hasNext()) {
                                        if (CollectionExtKt.a(((ModelSizeVariationUiModel) it2.next()).g)) {
                                            LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-666884813, true, new ni0(productUiModel2, function8, 11)), 3);
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                        ProductCustomizationUiModel productCustomizationUiModel = r7.V;
                        if (productCustomizationUiModel != null && (productCustomizationUiModel.f61727e != null || productCustomizationUiModel.d != null || productCustomizationUiModel.f61725b != null || productCustomizationUiModel.f61726c != null || productCustomizationUiModel.f61728f != null)) {
                            LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-809164654, true, new ni0(r7, function19, 6)), 3);
                        }
                        PdpVirtualStudioConfigValues pdpVirtualStudioConfigValues = pdpViewState3.f61572j.g;
                        if (pdpVirtualStudioConfigValues != null) {
                            LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-2060860978, true, new ni0(pdpVirtualStudioConfigValues, function17, 7)), 3);
                        }
                        PdpViewState pdpViewState4 = pdpViewState3;
                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(189402286, true, new n4(pdpViewState4, str4, (ProductUiModel) r7, context, function13)), 3);
                        StoreButtonType storeButtonType = pdpViewState4.f61573k;
                        if (storeButtonType != null) {
                            LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(358511719, true, new yj0(storeButtonType, function5, function4, 1)), 3);
                        }
                        Function1 function22 = function2;
                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(47122445, true, new ni0(r7, function22, 8)), 3);
                        ReinsuranceUiModel reinsuranceUiModel2 = reinsuranceUiModel;
                        Function0 function23 = function7;
                        Function0 function24 = function9;
                        Function1 function25 = function10;
                        Function1 function26 = function16;
                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-95157396, true, new sp(pdpViewState4, (ProductUiModel) r7, reinsuranceUiModel2, function21, function23, function24, function25, function26, pdpTracker2)), 3);
                        if (!r7.Y.isEmpty()) {
                            LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-951444495, true, new yj0(r7, function26, pdpTracker2, 2)), 3);
                        }
                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-237437237, true, new ni0(list, function22, 9)), 3);
                        if (pdpViewState4.f61571i.n) {
                            LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-1093724336, true, new ni0(aICompanionTracker3, function6, 10)), 3);
                        }
                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-379717078, true, new lf((ProductUiModel) r7, pdpViewState4, function22, gA4Tracker3, pdpTracker2, function14, immutableList, function11)), 3);
                        return Unit.f71739a;
                    }
                };
                gapComposer2 = gapComposerH;
                gapComposer2.q(obj);
            } else {
                obj = objX4;
                gapComposer2 = gapComposerH;
            }
            GapComposer gapComposer3 = gapComposer2;
            LazyDslKt.a(modifierD, null, null, null, null, null, false, null, (Function1) obj, gapComposer3, 0, 510);
            gapComposer = gapComposer3;
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = modifier3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(pdpViewState, productUiModel, reinsuranceUiModel, immutableList, list, function0, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, function15, function16, function17, function18, function19, function20, i2) { // from class: om0
                public final /* synthetic */ Function3 A;
                public final /* synthetic */ Function2 B;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ PdpViewState f77501c;
                public final /* synthetic */ ProductUiModel d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ ReinsuranceUiModel f77502e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ ImmutableList f77503f;
                public final /* synthetic */ List g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function0 f77504h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function0 f77505i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function1 f77506j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function0 f77507k;
                public final /* synthetic */ Function0 l;
                public final /* synthetic */ Function0 m;
                public final /* synthetic */ Function0 n;
                public final /* synthetic */ Function0 o;
                public final /* synthetic */ Function0 p;
                public final /* synthetic */ Function0 q;
                public final /* synthetic */ Function1 r;
                public final /* synthetic */ Function1 s;
                public final /* synthetic */ Function1 t;
                public final /* synthetic */ Function1 u;
                public final /* synthetic */ Function1 v;
                public final /* synthetic */ Function2 w;
                public final /* synthetic */ Function1 x;
                public final /* synthetic */ Function1 y;
                public final /* synthetic */ Function2 z;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    PdpMainViewKt.a(this.f77500b, this.f77501c, this.d, this.f77502e, this.f77503f, this.g, this.f77504h, this.f77505i, this.f77506j, this.f77507k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B, (Composer) obj2, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
