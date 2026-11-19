package com.vuitton.android.presentation.compose.components;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.DividerKt;
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
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Html_androidKt;
import androidx.compose.ui.text.LinkInteractionListener;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoHtmlItem;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoHtmlSection;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoItem;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoNativeBlock;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoNativeItem;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoSectionsItem;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import defpackage.cj;
import defpackage.ck;
import defpackage.g2;
import defpackage.km;
import defpackage.n00;
import defpackage.o60;
import defpackage.o8;
import defpackage.oa;
import defpackage.om;
import defpackage.pm;
import defpackage.qm;
import defpackage.rm;
import defpackage.sm;
import defpackage.tr;
import defpackage.u3;
import defpackage.z;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isExpanded", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CollapsingDetailListKt {
    public static final void a(Modifier modifier, String str, boolean z, Function0 function0, Composer composer, int i2) {
        int i3;
        boolean z2;
        Function0 function1;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "CollapsingDetailHeader");
        }
        GapComposer gapComposerH = composer.h(-1950196858);
        int i4 = 2;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            z2 = z;
            i3 |= gapComposerH.b(z2) ? 256 : 128;
        } else {
            z2 = z;
        }
        if ((i2 & 3072) == 0) {
            function1 = function0;
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        } else {
            function1 = function0;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierC = ModifierExtKt.c(SizeKt.f(SizeKt.d(modifierE, 1.0f), LVAppDesignKitTheme.d(gapComposerH).C), false, null, null, function1, 31);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, gapComposerH, 54);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
            Modifier modifierB = cj.b("CollapsingDetailHeader", RowScopeInstance.f5040a, 1.0f, false);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new km(i4);
                gapComposerH.q(objX);
            }
            TextKt.c(str, com.vuitton.android.presentation.extensions.ModifierExtKt.a(modifierB, "pdp_careAndSustainabilityTitle_text", (Function1) objX, 2), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, (i3 >> 3) & 14, 0, 131064);
            gapComposerH = gapComposerH;
            LVExpandableListAnimatedIconKt.a(n00.g("CollapsingDetailHeader", "pdp_careAndSustainability_icon"), 0, z2, LVAppDesignKitTheme.d(gapComposerH).m, null, gapComposerH, i3 & 896, 18);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new pm(modifierE, str, z, function0, i2, 0);
        }
    }

    public static final void b(Modifier modifier, Modifier modifier2, String str, CollapsingState collapsingState, Function1 function1, Function2 function2, Composer composer, int i2, int i3) {
        int i4;
        int i5;
        Function1 function3;
        int i6;
        Function2 function4;
        Modifier modifier3;
        CollapsingState collapsingState2;
        Modifier modifier4;
        Function1 function5;
        Function1 function6;
        boolean z;
        Object obj;
        Object obj2;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "CollapsingDetailItem");
        }
        GapComposer gapComposerH = composer.h(2023305038);
        int i7 = i3 & 1;
        if (i7 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        }
        int i8 = i4 | 48;
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i8 |= gapComposerH.K(str) ? 256 : 128;
        }
        int i9 = i3 & 8;
        if (i9 != 0) {
            i5 = i8 | 3072;
        } else {
            i5 = i8 | (gapComposerH.d(collapsingState == null ? -1 : collapsingState.ordinal()) ? 2048 : 1024);
        }
        int i10 = i3 & 16;
        if (i10 != 0) {
            i6 = i5 | 24576;
            function3 = function1;
        } else {
            function3 = function1;
            i6 = i5 | (gapComposerH.y(function3) ? 16384 : 8192);
        }
        if (gapComposerH.p(i6 & 1, (74899 & i6) != 74898)) {
            if (i7 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("CollapsingDetailItem");
            }
            Modifier modifier5 = dTFunctionNameModifier;
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("CollapsingDetailItem");
            CollapsingState collapsingState3 = i9 != 0 ? CollapsingState.COLLAPSED : collapsingState;
            int i11 = 3;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i10 != 0) {
                Object objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    obj2 = objX;
                    km kmVar = new km(i11);
                    gapComposerH.q(kmVar);
                    obj2 = kmVar;
                }
                obj2 = objX;
                function6 = (Function1) obj2;
            } else {
                function6 = function3;
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX2 = gapComposerH.x();
            Object obj3 = objX2;
            if (objX2 == composer$Companion$Empty$1) {
                MutableState mutableStateG = SnapshotStateKt.g(Boolean.valueOf(collapsingState3 == CollapsingState.EXPANDED));
                gapComposerH.q(mutableStateG);
                obj3 = mutableStateG;
            }
            MutableState mutableState = (MutableState) obj3;
            String strF = ((Boolean) mutableState.getF10755b()).booleanValue() ? cj.f(gapComposerH, 709777092, R.string.alt_expanded, gapComposerH, false) : cj.f(gapComposerH, 709861722, R.string.alt_collapsed, gapComposerH, false);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier5);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            CollapsingState collapsingState4 = collapsingState3;
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            boolean zK = gapComposerH.K(strF) | ((i6 & 896) == 256);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                z = true;
                u3 u3Var = new u3(str, strF, true ? 1 : 0);
                gapComposerH.q(u3Var);
                obj = u3Var;
            } else {
                z = true;
                obj = objX3;
            }
            Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier2, false, (Function1) obj);
            boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
            boolean z2 = (57344 & i6) == 16384 ? z : false;
            Object objX4 = gapComposerH.x();
            Object obj4 = objX4;
            if (z2 || objX4 == composer$Companion$Empty$1) {
                o8 o8Var = new o8(function6, mutableState, 5);
                gapComposerH.q(o8Var);
                obj4 = o8Var;
            }
            a(modifierB, str, zBooleanValue, (Function0) obj4, gapComposerH, (i6 >> 3) & 112);
            function4 = function2;
            function5 = function6;
            modifier4 = modifier5;
            modifier3 = dTFunctionNameModifier2;
            AnimatedVisibilityKt.c(ColumnScopeInstance.f4944a, ((Boolean) mutableState.getF10755b()).booleanValue(), null, null, null, null, ComposableLambdaKt.b(-464178788, new sm(0, function4), gapComposerH), gapComposerH, 1572870, 30);
            gapComposerH.Z(z);
            collapsingState2 = collapsingState4;
        } else {
            function4 = function2;
            gapComposerH.D();
            modifier3 = modifier2;
            collapsingState2 = collapsingState;
            modifier4 = dTFunctionNameModifier;
            function5 = function3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oa(modifier4, modifier3, str, collapsingState2, function5, function4, i2, i3, 2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:105:0x01cf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x0098  */
    /* JADX WARN: Code duplicated, block: B:56:0x009a  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:66:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:71:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:74:0x0105  */
    /* JADX WARN: Code duplicated, block: B:76:0x010c  */
    /* JADX WARN: Code duplicated, block: B:77:0x0110  */
    /* JADX WARN: Code duplicated, block: B:81:0x0144  */
    /* JADX WARN: Code duplicated, block: B:83:0x014c  */
    /* JADX WARN: Code duplicated, block: B:87:0x0166  */
    /* JADX WARN: Code duplicated, block: B:90:0x019b  */
    /* JADX WARN: Code duplicated, block: B:91:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:97:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:99:0x01e8  */
    public static final void c(Modifier modifier, List list, long j2, Function3 function3, Function3 function4, Function3 function5, Composer composer, int i2, int i3) {
        int i4;
        Function3 function6;
        Function3 function7;
        Function3 function8;
        boolean z;
        boolean z2;
        boolean z3;
        long j3;
        Function3 function9;
        Modifier modifier2;
        RecomposeScopeImpl recomposeScopeImplB0;
        Function3 function10;
        long j4;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        int i5;
        int i6;
        PanelInfoItem panelInfoItem;
        boolean zK;
        Object objX;
        long j5;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "CollapsingDetailList-FU0evQE");
        }
        list.getClass();
        GapComposer gapComposerH = composer.h(-1822360877);
        int i7 = i3 & 1;
        int i8 = 4;
        if (i7 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(list) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= 128;
        }
        if ((i2 & 3072) == 0) {
            function6 = function3;
            i4 |= gapComposerH.y(function6) ? 2048 : 1024;
        } else {
            function6 = function3;
        }
        if ((i2 & 24576) == 0) {
            function7 = function4;
            i4 |= gapComposerH.y(function7) ? 16384 : 8192;
        } else {
            function7 = function4;
        }
        int i9 = i3 & 32;
        if (i9 == 0) {
            if ((196608 & i2) == 0) {
                function8 = function5;
                i4 |= gapComposerH.y(function8) ? 131072 : 65536;
            }
            z = false;
            z2 = true;
            if ((74899 & i4) != 74898) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i4 & 1, z3)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0 || gapComposerH.h0()) {
                    if (i7 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("CollapsingDetailList-FU0evQE");
                    }
                    long j6 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
                    if (i9 != 0) {
                        ComposableSingletons$CollapsingDetailListKt.f50943a.getClass();
                        function10 = ComposableSingletons$CollapsingDetailListKt.f50944b;
                    } else {
                        function10 = function8;
                    }
                    j4 = j6;
                } else {
                    gapComposerH.D();
                    j4 = j2;
                    function10 = function8;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                gapComposerH.L(1295102074);
                i5 = 0;
                for (Object obj : list) {
                    i6 = i5 + 1;
                    if (i5 >= 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    panelInfoItem = (PanelInfoItem) obj;
                    Modifier modifierG = n00.g("CollapsingDetailList-FU0evQE", "pdp_careAndSustainability_view");
                    String str = panelInfoItem.f61710a;
                    CollapsingState collapsingState = panelInfoItem.f61711b;
                    zK = gapComposerH.K(panelInfoItem);
                    objX = gapComposerH.x();
                    if (zK || objX == Composer.Companion.f7939a) {
                        objX = new ck(panelInfoItem, i8);
                        gapComposerH.q(objX);
                    }
                    GapComposer gapComposer = gapComposerH;
                    b(modifierG, null, str, collapsingState, (Function1) objX, ComposableLambdaKt.b(-129134181, new z(panelInfoItem, function6, function7, function10, 25), gapComposerH), gapComposer, ImageMetadata.EDGE_MODE, 2);
                    gapComposerH = gapComposer;
                    if (i5 < list.size() - 1) {
                        j5 = j4;
                        DividerKt.a(SizeKt.f(n00.i(gapComposerH, 916494092, "CollapsingDetailList-FU0evQE"), LVAppDesignKitTheme.d(gapComposerH).f48385c), Call.Parameters.DEFAULT_CAMERA_ZOOM, j5, gapComposerH, 0, 2);
                        gapComposerH.Z(false);
                    } else {
                        j5 = j4;
                        gapComposerH.L(916704551);
                        gapComposerH.Z(false);
                    }
                    z = false;
                    z2 = true;
                    j4 = j5;
                    i5 = i6;
                    function6 = function3;
                    function7 = function4;
                }
                gapComposerH.Z(z);
                gapComposerH.Z(z2);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                j3 = j4;
                function9 = function10;
            } else {
                gapComposerH.D();
                j3 = j2;
                function9 = function8;
            }
            modifier2 = dTFunctionNameModifier;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new qm(modifier2, list, j3, function3, function4, function9, i2, i3);
            }
        }
        i4 |= ImageMetadata.EDGE_MODE;
        function8 = function5;
        z = false;
        z2 = true;
        if ((74899 & i4) != 74898) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i4 & 1, z3)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if (i7 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("CollapsingDetailList-FU0evQE");
                }
                long j7 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
                if (i9 != 0) {
                    ComposableSingletons$CollapsingDetailListKt.f50943a.getClass();
                    function10 = ComposableSingletons$CollapsingDetailListKt.f50944b;
                } else {
                    function10 = function8;
                }
                j4 = j7;
            } else {
                if (i7 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("CollapsingDetailList-FU0evQE");
                }
                long j8 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
                if (i9 != 0) {
                    ComposableSingletons$CollapsingDetailListKt.f50943a.getClass();
                    function10 = ComposableSingletons$CollapsingDetailListKt.f50944b;
                } else {
                    function10 = function8;
                }
                j4 = j8;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, gapComposerH, 0);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(1295102074);
            i5 = 0;
            while (r3.hasNext()) {
                i6 = i5 + 1;
                if (i5 >= 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                panelInfoItem = (PanelInfoItem) obj;
                Modifier modifierG2 = n00.g("CollapsingDetailList-FU0evQE", "pdp_careAndSustainability_view");
                String str2 = panelInfoItem.f61710a;
                CollapsingState collapsingState2 = panelInfoItem.f61711b;
                zK = gapComposerH.K(panelInfoItem);
                objX = gapComposerH.x();
                if (zK) {
                    objX = new ck(panelInfoItem, i8);
                    gapComposerH.q(objX);
                } else {
                    objX = new ck(panelInfoItem, i8);
                    gapComposerH.q(objX);
                }
                GapComposer gapComposer2 = gapComposerH;
                b(modifierG2, null, str2, collapsingState2, (Function1) objX, ComposableLambdaKt.b(-129134181, new z(panelInfoItem, function6, function7, function10, 25), gapComposerH), gapComposer2, ImageMetadata.EDGE_MODE, 2);
                gapComposerH = gapComposer2;
                if (i5 < list.size() - 1) {
                    j5 = j4;
                    DividerKt.a(SizeKt.f(n00.i(gapComposerH, 916494092, "CollapsingDetailList-FU0evQE"), LVAppDesignKitTheme.d(gapComposerH).f48385c), Call.Parameters.DEFAULT_CAMERA_ZOOM, j5, gapComposerH, 0, 2);
                    gapComposerH.Z(false);
                } else {
                    j5 = j4;
                    gapComposerH.L(916704551);
                    gapComposerH.Z(false);
                }
                z = false;
                z2 = true;
                j4 = j5;
                i5 = i6;
                function6 = function3;
                function7 = function4;
            }
            gapComposerH.Z(z);
            gapComposerH.Z(z2);
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            j3 = j4;
            function9 = function10;
        } else {
            gapComposerH.D();
            j3 = j2;
            function9 = function8;
        }
        modifier2 = dTFunctionNameModifier;
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qm(modifier2, list, j3, function3, function4, function9, i2, i3);
        }
    }

    public static final void d(PanelInfoHtmlItem panelInfoHtmlItem, Function1 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        String str;
        int i4;
        GapComposer gapComposer2;
        panelInfoHtmlItem.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1623848766);
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposerH.K(panelInfoHtmlItem) ? 4 : 2);
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        int i5 = i3;
        if (gapComposerH.p(i5 & 1, (i5 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierG = n00.g("DetailsHtml", "pdp_careAndSustainabilityDescription_text");
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierG);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            String str2 = panelInfoHtmlItem.d;
            String strJ = str2 != null ? StringKtExtKt.j(str2) : null;
            if (strJ == null) {
                gapComposerH.L(1484109156);
                gapComposerH.Z(false);
                gapComposer2 = gapComposerH;
                str = "DetailsHtml";
                i4 = 0;
            } else {
                Modifier modifierM = PaddingKt.m(n00.i(gapComposerH, 1484109157, "DetailsHtml"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7);
                int i6 = AnnotatedString.f10418f;
                AnnotatedString annotatedStringB = Html_androidKt.b(strJ, null, 6);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).g;
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                str = "DetailsHtml";
                i4 = 0;
                TextKt.d(annotatedStringB, modifierM, j2, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, textStyle, gapComposerH, 0, 0, 262136);
                gapComposer2 = gapComposerH;
                gapComposer2.Z(false);
            }
            Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier(str), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer2).f48416e, 7);
            int i7 = AnnotatedString.f10418f;
            String str3 = panelInfoHtmlItem.f61707e;
            TextDecoration.f10965b.getClass();
            TextLinkStyles textLinkStyles = new TextLinkStyles(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), null, null, null, 14, null);
            int i8 = (i5 & 112) == 32 ? 1 : i4;
            Object objX = gapComposer2.x();
            if (i8 != 0 || objX == Composer.Companion.f7939a) {
                objX = new rm(function1, i4);
                gapComposer2.q(objX);
            }
            GapComposer gapComposer3 = gapComposer2;
            TextKt.d(Html_androidKt.a(str3, textLinkStyles, (LinkInteractionListener) objX), modifierM2, LVAppDesignKitTheme.c(gapComposer2).f48361b.l, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, LVAppDesignKitTheme.n(gapComposer2).g, gapComposer3, 0, 0, 262136);
            gapComposer = gapComposer3;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(panelInfoHtmlItem, function1, i2, 9);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [int] */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r13v1, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r13v10, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v2, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r13v4, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r13v5, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r13v6, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v9, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r15v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v14 */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v16 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6, types: [boolean] */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r22v0, types: [androidx.compose.runtime.Composer] */
    /* JADX WARN: Type inference failed for: r22v1, types: [androidx.compose.runtime.Composer] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v8 */
    public static final void e(PanelInfoNativeItem panelInfoNativeItem, Composer composer, int i2) {
        ?? r12;
        ?? r13;
        List list;
        String str;
        ?? r15;
        PanelInfoNativeBlock panelInfoNativeBlock;
        ?? r14;
        ?? r16;
        boolean z;
        boolean z2;
        panelInfoNativeItem.getClass();
        GapComposer gapComposerH = composer.h(-1548786359);
        Applier applier = gapComposerH.f7976a;
        int i3 = (i2 & 6) == 0 ? (gapComposerH.y(panelInfoNativeItem) ? 4 : 2) | i2 : i2;
        boolean z3 = true;
        ?? r7 = 0;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String str2 = "DetailsNative";
            Modifier modifierG = n00.g("DetailsNative", "pdp_careAndSustainabilityDescription_text");
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierG);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(338664979);
            ?? r17 = gapComposerH;
            for (PanelInfoNativeBlock panelInfoNativeBlock2 : panelInfoNativeItem.d) {
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier(str2);
                Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, r17, r7);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int iHashCode2 = Long.hashCode(r17.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = r17.U();
                Modifier modifierC2 = ComposedModifierKt.c(r17, dTFunctionNameModifier);
                ComposeUiNode.b0.getClass();
                Function0 function1 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                r17.B();
                if (r17.S) {
                    r17.C(function1);
                } else {
                    r17.o();
                }
                Updater.c(r17, columnMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
                Updater.c(r17, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                Updater.c(r17, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                Updater.b(r17, ComposeUiNode.Companion.f9645h);
                Updater.c(r17, modifierC2, ComposeUiNode.Companion.d);
                String str3 = panelInfoNativeBlock2.f61713a;
                List list2 = panelInfoNativeBlock2.f61714b;
                if (str3 == null) {
                    r17.L(-685308378);
                    r17.Z(r7);
                    panelInfoNativeBlock = panelInfoNativeBlock2;
                    str = str2;
                    r15 = r7;
                    list = list2;
                    r14 = r17;
                } else {
                    r17.L(-685308377);
                    ?? r22 = r17;
                    list = list2;
                    str = str2;
                    TextKt.c(str3, null, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(r17).f48429j, r22, 0, 0, 131070);
                    ?? r18 = r22;
                    r15 = 0;
                    cj.x(new DTFunctionNameModifier(str), LVAppDesignKitTheme.l(r18).f48415c, r18, false);
                    panelInfoNativeBlock = panelInfoNativeBlock2;
                    r14 = r18;
                }
                String str4 = panelInfoNativeBlock.f61715c;
                if (str4 == null) {
                    r14.L(-685063447);
                    r14.Z(r15);
                } else {
                    Modifier modifierC3 = o60.c(r14, -685063446, str, 1.0f);
                    ContentScale.f9447a.getClass();
                    ImageLoaderKt.b(modifierC3, str4, ContentScale.Companion.f9451e, null, null, 0, false, null, null, null, r14, 24966, 2024);
                    r16 = 0;
                    cj.x(new DTFunctionNameModifier(str), LVAppDesignKitTheme.l(r14).f48414b, r14, false);
                }
                if (list == null) {
                    r16 = r15;
                    r14.L(-684602787);
                    r14.Z(r16);
                    z = true;
                } else {
                    r16 = r15;
                    r14.L(-684602786);
                    int i4 = 0;
                    r14 = r14;
                    for (Object obj : list) {
                        int i5 = i4 + 1;
                        if (i4 < 0) {
                            CollectionsKt.t0();
                            throw null;
                        }
                        String str5 = (String) obj;
                        if (StringsKt.w(str5)) {
                            r14.L(-28586251);
                            r14.Z(false);
                        } else {
                            r14.L(-29805760);
                            Alignment.f8582a.getClass();
                            BiasAlignment.Vertical vertical = Alignment.Companion.l;
                            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier(str);
                            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, r14, 48);
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            int iHashCode3 = Long.hashCode(r14.T);
                            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = r14.U();
                            Modifier modifierC4 = ComposedModifierKt.c(r14, dTFunctionNameModifier2);
                            ComposeUiNode.b0.getClass();
                            Function0 function2 = ComposeUiNode.Companion.f9641b;
                            if (applier == 0) {
                                ComposablesKt.b();
                                throw null;
                            }
                            r14.B();
                            if (r14.S) {
                                r14.C(function2);
                            } else {
                                r14.o();
                            }
                            Updater.c(r14, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                            Updater.c(r14, persistentCompositionLocalMapU3, ComposeUiNode.Companion.f9643e);
                            Updater.c(r14, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                            Updater.b(r14, ComposeUiNode.Companion.f9645h);
                            BoxKt.a(BackgroundKt.b(SizeKt.o(tr.e(r14, modifierC4, ComposeUiNode.Companion.d, str), LVAppDesignKitTheme.d(r14).f48386e), LVAppDesignKitTheme.c(r14).f48361b.l, RoundedCornerShapeKt.f5846a), r14, 0);
                            int i6 = i4;
                            ?? r23 = r14;
                            TextKt.c(str5, PaddingKt.m(new DTFunctionNameModifier(str), LVAppDesignKitTheme.l(r14).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.c(r14).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(r14).f48427h, r23, 0, 0, 131064);
                            r14 = r23;
                            r14.Z(true);
                            if (i6 != list.size() - 1) {
                                z2 = false;
                                cj.x(n00.i(r14, -28792587, str), LVAppDesignKitTheme.l(r14).f48414b, r14, false);
                            } else {
                                z2 = false;
                                r14.L(-28608075);
                                r14.Z(false);
                            }
                            r14.Z(z2);
                        }
                        i4 = i5;
                        r14 = r14;
                    }
                    z = true;
                    r16 = 0;
                    r14.Z(false);
                }
                SpacerKt.a(r14, SizeKt.f(o60.f(r14, z, str), LVAppDesignKitTheme.l(r14).f48416e));
                str2 = str;
                z3 = z;
                r7 = r16;
                applier = applier;
                r17 = r14;
            }
            boolean z4 = z3;
            r17.Z(r7);
            r17.Z(z4);
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            r12 = z4;
            r13 = r17;
        } else {
            r12 = 1;
            gapComposerH.D();
            r13 = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = r13.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new om(panelInfoNativeItem, i2, (int) r12);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    public static final void f(PanelInfoSectionsItem panelInfoSectionsItem, Composer composer, int i2) {
        ?? r0;
        GapComposer gapComposer;
        panelInfoSectionsItem.getClass();
        GapComposer gapComposerH = composer.h(-1674170633);
        Applier applier = gapComposerH.f7976a;
        char c2 = 4;
        int i3 = (i2 & 6) == 0 ? i2 | (gapComposerH.y(panelInfoSectionsItem) ? 4 : 2) : i2;
        boolean z = true;
        boolean z2 = false;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String str = "DetailsSections";
            Modifier modifierG = n00.g("DetailsSections", "pdp_careAndSustainabilityDescription_text");
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierG);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            Object obj = null;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(218366963);
            GapComposer gapComposer2 = gapComposerH;
            for (PanelInfoHtmlSection panelInfoHtmlSection : panelInfoSectionsItem.f61716e) {
                Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier(str), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer2).f48416e, 7);
                Alignment.f8582a.getClass();
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposer2, 48);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int iHashCode2 = Long.hashCode(gapComposer2.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer2.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposer2, modifierM);
                ComposeUiNode.b0.getClass();
                Function0 function1 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer2.B();
                if (gapComposer2.S) {
                    gapComposer2.C(function1);
                } else {
                    gapComposer2.o();
                }
                Updater.c(gapComposer2, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposer2, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                Modifier modifierO = SizeKt.o(tr.e(gapComposer2, modifierC2, ComposeUiNode.Companion.d, str), LVAppDesignKitTheme.d(gapComposer2).A);
                String str2 = panelInfoHtmlSection.f61709b.f51778b;
                str2.getClass();
                String str3 = str;
                ImageLoaderKt.b(modifierO, str2, null, null, null, 0, false, null, null, null, gapComposer2, 24576, 2028);
                GapComposer gapComposer3 = gapComposer2;
                Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier(str3), LVAppDesignKitTheme.l(gapComposer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                int i4 = AnnotatedString.f10418f;
                TextKt.d(Html_androidKt.b(panelInfoHtmlSection.f61708a, null, 6), modifierM2, LVAppDesignKitTheme.c(gapComposer3).f48361b.l, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, LVAppDesignKitTheme.n(gapComposer3).l, gapComposer3, 0, 0, 262136);
                GapComposer gapComposer4 = gapComposer3;
                gapComposer4.Z(true);
                z2 = z2;
                str = str3;
                z = true;
                c2 = 4;
                obj = null;
                applier = applier;
                gapComposer2 = gapComposer4;
            }
            boolean z3 = z2;
            gapComposer2.Z(z3);
            int i5 = AnnotatedString.f10418f;
            String str4 = panelInfoSectionsItem.d;
            TextDecoration.f10965b.getClass();
            GapComposer gapComposer5 = gapComposer2;
            TextKt.d(Html_androidKt.b(str4, new TextLinkStyles(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), null, null, null, 14, null), 4), null, LVAppDesignKitTheme.c(gapComposer2).f48361b.l, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, LVAppDesignKitTheme.n(gapComposer2).l, gapComposer5, 0, 0, 262138);
            GapComposer gapComposer6 = gapComposer5;
            cj.x(new DTFunctionNameModifier(str), LVAppDesignKitTheme.l(gapComposer6).f48416e, gapComposer6, z);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            r0 = z3;
            gapComposer = gapComposer6;
        } else {
            r0 = 0;
            gapComposerH.D();
            gapComposer = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new om(panelInfoSectionsItem, i2, (int) r0);
        }
    }
}
