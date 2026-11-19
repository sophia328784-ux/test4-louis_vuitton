package com.vuitton.android.presentation.screen.plp.components.composables;

import android.content.Context;
import android.content.res.Configuration;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.components.components.ResizableTextKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVTabsKt;
import com.vuitton.android.presentation.compose.components.ScrollProgressTrackerKt;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.catalog.models.PLPEntryUiModel;
import defpackage.a;
import defpackage.aj0;
import defpackage.cy;
import defpackage.db;
import defpackage.hk0;
import defpackage.ik0;
import defpackage.jk0;
import defpackage.jx;
import defpackage.kj0;
import defpackage.pq0;
import defpackage.qf;
import defpackage.ud;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004¨\u0006\u0006²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\f\u0010\u0004\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"", "selected", "Landroidx/compose/ui/unit/Dp;", "verticalPadding", "imageSize", "borderWidth", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPHeaderKt {
    public static final void a(Modifier modifier, String str, String str2, boolean z, Function0 function0, Composer composer, int i2) {
        float f2;
        float f3;
        boolean z2;
        long j2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "CatalogHeaderItemWithImage");
        }
        GapComposer gapComposerH = composer.h(-390598241);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (z) {
                gapComposerH.L(-1702745818);
                f2 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
            } else {
                gapComposerH.L(-1702744473);
                f2 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
            }
            gapComposerH.Z(false);
            State stateA = AnimateAsStateKt.a(f2, AnimationSpecKt.c(300, 0, null, 6), null, null, gapComposerH, 48, 12);
            State stateA2 = AnimateAsStateKt.a(z ? 88.0f : 72.0f, AnimationSpecKt.c(300, 0, null, 6), "Image size animation", null, gapComposerH, 432, 8);
            if (z) {
                gapComposerH.L(-1702728602);
                f3 = LVAppDesignKitTheme.d(gapComposerH).f48385c;
            } else {
                gapComposerH.L(-1702727322);
                f3 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
            }
            gapComposerH.Z(false);
            State stateA3 = AnimateAsStateKt.a(f3, AnimationSpecKt.c(300, 0, null, 6), "Border width animation", null, gapComposerH, 432, 8);
            Modifier modifierA = ModifierExtKt.a(modifierE, null, null, 7);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.o, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
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
            ContentScale.f9447a.getClass();
            ImageLoaderKt.b(com.vuitton.android.designkit.components.ModifierExtKt.b(com.vuitton.android.designkit.ui.common.ModifierExtKt.c(ClipKt.a(SizeKt.o(PaddingKt.k(new DTFunctionNameModifier("CatalogHeaderItemWithImage"), Call.Parameters.DEFAULT_CAMERA_ZOOM, ((Dp) stateA.getF10755b()).f11006b, 1), ((Dp) stateA2.getF10755b()).f11006b), RoundedCornerShapeKt.f5846a), !z, null, null, function0, 30), z, new hk0(stateA3, 0), gapComposerH, (i3 >> 6) & 112), str2, ContentScale.Companion.f9453h, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
            Modifier modifierU = SizeKt.u(new DTFunctionNameModifier("CatalogHeaderItemWithImage"), Call.Parameters.DEFAULT_CAMERA_ZOOM, 72.0f, 1);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            if (z) {
                gapComposerH.L(77373091);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                z2 = false;
            } else {
                z2 = false;
                gapComposerH.L(77374722);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
            }
            gapComposerH.Z(z2);
            long j3 = j2;
            TextOverflow.f10989a.getClass();
            int i4 = TextOverflow.f10991c;
            TextAlign.f10959b.getClass();
            ResizableTextKt.a(str, modifierU, j3, i4, 2, 0, textStyle, new TextAlign(TextAlign.f10961e), gapComposerH, ((i3 >> 3) & 14) | 27696, 32);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qf(modifierE, str, str2, z, function0, i2, 1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void b(Modifier modifier, List list, String str, Function1 function1, Function2 function2, Composer composer, int i2) {
        List list2;
        GapComposer gapComposer;
        Throwable th;
        boolean z;
        Object cyVar;
        PLPEntryUiModel pLPEntryUiModel;
        boolean z2;
        HapticFeedback hapticFeedback;
        Map map;
        int i3;
        ScrollState scrollState;
        CoroutineScope coroutineScope;
        Function0 function0;
        String str2;
        int iIndexOf;
        Object next;
        String str3;
        Modifier dTFunctionNameModifier = modifier;
        String str4 = "PLPHeader";
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "PLPHeader");
        }
        list.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(90552457);
        int i4 = i2 | 6 | (gapComposerH.y(list) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128) | 3072 | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536);
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            dTFunctionNameModifier = new DTFunctionNameModifier("PLPHeader");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            HapticFeedback hapticFeedback2 = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            LayoutDirection layoutDirection = (LayoutDirection) gapComposerH.k(CompositionLocalsKt.n);
            ScrollState scrollStateB = ScrollKt.b(gapComposerH);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            CoroutineScope coroutineScope2 = (CoroutineScope) objX;
            boolean zY = gapComposerH.y(list);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new db(list, 7);
                gapComposerH.q(objX2);
            }
            PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX2, gapComposerH, 0, 3);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                if (str != null) {
                    Iterator it = list.iterator();
                    do {
                        if (!it.hasNext()) {
                            th = null;
                            next = null;
                            break;
                        } else {
                            next = it.next();
                            th = null;
                            str3 = ((PLPEntryUiModel) next).f55373b;
                        }
                    } while (!Intrinsics.c(str3, str3));
                    iIndexOf = list.indexOf(next);
                } else {
                    th = null;
                    iIndexOf = 0;
                }
                objX3 = SnapshotIntStateKt.a(iIndexOf);
                gapComposerH.q(objX3);
            } else {
                th = null;
            }
            MutableIntState mutableIntState = (MutableIntState) objX3;
            boolean zK = gapComposerH.K(list);
            Object objX4 = gapComposerH.x();
            if (zK || objX4 == composer$Companion$Empty$1) {
                if (list.isEmpty()) {
                    z = false;
                } else {
                    List list3 = list;
                    if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                        Iterator it2 = list3.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                if (((PLPEntryUiModel) it2.next()).d == null) {
                                    z = false;
                                }
                            }
                        }
                    }
                    z = true;
                }
                objX4 = Boolean.valueOf(z);
                gapComposerH.q(objX4);
            }
            boolean zBooleanValue = ((Boolean) objX4).booleanValue();
            ScrollProgressTrackerKt.b(scrollStateB, function1, gapComposerH, (i4 >> 9) & 112);
            if (zBooleanValue) {
                gapComposerH.L(409926486);
                boolean zK2 = gapComposerH.K(list);
                Object objX5 = gapComposerH.x();
                if (zK2 || objX5 == composer$Companion$Empty$1) {
                    objX5 = new LinkedHashMap();
                    gapComposerH.q(objX5);
                }
                Map map2 = (Map) objX5;
                float f2 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp;
                Dp.Companion companion = Dp.f11004c;
                int iB = (int) ResourcesExtKt.b(f2 - LVAppDesignKitTheme.l(gapComposerH).g);
                int i5 = i4;
                Modifier modifierI = PaddingKt.i(ScrollKt.a(com.vuitton.android.designkit.components.ModifierExtKt.b(SizeKt.d(dTFunctionNameModifier, 1.0f), false, new aj0(8), gapComposerH, 0), scrollStateB, false, 14), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                boolean zY2 = gapComposerH.y(list);
                Object objX6 = gapComposerH.x();
                if (zY2 || objX6 == composer$Companion$Empty$1) {
                    objX6 = new ud(list, 14);
                    gapComposerH.q(objX6);
                }
                Modifier modifierB = SemanticsModifierKt.b(modifierI, false, (Function1) objX6);
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48417f);
                Alignment.f8582a.getClass();
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.f8591k, gapComposerH, 0);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int i6 = iB;
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
                ComposeUiNode.b0.getClass();
                Function0 function3 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a == null) {
                    ComposablesKt.b();
                    throw th;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function3);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                gapComposerH.L(-1569917145);
                Iterator it3 = list.iterator();
                int i7 = 0;
                while (it3.hasNext()) {
                    Object next2 = it3.next();
                    int i8 = i7 + 1;
                    if (i7 < 0) {
                        CollectionsKt.t0();
                        throw th;
                    }
                    PLPEntryUiModel pLPEntryUiModel2 = (PLPEntryUiModel) next2;
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier(str4);
                    Iterator it4 = it3;
                    boolean zD = gapComposerH.d(layoutDirection.ordinal()) | gapComposerH.y(map2) | gapComposerH.K(pLPEntryUiModel2);
                    Object objX7 = gapComposerH.x();
                    if (zD || objX7 == composer$Companion$Empty$1) {
                        objX7 = new ik0(layoutDirection, map2, pLPEntryUiModel2, 0);
                        gapComposerH.q(objX7);
                    }
                    Modifier modifierA = OnGloballyPositionedModifierKt.a(dTFunctionNameModifier2, (Function1) objX7);
                    int i9 = i6;
                    boolean zY3 = gapComposerH.y(hapticFeedback2) | ((i5 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | gapComposerH.K(pLPEntryUiModel2) | gapComposerH.y(map2) | gapComposerH.d(i9) | gapComposerH.K(scrollStateB) | gapComposerH.y(coroutineScope2);
                    Object objX8 = gapComposerH.x();
                    if (zY3 || objX8 == composer$Companion$Empty$1) {
                        ScrollState scrollState2 = scrollStateB;
                        CoroutineScope coroutineScope3 = coroutineScope2;
                        Map map3 = map2;
                        HapticFeedback hapticFeedback3 = hapticFeedback2;
                        pLPEntryUiModel = pLPEntryUiModel2;
                        z2 = false;
                        cyVar = new cy(hapticFeedback3, function2, pLPEntryUiModel, map3, i9, scrollState2, coroutineScope3);
                        hapticFeedback = hapticFeedback3;
                        map = map3;
                        i3 = i9;
                        scrollState = scrollState2;
                        coroutineScope = coroutineScope3;
                        gapComposerH.q(cyVar);
                    } else {
                        cyVar = objX8;
                        i3 = i9;
                        hapticFeedback = hapticFeedback2;
                        coroutineScope = coroutineScope2;
                        map = map2;
                        scrollState = scrollStateB;
                        pLPEntryUiModel = pLPEntryUiModel2;
                        z2 = false;
                    }
                    Function0 function4 = (Function0) cyVar;
                    boolean zK3 = gapComposerH.K(pLPEntryUiModel) | ((i5 & 896) == 256 ? true : z2) | gapComposerH.y(context) | gapComposerH.d(i7) | gapComposerH.K(function4);
                    Object objX9 = gapComposerH.x();
                    if (zK3 || objX9 == composer$Companion$Empty$1) {
                        PLPEntryUiModel pLPEntryUiModel3 = pLPEntryUiModel;
                        function0 = function4;
                        jk0 jk0Var = new jk0(pLPEntryUiModel3, str, context, i7, function0, 0);
                        pLPEntryUiModel = pLPEntryUiModel3;
                        str2 = str;
                        gapComposerH.q(jk0Var);
                        objX9 = jk0Var;
                    } else {
                        str2 = str;
                        function0 = function4;
                    }
                    Modifier modifierB2 = SemanticsModifierKt.b(modifierA, true, (Function1) objX9);
                    String str5 = pLPEntryUiModel.f55374c;
                    AssetImageUiModel assetImageUiModel = pLPEntryUiModel.d;
                    Object obj = assetImageUiModel != null ? assetImageUiModel.f51778b : th;
                    if (obj == null) {
                        obj = "";
                    }
                    a(modifierB2, str5, obj, Intrinsics.c(pLPEntryUiModel.f55373b, str2), function0, gapComposerH, 0);
                    context = context;
                    str4 = str4;
                    it3 = it4;
                    layoutDirection = layoutDirection;
                    i7 = i8;
                    hapticFeedback2 = hapticFeedback;
                    scrollStateB = scrollState;
                    coroutineScope2 = coroutineScope;
                    map2 = map;
                    i6 = i3;
                    i5 = i5;
                }
                gapComposer = gapComposerH;
                pq0.x(gapComposer, false, true, false);
                list2 = list;
            } else {
                gapComposer = gapComposerH;
                gapComposer.L(413498089);
                Modifier modifierD = SizeKt.d(dTFunctionNameModifier, 1.0f);
                float f3 = LVAppDesignKitTheme.l(gapComposer).f48415c;
                float f4 = LVAppDesignKitTheme.l(gapComposer).f48416e;
                List list4 = list;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list4, 10));
                Iterator it5 = list4.iterator();
                while (it5.hasNext()) {
                    arrayList.add(((PLPEntryUiModel) it5.next()).f55374c);
                }
                int iF = mutableIntState.f();
                list2 = list;
                boolean zY4 = gapComposer.y(list2) | ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
                Object objX10 = gapComposer.x();
                if (zY4 || objX10 == composer$Companion$Empty$1) {
                    objX10 = new jx(list2, function2, mutableIntState, 28);
                    gapComposer.q(objX10);
                }
                LVTabsKt.a(modifierD, f3, f4, iF, arrayList, pagerStateB, (Function1) objX10, gapComposer, 0, 0);
                gapComposer.Z(false);
            }
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        } else {
            list2 = list;
            str = str;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj0(dTFunctionNameModifier, list2, str, function1, function2, i2);
        }
    }
}
