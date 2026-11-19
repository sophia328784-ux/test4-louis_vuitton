package com.vuitton.android.presentation.screen.pdp.components.subcomponents;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
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
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.ShadowKt;
import com.vuitton.android.presentation.compose.components.LVExpandableListAnimatedIconKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationConfigurationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationInformationUiModel;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import defpackage.bp;
import defpackage.cj;
import defpackage.d0;
import defpackage.d21;
import defpackage.f0;
import defpackage.f1;
import defpackage.n00;
import defpackage.tr;
import defpackage.uj;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isExpanded", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CustomizationConfigurationCardKt {
    /* JADX WARN: Code duplicated, block: B:102:0x023e  */
    /* JADX WARN: Code duplicated, block: B:104:0x0245  */
    /* JADX WARN: Code duplicated, block: B:105:0x0249  */
    /* JADX WARN: Code duplicated, block: B:108:0x0272  */
    /* JADX WARN: Code duplicated, block: B:110:0x0279  */
    /* JADX WARN: Code duplicated, block: B:111:0x027d  */
    /* JADX WARN: Code duplicated, block: B:114:0x0293  */
    /* JADX WARN: Code duplicated, block: B:115:0x0296  */
    /* JADX WARN: Code duplicated, block: B:118:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:119:0x0354  */
    /* JADX WARN: Code duplicated, block: B:121:0x035a  */
    /* JADX WARN: Code duplicated, block: B:123:0x03b0  */
    /* JADX WARN: Code duplicated, block: B:125:0x03b8  */
    /* JADX WARN: Code duplicated, block: B:127:0x03bc  */
    /* JADX WARN: Code duplicated, block: B:129:0x03c0  */
    /* JADX WARN: Code duplicated, block: B:131:0x03c4  */
    /* JADX WARN: Code duplicated, block: B:133:0x03c8  */
    /* JADX WARN: Code duplicated, block: B:135:0x03d1  */
    /* JADX WARN: Code duplicated, block: B:138:0x03de  */
    /* JADX WARN: Code duplicated, block: B:140:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x0076  */
    /* JADX WARN: Code duplicated, block: B:45:0x007b  */
    /* JADX WARN: Code duplicated, block: B:47:0x007f  */
    /* JADX WARN: Code duplicated, block: B:49:0x0087  */
    /* JADX WARN: Code duplicated, block: B:50:0x008a  */
    /* JADX WARN: Code duplicated, block: B:54:0x0095  */
    /* JADX WARN: Code duplicated, block: B:55:0x0097  */
    /* JADX WARN: Code duplicated, block: B:58:0x009f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:68:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:70:0x00be  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:76:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:78:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:80:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:83:0x0109  */
    /* JADX WARN: Code duplicated, block: B:87:0x0177  */
    /* JADX WARN: Code duplicated, block: B:90:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:92:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:93:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:96:0x0202  */
    /* JADX WARN: Code duplicated, block: B:98:0x0209  */
    /* JADX WARN: Code duplicated, block: B:99:0x020d  */
    public static final void a(Modifier modifier, CustomizationConfigurationUiModel customizationConfigurationUiModel, CustomizationCardState customizationCardState, String str, String str2, Composer composer, int i2, int i3) {
        int i4;
        String str3;
        int i5;
        Object obj;
        int i6;
        boolean z;
        Object obj2;
        RecomposeScopeImpl recomposeScopeImplB0;
        String str4;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        MutableState mutableState;
        boolean z2;
        Object objX2;
        Object objX3;
        Modifier modifierB;
        Object objX4;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Function2 function2;
        Function2 function3;
        Function2 function4;
        Function1 function1;
        Function2 function5;
        Arrangement$Top$1 arrangement$Top$1;
        BiasAlignment.Horizontal horizontal;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        RowMeasurePolicy rowMeasurePolicyA;
        Object obj3;
        int iHashCode3;
        PersistentCompositionLocalMap persistentCompositionLocalMapU3;
        Modifier modifierC3;
        ColumnMeasurePolicy columnMeasurePolicyA2;
        int iHashCode4;
        PersistentCompositionLocalMap persistentCompositionLocalMapU4;
        Modifier modifierC4;
        String str5;
        GapComposer gapComposer;
        CustomizationCardState.Expand expand;
        boolean z3;
        Modifier modifierE = modifier;
        CustomizationConfigurationUiModel customizationConfigurationUiModel2 = customizationConfigurationUiModel;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "CustomizationConfigurationCard");
        }
        customizationConfigurationUiModel2.getClass();
        GapComposer gapComposerH = composer.h(-1300249894);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(customizationConfigurationUiModel2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= (i2 & 512) == 0 ? gapComposerH.K(customizationCardState) : gapComposerH.y(customizationCardState) ? 256 : 128;
        }
        int i7 = i3 & 8;
        if (i7 == 0) {
            if ((i2 & 3072) == 0) {
                str3 = str;
                i4 |= gapComposerH.K(str3) ? 2048 : 1024;
            }
            i5 = i3 & 16;
            if (i5 != 0) {
                if ((i2 & 24576) == 0) {
                    obj = str2;
                    if (gapComposerH.K(obj)) {
                        i6 = 16384;
                    } else {
                        i6 = 8192;
                    }
                    i4 |= i6;
                }
                if ((i4 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i4 & 1, z)) {
                    if (i7 != 0) {
                        str4 = null;
                    } else {
                        str4 = str3;
                    }
                    if (i5 != 0) {
                        obj = null;
                    }
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        if (customizationCardState instanceof CustomizationCardState.Expand) {
                            expand = (CustomizationCardState.Expand) customizationCardState;
                        } else {
                            expand = null;
                        }
                        if (expand != null) {
                            z3 = expand.f61438a;
                        } else {
                            z3 = true;
                        }
                        objX = SnapshotStateKt.g(Boolean.valueOf(z3));
                        gapComposerH.q(objX);
                    }
                    mutableState = (MutableState) objX;
                    z2 = customizationCardState instanceof CustomizationCardState.Modify;
                    if (z2) {
                        modifierB = ModifierExtKt.a(n00.i(gapComposerH, 295351876, "CustomizationConfigurationCard"), ((CustomizationCardState.Modify) customizationCardState).f61439a, gapComposerH);
                        gapComposerH.Z(false);
                    } else {
                        if (customizationCardState instanceof CustomizationCardState.Expand) {
                            throw d21.u(gapComposerH, 295349574, false);
                        }
                        DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, 566077509, "CustomizationConfigurationCard");
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = InteractionSourceKt.a();
                            gapComposerH.q(objX2);
                        }
                        MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX2;
                        objX3 = gapComposerH.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            objX3 = new d0(23, mutableState);
                            gapComposerH.q(objX3);
                        }
                        modifierB = ClickableKt.b(dTFunctionNameModifierI, mutableInteractionSource, null, false, null, null, (Function0) objX3, 28);
                        gapComposerH.Z(false);
                    }
                    Modifier modifierD = SizeKt.d(BackgroundKt.b(BorderKt.a(ClipKt.a(ShadowKt.b(modifierE.o(modifierB), Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposerH, 0, 3), LVAppDesignKitTheme.j(gapComposerH).f48411c), LVAppDesignKitTheme.d(gapComposerH).f48385c, Color.b(0.06f, LVAppDesignKitTheme.c(gapComposerH).f48361b.u), LVAppDesignKitTheme.j(gapComposerH).f48411c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), 1.0f);
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new bp(6);
                        gapComposerH.q(objX4);
                    }
                    Modifier modifierB2 = SemanticsModifierKt.b(modifierD, false, (Function1) objX4);
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierB2);
                    ComposeUiNode.b0.getClass();
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposerH, measurePolicyD, function2);
                    function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    function4 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf, function4);
                    function1 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function1);
                    function5 = ComposeUiNode.Companion.d;
                    Modifier modifierI = PaddingKt.i(n00.e(gapComposerH, modifierC, function5, "CustomizationConfigurationCard", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                    arrangement$Top$1 = Arrangement.f4920c;
                    horizontal = Alignment.Companion.n;
                    columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierI);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                    cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
                    Updater.c(gapComposerH, modifierC2, function5);
                    Modifier modifierD2 = tr.d("CustomizationConfigurationCard", 1.0f);
                    rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, gapComposerH, 54);
                    obj3 = obj;
                    iHashCode3 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU3 = gapComposerH.U();
                    modifierC3 = ComposedModifierKt.c(gapComposerH, modifierD2);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
                    cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function1);
                    Updater.c(gapComposerH, modifierC3, function5);
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CustomizationConfigurationCard");
                    columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                    iHashCode4 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU4 = gapComposerH.U();
                    modifierC4 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU4, function3);
                    cj.t(iHashCode4, gapComposerH, function4, gapComposerH, function1);
                    Modifier modifierF = n00.f(gapComposerH, modifierC4, function5, "CustomizationConfigurationCard", "customizationView_title_text");
                    customizationConfigurationUiModel2 = customizationConfigurationUiModel;
                    if (str4 == null) {
                        str5 = customizationConfigurationUiModel2.d;
                    } else {
                        str5 = str4;
                    }
                    obj2 = obj3;
                    TextKt.c(str5, modifierF, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
                    TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.personalization_summary_text), n00.g("CustomizationConfigurationCard", "customizationView_subtitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
                    gapComposer = gapComposerH;
                    gapComposer.Z(true);
                    if (z2) {
                        Modifier modifierB3 = RowScopeInstance.f5040a.b(n00.d(gapComposer, 1969862963, "CustomizationConfigurationCard", "customizationView_modify_link"), Alignment.Companion.f8591k);
                        String strC = StringResources_androidKt.c(gapComposer, R.string.global_modify);
                        TextStyle textStyle = LVAppDesignKitTheme.n(gapComposer).f48430k;
                        long j2 = LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k;
                        TextDecoration.f10965b.getClass();
                        TextKt.c(strC, modifierB3, j2, 0L, null, 0L, TextDecoration.d, null, 0L, 0, false, 0, 0, null, textStyle, gapComposer, 805306368, 0, 130552);
                        gapComposer = gapComposer;
                        gapComposer.Z(false);
                    } else {
                        if (customizationCardState instanceof CustomizationCardState.Expand) {
                            throw d21.u(gapComposer, 617731240, false);
                        }
                        LVExpandableListAnimatedIconKt.a(n00.d(gapComposer, 617750876, "CustomizationConfigurationCard", "customizationView_expand_icon"), 0, ((Boolean) mutableState.getF10755b()).booleanValue(), Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposer, 0, 26);
                        gapComposer.Z(false);
                    }
                    gapComposer.Z(true);
                    GapComposer gapComposer2 = gapComposer;
                    AnimatedVisibilityKt.c(ColumnScopeInstance.f4944a, ((Boolean) mutableState.getF10755b()).booleanValue(), null, null, null, null, ComposableLambdaKt.b(-1453273426, new f1(customizationConfigurationUiModel2, obj2, 20), gapComposer), gapComposer2, 1572870, 30);
                    gapComposerH = gapComposer2;
                    gapComposerH.Z(true);
                    gapComposerH.Z(true);
                    str3 = str4;
                } else {
                    gapComposerH.D();
                    obj2 = obj;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new uj(modifierE, customizationConfigurationUiModel2, customizationCardState, str3, obj2, i2, i3, 2);
                }
            }
            i4 |= 24576;
            obj = str2;
            if ((i4 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i4 & 1, z)) {
                if (i7 != 0) {
                    str4 = null;
                } else {
                    str4 = str3;
                }
                if (i5 != 0) {
                    obj = null;
                }
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    if (customizationCardState instanceof CustomizationCardState.Expand) {
                        expand = (CustomizationCardState.Expand) customizationCardState;
                    } else {
                        expand = null;
                    }
                    if (expand != null) {
                        z3 = expand.f61438a;
                    } else {
                        z3 = true;
                    }
                    objX = SnapshotStateKt.g(Boolean.valueOf(z3));
                    gapComposerH.q(objX);
                }
                mutableState = (MutableState) objX;
                z2 = customizationCardState instanceof CustomizationCardState.Modify;
                if (z2) {
                    modifierB = ModifierExtKt.a(n00.i(gapComposerH, 295351876, "CustomizationConfigurationCard"), ((CustomizationCardState.Modify) customizationCardState).f61439a, gapComposerH);
                    gapComposerH.Z(false);
                } else {
                    if (customizationCardState instanceof CustomizationCardState.Expand) {
                        throw d21.u(gapComposerH, 295349574, false);
                    }
                    DTFunctionNameModifier dTFunctionNameModifierI2 = n00.i(gapComposerH, 566077509, "CustomizationConfigurationCard");
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = InteractionSourceKt.a();
                        gapComposerH.q(objX2);
                    }
                    MutableInteractionSource mutableInteractionSource2 = (MutableInteractionSource) objX2;
                    objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new d0(23, mutableState);
                        gapComposerH.q(objX3);
                    }
                    modifierB = ClickableKt.b(dTFunctionNameModifierI2, mutableInteractionSource2, null, false, null, null, (Function0) objX3, 28);
                    gapComposerH.Z(false);
                }
                Modifier modifierD3 = SizeKt.d(BackgroundKt.b(BorderKt.a(ClipKt.a(ShadowKt.b(modifierE.o(modifierB), Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposerH, 0, 3), LVAppDesignKitTheme.j(gapComposerH).f48411c), LVAppDesignKitTheme.d(gapComposerH).f48385c, Color.b(0.06f, LVAppDesignKitTheme.c(gapComposerH).f48361b.u), LVAppDesignKitTheme.j(gapComposerH).f48411c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), 1.0f);
                objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = new bp(6);
                    gapComposerH.q(objX4);
                }
                Modifier modifierB4 = SemanticsModifierKt.b(modifierD3, false, (Function1) objX4);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB4);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, measurePolicyD, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf2 = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf2, function4);
                function1 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function1);
                function5 = ComposeUiNode.Companion.d;
                Modifier modifierI2 = PaddingKt.i(n00.e(gapComposerH, modifierC, function5, "CustomizationConfigurationCard", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                arrangement$Top$1 = Arrangement.f4920c;
                horizontal = Alignment.Companion.n;
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierI2);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
                Updater.c(gapComposerH, modifierC2, function5);
                Modifier modifierD4 = tr.d("CustomizationConfigurationCard", 1.0f);
                rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, gapComposerH, 54);
                obj3 = obj;
                iHashCode3 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU3 = gapComposerH.U();
                modifierC3 = ComposedModifierKt.c(gapComposerH, modifierD4);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
                cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function1);
                Updater.c(gapComposerH, modifierC3, function5);
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("CustomizationConfigurationCard");
                columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                iHashCode4 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU4 = gapComposerH.U();
                modifierC4 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier2);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU4, function3);
                cj.t(iHashCode4, gapComposerH, function4, gapComposerH, function1);
                Modifier modifierF2 = n00.f(gapComposerH, modifierC4, function5, "CustomizationConfigurationCard", "customizationView_title_text");
                customizationConfigurationUiModel2 = customizationConfigurationUiModel;
                if (str4 == null) {
                    str5 = customizationConfigurationUiModel2.d;
                } else {
                    str5 = str4;
                }
                obj2 = obj3;
                TextKt.c(str5, modifierF2, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.personalization_summary_text), n00.g("CustomizationConfigurationCard", "customizationView_subtitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
                gapComposer = gapComposerH;
                gapComposer.Z(true);
                if (z2) {
                    Modifier modifierB5 = RowScopeInstance.f5040a.b(n00.d(gapComposer, 1969862963, "CustomizationConfigurationCard", "customizationView_modify_link"), Alignment.Companion.f8591k);
                    String strC2 = StringResources_androidKt.c(gapComposer, R.string.global_modify);
                    TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposer).f48430k;
                    long j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k;
                    TextDecoration.f10965b.getClass();
                    TextKt.c(strC2, modifierB5, j3, 0L, null, 0L, TextDecoration.d, null, 0L, 0, false, 0, 0, null, textStyle2, gapComposer, 805306368, 0, 130552);
                    gapComposer = gapComposer;
                    gapComposer.Z(false);
                } else {
                    if (customizationCardState instanceof CustomizationCardState.Expand) {
                        throw d21.u(gapComposer, 617731240, false);
                    }
                    LVExpandableListAnimatedIconKt.a(n00.d(gapComposer, 617750876, "CustomizationConfigurationCard", "customizationView_expand_icon"), 0, ((Boolean) mutableState.getF10755b()).booleanValue(), Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposer, 0, 26);
                    gapComposer.Z(false);
                }
                gapComposer.Z(true);
                GapComposer gapComposer3 = gapComposer;
                AnimatedVisibilityKt.c(ColumnScopeInstance.f4944a, ((Boolean) mutableState.getF10755b()).booleanValue(), null, null, null, null, ComposableLambdaKt.b(-1453273426, new f1(customizationConfigurationUiModel2, obj2, 20), gapComposer), gapComposer3, 1572870, 30);
                gapComposerH = gapComposer3;
                gapComposerH.Z(true);
                gapComposerH.Z(true);
                str3 = str4;
            } else {
                gapComposerH.D();
                obj2 = obj;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new uj(modifierE, customizationConfigurationUiModel2, customizationCardState, str3, obj2, i2, i3, 2);
            }
        }
        i4 |= 3072;
        str3 = str;
        i5 = i3 & 16;
        if (i5 != 0) {
            if ((i2 & 24576) == 0) {
                obj = str2;
                if (gapComposerH.K(obj)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i4 |= i6;
            }
            if ((i4 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i4 & 1, z)) {
                if (i7 != 0) {
                    str4 = null;
                } else {
                    str4 = str3;
                }
                if (i5 != 0) {
                    obj = null;
                }
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    if (customizationCardState instanceof CustomizationCardState.Expand) {
                        expand = (CustomizationCardState.Expand) customizationCardState;
                    } else {
                        expand = null;
                    }
                    if (expand != null) {
                        z3 = expand.f61438a;
                    } else {
                        z3 = true;
                    }
                    objX = SnapshotStateKt.g(Boolean.valueOf(z3));
                    gapComposerH.q(objX);
                }
                mutableState = (MutableState) objX;
                z2 = customizationCardState instanceof CustomizationCardState.Modify;
                if (z2) {
                    modifierB = ModifierExtKt.a(n00.i(gapComposerH, 295351876, "CustomizationConfigurationCard"), ((CustomizationCardState.Modify) customizationCardState).f61439a, gapComposerH);
                    gapComposerH.Z(false);
                } else {
                    if (customizationCardState instanceof CustomizationCardState.Expand) {
                        throw d21.u(gapComposerH, 295349574, false);
                    }
                    DTFunctionNameModifier dTFunctionNameModifierI3 = n00.i(gapComposerH, 566077509, "CustomizationConfigurationCard");
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = InteractionSourceKt.a();
                        gapComposerH.q(objX2);
                    }
                    MutableInteractionSource mutableInteractionSource3 = (MutableInteractionSource) objX2;
                    objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new d0(23, mutableState);
                        gapComposerH.q(objX3);
                    }
                    modifierB = ClickableKt.b(dTFunctionNameModifierI3, mutableInteractionSource3, null, false, null, null, (Function0) objX3, 28);
                    gapComposerH.Z(false);
                }
                Modifier modifierD5 = SizeKt.d(BackgroundKt.b(BorderKt.a(ClipKt.a(ShadowKt.b(modifierE.o(modifierB), Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposerH, 0, 3), LVAppDesignKitTheme.j(gapComposerH).f48411c), LVAppDesignKitTheme.d(gapComposerH).f48385c, Color.b(0.06f, LVAppDesignKitTheme.c(gapComposerH).f48361b.u), LVAppDesignKitTheme.j(gapComposerH).f48411c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), 1.0f);
                objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = new bp(6);
                    gapComposerH.q(objX4);
                }
                Modifier modifierB6 = SemanticsModifierKt.b(modifierD5, false, (Function1) objX4);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB6);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, measurePolicyD, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf3 = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf3, function4);
                function1 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function1);
                function5 = ComposeUiNode.Companion.d;
                Modifier modifierI3 = PaddingKt.i(n00.e(gapComposerH, modifierC, function5, "CustomizationConfigurationCard", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                arrangement$Top$1 = Arrangement.f4920c;
                horizontal = Alignment.Companion.n;
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierI3);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
                Updater.c(gapComposerH, modifierC2, function5);
                Modifier modifierD6 = tr.d("CustomizationConfigurationCard", 1.0f);
                rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, gapComposerH, 54);
                obj3 = obj;
                iHashCode3 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU3 = gapComposerH.U();
                modifierC3 = ComposedModifierKt.c(gapComposerH, modifierD6);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
                cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function1);
                Updater.c(gapComposerH, modifierC3, function5);
                DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("CustomizationConfigurationCard");
                columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                iHashCode4 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU4 = gapComposerH.U();
                modifierC4 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier3);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU4, function3);
                cj.t(iHashCode4, gapComposerH, function4, gapComposerH, function1);
                Modifier modifierF3 = n00.f(gapComposerH, modifierC4, function5, "CustomizationConfigurationCard", "customizationView_title_text");
                customizationConfigurationUiModel2 = customizationConfigurationUiModel;
                if (str4 == null) {
                    str5 = customizationConfigurationUiModel2.d;
                } else {
                    str5 = str4;
                }
                obj2 = obj3;
                TextKt.c(str5, modifierF3, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.personalization_summary_text), n00.g("CustomizationConfigurationCard", "customizationView_subtitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
                gapComposer = gapComposerH;
                gapComposer.Z(true);
                if (z2) {
                    Modifier modifierB7 = RowScopeInstance.f5040a.b(n00.d(gapComposer, 1969862963, "CustomizationConfigurationCard", "customizationView_modify_link"), Alignment.Companion.f8591k);
                    String strC3 = StringResources_androidKt.c(gapComposer, R.string.global_modify);
                    TextStyle textStyle3 = LVAppDesignKitTheme.n(gapComposer).f48430k;
                    long j4 = LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k;
                    TextDecoration.f10965b.getClass();
                    TextKt.c(strC3, modifierB7, j4, 0L, null, 0L, TextDecoration.d, null, 0L, 0, false, 0, 0, null, textStyle3, gapComposer, 805306368, 0, 130552);
                    gapComposer = gapComposer;
                    gapComposer.Z(false);
                } else {
                    if (customizationCardState instanceof CustomizationCardState.Expand) {
                        throw d21.u(gapComposer, 617731240, false);
                    }
                    LVExpandableListAnimatedIconKt.a(n00.d(gapComposer, 617750876, "CustomizationConfigurationCard", "customizationView_expand_icon"), 0, ((Boolean) mutableState.getF10755b()).booleanValue(), Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposer, 0, 26);
                    gapComposer.Z(false);
                }
                gapComposer.Z(true);
                GapComposer gapComposer4 = gapComposer;
                AnimatedVisibilityKt.c(ColumnScopeInstance.f4944a, ((Boolean) mutableState.getF10755b()).booleanValue(), null, null, null, null, ComposableLambdaKt.b(-1453273426, new f1(customizationConfigurationUiModel2, obj2, 20), gapComposer), gapComposer4, 1572870, 30);
                gapComposerH = gapComposer4;
                gapComposerH.Z(true);
                gapComposerH.Z(true);
                str3 = str4;
            } else {
                gapComposerH.D();
                obj2 = obj;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new uj(modifierE, customizationConfigurationUiModel2, customizationCardState, str3, obj2, i2, i3, 2);
            }
        }
        i4 |= 24576;
        obj = str2;
        if ((i4 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i4 & 1, z)) {
            if (i7 != 0) {
                str4 = null;
            } else {
                str4 = str3;
            }
            if (i5 != 0) {
                obj = null;
            }
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                if (customizationCardState instanceof CustomizationCardState.Expand) {
                    expand = (CustomizationCardState.Expand) customizationCardState;
                } else {
                    expand = null;
                }
                if (expand != null) {
                    z3 = expand.f61438a;
                } else {
                    z3 = true;
                }
                objX = SnapshotStateKt.g(Boolean.valueOf(z3));
                gapComposerH.q(objX);
            }
            mutableState = (MutableState) objX;
            z2 = customizationCardState instanceof CustomizationCardState.Modify;
            if (z2) {
                modifierB = ModifierExtKt.a(n00.i(gapComposerH, 295351876, "CustomizationConfigurationCard"), ((CustomizationCardState.Modify) customizationCardState).f61439a, gapComposerH);
                gapComposerH.Z(false);
            } else {
                if (customizationCardState instanceof CustomizationCardState.Expand) {
                    throw d21.u(gapComposerH, 295349574, false);
                }
                DTFunctionNameModifier dTFunctionNameModifierI4 = n00.i(gapComposerH, 566077509, "CustomizationConfigurationCard");
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = InteractionSourceKt.a();
                    gapComposerH.q(objX2);
                }
                MutableInteractionSource mutableInteractionSource4 = (MutableInteractionSource) objX2;
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new d0(23, mutableState);
                    gapComposerH.q(objX3);
                }
                modifierB = ClickableKt.b(dTFunctionNameModifierI4, mutableInteractionSource4, null, false, null, null, (Function0) objX3, 28);
                gapComposerH.Z(false);
            }
            Modifier modifierD7 = SizeKt.d(BackgroundKt.b(BorderKt.a(ClipKt.a(ShadowKt.b(modifierE.o(modifierB), Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposerH, 0, 3), LVAppDesignKitTheme.j(gapComposerH).f48411c), LVAppDesignKitTheme.d(gapComposerH).f48385c, Color.b(0.06f, LVAppDesignKitTheme.c(gapComposerH).f48361b.u), LVAppDesignKitTheme.j(gapComposerH).f48411c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), 1.0f);
            objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new bp(6);
                gapComposerH.q(objX4);
            }
            Modifier modifierB8 = SemanticsModifierKt.b(modifierD7, false, (Function1) objX4);
            Alignment.f8582a.getClass();
            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierB8);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function2);
            function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf4 = Integer.valueOf(iHashCode);
            function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf4, function4);
            function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            function5 = ComposeUiNode.Companion.d;
            Modifier modifierI4 = PaddingKt.i(n00.e(gapComposerH, modifierC, function5, "CustomizationConfigurationCard", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            arrangement$Top$1 = Arrangement.f4920c;
            horizontal = Alignment.Companion.n;
            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierI4);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            Modifier modifierD8 = tr.d("CustomizationConfigurationCard", 1.0f);
            rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, gapComposerH, 54);
            obj3 = obj;
            iHashCode3 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU3 = gapComposerH.U();
            modifierC3 = ComposedModifierKt.c(gapComposerH, modifierD8);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC3, function5);
            DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("CustomizationConfigurationCard");
            columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            iHashCode4 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU4 = gapComposerH.U();
            modifierC4 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier4);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU4, function3);
            cj.t(iHashCode4, gapComposerH, function4, gapComposerH, function1);
            Modifier modifierF4 = n00.f(gapComposerH, modifierC4, function5, "CustomizationConfigurationCard", "customizationView_title_text");
            customizationConfigurationUiModel2 = customizationConfigurationUiModel;
            if (str4 == null) {
                str5 = customizationConfigurationUiModel2.d;
            } else {
                str5 = str4;
            }
            obj2 = obj3;
            TextKt.c(str5, modifierF4, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.personalization_summary_text), n00.g("CustomizationConfigurationCard", "customizationView_subtitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
            if (z2) {
                Modifier modifierB9 = RowScopeInstance.f5040a.b(n00.d(gapComposer, 1969862963, "CustomizationConfigurationCard", "customizationView_modify_link"), Alignment.Companion.f8591k);
                String strC4 = StringResources_androidKt.c(gapComposer, R.string.global_modify);
                TextStyle textStyle4 = LVAppDesignKitTheme.n(gapComposer).f48430k;
                long j5 = LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k;
                TextDecoration.f10965b.getClass();
                TextKt.c(strC4, modifierB9, j5, 0L, null, 0L, TextDecoration.d, null, 0L, 0, false, 0, 0, null, textStyle4, gapComposer, 805306368, 0, 130552);
                gapComposer = gapComposer;
                gapComposer.Z(false);
            } else {
                if (customizationCardState instanceof CustomizationCardState.Expand) {
                    throw d21.u(gapComposer, 617731240, false);
                }
                LVExpandableListAnimatedIconKt.a(n00.d(gapComposer, 617750876, "CustomizationConfigurationCard", "customizationView_expand_icon"), 0, ((Boolean) mutableState.getF10755b()).booleanValue(), Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposer, 0, 26);
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
            GapComposer gapComposer5 = gapComposer;
            AnimatedVisibilityKt.c(ColumnScopeInstance.f4944a, ((Boolean) mutableState.getF10755b()).booleanValue(), null, null, null, null, ComposableLambdaKt.b(-1453273426, new f1(customizationConfigurationUiModel2, obj2, 20), gapComposer), gapComposer5, 1572870, 30);
            gapComposerH = gapComposer5;
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            str3 = str4;
        } else {
            gapComposerH.D();
            obj2 = obj;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uj(modifierE, customizationConfigurationUiModel2, customizationCardState, str3, obj2, i2, i3, 2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v8 */
    public static final void b(Modifier modifier, CustomizationInformationUiModel customizationInformationUiModel, Composer composer, int i2) {
        GapComposer gapComposer;
        ?? r0;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1;
        Unit unit;
        GapComposer gapComposer2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "CustomizationInformationItem");
        }
        GapComposer gapComposerH = composer.h(78614203);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(customizationInformationUiModel) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierE2 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(modifierE, "customizationView_info_view");
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierA = ClipKt.a(SizeKt.h(SizeKt.t(modifierE2, 80.0f, 105.0f), 80.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$2 = RectangleShapeKt.f8913a;
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(modifierA, j2, rectangleShapeKt$RectangleShape$2), LVAppDesignKitTheme.l(gapComposerH).f48415c);
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b), horizontal, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            Unit unit2 = null;
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
            AssetImageUiModel assetImageUiModel = customizationInformationUiModel.d;
            String str = assetImageUiModel != null ? assetImageUiModel.f51778b : null;
            if (str == null) {
                gapComposerH.L(-1367275327);
                gapComposerH.Z(false);
                rectangleShapeKt$RectangleShape$1 = rectangleShapeKt$RectangleShape$2;
                r0 = 0;
                unit = null;
            } else {
                r0 = 0;
                rectangleShapeKt$RectangleShape$1 = rectangleShapeKt$RectangleShape$2;
                ImageLoaderKt.b(ClipKt.a(SizeKt.o(n00.d(gapComposerH, -1367275326, "CustomizationInformationItem", "customizationView_info_image"), LVAppDesignKitTheme.d(gapComposerH).o), RoundedCornerShapeKt.f5846a), str, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                gapComposerH.Z(false);
                unit = Unit.f71739a;
            }
            if (unit == null) {
                gapComposerH.L(-1366921616);
                String str2 = customizationInformationUiModel.f61675e;
                String strJ = str2 != null ? StringKtExtKt.j(str2) : null;
                if (strJ == null) {
                    gapComposerH.L(-1366921617);
                    gapComposerH.Z(r0);
                } else {
                    BoxKt.a(BackgroundKt.b(ClipKt.a(SizeKt.o(n00.d(gapComposerH, -1366921616, "CustomizationInformationItem", "customizationView_info_image"), LVAppDesignKitTheme.d(gapComposerH).o), RoundedCornerShapeKt.f5846a), ColorKt.b(android.graphics.Color.parseColor(strJ)), rectangleShapeKt$RectangleShape$1), gapComposerH, r0);
                    gapComposerH.Z(r0);
                    unit2 = Unit.f71739a;
                }
                gapComposerH.Z(r0);
                unit = unit2;
            } else {
                gapComposerH.L(-321200690);
                gapComposerH.Z(r0);
            }
            if (unit == null) {
                SpacerKt.a(gapComposerH, SizeKt.o(n00.i(gapComposerH, -321178390, "CustomizationInformationItem"), LVAppDesignKitTheme.d(gapComposerH).o));
            } else {
                gapComposerH.L(-321200617);
            }
            gapComposerH.Z(r0);
            String str3 = customizationInformationUiModel.f61674c;
            if (str3 == null) {
                gapComposerH.L(-1366487090);
                gapComposerH.Z(r0);
                gapComposer2 = gapComposerH;
            } else {
                Modifier modifierD = n00.d(gapComposerH, -1366487089, "CustomizationInformationItem", "customizationView_infoLabel_text");
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
                long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                TextOverflow.f10989a.getClass();
                int i4 = TextOverflow.f10991c;
                TextAlign.f10959b.getClass();
                TextKt.c(str3, modifierD, j3, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, i4, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 109560);
                GapComposer gapComposer3 = gapComposerH;
                gapComposer3.Z(r0);
                gapComposer2 = gapComposer3;
            }
            Modifier modifierG = n00.g("CustomizationInformationItem", "customizationView_infoValue_text");
            String str4 = customizationInformationUiModel.f61673b;
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposer2).m;
            long j4 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
            TextOverflow.f10989a.getClass();
            int i5 = TextOverflow.f10991c;
            TextAlign.f10959b.getClass();
            GapComposer gapComposer4 = gapComposer2;
            TextKt.c(str4, modifierG, j4, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, i5, false, 1, 0, null, textStyle2, gapComposer4, 0, 24960, 109560);
            GapComposer gapComposer5 = gapComposer4;
            gapComposer5.Z(true);
            gapComposer = gapComposer5;
        } else {
            modifierE = modifierE;
            gapComposerH.D();
            gapComposer = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new f0(modifierE, customizationInformationUiModel, i2, 29);
        }
    }
}
