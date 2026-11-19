package com.vuitton.android.presentation.screen.pdp.components.subcomponents;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
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
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpVariationContainerKt;
import com.vuitton.foundation.model.domain.extensions.CollectionExtKt;
import com.vuitton.foundation.model.domain.model.product.universal.VariationType;
import defpackage.l3;
import defpackage.n00;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "displayEmptyPadding", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpVariationContainerKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f61458a;

        static {
            int[] iArr = new int[VariationType.values().length];
            try {
                iArr[VariationType.FINISH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[VariationType.COLOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[VariationType.MATERIAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[VariationType.CARAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[VariationType.LANGUAGE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f61458a = iArr;
        }
    }

    public static final void a(Modifier modifier, final String str, final boolean z, final boolean z2, final VariationType variationType, final List list, final Map map, final String str2, final Function0 function0, final Function2 function2, final Function2 function3, final Function2 function4, Composer composer, final int i2) {
        Modifier modifierK;
        int i3;
        boolean z3;
        String str3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PdpVariationContainer-4pSRD38");
        }
        str.getClass();
        map.getClass();
        function0.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(1478994489);
        Applier applier = gapComposerH.f7976a;
        int i4 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.b(z2) ? 2048 : 1024) | (gapComposerH.d(variationType == null ? -1 : variationType.ordinal()) ? 16384 : 8192) | (gapComposerH.y(list) ? 131072 : 65536) | (gapComposerH.y(map) ? 1048576 : 524288) | (gapComposerH.K(str2) ? 8388608 : 4194304) | (gapComposerH.y(function0) ? 67108864 : 33554432) | (gapComposerH.y(function2) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i5 = (gapComposerH.y(function3) ? (char) 4 : (char) 2) | (gapComposerH.y(function4) ? ' ' : (char) 16);
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                if (map.isEmpty()) {
                    z10 = true;
                    break;
                }
                Iterator it = map.entrySet().iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((List) ((Map.Entry) it.next()).getValue()).size() > 1) {
                            z10 = false;
                            break;
                        }
                    } else {
                        z10 = true;
                        break;
                    }
                }
                objX = SnapshotStateKt.g(Boolean.valueOf(z10));
                gapComposerH.q(objX);
            }
            Modifier modifierD = SizeKt.d(modifierE, 1.0f);
            if (((Boolean) ((MutableState) objX).getF10755b()).booleanValue()) {
                i3 = 0;
                modifierK = n00.j(gapComposerH, -1343758695, false, "PdpVariationContainer-4pSRD38");
            } else {
                modifierK = PaddingKt.k(n00.i(gapComposerH, -1343703298, "PdpVariationContainer-4pSRD38"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                i3 = 0;
                gapComposerH.Z(false);
            }
            Modifier modifierO = modifierD.o(modifierK);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48417f);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, i3);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(2069017590);
            for (final Map.Entry entry : map.entrySet()) {
                int i6 = WhenMappings.f61458a[((VariationType) entry.getKey()).ordinal()];
                if (i6 == 1) {
                    gapComposerH.L(1299639419);
                    if (CollectionExtKt.a((Collection) entry.getValue())) {
                        gapComposerH.L(1299701326);
                        String strC = StringResources_androidKt.c(gapComposerH, R.string.beauty_finish);
                        List list2 = (List) entry.getValue();
                        boolean z11 = (i4 & 1879048192) == 536870912;
                        Object objX2 = gapComposerH.x();
                        if (z11 || objX2 == composer$Companion$Empty$1) {
                            objX2 = new l3(8, function2);
                            gapComposerH.q(objX2);
                        }
                        PdpVariationTextListKt.b(null, strC, str, false, list2, (Function1) objX2, gapComposerH, ((i4 << 3) & 896) | 3072, 1);
                        z9 = false;
                        gapComposerH.Z(false);
                    } else {
                        z9 = false;
                        gapComposerH.L(1300141464);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z9);
                } else if (i6 == 2) {
                    gapComposerH.L(1300224668);
                    if (((List) entry.getValue()).size() > 1) {
                        gapComposerH.L(1300276965);
                        String strC2 = StringResources_androidKt.c(gapComposerH, R.string.product_detail_colors);
                        List list3 = (List) entry.getValue();
                        boolean zY = ((i5 & 14) == 4) | gapComposerH.y(entry);
                        Object objX3 = gapComposerH.x();
                        if (zY || objX3 == composer$Companion$Empty$1) {
                            final int i7 = 0;
                            objX3 = new Function0() { // from class: ym0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i8 = i7;
                                    Map.Entry entry2 = entry;
                                    Function2 function5 = function3;
                                    switch (i8) {
                                        case 0:
                                            function5.invoke(entry2.getValue(), VariationType.COLOR);
                                            break;
                                        default:
                                            function5.invoke(entry2.getValue(), VariationType.MATERIAL);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX3);
                        }
                        Function0 function5 = (Function0) objX3;
                        boolean z12 = (i4 & 1879048192) == 536870912;
                        Object objX4 = gapComposerH.x();
                        if (z12 || objX4 == composer$Companion$Empty$1) {
                            objX4 = new l3(9, function2);
                            gapComposerH.q(objX4);
                        }
                        PdpVariationImageListKt.c(null, strC2, str, list3, true, function5, (Function1) objX4, gapComposerH, ((i4 << 3) & 896) | 221184);
                        z8 = false;
                        gapComposerH.Z(false);
                    } else {
                        z8 = false;
                        gapComposerH.L(1300971768);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z8);
                } else if (i6 == 3) {
                    gapComposerH.L(1301058320);
                    if (((List) entry.getValue()).size() > 1) {
                        gapComposerH.L(1301110617);
                        String strC3 = StringResources_androidKt.c(gapComposerH, R.string.product_detail_materials);
                        List list4 = (List) entry.getValue();
                        boolean zY2 = ((i5 & 112) == 32) | gapComposerH.y(entry);
                        Object objX5 = gapComposerH.x();
                        if (zY2 || objX5 == composer$Companion$Empty$1) {
                            final int i8 = 1;
                            objX5 = new Function0() { // from class: ym0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i9 = i8;
                                    Map.Entry entry2 = entry;
                                    Function2 function6 = function4;
                                    switch (i9) {
                                        case 0:
                                            function6.invoke(entry2.getValue(), VariationType.COLOR);
                                            break;
                                        default:
                                            function6.invoke(entry2.getValue(), VariationType.MATERIAL);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX5);
                        }
                        Function0 function6 = (Function0) objX5;
                        boolean z13 = (i4 & 1879048192) == 536870912;
                        Object objX6 = gapComposerH.x();
                        if (z13 || objX6 == composer$Companion$Empty$1) {
                            objX6 = new l3(10, function2);
                            gapComposerH.q(objX6);
                        }
                        PdpVariationImageListKt.c(null, strC3, str, list4, false, function6, (Function1) objX6, gapComposerH, ((i4 << 3) & 896) | 221184);
                        z7 = false;
                        gapComposerH.Z(false);
                    } else {
                        z7 = false;
                        gapComposerH.L(1301816952);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z7);
                } else if (i6 == 4) {
                    gapComposerH.L(1301892778);
                    if (((List) entry.getValue()).size() <= 1 || !z) {
                        z6 = false;
                        gapComposerH.L(1302411160);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(1301964295);
                        String strC4 = StringResources_androidKt.c(gapComposerH, R.string.product_detail_carats);
                        List list5 = (List) entry.getValue();
                        boolean z14 = (i4 & 1879048192) == 536870912;
                        Object objX7 = gapComposerH.x();
                        if (z14 || objX7 == composer$Companion$Empty$1) {
                            objX7 = new l3(11, function2);
                            gapComposerH.q(objX7);
                        }
                        PdpVariationTextListKt.b(null, strC4, str, false, list5, (Function1) objX7, gapComposerH, ((i4 << 3) & 896) | 3072, 1);
                        z6 = false;
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z6);
                } else if (i6 != 5) {
                    gapComposerH.L(1303038755);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1302489497);
                    if (((List) entry.getValue()).size() > 1) {
                        gapComposerH.L(1302541794);
                        String strC5 = StringResources_androidKt.c(gapComposerH, R.string.product_detail_language);
                        List list6 = (List) entry.getValue();
                        boolean z15 = (i4 & 1879048192) == 536870912;
                        Object objX8 = gapComposerH.x();
                        if (z15 || objX8 == composer$Companion$Empty$1) {
                            objX8 = new l3(12, function2);
                            gapComposerH.q(objX8);
                        }
                        PdpVariationTextListKt.b(null, strC5, str, false, list6, (Function1) objX8, gapComposerH, ((i4 << 3) & 896) | 3072, 1);
                        z5 = false;
                        gapComposerH.Z(false);
                    } else {
                        z5 = false;
                        gapComposerH.L(1302993464);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z5);
                }
            }
            gapComposerH.Z(false);
            if (list == null || variationType == null) {
                z3 = true;
                gapComposerH.L(-279192909);
                gapComposerH.Z(false);
            } else {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -281331134, "PdpVariationContainer-4pSRD38");
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifierI);
                ComposeUiNode.b0.getClass();
                Function0 function7 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function7);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                gapComposerH.L(1783117023);
                if (variationType == VariationType.SIZE) {
                    gapComposerH.L(2009806659);
                    String strC6 = StringResources_androidKt.c(gapComposerH, R.string.product_detail_size);
                    boolean z16 = (i4 & 1879048192) == 536870912;
                    Object objX9 = gapComposerH.x();
                    if (z16 || objX9 == composer$Companion$Empty$1) {
                        objX9 = new l3(13, function2);
                        gapComposerH.q(objX9);
                    }
                    z4 = false;
                    str3 = "PdpVariationContainer-4pSRD38";
                    z3 = true;
                    PdpVariationTextListKt.b(null, strC6, str, true, list, (Function1) objX9, gapComposerH, ((i4 << 3) & 896) | 3072, 1);
                    gapComposerH.Z(false);
                } else {
                    str3 = "PdpVariationContainer-4pSRD38";
                    z3 = true;
                    if (variationType == VariationType.MODEL_SIZE) {
                        gapComposerH.L(2010313757);
                        String strC7 = StringResources_androidKt.c(gapComposerH, R.string.product_detail_size);
                        boolean z17 = (i4 & 1879048192) == 536870912;
                        Object objX10 = gapComposerH.x();
                        if (z17 || objX10 == composer$Companion$Empty$1) {
                            objX10 = new l3(14, function2);
                            gapComposerH.q(objX10);
                        }
                        z4 = false;
                        PdpVariationTextListKt.b(null, strC7, str, true, list, (Function1) objX10, gapComposerH, ((i4 << 3) & 896) | 3072, 1);
                        gapComposerH.Z(false);
                    } else {
                        z4 = false;
                        gapComposerH.L(2010749090);
                        gapComposerH.Z(false);
                    }
                }
                gapComposerH.Z(z4);
                if (str2 == null || StringsKt.w(str2)) {
                    gapComposerH.L(-556440254);
                    gapComposerH.Z(z4);
                } else {
                    TextKt.c(str2, PaddingKt.m(n00.i(gapComposerH, -556808875, str3), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i4 >> 21) & 14, 0, 131064);
                    gapComposerH.Z(z4);
                }
                if (z2) {
                    gapComposerH = gapComposerH;
                    GapComposer gapComposer = gapComposerH;
                    LVLinkKt.a(ModifierExtKt.e(PaddingKt.m(n00.i(gapComposerH, -556382439, str3), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "pdp_sizeGuide_button"), StringResources_androidKt.c(gapComposerH, R.string.size_guide_find_perfect_size), false, null, false, function0, gapComposer, (i4 >> 9) & ImageMetadata.JPEG_GPS_COORDINATES, 28);
                    gapComposerH = gapComposer;
                    gapComposerH.Z(z4);
                } else {
                    gapComposerH = gapComposerH;
                    gapComposerH.L(-555974014);
                    gapComposerH.Z(z4);
                }
                gapComposerH.Z(z3);
                gapComposerH.Z(z4);
            }
            gapComposerH.Z(z3);
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
        } else {
            modifierE = modifierE;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2(str, z, z2, variationType, list, map, str2, function0, function2, function3, function4, i2) { // from class: zm0

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ String f81673c;
                public final /* synthetic */ boolean d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ boolean f81674e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ VariationType f81675f;
                public final /* synthetic */ List g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Map f81676h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ String f81677i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function0 f81678j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function2 f81679k;
                public final /* synthetic */ Function2 l;
                public final /* synthetic */ Function2 m;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    PdpVariationContainerKt.a(this.f81672b, this.f81673c, this.d, this.f81674e, this.f81675f, this.g, this.f81676h, this.f81677i, this.f81678j, this.f81679k, this.l, this.m, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
