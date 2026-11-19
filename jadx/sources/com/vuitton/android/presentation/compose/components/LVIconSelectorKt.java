package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.FlowLayoutKt;
import androidx.compose.foundation.layout.FlowRowScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVImageKt;
import com.vuitton.android.presentation.model.onboarding.IconLauncherType;
import defpackage.qm;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;", "selectedIconType", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVIconSelectorKt {
    /* JADX WARN: Code duplicated, block: B:48:0x0093  */
    /* JADX WARN: Code duplicated, block: B:49:0x0095  */
    /* JADX WARN: Code duplicated, block: B:52:0x009d  */
    /* JADX WARN: Code duplicated, block: B:58:0x00b0 A[PHI: r0 r3
      0x00b0: PHI (r0v24 java.util.List) = (r0v19 java.util.List), (r0v26 java.util.List) binds: [B:66:0x00c3, B:57:0x00ac] A[DONT_GENERATE, DONT_INLINE]
      0x00b0: PHI (r3v8 long) = (r3v2 long), (r3v0 long) binds: [B:66:0x00c3, B:57:0x00ac] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:60:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:70:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:72:0x0105  */
    /* JADX WARN: Code duplicated, block: B:75:0x0111  */
    /* JADX WARN: Code duplicated, block: B:77:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, final Function2 function2, long j2, IconLauncherType iconLauncherType, List list, Function2 function3, Composer composer, int i2, int i3) {
        List list2;
        int i4;
        Function2 function4;
        boolean z;
        Function2 function5;
        List list3;
        long j3;
        RecomposeScopeImpl recomposeScopeImplB0;
        List list4;
        final Function2 function6;
        Object objX;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVIconsSelector-FU0evQE");
        }
        Modifier modifier2 = modifierE;
        function2.getClass();
        GapComposer gapComposerH = composer.h(620824957);
        long j4 = j2;
        int i5 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.y(function2) ? 32 : 16) | (((i3 & 4) == 0 && gapComposerH.e(j4)) ? 256 : 128) | (gapComposerH.d(iconLauncherType == null ? -1 : iconLauncherType.ordinal()) ? 2048 : 1024);
        int i6 = i3 & 16;
        if (i6 != 0) {
            i4 = i5 | 24576;
            list2 = list;
        } else {
            list2 = list;
            i4 = i5 | (gapComposerH.y(list2) ? 16384 : 8192);
        }
        int i7 = i3 & 32;
        if (i7 == 0) {
            if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                function4 = function3;
                i4 |= gapComposerH.y(function4) ? 131072 : 65536;
            }
            if ((74899 & i4) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i4 & 1, z)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0 || gapComposerH.h0()) {
                    if ((i3 & 4) != 0) {
                        j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                    }
                    if (i6 != 0) {
                        list2 = null;
                    }
                    list4 = list2;
                    if (i7 != 0) {
                        function6 = null;
                    }
                    final long j5 = j4;
                    gapComposerH.a0();
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = SnapshotStateKt.g(iconLauncherType);
                        gapComposerH.q(objX);
                    }
                    final MutableState mutableState = (MutableState) objX;
                    final List list5 = list4;
                    FlowLayoutKt.a(SizeKt.w(modifier2, null, 3), null, null, null, 4, 0, ComposableLambdaKt.b(-1937083400, new Function3() { // from class: e60
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            long j6;
                            int i8;
                            FlowRowScope flowRowScope = (FlowRowScope) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            flowRowScope.getClass();
                            int i9 = 4;
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= composer2.K(flowRowScope) ? 4 : 2;
                            }
                            if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                Dp.Companion companion = Dp.f11004c;
                                int i10 = 0;
                                while (i10 < 8) {
                                    IconLauncherType iconLauncherType2 = (IconLauncherType) CollectionsKt.G(i10, IconLauncherType.c());
                                    if (iconLauncherType2 == null) {
                                        composer2.L(-714880570);
                                        composer2.F();
                                        i8 = i10;
                                    } else {
                                        composer2.L(-714880569);
                                        MutableState mutableState2 = mutableState;
                                        if (((IconLauncherType) mutableState2.getF10755b()) == iconLauncherType2) {
                                            j6 = j5;
                                        } else {
                                            Color.f8866b.getClass();
                                            j6 = Color.f8870h;
                                        }
                                        DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("LVIconsSelector_FU0evQE$lambda$3");
                                        Color.f8866b.getClass();
                                        Modifier modifierA = BorderKt.a(SizeKt.w(PaddingKt.k(flowRowScope.a(BackgroundKt.b(dTFunctionNameModifier, Color.f8870h, RectangleShapeKt.f8913a), 1.0f, true), Call.Parameters.DEFAULT_CAMERA_ZOOM, 6.0f, 1), null, 3), LVAppDesignKitTheme.d(composer2).f48385c, j6, LVAppDesignKitTheme.j(composer2).d);
                                        Function2 function7 = function6;
                                        boolean zK = composer2.K(function7);
                                        Object objX2 = composer2.x();
                                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                        if (zK || objX2 == composer$Companion$Empty$1) {
                                            objX2 = new l3(i9, function7);
                                            composer2.q(objX2);
                                        }
                                        Modifier modifierE2 = ModifierExtKt.e(OnGloballyPositionedModifierKt.a(modifierA, (Function1) objX2), "onboardingCustomIcon_icon_button");
                                        Alignment.f8582a.getClass();
                                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        int iHashCode = Long.hashCode(composer2.getT());
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierE2);
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
                                        Modifier modifierO = SizeKt.o(BoxScopeInstance.f4938a.g(PaddingKt.i(new DTFunctionNameModifier("LVIconsSelector_FU0evQE$lambda$3"), LVAppDesignKitTheme.l(composer2).f48414b), Alignment.Companion.f8587f), LVAppDesignKitTheme.d(composer2).A);
                                        Function2 function8 = function2;
                                        boolean zK2 = composer2.K(function8) | composer2.d(iconLauncherType2.ordinal()) | composer2.d(i10);
                                        Object objX3 = composer2.x();
                                        if (zK2 || objX3 == composer$Companion$Empty$1) {
                                            int i11 = i10;
                                            qw qwVar = new qw(function8, iconLauncherType2, i11, mutableState2, 1);
                                            i8 = i11;
                                            composer2.q(qwVar);
                                            objX3 = qwVar;
                                        } else {
                                            i8 = i10;
                                        }
                                        Modifier modifierC2 = ModifierExtKt.c(modifierO, false, null, null, (Function0) objX3, 31);
                                        List list6 = list5;
                                        boolean zY = composer2.y(list6) | composer2.d(i8);
                                        Object objX4 = composer2.x();
                                        if (zY || objX4 == composer$Companion$Empty$1) {
                                            objX4 = new ze(list6, i8, 5);
                                            composer2.q(objX4);
                                        }
                                        Modifier modifierA2 = OnGloballyPositionedModifierKt.a(modifierC2, (Function1) objX4);
                                        ContentScale.f9447a.getClass();
                                        LVImageKt.a(modifierA2, PainterResources_androidKt.a(iconLauncherType2.getIconResource(), composer2, 0), StringResources_androidKt.c(composer2, iconLauncherType2.getContentDescription()), 1.0f, ContentScale.Companion.f9450c, composer2, 27712, 0);
                                        composer2.r();
                                        composer2.F();
                                    }
                                    i10 = i8 + 1;
                                    i9 = 4;
                                }
                                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposerH, 1597440, 46);
                    function5 = function6;
                    j3 = j5;
                    list3 = list5;
                } else {
                    gapComposerH.D();
                    list4 = list2;
                }
                function6 = function4;
                final long j6 = j4;
                gapComposerH.a0();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = SnapshotStateKt.g(iconLauncherType);
                    gapComposerH.q(objX);
                }
                final MutableState mutableState2 = (MutableState) objX;
                final List list6 = list4;
                FlowLayoutKt.a(SizeKt.w(modifier2, null, 3), null, null, null, 4, 0, ComposableLambdaKt.b(-1937083400, new Function3() { // from class: e60
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        long j7;
                        int i8;
                        FlowRowScope flowRowScope = (FlowRowScope) obj;
                        Composer composer2 = (Composer) obj2;
                        int iIntValue = ((Integer) obj3).intValue();
                        flowRowScope.getClass();
                        int i9 = 4;
                        if ((iIntValue & 6) == 0) {
                            iIntValue |= composer2.K(flowRowScope) ? 4 : 2;
                        }
                        if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            Dp.Companion companion = Dp.f11004c;
                            int i10 = 0;
                            while (i10 < 8) {
                                IconLauncherType iconLauncherType2 = (IconLauncherType) CollectionsKt.G(i10, IconLauncherType.c());
                                if (iconLauncherType2 == null) {
                                    composer2.L(-714880570);
                                    composer2.F();
                                    i8 = i10;
                                } else {
                                    composer2.L(-714880569);
                                    MutableState mutableState3 = mutableState2;
                                    if (((IconLauncherType) mutableState3.getF10755b()) == iconLauncherType2) {
                                        j7 = j6;
                                    } else {
                                        Color.f8866b.getClass();
                                        j7 = Color.f8870h;
                                    }
                                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("LVIconsSelector_FU0evQE$lambda$3");
                                    Color.f8866b.getClass();
                                    Modifier modifierA = BorderKt.a(SizeKt.w(PaddingKt.k(flowRowScope.a(BackgroundKt.b(dTFunctionNameModifier, Color.f8870h, RectangleShapeKt.f8913a), 1.0f, true), Call.Parameters.DEFAULT_CAMERA_ZOOM, 6.0f, 1), null, 3), LVAppDesignKitTheme.d(composer2).f48385c, j7, LVAppDesignKitTheme.j(composer2).d);
                                    Function2 function7 = function6;
                                    boolean zK = composer2.K(function7);
                                    Object objX2 = composer2.x();
                                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                    if (zK || objX2 == composer$Companion$Empty$1) {
                                        objX2 = new l3(i9, function7);
                                        composer2.q(objX2);
                                    }
                                    Modifier modifierE2 = ModifierExtKt.e(OnGloballyPositionedModifierKt.a(modifierA, (Function1) objX2), "onboardingCustomIcon_icon_button");
                                    Alignment.f8582a.getClass();
                                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                    int iHashCode = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierE2);
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
                                    Modifier modifierO = SizeKt.o(BoxScopeInstance.f4938a.g(PaddingKt.i(new DTFunctionNameModifier("LVIconsSelector_FU0evQE$lambda$3"), LVAppDesignKitTheme.l(composer2).f48414b), Alignment.Companion.f8587f), LVAppDesignKitTheme.d(composer2).A);
                                    Function2 function8 = function2;
                                    boolean zK2 = composer2.K(function8) | composer2.d(iconLauncherType2.ordinal()) | composer2.d(i10);
                                    Object objX3 = composer2.x();
                                    if (zK2 || objX3 == composer$Companion$Empty$1) {
                                        int i11 = i10;
                                        qw qwVar = new qw(function8, iconLauncherType2, i11, mutableState3, 1);
                                        i8 = i11;
                                        composer2.q(qwVar);
                                        objX3 = qwVar;
                                    } else {
                                        i8 = i10;
                                    }
                                    Modifier modifierC2 = ModifierExtKt.c(modifierO, false, null, null, (Function0) objX3, 31);
                                    List list7 = list6;
                                    boolean zY = composer2.y(list7) | composer2.d(i8);
                                    Object objX4 = composer2.x();
                                    if (zY || objX4 == composer$Companion$Empty$1) {
                                        objX4 = new ze(list7, i8, 5);
                                        composer2.q(objX4);
                                    }
                                    Modifier modifierA2 = OnGloballyPositionedModifierKt.a(modifierC2, (Function1) objX4);
                                    ContentScale.f9447a.getClass();
                                    LVImageKt.a(modifierA2, PainterResources_androidKt.a(iconLauncherType2.getIconResource(), composer2, 0), StringResources_androidKt.c(composer2, iconLauncherType2.getContentDescription()), 1.0f, ContentScale.Companion.f9450c, composer2, 27712, 0);
                                    composer2.r();
                                    composer2.F();
                                }
                                i10 = i8 + 1;
                                i9 = 4;
                            }
                            OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 1597440, 46);
                function5 = function6;
                j3 = j6;
                list3 = list6;
            } else {
                gapComposerH.D();
                function5 = function4;
                list3 = list2;
                j3 = j4;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new qm(modifier2, function2, j3, iconLauncherType, list3, function5, i2, i3);
            }
        }
        i4 |= ImageMetadata.EDGE_MODE;
        function4 = function3;
        if ((74899 & i4) != 74898) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i4 & 1, z)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if ((i3 & 4) != 0) {
                    j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                }
                if (i6 != 0) {
                    list2 = null;
                }
                list4 = list2;
                if (i7 != 0) {
                    function6 = null;
                } else {
                    function6 = function4;
                }
            } else {
                if ((i3 & 4) != 0) {
                    j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                }
                if (i6 != 0) {
                    list2 = null;
                }
                list4 = list2;
                if (i7 != 0) {
                    function6 = null;
                } else {
                    function6 = function4;
                }
            }
            final long j7 = j4;
            gapComposerH.a0();
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = SnapshotStateKt.g(iconLauncherType);
                gapComposerH.q(objX);
            }
            final MutableState mutableState3 = (MutableState) objX;
            final List list7 = list4;
            FlowLayoutKt.a(SizeKt.w(modifier2, null, 3), null, null, null, 4, 0, ComposableLambdaKt.b(-1937083400, new Function3() { // from class: e60
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    long j8;
                    int i8;
                    FlowRowScope flowRowScope = (FlowRowScope) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    flowRowScope.getClass();
                    int i9 = 4;
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(flowRowScope) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                        Dp.Companion companion = Dp.f11004c;
                        int i10 = 0;
                        while (i10 < 8) {
                            IconLauncherType iconLauncherType2 = (IconLauncherType) CollectionsKt.G(i10, IconLauncherType.c());
                            if (iconLauncherType2 == null) {
                                composer2.L(-714880570);
                                composer2.F();
                                i8 = i10;
                            } else {
                                composer2.L(-714880569);
                                MutableState mutableState4 = mutableState3;
                                if (((IconLauncherType) mutableState4.getF10755b()) == iconLauncherType2) {
                                    j8 = j7;
                                } else {
                                    Color.f8866b.getClass();
                                    j8 = Color.f8870h;
                                }
                                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("LVIconsSelector_FU0evQE$lambda$3");
                                Color.f8866b.getClass();
                                Modifier modifierA = BorderKt.a(SizeKt.w(PaddingKt.k(flowRowScope.a(BackgroundKt.b(dTFunctionNameModifier, Color.f8870h, RectangleShapeKt.f8913a), 1.0f, true), Call.Parameters.DEFAULT_CAMERA_ZOOM, 6.0f, 1), null, 3), LVAppDesignKitTheme.d(composer2).f48385c, j8, LVAppDesignKitTheme.j(composer2).d);
                                Function2 function7 = function6;
                                boolean zK = composer2.K(function7);
                                Object objX2 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zK || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new l3(i9, function7);
                                    composer2.q(objX2);
                                }
                                Modifier modifierE2 = ModifierExtKt.e(OnGloballyPositionedModifierKt.a(modifierA, (Function1) objX2), "onboardingCustomIcon_icon_button");
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                int iHashCode = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierE2);
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
                                Modifier modifierO = SizeKt.o(BoxScopeInstance.f4938a.g(PaddingKt.i(new DTFunctionNameModifier("LVIconsSelector_FU0evQE$lambda$3"), LVAppDesignKitTheme.l(composer2).f48414b), Alignment.Companion.f8587f), LVAppDesignKitTheme.d(composer2).A);
                                Function2 function8 = function2;
                                boolean zK2 = composer2.K(function8) | composer2.d(iconLauncherType2.ordinal()) | composer2.d(i10);
                                Object objX3 = composer2.x();
                                if (zK2 || objX3 == composer$Companion$Empty$1) {
                                    int i11 = i10;
                                    qw qwVar = new qw(function8, iconLauncherType2, i11, mutableState4, 1);
                                    i8 = i11;
                                    composer2.q(qwVar);
                                    objX3 = qwVar;
                                } else {
                                    i8 = i10;
                                }
                                Modifier modifierC2 = ModifierExtKt.c(modifierO, false, null, null, (Function0) objX3, 31);
                                List list8 = list7;
                                boolean zY = composer2.y(list8) | composer2.d(i8);
                                Object objX4 = composer2.x();
                                if (zY || objX4 == composer$Companion$Empty$1) {
                                    objX4 = new ze(list8, i8, 5);
                                    composer2.q(objX4);
                                }
                                Modifier modifierA2 = OnGloballyPositionedModifierKt.a(modifierC2, (Function1) objX4);
                                ContentScale.f9447a.getClass();
                                LVImageKt.a(modifierA2, PainterResources_androidKt.a(iconLauncherType2.getIconResource(), composer2, 0), StringResources_androidKt.c(composer2, iconLauncherType2.getContentDescription()), 1.0f, ContentScale.Companion.f9450c, composer2, 27712, 0);
                                composer2.r();
                                composer2.F();
                            }
                            i10 = i8 + 1;
                            i9 = 4;
                        }
                        OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 1597440, 46);
            function5 = function6;
            j3 = j7;
            list3 = list7;
        } else {
            gapComposerH.D();
            function5 = function4;
            list3 = list2;
            j3 = j4;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qm(modifier2, function2, j3, iconLauncherType, list3, function5, i2, i3);
        }
    }
}
