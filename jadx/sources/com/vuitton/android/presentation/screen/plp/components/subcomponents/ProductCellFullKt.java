package com.vuitton.android.presentation.screen.plp.components.subcomponents;

import android.content.Context;
import android.content.res.Resources;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.LVPagerLineIndicatorKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.helper.PluralStringResourceHelperKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderExtKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.ScaleUiModel;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.ProductCellFullKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.ai0;
import defpackage.aj0;
import defpackage.bo0;
import defpackage.cj;
import defpackage.ee0;
import defpackage.k3;
import defpackage.n00;
import defpackage.nj0;
import defpackage.o60;
import defpackage.od;
import defpackage.ok0;
import defpackage.qe;
import defpackage.s8;
import defpackage.tr;
import defpackage.up0;
import defpackage.wr;
import defpackage.xp0;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductCellFullKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f62848a;

        static {
            int[] iArr = new int[ScaleUiModel.values().length];
            try {
                iArr[ScaleUiModel.FIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ScaleUiModel.FILL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f62848a = iArr;
        }
    }

    public static final void a(Modifier modifier, Composer composer, int i2) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "ArBadge");
        }
        Modifier modifier2 = modifier;
        GapComposer gapComposerH = composer.h(-108832210);
        int i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(ClipKt.a(PaddingKt.m(modifier2, LVAppDesignKitTheme.l(gapComposerH).d, LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.j(gapComposerH).f48411c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48414b);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).B0, gapComposerH, 0), StringResources_androidKt.c(gapComposerH, R.string.product_try_on_watch_label), ModifierExtKt.e(SizeKt.o(modifier2, LVAppDesignKitTheme.d(gapComposerH).m), "plp_arVTO_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 8, 0);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qe(modifier2, i2, 18);
        }
    }

    public static final void b(int i2, Composer composer, List list) {
        GapComposer gapComposer;
        int i3;
        list.getClass();
        GapComposer gapComposerH = composer.h(911832424);
        int i4 = (gapComposerH.y(list) ? 4 : 2) | i2;
        boolean z = true;
        boolean z2 = false;
        if (gapComposerH.p(i4 & 1, (i4 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
            String str = "CommercialTags";
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CommercialTags");
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            Function1 function1 = null;
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
            gapComposerH.L(-574455913);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                Modifier modifierA = com.vuitton.android.presentation.extensions.ModifierExtKt.a(new DTFunctionNameModifier(str), "plp_commercialTag_view", function1, 6);
                String upperCase = str2.toUpperCase(Locale.ROOT);
                upperCase.getClass();
                GapComposer gapComposer2 = gapComposerH;
                TextKt.c(upperCase, modifierA, LVAppDesignKitTheme.c(gapComposerH).f48361b.v, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposer2, 0, 0, 131064);
                z2 = z2;
                gapComposerH = gapComposer2;
                function1 = function1;
                str = str;
                z = true;
            }
            gapComposer = gapComposerH;
            gapComposer.Z(z2);
            i3 = 1;
            gapComposer.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposer = gapComposerH;
            i3 = 1;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ai0(list, i2, i3);
        }
    }

    public static final void c(Modifier modifier, List list, PagerState pagerState, UrlFactory urlFactory, boolean z, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ImageSlider");
        }
        list.getClass();
        GapComposer gapComposerH = composer.h(-274445419);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(list) ? 32 : 16) | (gapComposerH.K(pagerState) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ImageSlider");
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            int i4 = (i3 >> 6) & 14;
            PagerKt.a(pagerState, com.vuitton.android.presentation.extensions.ModifierExtKt.a(AspectRatioKt.a(modifierE, 0.8f, false), null, null, 7), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, false, false, null, null, null, ComposableLambdaKt.b(207387228, new s8(context, list, urlFactory, 8), gapComposerH), gapComposerH, i4, 24576, 16380);
            gapComposerH = gapComposerH;
            if (!z || list.size() <= 1) {
                gapComposerH.L(-723273785);
                gapComposerH.Z(false);
            } else {
                LVPagerLineIndicatorKt.a(pagerState, list.size(), BoxScopeInstance.f4938a.g(n00.i(gapComposerH, -723460529, "ImageSlider"), Alignment.Companion.f8589i), 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposerH, i4, 56);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new od(modifierE, list, pagerState, urlFactory, z, i2);
        }
    }

    public static final void d(Modifier modifier, Composer composer, int i2) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "PersonalizationBadge");
        }
        Modifier modifier2 = modifier;
        GapComposer gapComposerH = composer.h(-737725691);
        int i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(ClipKt.a(PaddingKt.m(modifier2, LVAppDesignKitTheme.l(gapComposerH).d, LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.j(gapComposerH).f48411c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48414b);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).o0, gapComposerH, 0), null, SizeKt.o(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "PersonalizationBadge"), LVAppDesignKitTheme.d(gapComposerH).m), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 56, 0);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qe(modifier2, i2, 17);
        }
    }

    /* JADX WARN: Code duplicated, block: B:114:0x019d  */
    /* JADX WARN: Code duplicated, block: B:120:0x01be  */
    /* JADX WARN: Code duplicated, block: B:123:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:129:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:132:0x020a  */
    /* JADX WARN: Code duplicated, block: B:133:0x020c  */
    /* JADX WARN: Code duplicated, block: B:136:0x0223  */
    /* JADX WARN: Code duplicated, block: B:137:0x0225  */
    /* JADX WARN: Code duplicated, block: B:140:0x0235  */
    /* JADX WARN: Code duplicated, block: B:141:0x0237  */
    /* JADX WARN: Code duplicated, block: B:147:0x0254  */
    /* JADX WARN: Code duplicated, block: B:150:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:152:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:153:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:157:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:160:0x032c  */
    /* JADX WARN: Code duplicated, block: B:162:0x0335  */
    /* JADX WARN: Code duplicated, block: B:163:0x0339  */
    /* JADX WARN: Code duplicated, block: B:166:0x0360  */
    /* JADX WARN: Code duplicated, block: B:168:0x0367  */
    /* JADX WARN: Code duplicated, block: B:169:0x036b  */
    /* JADX WARN: Code duplicated, block: B:172:0x03ed  */
    /* JADX WARN: Code duplicated, block: B:174:0x03f4  */
    /* JADX WARN: Code duplicated, block: B:176:0x03fa  */
    /* JADX WARN: Code duplicated, block: B:179:0x042f  */
    /* JADX WARN: Code duplicated, block: B:181:0x0438  */
    /* JADX WARN: Code duplicated, block: B:182:0x043c  */
    /* JADX WARN: Code duplicated, block: B:185:0x04a9  */
    /* JADX WARN: Code duplicated, block: B:186:0x04cc  */
    /* JADX WARN: Code duplicated, block: B:188:0x0503  */
    /* JADX WARN: Code duplicated, block: B:190:0x0508  */
    /* JADX WARN: Code duplicated, block: B:195:0x0519  */
    /* JADX WARN: Code duplicated, block: B:199:0x057b  */
    /* JADX WARN: Code duplicated, block: B:201:0x0582  */
    /* JADX WARN: Code duplicated, block: B:203:0x0588  */
    /* JADX WARN: Code duplicated, block: B:206:0x05a6  */
    /* JADX WARN: Code duplicated, block: B:207:0x05b4  */
    /* JADX WARN: Code duplicated, block: B:209:0x05db  */
    /* JADX WARN: Code duplicated, block: B:211:0x05ed  */
    /* JADX WARN: Code duplicated, block: B:214:0x05fa  */
    /* JADX WARN: Code duplicated, block: B:215:0x065f  */
    /* JADX WARN: Code duplicated, block: B:218:0x0678  */
    /* JADX WARN: Code duplicated, block: B:219:0x0687  */
    /* JADX WARN: Code duplicated, block: B:222:0x069e  */
    /* JADX WARN: Code duplicated, block: B:223:0x06b5  */
    /* JADX WARN: Code duplicated, block: B:225:0x06ba  */
    /* JADX WARN: Code duplicated, block: B:226:0x06d0  */
    /* JADX WARN: Code duplicated, block: B:228:0x06d4  */
    /* JADX WARN: Code duplicated, block: B:229:0x06ea  */
    /* JADX WARN: Code duplicated, block: B:231:0x06fd  */
    /* JADX WARN: Code duplicated, block: B:233:0x0702  */
    /* JADX WARN: Code duplicated, block: B:235:0x0707  */
    /* JADX WARN: Code duplicated, block: B:237:0x070c  */
    /* JADX WARN: Code duplicated, block: B:239:0x0711  */
    /* JADX WARN: Code duplicated, block: B:241:0x0716  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r6v35 */
    /* JADX WARN: Type inference failed for: r6v36, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v40 */
    public static final void e(Modifier modifier, final PlpProductUiModel plpProductUiModel, int i2, int i3, final Function0 function0, final Function1 function1, final Function1 function2, Function2 function3, Composer composer, final int i4, final int i5) {
        int i6;
        int i7;
        int i8;
        final Function2 function4;
        final int i9;
        final int i10;
        final Modifier modifier2;
        GapComposer gapComposer;
        Modifier modifier3;
        int i11;
        int i12;
        int i13;
        Function2 function5;
        PlpProductUiModel.SkuDataUiModel skuDataUiModel;
        Context context;
        final HapticFeedback hapticFeedback;
        boolean zK;
        final Function2 function6;
        Object objX;
        String str;
        boolean zY;
        Object objX2;
        int i14;
        int i15;
        PagerState pagerStateB;
        Object objX3;
        UrlFactory urlFactory;
        AssetUiModel assetUiModel;
        String str2;
        int i16;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        Object objX4;
        final PagerState pagerState;
        Function2 function7;
        BiasAlignment biasAlignment;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Modifier modifier4;
        Function0 function8;
        Function2 function9;
        Function2 function10;
        Function2 function11;
        Function1 function12;
        Function2 function13;
        boolean zK2;
        PagerState pagerState2;
        Object objX5;
        BiasAlignment.Horizontal horizontal;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        MeasurePolicy measurePolicyD2;
        int iHashCode3;
        PersistentCompositionLocalMap persistentCompositionLocalMapU3;
        Modifier modifierC3;
        ColumnMeasurePolicy columnMeasurePolicyA2;
        int iHashCode4;
        PersistentCompositionLocalMap persistentCompositionLocalMapU4;
        Modifier modifierC4;
        BiasAlignment.Vertical vertical;
        Arrangement$Start$1 arrangement$Start$1;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode5;
        PersistentCompositionLocalMap persistentCompositionLocalMapU5;
        Modifier modifierC5;
        RowScopeInstance rowScopeInstance;
        MutableState mutableState;
        boolean z5;
        boolean zY2;
        Object objX6;
        Function2 function14;
        PlpProductUiModel.SkuDataUiModel skuDataUiModel2;
        Function0 function15;
        ?? r10;
        float f2;
        int i17;
        int i18;
        RowMeasurePolicy rowMeasurePolicyA2;
        int iHashCode6;
        PersistentCompositionLocalMap persistentCompositionLocalMapU6;
        Modifier modifierC6;
        PlpProductUiModel.PriceInfoUiModel priceInfoUiModelB;
        boolean z6;
        RowScopeInstance rowScopeInstance2;
        GapComposer gapComposer2;
        Unit unit;
        RowScopeInstance rowScopeInstance3;
        GapComposer gapComposer3;
        ?? r6;
        PlpProductUiModel.SkuDataUiModel skuDataUiModel3;
        boolean z7;
        BoxScopeInstance boxScopeInstance;
        AssetImageUiModel assetImageUiModel;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ProductCellFull");
        }
        plpProductUiModel.getClass();
        List list = plpProductUiModel.f62937e;
        List list2 = plpProductUiModel.f62936c;
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-916832120);
        Applier applier = gapComposerH.f7976a;
        int i19 = i5 & 1;
        if (i19 != 0) {
            i6 = i4 | 6;
        } else if ((i4 & 6) == 0) {
            i6 = (gapComposerH.K(modifierE) ? 4 : 2) | i4;
        } else {
            i6 = i4;
        }
        if ((i4 & 48) == 0) {
            i6 |= gapComposerH.y(plpProductUiModel) ? 32 : 16;
        }
        if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
            if ((i5 & 4) == 0) {
                i7 = i2;
                int i20 = gapComposerH.d(i7) ? 256 : 128;
                i6 |= i20;
            } else {
                i7 = i2;
            }
            i6 |= i20;
        } else {
            i7 = i2;
        }
        if ((i4 & 3072) == 0) {
            if ((i5 & 8) == 0) {
                i8 = i3;
                int i21 = gapComposerH.d(i8) ? 2048 : 1024;
                i6 |= i21;
            } else {
                i8 = i3;
            }
            i6 |= i21;
        } else {
            i8 = i3;
        }
        if ((i4 & 24576) == 0) {
            i6 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
            i6 |= gapComposerH.y(function1) ? 131072 : 65536;
        }
        if ((i4 & 1572864) == 0) {
            i6 |= gapComposerH.y(function2) ? 1048576 : 524288;
        }
        int i22 = i5 & 128;
        Modifier modifier5 = modifierE;
        if (i22 != 0) {
            i6 |= 12582912;
        } else if ((i4 & 12582912) == 0) {
            i6 |= gapComposerH.y(function3) ? 8388608 : 4194304;
        }
        if (gapComposerH.p(i6 & 1, (i6 & 4793491) != 4793490)) {
            gapComposerH.y0();
            int i23 = i4 & 1;
            Object obj = Composer.Companion.f7939a;
            if (i23 == 0 || gapComposerH.h0()) {
                Modifier dTFunctionNameModifier = i19 != 0 ? new DTFunctionNameModifier("ProductCellFull") : modifier5;
                if ((i5 & 4) != 0) {
                    i7 = LVAppDesignKitTheme.g(gapComposerH).U;
                    i6 &= -897;
                }
                if ((i5 & 8) != 0) {
                    i8 = LVAppDesignKitTheme.g(gapComposerH).V;
                    i6 &= -7169;
                }
                if (i22 != 0) {
                    Object objX7 = gapComposerH.x();
                    if (objX7 == obj) {
                        objX7 = new aj0(27);
                        gapComposerH.q(objX7);
                    }
                    Function2 function16 = (Function2) objX7;
                    i11 = i6;
                    i12 = i7;
                    i13 = i8;
                    function5 = function16;
                    modifier3 = dTFunctionNameModifier;
                } else {
                    modifier3 = dTFunctionNameModifier;
                    i11 = i6;
                    i12 = i7;
                    i13 = i8;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                skuDataUiModel = (PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b();
                context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
                hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
                zK = gapComposerH.K(skuDataUiModel);
                function6 = function5;
                objX = gapComposerH.x();
                if (zK || objX == obj) {
                    Resources resources = context.getResources();
                    resources.getClass();
                    objX = plpProductUiModel.a(resources);
                    gapComposerH.q(objX);
                }
                str = (String) objX;
                zY = gapComposerH.y(skuDataUiModel);
                objX2 = gapComposerH.x();
                if (!zY || objX2 == obj) {
                    i14 = 0;
                    objX2 = new up0(skuDataUiModel, 0);
                    gapComposerH.q(objX2);
                } else {
                    i14 = 0;
                }
                i15 = i12;
                pagerStateB = PagerStateKt.b(i14, (Function0) objX2, gapComposerH, i14, 3);
                objX3 = gapComposerH.x();
                if (objX3 == obj) {
                    objX3 = new UrlFactory(ContextExtKt.f(context));
                    gapComposerH.q(objX3);
                }
                urlFactory = (UrlFactory) objX3;
                assetUiModel = (AssetUiModel) CollectionsKt.G(pagerStateB.k(), skuDataUiModel.f62947f);
                if (assetUiModel != null || (assetImageUiModel = assetUiModel.f51780b) == null) {
                    str2 = null;
                } else {
                    str2 = assetImageUiModel.f51778b;
                }
                ImageLoaderExtKt.a(context, str2, urlFactory, gapComposerH, KyberEngine.KyberPolyBytes);
                i16 = i11 & ImageMetadata.JPEG_GPS_COORDINATES;
                if (i16 == 131072) {
                    z = true;
                } else {
                    z = false;
                }
                boolean zY3 = z | gapComposerH.y(plpProductUiModel) | gapComposerH.y(hapticFeedback);
                if ((i11 & 29360128) == 8388608) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                boolean zK3 = z2 | zY3 | gapComposerH.K(pagerStateB);
                if ((i11 & 57344) == 16384) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                z4 = zK3 | z3;
                objX4 = gapComposerH.x();
                if (!z4 || objX4 == obj) {
                    pagerState = pagerStateB;
                    Object obj2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.plp.components.subcomponents.ProductCellFullKt$ProductCellFull$2$1
                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                            Function1 function17 = function1;
                            PlpProductUiModel plpProductUiModel2 = plpProductUiModel;
                            Object objE = TapGestureDetectorKt.e(pointerInputScope, new xp0(function17, plpProductUiModel2, 0), new k3(hapticFeedback, function6, plpProductUiModel2, pagerState, 29), null, new bo0(function0, 1), continuation, 4);
                            return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                        }
                    };
                    function7 = function6;
                    gapComposerH.q(obj2);
                    objX4 = obj2;
                } else {
                    function7 = function6;
                    pagerState = pagerStateB;
                }
                Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(SuspendingPointerInputFilterKt.a(modifier3, plpProductUiModel, (PointerInputEventHandler) objX4), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, 7), "plp_productCard_view");
                Alignment.f8582a.getClass();
                biasAlignment = Alignment.Companion.f8584b;
                measurePolicyD = BoxKt.d(biasAlignment, false);
                iHashCode = Long.hashCode(gapComposerH.getT());
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierE2);
                ComposeUiNode.b0.getClass();
                modifier4 = modifier3;
                function8 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function8);
                } else {
                    gapComposerH.o();
                }
                function9 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, measurePolicyD, function9);
                function10 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function10);
                Integer numValueOf = Integer.valueOf(iHashCode);
                function11 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function11);
                function12 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function12);
                function13 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function13);
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("ProductCellFull");
                zK2 = gapComposerH.K(r56);
                pagerState2 = pagerState;
                objX5 = gapComposerH.x();
                if (zK2 || objX5 == obj) {
                    objX5 = new nj0(str, 11);
                    gapComposerH.q(objX5);
                }
                Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier2, true, (Function1) objX5);
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                horizontal = Alignment.Companion.n;
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                iHashCode2 = Long.hashCode(gapComposerH.getT());
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function8);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, function9);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function10);
                cj.t(iHashCode2, gapComposerH, function11, gapComposerH, function12);
                DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC2, function13, "ProductCellFull");
                measurePolicyD2 = BoxKt.d(biasAlignment, false);
                iHashCode3 = Long.hashCode(gapComposerH.getT());
                persistentCompositionLocalMapU3 = gapComposerH.U();
                modifierC3 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifierE);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function8);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD2, function9);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function10);
                cj.t(iHashCode3, gapComposerH, function11, gapComposerH, function12);
                c(BackgroundKt.b(tr.e(gapComposerH, modifierC3, function13, "ProductCellFull"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48377e, RectangleShapeKt.f8913a), r16.f62947f, pagerState2, urlFactory, true, gapComposerH, 27648);
                gapComposerH.Z(true);
                Modifier modifierM = PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).d, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c), horizontal, gapComposerH, 0);
                iHashCode4 = Long.hashCode(gapComposerH.getT());
                persistentCompositionLocalMapU4 = gapComposerH.U();
                modifierC4 = ComposedModifierKt.c(gapComposerH, modifierM);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function8);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA2, function9);
                Updater.c(gapComposerH, persistentCompositionLocalMapU4, function10);
                cj.t(iHashCode4, gapComposerH, function11, gapComposerH, function12);
                Modifier modifierE3 = n00.e(gapComposerH, modifierC4, function13, "ProductCellFull", 1.0f);
                vertical = Alignment.Companion.l;
                arrangement$Start$1 = Arrangement.f4918a;
                rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 48);
                iHashCode5 = Long.hashCode(gapComposerH.getT());
                persistentCompositionLocalMapU5 = gapComposerH.U();
                modifierC5 = ComposedModifierKt.c(gapComposerH, modifierE3);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function8);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, function9);
                Updater.c(gapComposerH, persistentCompositionLocalMapU5, function10);
                cj.t(iHashCode5, gapComposerH, function11, gapComposerH, function12);
                Updater.c(gapComposerH, modifierC5, function13);
                Modifier modifierD = SizeKt.d(new DTFunctionNameModifier("ProductCellFull"), 1.0f);
                rowScopeInstance = RowScopeInstance.f5040a;
                Modifier modifierA = com.vuitton.android.presentation.extensions.ModifierExtKt.a(rowScopeInstance.a(modifierD, 1.0f, true), "plp_productName_text", null, 6);
                String str3 = r16.d;
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                TextOverflow.f10989a.getClass();
                TextKt.c(str3, modifierA, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 3, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
                mutableState = r16.f62948h;
                if (mutableState == null) {
                    gapComposerH.L(-1606681288);
                    gapComposerH.Z(false);
                    function15 = function8;
                    function14 = function13;
                    skuDataUiModel2 = skuDataUiModel;
                    i18 = i13;
                    r10 = 1;
                    f2 = 1.0f;
                    i17 = i15;
                } else {
                    Modifier modifierE4 = ModifierExtKt.e(SizeKt.o(PaddingKt.m(n00.i(gapComposerH, -1606681287, "ProductCellFull"), LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposerH).m), "plp_wishlist_button");
                    PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel pLPWishlistStateUiModel = (PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) mutableState.getF10755b();
                    if (i16 == 131072) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    zY2 = z5 | gapComposerH.y(plpProductUiModel);
                    objX6 = gapComposerH.x();
                    if (zY2 || objX6 == obj) {
                        objX6 = new ok0(function1, plpProductUiModel, 5);
                        gapComposerH.q(objX6);
                    }
                    int i24 = i11 << 3;
                    function14 = function13;
                    skuDataUiModel2 = r16;
                    function15 = function8;
                    r10 = 1;
                    f2 = 1.0f;
                    int i25 = i13;
                    WishlistAnimationKt.b(modifierE4, plpProductUiModel, pLPWishlistStateUiModel, i15, i25, (Function0) objX6, function2, gapComposerH, (i24 & 7168) | (i11 & 112) | (i24 & 57344) | (i11 & 3670016), 0);
                    i17 = i15;
                    i18 = i25;
                    gapComposerH.Z(false);
                }
                Modifier modifierD2 = o60.d(gapComposerH, r10, "ProductCellFull", f2);
                rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 48);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                iHashCode6 = Long.hashCode(gapComposerH.getT());
                persistentCompositionLocalMapU6 = gapComposerH.U();
                modifierC6 = ComposedModifierKt.c(gapComposerH, modifierD2);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function15);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA2, function9);
                Updater.c(gapComposerH, persistentCompositionLocalMapU6, function10);
                cj.t(iHashCode6, gapComposerH, function11, gapComposerH, function12);
                Updater.c(gapComposerH, modifierC6, function14);
                priceInfoUiModelB = plpProductUiModel.b();
                if (priceInfoUiModelB == null) {
                    gapComposerH.L(924241388);
                    z6 = false;
                    gapComposerH.Z(false);
                    unit = null;
                    rowScopeInstance3 = rowScopeInstance;
                } else {
                    z6 = false;
                    rowScopeInstance2 = rowScopeInstance;
                    f(rowScopeInstance2.a(n00.i(gapComposerH, 924241389, "ProductCellFull"), f2, r10), priceInfoUiModelB, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 0, 0);
                    gapComposer2.Z(false);
                    unit = Unit.f71739a;
                }
                if (unit == null) {
                    gapComposer2 = gapComposerH;
                    gapComposer3 = gapComposer2;
                    rowScopeInstance3 = rowScopeInstance2;
                    gapComposer3 = gapComposerH;
                    SpacerKt.a(gapComposer3, rowScopeInstance3.a(n00.i(gapComposer3, -1355650175, "ProductCellFull"), f2, r10));
                } else {
                    gapComposer2 = gapComposerH;
                    gapComposer3 = gapComposer2;
                    rowScopeInstance3 = rowScopeInstance2;
                    gapComposer3 = gapComposerH;
                    gapComposer3.L(-1355659785);
                }
                gapComposer3.Z(z6);
                if (list2.size() > r10) {
                    gapComposer3.L(924855158);
                    TextKt.c(PluralStringResourceHelperKt.a(R.plurals.colors_number, list2.size(), new Object[]{Integer.valueOf(list2.size())}, gapComposer3), com.vuitton.android.presentation.extensions.ModifierExtKt.a(new DTFunctionNameModifier("ProductCellFull"), "plp_colorVariations_text", null, 6), LVAppDesignKitTheme.c(gapComposer3).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer3).l, gapComposer3, 0, 0, 131064);
                    r6 = 0;
                    gapComposer3.Z(false);
                } else {
                    r6 = 0;
                    gapComposer3.L(925446855);
                    gapComposer3.Z(false);
                }
                gapComposer3.Z(r10);
                if (list.isEmpty()) {
                    gapComposer3.L(1767887276);
                    gapComposer3.Z(r6);
                } else {
                    gapComposer3.L(1767805591);
                    b(r6, gapComposer3, list);
                    gapComposer3.Z(r6);
                }
                gapComposer3.Z(r10);
                gapComposer3.Z(r10);
                skuDataUiModel3 = skuDataUiModel2;
                z7 = skuDataUiModel3.f62950j;
                boxScopeInstance = BoxScopeInstance.f4938a;
                if (z7) {
                    gapComposer3.L(-40913809);
                    g(boxScopeInstance.g(new DTFunctionNameModifier("ProductCellFull"), biasAlignment), gapComposer3, 0);
                    gapComposer3.Z(false);
                } else if (skuDataUiModel3.f62951k) {
                    gapComposer3.L(-40783547);
                    d(boxScopeInstance.g(new DTFunctionNameModifier("ProductCellFull"), r49), gapComposer3, 0);
                    gapComposer3.Z(false);
                } else if (skuDataUiModel3.f62949i) {
                    gapComposer3.L(-40656974);
                    a(boxScopeInstance.g(new DTFunctionNameModifier("ProductCellFull"), r49), gapComposer3, 0);
                    gapComposer3.Z(false);
                } else {
                    gapComposer3.L(-40582016);
                    gapComposer3.Z(false);
                }
                gapComposer3.Z(r10);
                i9 = i17;
                i10 = i18;
                function4 = function7;
                modifier2 = modifier4;
                gapComposer = gapComposer3;
            } else {
                gapComposerH.D();
                if ((i5 & 4) != 0) {
                    i6 &= -897;
                }
                if ((i5 & 8) != 0) {
                    i6 &= -7169;
                }
                i11 = i6;
                i12 = i7;
                i13 = i8;
                modifier3 = modifier5;
            }
            function5 = function3;
            gapComposerH.a0();
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            skuDataUiModel = (PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b();
            context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            zK = gapComposerH.K(skuDataUiModel);
            function6 = function5;
            objX = gapComposerH.x();
            if (zK) {
                Resources resources2 = context.getResources();
                resources2.getClass();
                objX = plpProductUiModel.a(resources2);
                gapComposerH.q(objX);
            } else {
                Resources resources3 = context.getResources();
                resources3.getClass();
                objX = plpProductUiModel.a(resources3);
                gapComposerH.q(objX);
            }
            str = (String) objX;
            zY = gapComposerH.y(skuDataUiModel);
            objX2 = gapComposerH.x();
            if (zY) {
                i14 = 0;
                objX2 = new up0(skuDataUiModel, 0);
                gapComposerH.q(objX2);
            } else {
                i14 = 0;
                objX2 = new up0(skuDataUiModel, 0);
                gapComposerH.q(objX2);
            }
            i15 = i12;
            pagerStateB = PagerStateKt.b(i14, (Function0) objX2, gapComposerH, i14, 3);
            objX3 = gapComposerH.x();
            if (objX3 == obj) {
                objX3 = new UrlFactory(ContextExtKt.f(context));
                gapComposerH.q(objX3);
            }
            urlFactory = (UrlFactory) objX3;
            assetUiModel = (AssetUiModel) CollectionsKt.G(pagerStateB.k(), skuDataUiModel.f62947f);
            if (assetUiModel != null) {
                str2 = null;
            } else {
                str2 = null;
            }
            ImageLoaderExtKt.a(context, str2, urlFactory, gapComposerH, KyberEngine.KyberPolyBytes);
            i16 = i11 & ImageMetadata.JPEG_GPS_COORDINATES;
            if (i16 == 131072) {
                z = true;
            } else {
                z = false;
            }
            boolean zY4 = z | gapComposerH.y(plpProductUiModel) | gapComposerH.y(hapticFeedback);
            if ((i11 & 29360128) == 8388608) {
                z2 = true;
            } else {
                z2 = false;
            }
            boolean zK4 = z2 | zY4 | gapComposerH.K(pagerStateB);
            if ((i11 & 57344) == 16384) {
                z3 = true;
            } else {
                z3 = false;
            }
            z4 = zK4 | z3;
            objX4 = gapComposerH.x();
            if (z4) {
                pagerState = pagerStateB;
                Object obj3 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.plp.components.subcomponents.ProductCellFullKt$ProductCellFull$2$1
                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        Function1 function17 = function1;
                        PlpProductUiModel plpProductUiModel2 = plpProductUiModel;
                        Object objE = TapGestureDetectorKt.e(pointerInputScope, new xp0(function17, plpProductUiModel2, 0), new k3(hapticFeedback, function6, plpProductUiModel2, pagerState, 29), null, new bo0(function0, 1), continuation, 4);
                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                    }
                };
                function7 = function6;
                gapComposerH.q(obj3);
                objX4 = obj3;
            } else {
                pagerState = pagerStateB;
                Object obj4 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.plp.components.subcomponents.ProductCellFullKt$ProductCellFull$2$1
                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        Function1 function17 = function1;
                        PlpProductUiModel plpProductUiModel2 = plpProductUiModel;
                        Object objE = TapGestureDetectorKt.e(pointerInputScope, new xp0(function17, plpProductUiModel2, 0), new k3(hapticFeedback, function6, plpProductUiModel2, pagerState, 29), null, new bo0(function0, 1), continuation, 4);
                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                    }
                };
                function7 = function6;
                gapComposerH.q(obj4);
                objX4 = obj4;
            }
            Modifier modifierE5 = ModifierExtKt.e(PaddingKt.m(SuspendingPointerInputFilterKt.a(modifier3, plpProductUiModel, (PointerInputEventHandler) objX4), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, 7), "plp_productCard_view");
            Alignment.f8582a.getClass();
            biasAlignment = Alignment.Companion.f8584b;
            measurePolicyD = BoxKt.d(biasAlignment, false);
            iHashCode = Long.hashCode(gapComposerH.getT());
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierE5);
            ComposeUiNode.b0.getClass();
            modifier4 = modifier3;
            function8 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function8);
            } else {
                gapComposerH.o();
            }
            function9 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function9);
            function10 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function10);
            Integer numValueOf2 = Integer.valueOf(iHashCode);
            function11 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function11);
            function12 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function12);
            function13 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function13);
            DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("ProductCellFull");
            zK2 = gapComposerH.K(r56);
            pagerState2 = pagerState;
            objX5 = gapComposerH.x();
            if (zK2) {
                objX5 = new nj0(str, 11);
                gapComposerH.q(objX5);
            } else {
                objX5 = new nj0(str, 11);
                gapComposerH.q(objX5);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(dTFunctionNameModifier3, true, (Function1) objX5);
            Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
            horizontal = Alignment.Companion.n;
            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$2, horizontal, gapComposerH, 0);
            iHashCode2 = Long.hashCode(gapComposerH.getT());
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB2);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function8);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function9);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function10);
            cj.t(iHashCode2, gapComposerH, function11, gapComposerH, function12);
            DTFunctionNameModifier dTFunctionNameModifierE2 = tr.e(gapComposerH, modifierC2, function13, "ProductCellFull");
            measurePolicyD2 = BoxKt.d(biasAlignment, false);
            iHashCode3 = Long.hashCode(gapComposerH.getT());
            persistentCompositionLocalMapU3 = gapComposerH.U();
            modifierC3 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifierE2);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function8);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD2, function9);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function10);
            cj.t(iHashCode3, gapComposerH, function11, gapComposerH, function12);
            c(BackgroundKt.b(tr.e(gapComposerH, modifierC3, function13, "ProductCellFull"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48377e, RectangleShapeKt.f8913a), r16.f62947f, pagerState2, urlFactory, true, gapComposerH, 27648);
            gapComposerH.Z(true);
            Modifier modifierM2 = PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).d, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
            columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c), horizontal, gapComposerH, 0);
            iHashCode4 = Long.hashCode(gapComposerH.getT());
            persistentCompositionLocalMapU4 = gapComposerH.U();
            modifierC4 = ComposedModifierKt.c(gapComposerH, modifierM2);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function8);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function9);
            Updater.c(gapComposerH, persistentCompositionLocalMapU4, function10);
            cj.t(iHashCode4, gapComposerH, function11, gapComposerH, function12);
            Modifier modifierE6 = n00.e(gapComposerH, modifierC4, function13, "ProductCellFull", 1.0f);
            vertical = Alignment.Companion.l;
            arrangement$Start$1 = Arrangement.f4918a;
            rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 48);
            iHashCode5 = Long.hashCode(gapComposerH.getT());
            persistentCompositionLocalMapU5 = gapComposerH.U();
            modifierC5 = ComposedModifierKt.c(gapComposerH, modifierE6);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function8);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function9);
            Updater.c(gapComposerH, persistentCompositionLocalMapU5, function10);
            cj.t(iHashCode5, gapComposerH, function11, gapComposerH, function12);
            Updater.c(gapComposerH, modifierC5, function13);
            Modifier modifierD3 = SizeKt.d(new DTFunctionNameModifier("ProductCellFull"), 1.0f);
            rowScopeInstance = RowScopeInstance.f5040a;
            Modifier modifierA2 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(rowScopeInstance.a(modifierD3, 1.0f, true), "plp_productName_text", null, 6);
            String str4 = r16.d;
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).l;
            long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextOverflow.f10989a.getClass();
            TextKt.c(str4, modifierA2, j3, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 3, 0, null, textStyle2, gapComposerH, 0, 24960, 110584);
            mutableState = r16.f62948h;
            if (mutableState == null) {
                gapComposerH.L(-1606681288);
                gapComposerH.Z(false);
                function15 = function8;
                function14 = function13;
                skuDataUiModel2 = skuDataUiModel;
                i18 = i13;
                r10 = 1;
                f2 = 1.0f;
                i17 = i15;
            } else {
                Modifier modifierE7 = ModifierExtKt.e(SizeKt.o(PaddingKt.m(n00.i(gapComposerH, -1606681287, "ProductCellFull"), LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposerH).m), "plp_wishlist_button");
                PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel pLPWishlistStateUiModel2 = (PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) mutableState.getF10755b();
                if (i16 == 131072) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                zY2 = z5 | gapComposerH.y(plpProductUiModel);
                objX6 = gapComposerH.x();
                if (zY2) {
                    objX6 = new ok0(function1, plpProductUiModel, 5);
                    gapComposerH.q(objX6);
                } else {
                    objX6 = new ok0(function1, plpProductUiModel, 5);
                    gapComposerH.q(objX6);
                }
                int i26 = i11 << 3;
                function14 = function13;
                skuDataUiModel2 = r16;
                function15 = function8;
                r10 = 1;
                f2 = 1.0f;
                int i27 = i13;
                WishlistAnimationKt.b(modifierE7, plpProductUiModel, pLPWishlistStateUiModel2, i15, i27, (Function0) objX6, function2, gapComposerH, (i26 & 7168) | (i11 & 112) | (i26 & 57344) | (i11 & 3670016), 0);
                i17 = i15;
                i18 = i27;
                gapComposerH.Z(false);
            }
            Modifier modifierD4 = o60.d(gapComposerH, r10, "ProductCellFull", f2);
            rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 48);
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            iHashCode6 = Long.hashCode(gapComposerH.getT());
            persistentCompositionLocalMapU6 = gapComposerH.U();
            modifierC6 = ComposedModifierKt.c(gapComposerH, modifierD4);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function15);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA2, function9);
            Updater.c(gapComposerH, persistentCompositionLocalMapU6, function10);
            cj.t(iHashCode6, gapComposerH, function11, gapComposerH, function12);
            Updater.c(gapComposerH, modifierC6, function14);
            priceInfoUiModelB = plpProductUiModel.b();
            if (priceInfoUiModelB == null) {
                gapComposerH.L(924241388);
                z6 = false;
                gapComposerH.Z(false);
                unit = null;
                rowScopeInstance3 = rowScopeInstance;
            } else {
                z6 = false;
                rowScopeInstance2 = rowScopeInstance;
                f(rowScopeInstance2.a(n00.i(gapComposerH, 924241389, "ProductCellFull"), f2, r10), priceInfoUiModelB, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 0, 0);
                gapComposer2.Z(false);
                unit = Unit.f71739a;
            }
            if (unit == null) {
                gapComposer2 = gapComposerH;
                gapComposer3 = gapComposer2;
                rowScopeInstance3 = rowScopeInstance2;
                gapComposer3 = gapComposerH;
                SpacerKt.a(gapComposer3, rowScopeInstance3.a(n00.i(gapComposer3, -1355650175, "ProductCellFull"), f2, r10));
            } else {
                gapComposer2 = gapComposerH;
                gapComposer3 = gapComposer2;
                rowScopeInstance3 = rowScopeInstance2;
                gapComposer3 = gapComposerH;
                gapComposer3.L(-1355659785);
            }
            gapComposer3.Z(z6);
            if (list2.size() > r10) {
                gapComposer3.L(924855158);
                TextKt.c(PluralStringResourceHelperKt.a(R.plurals.colors_number, list2.size(), new Object[]{Integer.valueOf(list2.size())}, gapComposer3), com.vuitton.android.presentation.extensions.ModifierExtKt.a(new DTFunctionNameModifier("ProductCellFull"), "plp_colorVariations_text", null, 6), LVAppDesignKitTheme.c(gapComposer3).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer3).l, gapComposer3, 0, 0, 131064);
                r6 = 0;
                gapComposer3.Z(false);
            } else {
                r6 = 0;
                gapComposer3.L(925446855);
                gapComposer3.Z(false);
            }
            gapComposer3.Z(r10);
            if (list.isEmpty()) {
                gapComposer3.L(1767805591);
                b(r6, gapComposer3, list);
                gapComposer3.Z(r6);
            } else {
                gapComposer3.L(1767887276);
                gapComposer3.Z(r6);
            }
            gapComposer3.Z(r10);
            gapComposer3.Z(r10);
            skuDataUiModel3 = skuDataUiModel2;
            z7 = skuDataUiModel3.f62950j;
            boxScopeInstance = BoxScopeInstance.f4938a;
            if (z7) {
                gapComposer3.L(-40913809);
                g(boxScopeInstance.g(new DTFunctionNameModifier("ProductCellFull"), biasAlignment), gapComposer3, 0);
                gapComposer3.Z(false);
            } else if (skuDataUiModel3.f62951k) {
                gapComposer3.L(-40783547);
                d(boxScopeInstance.g(new DTFunctionNameModifier("ProductCellFull"), r49), gapComposer3, 0);
                gapComposer3.Z(false);
            } else if (skuDataUiModel3.f62949i) {
                gapComposer3.L(-40656974);
                a(boxScopeInstance.g(new DTFunctionNameModifier("ProductCellFull"), r49), gapComposer3, 0);
                gapComposer3.Z(false);
            } else {
                gapComposer3.L(-40582016);
                gapComposer3.Z(false);
            }
            gapComposer3.Z(r10);
            i9 = i17;
            i10 = i18;
            function4 = function7;
            modifier2 = modifier4;
            gapComposer = gapComposer3;
        } else {
            gapComposerH.D();
            function4 = function3;
            i9 = i7;
            i10 = i8;
            modifier2 = modifier5;
            gapComposer = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: vp0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj5, Object obj6) {
                    ((Integer) obj6).getClass();
                    ProductCellFullKt.e(modifier2, plpProductUiModel, i9, i10, function0, function1, function2, function4, (Composer) obj5, RecomposeScopeImplKt.a(i4 | 1), i5);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void f(Modifier modifier, PlpProductUiModel.PriceInfoUiModel priceInfoUiModel, long j2, Composer composer, int i2, int i3) {
        int i4;
        GapComposer gapComposer;
        Modifier modifier2;
        int i5;
        int i6;
        boolean z;
        GapComposer gapComposer2;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "ProductPrice-FNF3uiM");
        }
        GapComposer gapComposerH = composer.h(1097969373);
        int i7 = i3 & 1;
        if (i7 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = i2 | (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2);
        }
        int i8 = i4 | (gapComposerH.K(priceInfoUiModel) ? 32 : 16) | (gapComposerH.e(j2) ? 256 : 128);
        if (gapComposerH.p(i8 & 1, (i8 & 147) != 146)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            } else if (i7 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("ProductPrice-FNF3uiM");
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            if (priceInfoUiModel.f62941b) {
                gapComposerH.L(2027146467);
                String strC = StringResources_androidKt.c(gapComposerH, R.string.plp_price_from);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                i5 = i8;
                gapComposer2 = gapComposerH;
                i6 = 6;
                z = false;
                TextKt.c(strC, com.vuitton.android.presentation.extensions.ModifierExtKt.a(new DTFunctionNameModifier("ProductPrice-FNF3uiM"), "plp_priceIndication_text", null, 6), j3, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposer2, 0, 0, 131064);
                gapComposer2.Z(false);
            } else {
                i5 = i8;
                i6 = 6;
                z = false;
                gapComposerH.L(2027486971);
                gapComposerH.Z(false);
                gapComposer2 = gapComposerH;
            }
            TextKt.c(priceInfoUiModel.f62940a, com.vuitton.android.presentation.extensions.ModifierExtKt.a(new DTFunctionNameModifier("ProductPrice-FNF3uiM"), "plp_productPrice_text", null, i6), j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer2).l, gapComposer2, i5 & 896, 0, 131064);
            gapComposer = gapComposer2;
            if (priceInfoUiModel.f62942c) {
                gapComposer.L(2027814796);
                TextKt.c(StringResources_androidKt.c(gapComposer, R.string.global_vat_included), com.vuitton.android.presentation.extensions.ModifierExtKt.a(PaddingKt.m(new DTFunctionNameModifier("ProductPrice-FNF3uiM"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "plp_vat_text", null, i6), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                gapComposer = gapComposer;
                gapComposer.Z(z);
            } else {
                gapComposer.L(2028238907);
                gapComposer.Z(z);
            }
            gapComposer.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = dTFunctionNameModifier;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wr(modifier2, priceInfoUiModel, j2, i2, i3);
        }
    }

    public static final void g(Modifier modifier, Composer composer, int i2) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "TryOnBadge");
        }
        Modifier modifier2 = modifier;
        GapComposer gapComposerH = composer.h(845464923);
        int i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(ClipKt.a(PaddingKt.m(modifier2, LVAppDesignKitTheme.l(gapComposerH).d, LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.j(gapComposerH).f48411c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48414b);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).m0, gapComposerH, 0), null, ModifierExtKt.e(SizeKt.o(modifier2, LVAppDesignKitTheme.d(gapComposerH).m), "plp_arVTO_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 56, 0);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qe(modifier2, i2, 19);
        }
    }

    public static final void h(Modifier modifier, final float f2, final String str, final int i2, final int i3, final PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel pLPWishlistStateUiModel, final Function0 function0, Composer composer, final int i4) {
        int i5;
        String strB;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "WishlistIcon-jfnsLPA");
        }
        final Modifier modifier2 = modifierE;
        pLPWishlistStateUiModel.getClass();
        GapComposer gapComposerH = composer.h(1909916238);
        if ((i4 & 6) == 0) {
            i5 = (gapComposerH.K(modifier2) ? 4 : 2) | i4;
        } else {
            i5 = i4;
        }
        if ((i4 & 48) == 0) {
            i5 |= gapComposerH.c(f2) ? 32 : 16;
        }
        if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.K(str) ? 256 : 128;
        }
        if ((i4 & 3072) == 0) {
            i5 |= gapComposerH.d(i2) ? 2048 : 1024;
        }
        if ((i4 & 24576) == 0) {
            i5 |= gapComposerH.d(i3) ? 16384 : 8192;
        }
        if ((196608 & i4) == 0) {
            i5 |= gapComposerH.K(pLPWishlistStateUiModel) ? 131072 : 65536;
        }
        if ((1572864 & i4) == 0) {
            i5 |= gapComposerH.y(function0) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i5 & 1, (599187 & i5) != 599186)) {
            gapComposerH.y0();
            if ((i4 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z = pLPWishlistStateUiModel.f62952a;
            int i6 = z ? i3 : i2;
            if (z) {
                gapComposerH.L(-1411495235);
                strB = StringResources_androidKt.b(R.string.alt_remove_from_wishlist, new Object[]{str}, gapComposerH);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1411403134);
                strB = StringResources_androidKt.b(R.string.alt_add_to_wishlist, new Object[]{str}, gapComposerH);
                gapComposerH.Z(false);
            }
            boolean z2 = (i5 & 3670016) == 1048576;
            Object objX = gapComposerH.x();
            if (z2 || objX == Composer.Companion.f7939a) {
                objX = new ee0(function0, 26);
                gapComposerH.q(objX);
            }
            IconKt.a(PainterResources_androidKt.a(i6, gapComposerH, 0), strB, PaddingKt.i(SizeKt.o(ModifierExtKt.c(modifier2, false, null, null, (Function0) objX, 31), LVAppDesignKitTheme.d(gapComposerH).m), f2), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 8, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: wp0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    ProductCellFullKt.h(modifier2, f2, str, i2, i3, pLPWishlistStateUiModel, function0, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }
}
