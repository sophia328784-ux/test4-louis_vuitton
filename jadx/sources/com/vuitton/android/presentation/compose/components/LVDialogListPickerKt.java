package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
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
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.window.AndroidDialog_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVReadOnlyTextFieldKt;
import defpackage.ai;
import defpackage.k3;
import defpackage.u00;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isDialogOpen", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVDialogListPickerKt {
    /* JADX WARN: Code duplicated, block: B:101:0x0137  */
    /* JADX WARN: Code duplicated, block: B:103:0x013b  */
    /* JADX WARN: Code duplicated, block: B:106:0x014a  */
    /* JADX WARN: Code duplicated, block: B:109:0x0198  */
    /* JADX WARN: Code duplicated, block: B:111:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:113:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:115:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:118:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:120:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x0091  */
    /* JADX WARN: Code duplicated, block: B:51:0x0095  */
    /* JADX WARN: Code duplicated, block: B:53:0x0098  */
    /* JADX WARN: Code duplicated, block: B:55:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:56:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:68:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:79:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:80:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:83:0x00f3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:87:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:88:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:91:0x0103  */
    /* JADX WARN: Code duplicated, block: B:92:0x0106  */
    /* JADX WARN: Code duplicated, block: B:95:0x0112  */
    /* JADX WARN: Code duplicated, block: B:98:0x0128  */
    public static final void a(Modifier modifier, String str, final ListPickerItem listPickerItem, List list, boolean z, boolean z2, final Function2 function2, String str2, Composer composer, int i2, int i3) {
        int i4;
        String str3;
        List list2;
        boolean z3;
        int i5;
        boolean z4;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z5;
        String str4;
        boolean z6;
        boolean z7;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z8;
        boolean z9;
        String str5;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        final MutableState mutableState;
        final LazyListState lazyListStateA;
        Object objX2;
        final CoroutineScope coroutineScope;
        String str6;
        Object objX3;
        Object objX4;
        int i10;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVDialogListPicker");
        }
        Modifier modifier2 = modifierE;
        modifier2.getClass();
        str.getClass();
        list.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(400603827);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            str3 = str;
            i4 |= gapComposerH.K(str3) ? 32 : 16;
        } else {
            str3 = str;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(listPickerItem) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            list2 = list;
            i4 |= gapComposerH.y(list2) ? 2048 : 1024;
        } else {
            list2 = list;
        }
        int i11 = i3 & 16;
        if (i11 == 0) {
            if ((i2 & 24576) == 0) {
                z3 = z;
                i4 |= gapComposerH.b(z3) ? 16384 : 8192;
            }
            i5 = i3 & 32;
            if (i5 != 0) {
                if ((196608 & i2) == 0) {
                    z4 = z2;
                    if (gapComposerH.b(z4)) {
                        i6 = 131072;
                    } else {
                        i6 = 65536;
                    }
                    i4 |= i6;
                }
                if ((1572864 & i2) != 0) {
                    if (gapComposerH.y(function2)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
                i7 = i3 & 128;
                if (i7 != 0) {
                    if ((12582912 & i2) == 0) {
                        if (gapComposerH.K(str2)) {
                            i8 = 8388608;
                        } else {
                            i8 = 4194304;
                        }
                        i4 |= i8;
                    }
                    i9 = i4;
                    if ((i4 & 4793491) != 4793490) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (gapComposerH.p(i9 & 1, z5)) {
                        if (i11 != 0) {
                            z8 = true;
                        } else {
                            z8 = z3;
                        }
                        if (i5 != 0) {
                            z9 = false;
                        } else {
                            z9 = z4;
                        }
                        if (i7 != 0) {
                            str5 = null;
                        } else {
                            str5 = str2;
                        }
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        objX = gapComposerH.x();
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = SnapshotStateKt.g(Boolean.FALSE);
                            gapComposerH.q(objX);
                        }
                        mutableState = (MutableState) objX;
                        lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                            gapComposerH.q(objX2);
                        }
                        coroutineScope = (CoroutineScope) objX2;
                        str6 = listPickerItem != null ? listPickerItem.f51015c : null;
                        if (str6 == null) {
                            str6 = "";
                        }
                        String str7 = str6;
                        int i12 = LVAppDesignKitTheme.g(gapComposerH).F;
                        objX3 = gapComposerH.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            objX3 = new u00(3, mutableState);
                            gapComposerH.q(objX3);
                        }
                        Integer numValueOf = Integer.valueOf(i12);
                        int i13 = i9 << 3;
                        LVReadOnlyTextFieldKt.a(str7, modifier2, null, null, z8, str3, z9, str5, null, null, null, (Function0) objX3, numValueOf, gapComposerH, (i13 & 3670016) | (i13 & 112) | (i9 & 57344) | ((i9 << 12) & ImageMetadata.JPEG_GPS_COORDINATES) | (i9 & 29360128), 48, 9996);
                        if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                            gapComposerH.L(-1324562653);
                            objX4 = gapComposerH.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = new u00(4, mutableState);
                                gapComposerH.q(objX4);
                            }
                            final List list3 = list2;
                            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1371751323, new Function2() { // from class: com.vuitton.android.presentation.compose.components.c
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    Composer composer2 = (Composer) obj;
                                    int iIntValue = ((Integer) obj2).intValue();
                                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                        Modifier modifierB = BackgroundKt.b(SizeKt.d(ClipKt.a(PaddingKt.k(new DTFunctionNameModifier("LVDialogListPicker$lambda$5"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48418h, 1), LVAppDesignKitTheme.j(composer2).f48411c), 1.0f), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, RectangleShapeKt.f8913a);
                                        Alignment.f8582a.getClass();
                                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                        int iHashCode = Long.hashCode(composer2.getT());
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                                        ComposeUiNode.b0.getClass();
                                        Function0 function0 = ComposeUiNode.Companion.f9641b;
                                        if (composer2.getF7976a() == null) {
                                            ComposablesKt.b();
                                            throw null;
                                        }
                                        composer2.B();
                                        if (composer2.getS()) {
                                            composer2.C(function0);
                                        } else {
                                            composer2.o();
                                        }
                                        Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                        Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                                        Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                                        List list4 = list3;
                                        boolean zY = composer2.y(list4);
                                        Function2 function3 = function2;
                                        boolean zK = zY | composer2.K(function3);
                                        ListPickerItem listPickerItem2 = listPickerItem;
                                        boolean zK2 = zK | composer2.K(listPickerItem2);
                                        Object objX5 = composer2.x();
                                        MutableState mutableState2 = mutableState;
                                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                        if (zK2 || objX5 == composer$Companion$Empty$2) {
                                            k3 k3Var = new k3(list4, function3, listPickerItem2, mutableState2, 18);
                                            composer2.q(k3Var);
                                            objX5 = k3Var;
                                        }
                                        Function1 function1 = (Function1) objX5;
                                        LazyListState lazyListState = lazyListStateA;
                                        LazyDslKt.a(null, lazyListState, null, null, null, null, false, null, function1, composer2, 0, 509);
                                        Boolean bool = (Boolean) mutableState2.getF10755b();
                                        bool.booleanValue();
                                        CoroutineScope coroutineScope2 = coroutineScope;
                                        boolean zY2 = composer2.y(coroutineScope2) | composer2.K(lazyListState) | composer2.y(list4) | composer2.K(listPickerItem2);
                                        Object objX6 = composer2.x();
                                        if (zY2 || objX6 == composer$Companion$Empty$2) {
                                            objX6 = new LVDialogListPickerKt$LVDialogListPicker$3$1$2$1(coroutineScope2, lazyListState, list4, listPickerItem2, null);
                                            composer2.q(objX6);
                                        }
                                        EffectsKt.e(composer2, bool, (Function2) objX6);
                                        composer2.r();
                                    } else {
                                        composer2.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                            gapComposerH = gapComposerH;
                            AndroidDialog_androidKt.a((Function0) objX4, null, composableLambdaImplB, gapComposerH, 390, 2);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH = gapComposerH;
                            gapComposerH.L(-1321414417);
                            gapComposerH.Z(false);
                        }
                        z6 = z8;
                        z7 = z9;
                        str4 = str5;
                    } else {
                        gapComposerH.D();
                        str4 = str2;
                        z6 = z3;
                        z7 = z4;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new ai(modifier2, str, listPickerItem, list, z6, z7, function2, str4, i2, i3, 2);
                    }
                }
                i4 |= 12582912;
                i9 = i4;
                if ((i4 & 4793491) != 4793490) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (gapComposerH.p(i9 & 1, z5)) {
                    if (i11 != 0) {
                        z8 = true;
                    } else {
                        z8 = z3;
                    }
                    if (i5 != 0) {
                        z9 = false;
                    } else {
                        z9 = z4;
                    }
                    if (i7 != 0) {
                        str5 = null;
                    } else {
                        str5 = str2;
                    }
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposerH.q(objX);
                    }
                    mutableState = (MutableState) objX;
                    lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                        gapComposerH.q(objX2);
                    }
                    coroutineScope = (CoroutineScope) objX2;
                    if (listPickerItem != null) {
                    }
                    if (str6 == null) {
                        str6 = "";
                    }
                    String str8 = str6;
                    int i14 = LVAppDesignKitTheme.g(gapComposerH).F;
                    objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new u00(3, mutableState);
                        gapComposerH.q(objX3);
                    }
                    Integer numValueOf2 = Integer.valueOf(i14);
                    int i15 = i9 << 3;
                    LVReadOnlyTextFieldKt.a(str8, modifier2, null, null, z8, str3, z9, str5, null, null, null, (Function0) objX3, numValueOf2, gapComposerH, (i15 & 3670016) | (i15 & 112) | (i9 & 57344) | ((i9 << 12) & ImageMetadata.JPEG_GPS_COORDINATES) | (i9 & 29360128), 48, 9996);
                    if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                        gapComposerH.L(-1324562653);
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new u00(4, mutableState);
                            gapComposerH.q(objX4);
                        }
                        final List list4 = list2;
                        ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-1371751323, new Function2() { // from class: com.vuitton.android.presentation.compose.components.c
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                Composer composer2 = (Composer) obj;
                                int iIntValue = ((Integer) obj2).intValue();
                                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    Modifier modifierB = BackgroundKt.b(SizeKt.d(ClipKt.a(PaddingKt.k(new DTFunctionNameModifier("LVDialogListPicker$lambda$5"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48418h, 1), LVAppDesignKitTheme.j(composer2).f48411c), 1.0f), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, RectangleShapeKt.f8913a);
                                    Alignment.f8582a.getClass();
                                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iHashCode = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function0);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                    Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                    Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                                    List list5 = list4;
                                    boolean zY = composer2.y(list5);
                                    Function2 function3 = function2;
                                    boolean zK = zY | composer2.K(function3);
                                    ListPickerItem listPickerItem2 = listPickerItem;
                                    boolean zK2 = zK | composer2.K(listPickerItem2);
                                    Object objX5 = composer2.x();
                                    MutableState mutableState2 = mutableState;
                                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                    if (zK2 || objX5 == composer$Companion$Empty$2) {
                                        k3 k3Var = new k3(list5, function3, listPickerItem2, mutableState2, 18);
                                        composer2.q(k3Var);
                                        objX5 = k3Var;
                                    }
                                    Function1 function1 = (Function1) objX5;
                                    LazyListState lazyListState = lazyListStateA;
                                    LazyDslKt.a(null, lazyListState, null, null, null, null, false, null, function1, composer2, 0, 509);
                                    Boolean bool = (Boolean) mutableState2.getF10755b();
                                    bool.booleanValue();
                                    CoroutineScope coroutineScope2 = coroutineScope;
                                    boolean zY2 = composer2.y(coroutineScope2) | composer2.K(lazyListState) | composer2.y(list5) | composer2.K(listPickerItem2);
                                    Object objX6 = composer2.x();
                                    if (zY2 || objX6 == composer$Companion$Empty$2) {
                                        objX6 = new LVDialogListPickerKt$LVDialogListPicker$3$1$2$1(coroutineScope2, lazyListState, list5, listPickerItem2, null);
                                        composer2.q(objX6);
                                    }
                                    EffectsKt.e(composer2, bool, (Function2) objX6);
                                    composer2.r();
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                        gapComposerH = gapComposerH;
                        AndroidDialog_androidKt.a((Function0) objX4, null, composableLambdaImplB2, gapComposerH, 390, 2);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH = gapComposerH;
                        gapComposerH.L(-1321414417);
                        gapComposerH.Z(false);
                    }
                    z6 = z8;
                    z7 = z9;
                    str4 = str5;
                } else {
                    gapComposerH.D();
                    str4 = str2;
                    z6 = z3;
                    z7 = z4;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new ai(modifier2, str, listPickerItem, list, z6, z7, function2, str4, i2, i3, 2);
                }
            }
            i4 |= ImageMetadata.EDGE_MODE;
            z4 = z2;
            if ((1572864 & i2) != 0) {
                if (gapComposerH.y(function2)) {
                    i10 = 1048576;
                } else {
                    i10 = 524288;
                }
                i4 |= i10;
            }
            i7 = i3 & 128;
            if (i7 != 0) {
                if ((12582912 & i2) == 0) {
                    if (gapComposerH.K(str2)) {
                        i8 = 8388608;
                    } else {
                        i8 = 4194304;
                    }
                    i4 |= i8;
                }
                i9 = i4;
                if ((i4 & 4793491) != 4793490) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (gapComposerH.p(i9 & 1, z5)) {
                    if (i11 != 0) {
                        z8 = true;
                    } else {
                        z8 = z3;
                    }
                    if (i5 != 0) {
                        z9 = false;
                    } else {
                        z9 = z4;
                    }
                    if (i7 != 0) {
                        str5 = null;
                    } else {
                        str5 = str2;
                    }
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposerH.q(objX);
                    }
                    mutableState = (MutableState) objX;
                    lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                        gapComposerH.q(objX2);
                    }
                    coroutineScope = (CoroutineScope) objX2;
                    if (listPickerItem != null) {
                    }
                    if (str6 == null) {
                        str6 = "";
                    }
                    String str9 = str6;
                    int i16 = LVAppDesignKitTheme.g(gapComposerH).F;
                    objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new u00(3, mutableState);
                        gapComposerH.q(objX3);
                    }
                    Integer numValueOf3 = Integer.valueOf(i16);
                    int i17 = i9 << 3;
                    LVReadOnlyTextFieldKt.a(str9, modifier2, null, null, z8, str3, z9, str5, null, null, null, (Function0) objX3, numValueOf3, gapComposerH, (i17 & 3670016) | (i17 & 112) | (i9 & 57344) | ((i9 << 12) & ImageMetadata.JPEG_GPS_COORDINATES) | (i9 & 29360128), 48, 9996);
                    if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                        gapComposerH.L(-1324562653);
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new u00(4, mutableState);
                            gapComposerH.q(objX4);
                        }
                        final List list5 = list2;
                        ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(-1371751323, new Function2() { // from class: com.vuitton.android.presentation.compose.components.c
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                Composer composer2 = (Composer) obj;
                                int iIntValue = ((Integer) obj2).intValue();
                                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                    Modifier modifierB = BackgroundKt.b(SizeKt.d(ClipKt.a(PaddingKt.k(new DTFunctionNameModifier("LVDialogListPicker$lambda$5"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48418h, 1), LVAppDesignKitTheme.j(composer2).f48411c), 1.0f), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, RectangleShapeKt.f8913a);
                                    Alignment.f8582a.getClass();
                                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iHashCode = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function0);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                    Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                    Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                                    List list6 = list5;
                                    boolean zY = composer2.y(list6);
                                    Function2 function3 = function2;
                                    boolean zK = zY | composer2.K(function3);
                                    ListPickerItem listPickerItem2 = listPickerItem;
                                    boolean zK2 = zK | composer2.K(listPickerItem2);
                                    Object objX5 = composer2.x();
                                    MutableState mutableState2 = mutableState;
                                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                    if (zK2 || objX5 == composer$Companion$Empty$2) {
                                        k3 k3Var = new k3(list6, function3, listPickerItem2, mutableState2, 18);
                                        composer2.q(k3Var);
                                        objX5 = k3Var;
                                    }
                                    Function1 function1 = (Function1) objX5;
                                    LazyListState lazyListState = lazyListStateA;
                                    LazyDslKt.a(null, lazyListState, null, null, null, null, false, null, function1, composer2, 0, 509);
                                    Boolean bool = (Boolean) mutableState2.getF10755b();
                                    bool.booleanValue();
                                    CoroutineScope coroutineScope2 = coroutineScope;
                                    boolean zY2 = composer2.y(coroutineScope2) | composer2.K(lazyListState) | composer2.y(list6) | composer2.K(listPickerItem2);
                                    Object objX6 = composer2.x();
                                    if (zY2 || objX6 == composer$Companion$Empty$2) {
                                        objX6 = new LVDialogListPickerKt$LVDialogListPicker$3$1$2$1(coroutineScope2, lazyListState, list6, listPickerItem2, null);
                                        composer2.q(objX6);
                                    }
                                    EffectsKt.e(composer2, bool, (Function2) objX6);
                                    composer2.r();
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                        gapComposerH = gapComposerH;
                        AndroidDialog_androidKt.a((Function0) objX4, null, composableLambdaImplB3, gapComposerH, 390, 2);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH = gapComposerH;
                        gapComposerH.L(-1321414417);
                        gapComposerH.Z(false);
                    }
                    z6 = z8;
                    z7 = z9;
                    str4 = str5;
                } else {
                    gapComposerH.D();
                    str4 = str2;
                    z6 = z3;
                    z7 = z4;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new ai(modifier2, str, listPickerItem, list, z6, z7, function2, str4, i2, i3, 2);
                }
            }
            i4 |= 12582912;
            i9 = i4;
            if ((i4 & 4793491) != 4793490) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (gapComposerH.p(i9 & 1, z5)) {
                if (i11 != 0) {
                    z8 = true;
                } else {
                    z8 = z3;
                }
                if (i5 != 0) {
                    z9 = false;
                } else {
                    z9 = z4;
                }
                if (i7 != 0) {
                    str5 = null;
                } else {
                    str5 = str2;
                }
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposerH.q(objX);
                }
                mutableState = (MutableState) objX;
                lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                    gapComposerH.q(objX2);
                }
                coroutineScope = (CoroutineScope) objX2;
                if (listPickerItem != null) {
                }
                if (str6 == null) {
                    str6 = "";
                }
                String str10 = str6;
                int i18 = LVAppDesignKitTheme.g(gapComposerH).F;
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new u00(3, mutableState);
                    gapComposerH.q(objX3);
                }
                Integer numValueOf4 = Integer.valueOf(i18);
                int i19 = i9 << 3;
                LVReadOnlyTextFieldKt.a(str10, modifier2, null, null, z8, str3, z9, str5, null, null, null, (Function0) objX3, numValueOf4, gapComposerH, (i19 & 3670016) | (i19 & 112) | (i9 & 57344) | ((i9 << 12) & ImageMetadata.JPEG_GPS_COORDINATES) | (i9 & 29360128), 48, 9996);
                if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                    gapComposerH.L(-1324562653);
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new u00(4, mutableState);
                        gapComposerH.q(objX4);
                    }
                    final List list6 = list2;
                    ComposableLambdaImpl composableLambdaImplB4 = ComposableLambdaKt.b(-1371751323, new Function2() { // from class: com.vuitton.android.presentation.compose.components.c
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            int iIntValue = ((Integer) obj2).intValue();
                            if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                Modifier modifierB = BackgroundKt.b(SizeKt.d(ClipKt.a(PaddingKt.k(new DTFunctionNameModifier("LVDialogListPicker$lambda$5"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48418h, 1), LVAppDesignKitTheme.j(composer2).f48411c), 1.0f), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, RectangleShapeKt.f8913a);
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                                ComposeUiNode.b0.getClass();
                                Function0 function0 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function0);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                                List list7 = list6;
                                boolean zY = composer2.y(list7);
                                Function2 function3 = function2;
                                boolean zK = zY | composer2.K(function3);
                                ListPickerItem listPickerItem2 = listPickerItem;
                                boolean zK2 = zK | composer2.K(listPickerItem2);
                                Object objX5 = composer2.x();
                                MutableState mutableState2 = mutableState;
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zK2 || objX5 == composer$Companion$Empty$2) {
                                    k3 k3Var = new k3(list7, function3, listPickerItem2, mutableState2, 18);
                                    composer2.q(k3Var);
                                    objX5 = k3Var;
                                }
                                Function1 function1 = (Function1) objX5;
                                LazyListState lazyListState = lazyListStateA;
                                LazyDslKt.a(null, lazyListState, null, null, null, null, false, null, function1, composer2, 0, 509);
                                Boolean bool = (Boolean) mutableState2.getF10755b();
                                bool.booleanValue();
                                CoroutineScope coroutineScope2 = coroutineScope;
                                boolean zY2 = composer2.y(coroutineScope2) | composer2.K(lazyListState) | composer2.y(list7) | composer2.K(listPickerItem2);
                                Object objX6 = composer2.x();
                                if (zY2 || objX6 == composer$Companion$Empty$2) {
                                    objX6 = new LVDialogListPickerKt$LVDialogListPicker$3$1$2$1(coroutineScope2, lazyListState, list7, listPickerItem2, null);
                                    composer2.q(objX6);
                                }
                                EffectsKt.e(composer2, bool, (Function2) objX6);
                                composer2.r();
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH);
                    gapComposerH = gapComposerH;
                    AndroidDialog_androidKt.a((Function0) objX4, null, composableLambdaImplB4, gapComposerH, 390, 2);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH = gapComposerH;
                    gapComposerH.L(-1321414417);
                    gapComposerH.Z(false);
                }
                z6 = z8;
                z7 = z9;
                str4 = str5;
            } else {
                gapComposerH.D();
                str4 = str2;
                z6 = z3;
                z7 = z4;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new ai(modifier2, str, listPickerItem, list, z6, z7, function2, str4, i2, i3, 2);
            }
        }
        i4 |= 24576;
        z3 = z;
        i5 = i3 & 32;
        if (i5 != 0) {
            if ((196608 & i2) == 0) {
                z4 = z2;
                if (gapComposerH.b(z4)) {
                    i6 = 131072;
                } else {
                    i6 = 65536;
                }
                i4 |= i6;
            }
            if ((1572864 & i2) != 0) {
                if (gapComposerH.y(function2)) {
                    i10 = 1048576;
                } else {
                    i10 = 524288;
                }
                i4 |= i10;
            }
            i7 = i3 & 128;
            if (i7 != 0) {
                if ((12582912 & i2) == 0) {
                    if (gapComposerH.K(str2)) {
                        i8 = 8388608;
                    } else {
                        i8 = 4194304;
                    }
                    i4 |= i8;
                }
                i9 = i4;
                if ((i4 & 4793491) != 4793490) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (gapComposerH.p(i9 & 1, z5)) {
                    if (i11 != 0) {
                        z8 = true;
                    } else {
                        z8 = z3;
                    }
                    if (i5 != 0) {
                        z9 = false;
                    } else {
                        z9 = z4;
                    }
                    if (i7 != 0) {
                        str5 = null;
                    } else {
                        str5 = str2;
                    }
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposerH.q(objX);
                    }
                    mutableState = (MutableState) objX;
                    lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                        gapComposerH.q(objX2);
                    }
                    coroutineScope = (CoroutineScope) objX2;
                    if (listPickerItem != null) {
                    }
                    if (str6 == null) {
                        str6 = "";
                    }
                    String str11 = str6;
                    int i110 = LVAppDesignKitTheme.g(gapComposerH).F;
                    objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new u00(3, mutableState);
                        gapComposerH.q(objX3);
                    }
                    Integer numValueOf5 = Integer.valueOf(i110);
                    int i111 = i9 << 3;
                    LVReadOnlyTextFieldKt.a(str11, modifier2, null, null, z8, str3, z9, str5, null, null, null, (Function0) objX3, numValueOf5, gapComposerH, (i111 & 3670016) | (i111 & 112) | (i9 & 57344) | ((i9 << 12) & ImageMetadata.JPEG_GPS_COORDINATES) | (i9 & 29360128), 48, 9996);
                    if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                        gapComposerH.L(-1324562653);
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new u00(4, mutableState);
                            gapComposerH.q(objX4);
                        }
                        final List list7 = list2;
                        ComposableLambdaImpl composableLambdaImplB5 = ComposableLambdaKt.b(-1371751323, new Function2() { // from class: com.vuitton.android.presentation.compose.components.c
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                Composer composer2 = (Composer) obj;
                                int iIntValue = ((Integer) obj2).intValue();
                                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                    Modifier modifierB = BackgroundKt.b(SizeKt.d(ClipKt.a(PaddingKt.k(new DTFunctionNameModifier("LVDialogListPicker$lambda$5"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48418h, 1), LVAppDesignKitTheme.j(composer2).f48411c), 1.0f), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, RectangleShapeKt.f8913a);
                                    Alignment.f8582a.getClass();
                                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iHashCode = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function0);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                    Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                    Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                                    List list8 = list7;
                                    boolean zY = composer2.y(list8);
                                    Function2 function3 = function2;
                                    boolean zK = zY | composer2.K(function3);
                                    ListPickerItem listPickerItem2 = listPickerItem;
                                    boolean zK2 = zK | composer2.K(listPickerItem2);
                                    Object objX5 = composer2.x();
                                    MutableState mutableState2 = mutableState;
                                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                    if (zK2 || objX5 == composer$Companion$Empty$2) {
                                        k3 k3Var = new k3(list8, function3, listPickerItem2, mutableState2, 18);
                                        composer2.q(k3Var);
                                        objX5 = k3Var;
                                    }
                                    Function1 function1 = (Function1) objX5;
                                    LazyListState lazyListState = lazyListStateA;
                                    LazyDslKt.a(null, lazyListState, null, null, null, null, false, null, function1, composer2, 0, 509);
                                    Boolean bool = (Boolean) mutableState2.getF10755b();
                                    bool.booleanValue();
                                    CoroutineScope coroutineScope2 = coroutineScope;
                                    boolean zY2 = composer2.y(coroutineScope2) | composer2.K(lazyListState) | composer2.y(list8) | composer2.K(listPickerItem2);
                                    Object objX6 = composer2.x();
                                    if (zY2 || objX6 == composer$Companion$Empty$2) {
                                        objX6 = new LVDialogListPickerKt$LVDialogListPicker$3$1$2$1(coroutineScope2, lazyListState, list8, listPickerItem2, null);
                                        composer2.q(objX6);
                                    }
                                    EffectsKt.e(composer2, bool, (Function2) objX6);
                                    composer2.r();
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                        gapComposerH = gapComposerH;
                        AndroidDialog_androidKt.a((Function0) objX4, null, composableLambdaImplB5, gapComposerH, 390, 2);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH = gapComposerH;
                        gapComposerH.L(-1321414417);
                        gapComposerH.Z(false);
                    }
                    z6 = z8;
                    z7 = z9;
                    str4 = str5;
                } else {
                    gapComposerH.D();
                    str4 = str2;
                    z6 = z3;
                    z7 = z4;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new ai(modifier2, str, listPickerItem, list, z6, z7, function2, str4, i2, i3, 2);
                }
            }
            i4 |= 12582912;
            i9 = i4;
            if ((i4 & 4793491) != 4793490) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (gapComposerH.p(i9 & 1, z5)) {
                if (i11 != 0) {
                    z8 = true;
                } else {
                    z8 = z3;
                }
                if (i5 != 0) {
                    z9 = false;
                } else {
                    z9 = z4;
                }
                if (i7 != 0) {
                    str5 = null;
                } else {
                    str5 = str2;
                }
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposerH.q(objX);
                }
                mutableState = (MutableState) objX;
                lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                    gapComposerH.q(objX2);
                }
                coroutineScope = (CoroutineScope) objX2;
                if (listPickerItem != null) {
                }
                if (str6 == null) {
                    str6 = "";
                }
                String str12 = str6;
                int i112 = LVAppDesignKitTheme.g(gapComposerH).F;
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new u00(3, mutableState);
                    gapComposerH.q(objX3);
                }
                Integer numValueOf6 = Integer.valueOf(i112);
                int i113 = i9 << 3;
                LVReadOnlyTextFieldKt.a(str12, modifier2, null, null, z8, str3, z9, str5, null, null, null, (Function0) objX3, numValueOf6, gapComposerH, (i113 & 3670016) | (i113 & 112) | (i9 & 57344) | ((i9 << 12) & ImageMetadata.JPEG_GPS_COORDINATES) | (i9 & 29360128), 48, 9996);
                if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                    gapComposerH.L(-1324562653);
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new u00(4, mutableState);
                        gapComposerH.q(objX4);
                    }
                    final List list8 = list2;
                    ComposableLambdaImpl composableLambdaImplB6 = ComposableLambdaKt.b(-1371751323, new Function2() { // from class: com.vuitton.android.presentation.compose.components.c
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            int iIntValue = ((Integer) obj2).intValue();
                            if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                Modifier modifierB = BackgroundKt.b(SizeKt.d(ClipKt.a(PaddingKt.k(new DTFunctionNameModifier("LVDialogListPicker$lambda$5"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48418h, 1), LVAppDesignKitTheme.j(composer2).f48411c), 1.0f), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, RectangleShapeKt.f8913a);
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                                ComposeUiNode.b0.getClass();
                                Function0 function0 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function0);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                                List list9 = list8;
                                boolean zY = composer2.y(list9);
                                Function2 function3 = function2;
                                boolean zK = zY | composer2.K(function3);
                                ListPickerItem listPickerItem2 = listPickerItem;
                                boolean zK2 = zK | composer2.K(listPickerItem2);
                                Object objX5 = composer2.x();
                                MutableState mutableState2 = mutableState;
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zK2 || objX5 == composer$Companion$Empty$2) {
                                    k3 k3Var = new k3(list9, function3, listPickerItem2, mutableState2, 18);
                                    composer2.q(k3Var);
                                    objX5 = k3Var;
                                }
                                Function1 function1 = (Function1) objX5;
                                LazyListState lazyListState = lazyListStateA;
                                LazyDslKt.a(null, lazyListState, null, null, null, null, false, null, function1, composer2, 0, 509);
                                Boolean bool = (Boolean) mutableState2.getF10755b();
                                bool.booleanValue();
                                CoroutineScope coroutineScope2 = coroutineScope;
                                boolean zY2 = composer2.y(coroutineScope2) | composer2.K(lazyListState) | composer2.y(list9) | composer2.K(listPickerItem2);
                                Object objX6 = composer2.x();
                                if (zY2 || objX6 == composer$Companion$Empty$2) {
                                    objX6 = new LVDialogListPickerKt$LVDialogListPicker$3$1$2$1(coroutineScope2, lazyListState, list9, listPickerItem2, null);
                                    composer2.q(objX6);
                                }
                                EffectsKt.e(composer2, bool, (Function2) objX6);
                                composer2.r();
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH);
                    gapComposerH = gapComposerH;
                    AndroidDialog_androidKt.a((Function0) objX4, null, composableLambdaImplB6, gapComposerH, 390, 2);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH = gapComposerH;
                    gapComposerH.L(-1321414417);
                    gapComposerH.Z(false);
                }
                z6 = z8;
                z7 = z9;
                str4 = str5;
            } else {
                gapComposerH.D();
                str4 = str2;
                z6 = z3;
                z7 = z4;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new ai(modifier2, str, listPickerItem, list, z6, z7, function2, str4, i2, i3, 2);
            }
        }
        i4 |= ImageMetadata.EDGE_MODE;
        z4 = z2;
        if ((1572864 & i2) != 0) {
            if (gapComposerH.y(function2)) {
                i10 = 1048576;
            } else {
                i10 = 524288;
            }
            i4 |= i10;
        }
        i7 = i3 & 128;
        if (i7 != 0) {
            if ((12582912 & i2) == 0) {
                if (gapComposerH.K(str2)) {
                    i8 = 8388608;
                } else {
                    i8 = 4194304;
                }
                i4 |= i8;
            }
            i9 = i4;
            if ((i4 & 4793491) != 4793490) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (gapComposerH.p(i9 & 1, z5)) {
                if (i11 != 0) {
                    z8 = true;
                } else {
                    z8 = z3;
                }
                if (i5 != 0) {
                    z9 = false;
                } else {
                    z9 = z4;
                }
                if (i7 != 0) {
                    str5 = null;
                } else {
                    str5 = str2;
                }
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposerH.q(objX);
                }
                mutableState = (MutableState) objX;
                lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                    gapComposerH.q(objX2);
                }
                coroutineScope = (CoroutineScope) objX2;
                if (listPickerItem != null) {
                }
                if (str6 == null) {
                    str6 = "";
                }
                String str13 = str6;
                int i114 = LVAppDesignKitTheme.g(gapComposerH).F;
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new u00(3, mutableState);
                    gapComposerH.q(objX3);
                }
                Integer numValueOf7 = Integer.valueOf(i114);
                int i115 = i9 << 3;
                LVReadOnlyTextFieldKt.a(str13, modifier2, null, null, z8, str3, z9, str5, null, null, null, (Function0) objX3, numValueOf7, gapComposerH, (i115 & 3670016) | (i115 & 112) | (i9 & 57344) | ((i9 << 12) & ImageMetadata.JPEG_GPS_COORDINATES) | (i9 & 29360128), 48, 9996);
                if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                    gapComposerH.L(-1324562653);
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new u00(4, mutableState);
                        gapComposerH.q(objX4);
                    }
                    final List list9 = list2;
                    ComposableLambdaImpl composableLambdaImplB7 = ComposableLambdaKt.b(-1371751323, new Function2() { // from class: com.vuitton.android.presentation.compose.components.c
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            int iIntValue = ((Integer) obj2).intValue();
                            if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                                Modifier modifierB = BackgroundKt.b(SizeKt.d(ClipKt.a(PaddingKt.k(new DTFunctionNameModifier("LVDialogListPicker$lambda$5"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48418h, 1), LVAppDesignKitTheme.j(composer2).f48411c), 1.0f), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, RectangleShapeKt.f8913a);
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                                ComposeUiNode.b0.getClass();
                                Function0 function0 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function0);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                                List list10 = list9;
                                boolean zY = composer2.y(list10);
                                Function2 function3 = function2;
                                boolean zK = zY | composer2.K(function3);
                                ListPickerItem listPickerItem2 = listPickerItem;
                                boolean zK2 = zK | composer2.K(listPickerItem2);
                                Object objX5 = composer2.x();
                                MutableState mutableState2 = mutableState;
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zK2 || objX5 == composer$Companion$Empty$2) {
                                    k3 k3Var = new k3(list10, function3, listPickerItem2, mutableState2, 18);
                                    composer2.q(k3Var);
                                    objX5 = k3Var;
                                }
                                Function1 function1 = (Function1) objX5;
                                LazyListState lazyListState = lazyListStateA;
                                LazyDslKt.a(null, lazyListState, null, null, null, null, false, null, function1, composer2, 0, 509);
                                Boolean bool = (Boolean) mutableState2.getF10755b();
                                bool.booleanValue();
                                CoroutineScope coroutineScope2 = coroutineScope;
                                boolean zY2 = composer2.y(coroutineScope2) | composer2.K(lazyListState) | composer2.y(list10) | composer2.K(listPickerItem2);
                                Object objX6 = composer2.x();
                                if (zY2 || objX6 == composer$Companion$Empty$2) {
                                    objX6 = new LVDialogListPickerKt$LVDialogListPicker$3$1$2$1(coroutineScope2, lazyListState, list10, listPickerItem2, null);
                                    composer2.q(objX6);
                                }
                                EffectsKt.e(composer2, bool, (Function2) objX6);
                                composer2.r();
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH);
                    gapComposerH = gapComposerH;
                    AndroidDialog_androidKt.a((Function0) objX4, null, composableLambdaImplB7, gapComposerH, 390, 2);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH = gapComposerH;
                    gapComposerH.L(-1321414417);
                    gapComposerH.Z(false);
                }
                z6 = z8;
                z7 = z9;
                str4 = str5;
            } else {
                gapComposerH.D();
                str4 = str2;
                z6 = z3;
                z7 = z4;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new ai(modifier2, str, listPickerItem, list, z6, z7, function2, str4, i2, i3, 2);
            }
        }
        i4 |= 12582912;
        i9 = i4;
        if ((i4 & 4793491) != 4793490) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (gapComposerH.p(i9 & 1, z5)) {
            if (i11 != 0) {
                z8 = true;
            } else {
                z8 = z3;
            }
            if (i5 != 0) {
                z9 = false;
            } else {
                z9 = z4;
            }
            if (i7 != 0) {
                str5 = null;
            } else {
                str5 = str2;
            }
            OpaqueKey opaqueKey8 = ComposerKt.f7940a;
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            mutableState = (MutableState) objX;
            lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX2);
            }
            coroutineScope = (CoroutineScope) objX2;
            if (listPickerItem != null) {
            }
            if (str6 == null) {
                str6 = "";
            }
            String str14 = str6;
            int i116 = LVAppDesignKitTheme.g(gapComposerH).F;
            objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new u00(3, mutableState);
                gapComposerH.q(objX3);
            }
            Integer numValueOf8 = Integer.valueOf(i116);
            int i117 = i9 << 3;
            LVReadOnlyTextFieldKt.a(str14, modifier2, null, null, z8, str3, z9, str5, null, null, null, (Function0) objX3, numValueOf8, gapComposerH, (i117 & 3670016) | (i117 & 112) | (i9 & 57344) | ((i9 << 12) & ImageMetadata.JPEG_GPS_COORDINATES) | (i9 & 29360128), 48, 9996);
            if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                gapComposerH.L(-1324562653);
                objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = new u00(4, mutableState);
                    gapComposerH.q(objX4);
                }
                final List list10 = list2;
                ComposableLambdaImpl composableLambdaImplB8 = ComposableLambdaKt.b(-1371751323, new Function2() { // from class: com.vuitton.android.presentation.compose.components.c
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Integer) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                            Modifier modifierB = BackgroundKt.b(SizeKt.d(ClipKt.a(PaddingKt.k(new DTFunctionNameModifier("LVDialogListPicker$lambda$5"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48418h, 1), LVAppDesignKitTheme.j(composer2).f48411c), 1.0f), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, RectangleShapeKt.f8913a);
                            Alignment.f8582a.getClass();
                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iHashCode = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                            ComposeUiNode.b0.getClass();
                            Function0 function0 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function0);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                            Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                            List list11 = list10;
                            boolean zY = composer2.y(list11);
                            Function2 function3 = function2;
                            boolean zK = zY | composer2.K(function3);
                            ListPickerItem listPickerItem2 = listPickerItem;
                            boolean zK2 = zK | composer2.K(listPickerItem2);
                            Object objX5 = composer2.x();
                            MutableState mutableState2 = mutableState;
                            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                            if (zK2 || objX5 == composer$Companion$Empty$2) {
                                k3 k3Var = new k3(list11, function3, listPickerItem2, mutableState2, 18);
                                composer2.q(k3Var);
                                objX5 = k3Var;
                            }
                            Function1 function1 = (Function1) objX5;
                            LazyListState lazyListState = lazyListStateA;
                            LazyDslKt.a(null, lazyListState, null, null, null, null, false, null, function1, composer2, 0, 509);
                            Boolean bool = (Boolean) mutableState2.getF10755b();
                            bool.booleanValue();
                            CoroutineScope coroutineScope2 = coroutineScope;
                            boolean zY2 = composer2.y(coroutineScope2) | composer2.K(lazyListState) | composer2.y(list11) | composer2.K(listPickerItem2);
                            Object objX6 = composer2.x();
                            if (zY2 || objX6 == composer$Companion$Empty$2) {
                                objX6 = new LVDialogListPickerKt$LVDialogListPicker$3$1$2$1(coroutineScope2, lazyListState, list11, listPickerItem2, null);
                                composer2.q(objX6);
                            }
                            EffectsKt.e(composer2, bool, (Function2) objX6);
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH);
                gapComposerH = gapComposerH;
                AndroidDialog_androidKt.a((Function0) objX4, null, composableLambdaImplB8, gapComposerH, 390, 2);
                gapComposerH.Z(false);
            } else {
                gapComposerH = gapComposerH;
                gapComposerH.L(-1321414417);
                gapComposerH.Z(false);
            }
            z6 = z8;
            z7 = z9;
            str4 = str5;
        } else {
            gapComposerH.D();
            str4 = str2;
            z6 = z3;
            z7 = z4;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ai(modifier2, str, listPickerItem, list, z6, z7, function2, str4, i2, i3, 2);
        }
    }
}
