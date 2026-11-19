package com.vuitton.android.presentation.screen.filter.quickaccess.components;

import android.content.Context;
import android.content.res.Resources;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.compose.components.LVTagFilterKt;
import com.vuitton.android.presentation.compose.components.TagFilterType;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterDataTypeUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterValueUiModel;
import defpackage.cj;
import defpackage.eb;
import defpackage.kw0;
import defpackage.n00;
import defpackage.pq0;
import defpackage.xo0;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "currentFilterId", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SimpleFilterLineKt {
    public static final void a(String str, ProductFilterDataTypeUiModel.Simple simple, final boolean z, Function1 function1, boolean z2, Function0 function0, Composer composer, int i2) {
        int i3;
        TagFilterType tagFilterType;
        Object obj;
        final Function1 function2;
        boolean z3;
        ProductFilterDataTypeUiModel.Simple simple2 = simple;
        str.getClass();
        simple2.getClass();
        function1.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1826124242);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(simple2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.b(z2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ScrollState scrollStateB = ScrollKt.b(gapComposerH);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(str);
                gapComposerH.q(objX2);
            }
            MutableState mutableState = (MutableState) objX2;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            boolean zK = ((i3 & 14) == 4) | gapComposerH.K(scrollStateB);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                objX3 = new SimpleFilterLineKt$SimpleFilterLine$1$1(str, scrollStateB, mutableState, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, simple2, (Function2) objX3);
            Boolean boolValueOf = Boolean.valueOf(z2);
            boolean zK2 = ((57344 & i3) == 16384) | gapComposerH.K(scrollStateB) | ((458752 & i3) == 131072);
            Object objX4 = gapComposerH.x();
            if (zK2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new SimpleFilterLineKt$SimpleFilterLine$2$1(z2, scrollStateB, function0, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX4);
            float f2 = 1.0f;
            Modifier modifierC = ModifierExtKt.c(SizeKt.d(new DTFunctionNameModifier("SimpleFilterLine"), 1.0f), new Dp(LVAppDesignKitTheme.d(gapComposerH).d), new Dp(LVAppDesignKitTheme.d(gapComposerH).m), null, null, new Dp(LVAppDesignKitTheme.d(gapComposerH).m), new Dp(LVAppDesignKitTheme.d(gapComposerH).d), null, null, false, 460);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Function2 function4 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function4);
            Function2 function5 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function6 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function6);
            Function1 function7 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function7);
            Function2 function8 = ComposeUiNode.Companion.d;
            Context context2 = context;
            Modifier modifierK = PaddingKt.k(ScrollKt.a(n00.f(gapComposerH, modifierC2, function8, "SimpleFilterLine", "QAF_FiltersItem_view"), scrollStateB, false, 14), LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            boolean zY = gapComposerH.y(simple2);
            Object objX5 = gapComposerH.x();
            if (zY || objX5 == composer$Companion$Empty$1) {
                objX5 = new xo0(simple2, 20);
                gapComposerH.q(objX5);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierK, false, (Function1) objX5);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4921e, Alignment.Companion.f8591k, gapComposerH, 6);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
            cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
            Updater.c(gapComposerH, modifierC3, function8);
            gapComposerH.L(-393964115);
            Iterator it = simple2.f62961a.iterator();
            final int i4 = 0;
            while (it.hasNext()) {
                Object next = it.next();
                int i5 = i4 + 1;
                if (i4 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                final ProductFilterValueUiModel productFilterValueUiModel = (ProductFilterValueUiModel) next;
                Object objX6 = gapComposerH.x();
                if (objX6 == composer$Companion$Empty$1) {
                    objX6 = AnimatableKt.a(f2);
                    gapComposerH.q(objX6);
                }
                final Animatable animatable = (Animatable) objX6;
                final float f3 = LVAppDesignKitTheme.h(gapComposerH).f48404e;
                String str2 = productFilterValueUiModel.f62966b;
                LVColorScheme lVColorScheme = LVColorScheme.INVERT;
                if (productFilterValueUiModel.f62968e) {
                    tagFilterType = TagFilterType.ACTIVE_DELETABLE;
                } else {
                    tagFilterType = productFilterValueUiModel.f62969f ? TagFilterType.ENABLED : TagFilterType.DISABLED;
                }
                TagFilterType tagFilterType2 = tagFilterType;
                boolean z4 = simple2.f62962b;
                AssetImageUiModel assetImageUiModel = productFilterValueUiModel.f62967c;
                String str3 = assetImageUiModel != null ? assetImageUiModel.f51778b : null;
                if (str3 == null) {
                    str3 = "";
                }
                String str4 = str3;
                Iterator it2 = it;
                Modifier modifierK2 = PaddingKt.k(new DTFunctionNameModifier("SimpleFilterLine"), LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                boolean zC = gapComposerH.c(f3) | gapComposerH.y(coroutineScope) | gapComposerH.y(animatable);
                Object objX7 = gapComposerH.x();
                if (zC || objX7 == composer$Companion$Empty$1) {
                    objX7 = new Function1() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.f
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj2;
                            layoutCoordinates.getClass();
                            float fA = (int) (layoutCoordinates.a() >> 32);
                            float fIntBitsToFloat = Float.intBitsToFloat((int) (LayoutCoordinatesKt.f(layoutCoordinates) >> 32));
                            float f4 = f3;
                            BuildersKt.c(coroutineScope, null, null, new SimpleFilterLineKt$SimpleFilterLine$3$2$1$1$1$1(animatable, (fA - (fA * f4)) + fIntBitsToFloat, fA, f4, null), 3);
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX7);
                }
                Modifier modifierA = AlphaKt.a(OnGloballyPositionedModifierKt.a(modifierK2, (Function1) objX7), f2 - ((Number) animatable.d()).floatValue());
                final Context context3 = context2;
                int i6 = i3 & 7168;
                boolean zK3 = ((i3 & 896) == 256) | gapComposerH.K(productFilterValueUiModel) | gapComposerH.y(context3) | gapComposerH.d(i4) | (i6 == 2048);
                Object objX8 = gapComposerH.x();
                if (zK3 || objX8 == composer$Companion$Empty$1) {
                    function2 = function1;
                    obj = new Function1() { // from class: jw0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj2;
                            semanticsPropertyReceiver.getClass();
                            boolean z5 = z;
                            ProductFilterValueUiModel productFilterValueUiModel2 = productFilterValueUiModel;
                            Context context4 = context3;
                            if (z5) {
                                Resources resources = context4.getResources();
                                resources.getClass();
                                boolean z6 = productFilterValueUiModel2.f62968e;
                                String string = productFilterValueUiModel2.f62966b;
                                if (z6) {
                                    string = resources.getString(R.string.alt_remove_filter, string);
                                    string.getClass();
                                }
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, string);
                            }
                            SemanticsPropertiesKt.g(semanticsPropertyReceiver, new CollectionItemInfo(i4, 0, 0, 0));
                            if (productFilterValueUiModel2.f62969f) {
                                Role.f10289b.getClass();
                                SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                            } else {
                                String string2 = context4.getString(R.string.alt_disabled);
                                string2.getClass();
                                SemanticsPropertiesKt.r(semanticsPropertyReceiver, string2);
                            }
                            SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new kw0(function2, productFilterValueUiModel2, 1));
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(obj);
                } else {
                    obj = objX8;
                    function2 = function1;
                }
                Modifier modifierA2 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(modifierA, "QAF_Filter_button", (Function1) obj, 2);
                boolean zK4 = (i6 == 2048) | gapComposerH.K(productFilterValueUiModel);
                Object objX9 = gapComposerH.x();
                if (zK4 || objX9 == composer$Companion$Empty$1) {
                    z3 = false;
                    objX9 = new kw0(function2, productFilterValueUiModel, 0);
                    gapComposerH.q(objX9);
                } else {
                    z3 = false;
                }
                GapComposer gapComposer = gapComposerH;
                LVTagFilterKt.a(modifierA2, str2, "QAF_FilterName_text", tagFilterType2, str4, false, lVColorScheme, z4, (Function0) objX9, gapComposer, 1573248, 32);
                simple2 = simple;
                composer$Companion$Empty$1 = composer$Companion$Empty$1;
                coroutineScope = coroutineScope;
                context2 = context3;
                i4 = i5;
                gapComposerH = gapComposer;
                it = it2;
                f2 = 1.0f;
                i3 = i3;
            }
            pq0.x(gapComposerH, false, true, true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new eb(str, simple, z, function1, z2, function0, i2, 5);
        }
    }
}
