package com.vuitton.android.presentation.screen.immersivearticle.components.cards;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.molecules.LVTabsKt;
import com.vuitton.android.presentation.common.editorial.components.carousels.CarouselSKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleCtaUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleProductTabsSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleProductTabsUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.db;
import defpackage.dt;
import defpackage.jx;
import defpackage.n00;
import defpackage.pq0;
import defpackage.rq;
import defpackage.u1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "selectedIndex", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleProductTabsViewKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f58489a;

        static {
            int[] iArr = new int[ImmersiveArticleType.values().length];
            try {
                iArr[ImmersiveArticleType.IMMERSIVE_ARTICLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ImmersiveArticleType.SEO_LANDING_PAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f58489a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x033b  */
    /* JADX WARN: Code duplicated, block: B:73:0x0228 A[LOOP:1: B:71:0x0222->B:73:0x0228, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:76:0x0243  */
    /* JADX WARN: Code duplicated, block: B:77:0x0246  */
    /* JADX WARN: Code duplicated, block: B:80:0x027e  */
    /* JADX WARN: Code duplicated, block: B:81:0x0289  */
    /* JADX WARN: Code duplicated, block: B:83:0x0293  */
    /* JADX WARN: Code duplicated, block: B:84:0x029e  */
    /* JADX WARN: Code duplicated, block: B:86:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:88:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:89:0x02de  */
    /* JADX WARN: Code duplicated, block: B:91:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:94:0x0325  */
    /* JADX WARN: Code duplicated, block: B:95:0x0327  */
    public static final void a(Modifier modifier, ImmersiveArticleProductTabsSectionUiModel immersiveArticleProductTabsSectionUiModel, ImmersiveArticleType immersiveArticleType, Function2 function2, Function1 function1, Function1 function3, Composer composer, int i2) {
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        ArrayList arrayList;
        Iterator it;
        boolean z;
        ImmersiveArticleCtaUiModel immersiveArticleCtaUiModel;
        String str;
        int i3;
        Modifier modifierM;
        boolean z2;
        boolean zY;
        Object objX;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "ImmersiveArticleProductTabsView");
        }
        immersiveArticleType.getClass();
        function2.getClass();
        function1.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(2032920417);
        Applier applier = gapComposerH.f7976a;
        int i4 = i2 | 6 | (gapComposerH.y(immersiveArticleProductTabsSectionUiModel) ? 32 : 16) | (gapComposerH.d(immersiveArticleType.ordinal()) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536);
        if (gapComposerH.p(i4 & 1, (i4 & 74899) != 74898)) {
            dTFunctionNameModifier = new DTFunctionNameModifier("ImmersiveArticleProductTabsView");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            List list = immersiveArticleProductTabsSectionUiModel.f58706c.f58703a;
            Object objX2 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX2 == composer$Companion$Empty$2) {
                objX2 = SnapshotIntStateKt.a(0);
                gapComposerH.q(objX2);
            }
            MutableIntState mutableIntState = (MutableIntState) objX2;
            boolean zY2 = gapComposerH.y(list);
            Object objX3 = gapComposerH.x();
            if (zY2 || objX3 == composer$Companion$Empty$2) {
                objX3 = new db(list, 6);
                gapComposerH.q(objX3);
            }
            PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX3, gapComposerH, 0, 3);
            Modifier modifierB = BackgroundKt.b(dTFunctionNameModifier, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Function2 function4 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function4);
            Function2 function5 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function6 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function6);
            Function1 function7 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function7);
            Function2 function8 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function8);
            gapComposerH.L(1564040775);
            Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("ImmersiveArticleProductTabsView"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierD);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
            cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
            Updater.c(gapComposerH, modifierC2, function8);
            Modifier modifierB2 = ModifierExtKt.b(PaddingKt.k(SizeKt.d(dTFunctionNameModifier, 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), immersiveArticleType == ImmersiveArticleType.SEO_LANDING_PAGE, new rq(26), gapComposerH, 0);
            int iF = mutableIntState.f();
            List list2 = list;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((ImmersiveArticleProductTabsUiModel) it2.next()).f58708b);
            }
            boolean zY3 = ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | gapComposerH.y(list);
            Object objX4 = gapComposerH.x();
            if (zY3) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                if (objX4 == composer$Companion$Empty$1) {
                }
                Composer$Companion$Empty$1 composer$Companion$Empty$3 = composer$Companion$Empty$1;
                LVTabsKt.a(modifierB2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, iF, arrayList2, pagerStateB, (Function1) objX4, gapComposerH, 0, 6);
                String str2 = new String();
                arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(((ImmersiveArticleProductTabsUiModel) it.next()).f58709c);
                }
                List list3 = (List) arrayList.get(mutableIntState.f());
                if (immersiveArticleType == ImmersiveArticleType.SEO_LANDING_PAGE) {
                    z = true;
                } else {
                    z = false;
                }
                CarouselSKt.a(null, str2, null, null, list3, false, false, null, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, z, false, function2, null, null, null, gapComposerH, 1572864, (i4 >> 3) & 896, 60077);
                gapComposerH = gapComposerH;
                immersiveArticleCtaUiModel = ((ImmersiveArticleProductTabsUiModel) list.get(mutableIntState.f())).d;
                if (immersiveArticleCtaUiModel == null) {
                    gapComposerH.L(1273291033);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1273291034);
                    str = immersiveArticleCtaUiModel.f58648a;
                    if (str == null) {
                        gapComposerH.L(1483329670);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(1483329671);
                        Modifier modifierD2 = SizeKt.d(dTFunctionNameModifier, 1.0f);
                        i3 = WhenMappings.f58489a[immersiveArticleType.ordinal()];
                        if (i3 != 1) {
                            modifierM = PaddingKt.m(n00.i(gapComposerH, 1831855150, "ImmersiveArticleProductTabsView"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                            gapComposerH.Z(false);
                        } else {
                            if (i3 == 2) {
                                throw d21.u(gapComposerH, 1831852041, false);
                            }
                            modifierM = PaddingKt.m(n00.i(gapComposerH, 1831862667, "ImmersiveArticleProductTabsView"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48421k, 5);
                            gapComposerH.Z(false);
                        }
                        Modifier modifierK = PaddingKt.k(modifierD2.o(modifierM), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                        ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48449e;
                        if ((i4 & 57344) == 16384) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        zY = gapComposerH.y(immersiveArticleCtaUiModel) | z2;
                        objX = gapComposerH.x();
                        if (zY || objX == composer$Companion$Empty$3) {
                            objX = new dt(function1, immersiveArticleCtaUiModel, 29);
                            gapComposerH.q(objX);
                        }
                        LVButtonKt.b(0, 504, gapComposerH, modifierK, configurationButton, null, null, str, (Function0) objX, false, false, false);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(false);
                }
                pq0.x(gapComposerH, true, false, true);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            }
            objX4 = new jx(function3, list, mutableIntState, 6);
            gapComposerH.q(objX4);
            Composer$Companion$Empty$1 composer$Companion$Empty$4 = composer$Companion$Empty$1;
            LVTabsKt.a(modifierB2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, iF, arrayList2, pagerStateB, (Function1) objX4, gapComposerH, 0, 6);
            String str3 = new String();
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(((ImmersiveArticleProductTabsUiModel) it.next()).f58709c);
            }
            List list4 = (List) arrayList.get(mutableIntState.f());
            if (immersiveArticleType == ImmersiveArticleType.SEO_LANDING_PAGE) {
                z = true;
            } else {
                z = false;
            }
            CarouselSKt.a(null, str3, null, null, list4, false, false, null, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, z, false, function2, null, null, null, gapComposerH, 1572864, (i4 >> 3) & 896, 60077);
            gapComposerH = gapComposerH;
            immersiveArticleCtaUiModel = ((ImmersiveArticleProductTabsUiModel) list.get(mutableIntState.f())).d;
            if (immersiveArticleCtaUiModel == null) {
                gapComposerH.L(1273291033);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1273291034);
                str = immersiveArticleCtaUiModel.f58648a;
                if (str == null) {
                    gapComposerH.L(1483329670);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1483329671);
                    Modifier modifierD3 = SizeKt.d(dTFunctionNameModifier, 1.0f);
                    i3 = WhenMappings.f58489a[immersiveArticleType.ordinal()];
                    if (i3 != 1) {
                        modifierM = PaddingKt.m(n00.i(gapComposerH, 1831855150, "ImmersiveArticleProductTabsView"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                        gapComposerH.Z(false);
                    } else {
                        if (i3 == 2) {
                            throw d21.u(gapComposerH, 1831852041, false);
                        }
                        modifierM = PaddingKt.m(n00.i(gapComposerH, 1831862667, "ImmersiveArticleProductTabsView"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48421k, 5);
                        gapComposerH.Z(false);
                    }
                    Modifier modifierK2 = PaddingKt.k(modifierD3.o(modifierM), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    ConfigurationButton configurationButton2 = LVAppDesignKitTheme.b(gapComposerH).f48449e;
                    if ((i4 & 57344) == 16384) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    zY = gapComposerH.y(immersiveArticleCtaUiModel) | z2;
                    objX = gapComposerH.x();
                    if (zY) {
                        objX = new dt(function1, immersiveArticleCtaUiModel, 29);
                        gapComposerH.q(objX);
                    } else {
                        objX = new dt(function1, immersiveArticleCtaUiModel, 29);
                        gapComposerH.q(objX);
                    }
                    LVButtonKt.b(0, 504, gapComposerH, modifierK2, configurationButton2, null, null, str, (Function0) objX, false, false, false);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(false);
            }
            pq0.x(gapComposerH, true, false, true);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(modifier2, immersiveArticleProductTabsSectionUiModel, immersiveArticleType, function2, function1, function3, i2, 14);
        }
    }
}
