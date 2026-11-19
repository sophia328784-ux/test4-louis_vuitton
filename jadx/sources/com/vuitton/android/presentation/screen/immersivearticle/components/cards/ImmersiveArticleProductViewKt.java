package com.vuitton.android.presentation.screen.immersivearticle.components.cards;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
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
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Crop$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVVerticalGridKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeletonKt;
import com.vuitton.android.presentation.compose.LVPlayPauseButtonKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.compose.StringExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleProductViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveProductCell;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveSpacerCell;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.SmallProductCell;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleProductDisplayStyleUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleProductImageStyleUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ProductsArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.SectionThemeUiModel;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.ProductCellFullKt;
import defpackage.a;
import defpackage.c30;
import defpackage.cj;
import defpackage.gj;
import defpackage.gv;
import defpackage.is;
import defpackage.ou;
import defpackage.pq0;
import defpackage.tr;
import defpackage.x20;
import defpackage.ze;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/ui/geometry/Size;", "animatedSize", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleProductViewKt {
    public static final void a(Modifier modifier, final ProductsArticleSectionUiModel productsArticleSectionUiModel, final boolean z, final float f2, final Function1 function1, final Function1 function2, Composer composer, final int i2) {
        final Modifier modifier2;
        Modifier modifierE = modifier;
        List list = productsArticleSectionUiModel.f58813b;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ImmersiveArticleProductView");
        }
        function2.getClass();
        GapComposer gapComposerH = composer.h(548325772);
        int i3 = i2 | 6 | (gapComposerH.y(productsArticleSectionUiModel) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.c(f2) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ImmersiveArticleProductView");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final boolean z2 = (list != null ? list.size() : 1) > 1;
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            if (list == null || list.isEmpty()) {
                list = null;
            }
            if (list == null) {
                gapComposerH.L(1423774706);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1423774707);
                if (z2) {
                    gapComposerH.L(287274760);
                    ListBuilder listBuilderV = CollectionsKt.v();
                    List<ProductsArticleSectionUiModel.ImmersiveProductUiModel> list2 = list;
                    ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                    for (ProductsArticleSectionUiModel.ImmersiveProductUiModel immersiveProductUiModel : list2) {
                        arrayList.add(ImmersiveProductCell.f58501a);
                    }
                    listBuilderV.addAll(arrayList);
                    int size = (list.size() % 2) + 1;
                    for (int i4 = 0; i4 < size; i4++) {
                        listBuilderV.add(ImmersiveSpacerCell.f58502a);
                    }
                    LVVerticalGridKt.a(dTFunctionNameModifier, CollectionsKt.r(listBuilderV), ComposableLambdaKt.b(34113841, new Function4() { // from class: m30
                        @Override // kotlin.jvm.functions.Function4
                        public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
                            int i5;
                            long j2;
                            String str;
                            int iIntValue = ((Integer) obj).intValue();
                            SmallProductCell smallProductCell = (SmallProductCell) obj2;
                            Composer composer2 = (Composer) obj3;
                            int iIntValue2 = ((Integer) obj4).intValue();
                            smallProductCell.getClass();
                            if ((iIntValue2 & 6) == 0) {
                                i5 = (composer2.d(iIntValue) ? 4 : 2) | iIntValue2;
                            } else {
                                i5 = iIntValue2;
                            }
                            if ((iIntValue2 & 48) == 0) {
                                i5 |= (iIntValue2 & 64) == 0 ? composer2.K(smallProductCell) : composer2.y(smallProductCell) ? 32 : 16;
                            }
                            if (composer2.p(i5 & 1, (i5 & 147) != 146)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                boolean z3 = smallProductCell instanceof ImmersiveProductCell;
                                ProductsArticleSectionUiModel productsArticleSectionUiModel2 = productsArticleSectionUiModel;
                                if (z3) {
                                    composer2.L(-1621714579);
                                    ImmersiveArticleProductViewKt.b(productsArticleSectionUiModel2, function2, z2, f2, z, context, function1, iIntValue, composer2, i5 & 14);
                                    composer2.F();
                                } else {
                                    if (!(smallProductCell instanceof ImmersiveSpacerCell)) {
                                        throw o60.v(composer2, -1576335428);
                                    }
                                    Modifier modifierO = pq0.j(-1621526967, composer2, "ImmersiveArticleProductView$lambda$3$1").o(SizeKt.f5052c);
                                    SectionThemeUiModel sectionThemeUiModel = productsArticleSectionUiModel2.f58815e;
                                    Color colorA = (sectionThemeUiModel == null || (str = sectionThemeUiModel.f58825a) == null) ? null : StringExtKt.a(str);
                                    if (colorA == null) {
                                        composer2.L(-1576318046);
                                        j2 = LVAppDesignKitTheme.c(composer2).f48361b.f48374a;
                                        composer2.F();
                                    } else {
                                        composer2.L(-1576321642);
                                        composer2.F();
                                        j2 = colorA.f8872a;
                                    }
                                    BoxKt.a(BackgroundKt.b(modifierO, j2, RectangleShapeKt.f8913a), composer2, 0);
                                    composer2.F();
                                }
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposerH, 3126);
                    gapComposerH.Z(false);
                } else {
                    boolean z3 = z2;
                    gapComposerH.L(288514326);
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
                    b(productsArticleSectionUiModel, function2, z3, f2, z, context, function1, 0, gapComposerH, 6);
                    gapComposerH.Z(true);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(false);
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(productsArticleSectionUiModel, z, f2, function1, function2, i2) { // from class: n30

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ ProductsArticleSectionUiModel f76435c;
                public final /* synthetic */ boolean d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ float f76436e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function1 f76437f;
                public final /* synthetic */ Function1 g;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    ImmersiveArticleProductViewKt.a(this.f76434b, this.f76435c, this.d, this.f76436e, this.f76437f, this.g, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:109:0x043c  */
    /* JADX WARN: Code duplicated, block: B:121:0x0456  */
    /* JADX WARN: Code duplicated, block: B:191:0x0690  */
    /* JADX WARN: Code duplicated, block: B:194:0x06af  */
    /* JADX WARN: Code duplicated, block: B:197:0x06dd  */
    /* JADX WARN: Code duplicated, block: B:198:0x06e7  */
    /* JADX WARN: Code duplicated, block: B:203:0x0705  */
    /* JADX WARN: Code duplicated, block: B:205:0x0708  */
    /* JADX WARN: Code duplicated, block: B:206:0x071a  */
    /* JADX WARN: Code duplicated, block: B:218:0x07bc  */
    /* JADX WARN: Code duplicated, block: B:85:0x0311  */
    /* JADX WARN: Code duplicated, block: B:88:0x0382  */
    /* JADX WARN: Code duplicated, block: B:91:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:93:0x03bd  */
    public static final void b(ProductsArticleSectionUiModel productsArticleSectionUiModel, Function1 function1, final boolean z, float f2, boolean z2, Context context, Function1 function2, final int i2, Composer composer, int i3) {
        long j2;
        BiasAlignment biasAlignment;
        Function0 function0;
        Function2 function3;
        Function2 function4;
        String str;
        SectionThemeUiModel sectionThemeUiModel;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        int i4;
        Function2 function5;
        Function1 function6;
        Function2 function7;
        int i5;
        ImmersiveArticleProductDisplayStyleUiModel immersiveArticleProductDisplayStyleUiModel;
        BoxScopeInstance boxScopeInstance;
        ProductsArticleSectionUiModel.ProductInfoUiModel productInfoUiModel;
        int i6;
        Modifier modifier;
        boolean z3;
        Object objX;
        BoxScopeInstance boxScopeInstance2;
        boolean zY;
        Object objX2;
        int i7;
        int i8;
        Function0 function8;
        long j3;
        int i9;
        String strB;
        float f3;
        int i10;
        boolean z4;
        Object objX3;
        Object objX4;
        String str2;
        Color colorA;
        long j4;
        String str3;
        String str4;
        String str5;
        String str6;
        Composer composer2 = composer;
        ImmersiveArticleProductDisplayStyleUiModel immersiveArticleProductDisplayStyleUiModel2 = productsArticleSectionUiModel.d;
        SectionThemeUiModel sectionThemeUiModel2 = productsArticleSectionUiModel.f58815e;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        List list = productsArticleSectionUiModel.f58813b;
        ProductsArticleSectionUiModel.ImmersiveProductUiModel immersiveProductUiModel = list != null ? (ProductsArticleSectionUiModel.ImmersiveProductUiModel) list.get(i2) : null;
        if (immersiveProductUiModel == null) {
            composer2.L(-1891084076);
            composer2.F();
        } else {
            AssetUiModel assetUiModel = immersiveProductUiModel.f58818b;
            ProductsArticleSectionUiModel.ProductInfoUiModel productInfoUiModel2 = immersiveProductUiModel.f58819c;
            composer2.L(-1891084075);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ImmersiveArticleProductView$Product");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierO = dTFunctionNameModifier.o(fillElement);
            Color colorA2 = (sectionThemeUiModel2 == null || (str6 = sectionThemeUiModel2.f58825a) == null) ? null : StringExtKt.a(str6);
            if (colorA2 == null) {
                composer2.L(-1947034281);
                j2 = LVAppDesignKitTheme.c(composer2).f48361b.f48374a;
                composer2.F();
            } else {
                composer2.L(-1947037505);
                composer2.F();
                j2 = colorA2.f8872a;
            }
            Modifier modifierB = BackgroundKt.b(modifierO, j2, RectangleShapeKt.f8913a);
            int i11 = (i3 & 14) ^ 6;
            boolean zK = composer2.K(function1) | ((i11 > 4 && composer2.d(i2)) || (i3 & 6) == 4);
            Object objX5 = composer2.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (zK || objX5 == composer$Companion$Empty$2) {
                objX5 = new is(i2, 5, function1);
                composer2.q(objX5);
            }
            Modifier modifierC = ModifierExtKt.c(modifierB, false, null, null, (Function0) objX5, 31);
            boolean zY2 = composer2.y(immersiveProductUiModel) | composer2.y(productsArticleSectionUiModel);
            Object objX6 = composer2.x();
            if (zY2 || objX6 == composer$Companion$Empty$2) {
                objX6 = new gv(immersiveProductUiModel, productsArticleSectionUiModel, 22);
                composer2.q(objX6);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(modifierC, true, (Function1) objX6);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, composer2, 0);
            int iHashCode = Long.hashCode(composer2.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
            Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierB2);
            ComposeUiNode.b0.getClass();
            Function0 function9 = ComposeUiNode.Companion.f9641b;
            if (composer2.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer2.B();
            if (composer2.getS()) {
                composer2.C(function9);
            } else {
                composer2.o();
            }
            Function2 function10 = ComposeUiNode.Companion.f9644f;
            Updater.c(composer2, columnMeasurePolicyA, function10);
            Function2 function11 = ComposeUiNode.Companion.f9643e;
            Updater.c(composer2, persistentCompositionLocalMapN, function11);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function12 = ComposeUiNode.Companion.g;
            Updater.c(composer2, numValueOf, function12);
            Function1 function13 = ComposeUiNode.Companion.f9645h;
            Updater.b(composer2, function13);
            Function2 function14 = ComposeUiNode.Companion.d;
            Updater.c(composer2, modifierC2, function14);
            final float f4 = LVAppDesignKitTheme.l(composer2).f48416e;
            ProductsArticleSectionUiModel.ImmersiveProductUiModel immersiveProductUiModel2 = immersiveProductUiModel;
            Modifier modifierB3 = com.vuitton.android.designkit.components.ModifierExtKt.b(new DTFunctionNameModifier("ImmersiveArticleProductView$Product"), productsArticleSectionUiModel.f58814c == ImmersiveArticleProductImageStyleUiModel.MARIE_LOUISE, new Function2() { // from class: o30
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Modifier modifierK;
                    Composer composer3 = (Composer) obj;
                    ((Integer) obj2).getClass();
                    composer3.L(-2059010124);
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    boolean z5 = z;
                    float f5 = f4;
                    if (!z5) {
                        modifierK = PaddingKt.k(new DTFunctionNameModifier("ImmersiveArticleProductView$Product$lambda$1$2$0"), f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    } else if (i2 % 2 == 0) {
                        Dp.Companion companion = Dp.f11004c;
                        modifierK = PaddingKt.m(new DTFunctionNameModifier("ImmersiveArticleProductView$Product$lambda$1$2$0"), f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, f5 / 2.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
                    } else {
                        Dp.Companion companion2 = Dp.f11004c;
                        modifierK = PaddingKt.m(new DTFunctionNameModifier("ImmersiveArticleProductView$Product$lambda$1$2$0"), f5 / 2.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
                    }
                    composer3.F();
                    return modifierK;
                }
            }, composer2, 6);
            BiasAlignment biasAlignment2 = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment2, false);
            int iHashCode2 = Long.hashCode(composer2.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
            Modifier modifierC3 = ComposedModifierKt.c(composer2, modifierB3);
            if (composer2.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer2.B();
            if (composer2.getS()) {
                composer2.C(function9);
            } else {
                composer2.o();
            }
            Updater.c(composer2, measurePolicyD, function10);
            Updater.c(composer2, persistentCompositionLocalMapN2, function11);
            cj.s(iHashCode2, composer2, function12, composer2, function13);
            Updater.c(composer2, modifierC3, function14);
            AssetImageUiModel assetImageUiModel = assetUiModel != null ? assetUiModel.f51780b : null;
            BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.f4938a;
            if (assetImageUiModel != null) {
                composer2.L(918028140);
                Modifier modifierB4 = ClipKt.b(AspectRatioKt.a(new DTFunctionNameModifier("ImmersiveArticleProductView$Product"), f2, false).o(fillElement));
                ContentScale.f9447a.getClass();
                ContentScale$Companion$Crop$1 contentScale$Companion$Crop$1 = ContentScale.Companion.f9449b;
                String str7 = assetUiModel.f51780b.f51778b;
                str7.getClass();
                str = "ImmersiveArticleProductView$Product";
                biasAlignment = biasAlignment2;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                ImageLoaderKt.b(modifierB4, str7, contentScale$Companion$Crop$1, null, null, 0, false, null, null, null, composer, 3456, 2032);
                composer2 = composer;
                composer2.F();
                sectionThemeUiModel = sectionThemeUiModel2;
                i4 = i11;
                function5 = function14;
                function6 = function13;
                productInfoUiModel = productInfoUiModel2;
                function7 = function12;
                function0 = function9;
                function3 = function11;
                function4 = function10;
                immersiveArticleProductDisplayStyleUiModel = immersiveArticleProductDisplayStyleUiModel2;
                i5 = 0;
                boxScopeInstance = boxScopeInstance3;
            } else {
                biasAlignment = biasAlignment2;
                function0 = function9;
                function3 = function11;
                function4 = function10;
                str = "ImmersiveArticleProductView$Product";
                sectionThemeUiModel = sectionThemeUiModel2;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                if ((assetUiModel != null ? assetUiModel.f51781c : null) != null) {
                    composer2.L(918613141);
                    Object objX7 = composer2.x();
                    if (objX7 == composer$Companion$Empty$1) {
                        objX7 = new LvExoPlayer(context);
                        composer2.q(objX7);
                    }
                    LvExoPlayer lvExoPlayer = (LvExoPlayer) objX7;
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier(str);
                    MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
                    int iHashCode3 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer2.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer2, dTFunctionNameModifier2);
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
                    Updater.c(composer2, measurePolicyD2, function4);
                    Updater.c(composer2, persistentCompositionLocalMapN3, function3);
                    cj.s(iHashCode3, composer2, function12, composer2, function13);
                    Modifier modifierA = com.vuitton.android.presentation.extensions.ModifierExtKt.a(ClipKt.b(AspectRatioKt.a(a.f(composer2, modifierC4, function14, str), f2, false).o(fillElement)), null, null, 7);
                    ExoPlayer exoPlayer = lvExoPlayer.f50900a;
                    AssetVideoUiModel assetVideoUiModel = assetUiModel.f51781c;
                    String str8 = assetVideoUiModel.f51783c;
                    String str9 = assetVideoUiModel.d;
                    ContentScale.f9447a.getClass();
                    ContentScale$Companion$Crop$1 contentScale$Companion$Crop$2 = ContentScale.Companion.f9449b;
                    boolean zK2 = composer2.K(function1);
                    if (i11 > 4) {
                        i6 = i2;
                        if (composer2.d(i6)) {
                            modifier = modifierA;
                        }
                        z3 = zK2 | z;
                        objX = composer2.x();
                        if (z3 || objX == composer$Companion$Empty$1) {
                            objX = new ze(function1, i6, 3);
                            composer2.q(objX);
                        }
                        i4 = i11;
                        function5 = function14;
                        function6 = function13;
                        function7 = function12;
                        immersiveArticleProductDisplayStyleUiModel = immersiveArticleProductDisplayStyleUiModel2;
                        LvVideoPlayerKt.b(modifier, exoPlayer, str8, null, null, true, str9, contentScale$Companion$Crop$2, false, false, false, z2, null, false, 4, null, null, null, (Function1) objX, null, null, composer, 12779520, 24576, 0, 1816344);
                        composer2 = composer;
                        composer2.r();
                        if (z2) {
                            boxScopeInstance2 = boxScopeInstance3;
                            Modifier modifierG = boxScopeInstance2.g(pq0.j(919790521, composer2, str), Alignment.Companion.f8590j);
                            boolean zBooleanValue = ((Boolean) ((SnapshotMutableStateImpl) lvExoPlayer.f50901b).getF10755b()).booleanValue();
                            zY = composer2.y(lvExoPlayer);
                            objX2 = composer2.x();
                            if (zY || objX2 == composer$Companion$Empty$1) {
                                objX2 = new gj(lvExoPlayer, 7);
                                composer2.q(objX2);
                            }
                            i5 = 0;
                            LVPlayPauseButtonKt.a(0, composer2, modifierG, (Function0) objX2, zBooleanValue);
                            composer2.F();
                        } else {
                            boxScopeInstance2 = boxScopeInstance3;
                            i5 = 0;
                            composer2.L(920435352);
                            composer2.F();
                        }
                        composer2.F();
                        boxScopeInstance = boxScopeInstance2;
                    } else {
                        i6 = i2;
                    }
                    modifier = modifierA;
                    boolean z5 = (i3 & 6) == 4;
                    z3 = zK2 | z5;
                    objX = composer2.x();
                    if (z3) {
                        objX = new ze(function1, i6, 3);
                        composer2.q(objX);
                    } else {
                        objX = new ze(function1, i6, 3);
                        composer2.q(objX);
                    }
                    i4 = i11;
                    function5 = function14;
                    function6 = function13;
                    function7 = function12;
                    immersiveArticleProductDisplayStyleUiModel = immersiveArticleProductDisplayStyleUiModel2;
                    LvVideoPlayerKt.b(modifier, exoPlayer, str8, null, null, true, str9, contentScale$Companion$Crop$2, false, false, false, z2, null, false, 4, null, null, null, (Function1) objX, null, null, composer, 12779520, 24576, 0, 1816344);
                    composer2 = composer;
                    composer2.r();
                    if (z2) {
                        boxScopeInstance2 = boxScopeInstance3;
                        Modifier modifierG2 = boxScopeInstance2.g(pq0.j(919790521, composer2, str), Alignment.Companion.f8590j);
                        boolean zBooleanValue2 = ((Boolean) ((SnapshotMutableStateImpl) lvExoPlayer.f50901b).getF10755b()).booleanValue();
                        zY = composer2.y(lvExoPlayer);
                        objX2 = composer2.x();
                        if (zY) {
                            objX2 = new gj(lvExoPlayer, 7);
                            composer2.q(objX2);
                        } else {
                            objX2 = new gj(lvExoPlayer, 7);
                            composer2.q(objX2);
                        }
                        i5 = 0;
                        LVPlayPauseButtonKt.a(0, composer2, modifierG2, (Function0) objX2, zBooleanValue2);
                        composer2.F();
                    } else {
                        boxScopeInstance2 = boxScopeInstance3;
                        i5 = 0;
                        composer2.L(920435352);
                        composer2.F();
                    }
                    composer2.F();
                    boxScopeInstance = boxScopeInstance2;
                } else {
                    i4 = i11;
                    function5 = function14;
                    function6 = function13;
                    function7 = function12;
                    i5 = 0;
                    immersiveArticleProductDisplayStyleUiModel = immersiveArticleProductDisplayStyleUiModel2;
                    composer2.L(920502126);
                    boxScopeInstance = boxScopeInstance3;
                    ImageKt.a(PainterResources_androidKt.a(R.drawable.placeholder, composer2, 0), null, null, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, composer2, 56, 124);
                    composer2.F();
                }
                productInfoUiModel = productInfoUiModel2;
            }
            if (productInfoUiModel != null) {
                i7 = 1;
                if (productInfoUiModel.f58824f && immersiveArticleProductDisplayStyleUiModel == ImmersiveArticleProductDisplayStyleUiModel.FULL_DETAILS) {
                    composer2.L(920953765);
                    ProductCellFullKt.d(boxScopeInstance.g(new DTFunctionNameModifier(str), biasAlignment), composer2, i5);
                    composer2.F();
                }
                composer2.r();
                if (productInfoUiModel != null) {
                    String str10 = productInfoUiModel.f58822c;
                    i8 = ((str10 != null || StringsKt.w(str10)) && ((str5 = productInfoUiModel.f58821b) == null || StringsKt.w(str5))) ? i7 : i5;
                } else {
                    i8 = i5;
                }
                if (immersiveArticleProductDisplayStyleUiModel == ImmersiveArticleProductDisplayStyleUiModel.IMAGE_ONLY && i8 == 0) {
                    composer2.L(1012249104);
                    Object objX8 = composer2.x();
                    if (objX8 == composer$Companion$Empty$1) {
                        Size.f8820b.getClass();
                        objX8 = SnapshotStateKt.g(new Size(0L));
                        composer2.q(objX8);
                    }
                    MutableState mutableState = (MutableState) objX8;
                    Modifier modifierL = PaddingKt.l(Modifier.Companion.f8607b, f4, f4, f4, LVAppDesignKitTheme.l(composer2).f48418h);
                    Object objX9 = composer2.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        objX9 = new c30(2, mutableState);
                        composer2.q(objX9);
                    }
                    Modifier modifierA2 = OnGloballyPositionedModifierKt.a(modifierL, (Function1) objX9);
                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(composer2).f48415c), horizontal, composer2, i5);
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    int iHashCode4 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer2.n();
                    Modifier modifierC5 = ComposedModifierKt.c(composer2, modifierA2);
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        function8 = function0;
                        composer2.C(function8);
                    } else {
                        function8 = function0;
                        composer2.o();
                    }
                    Function2 function15 = function4;
                    Updater.c(composer2, columnMeasurePolicyA2, function15);
                    Function2 function16 = function3;
                    Updater.c(composer2, persistentCompositionLocalMapN4, function16);
                    Function2 function17 = function7;
                    Function1 function18 = function6;
                    cj.s(iHashCode4, composer2, function17, composer2, function18);
                    Function2 function19 = function5;
                    Updater.c(composer2, modifierC5, function19);
                    if (productInfoUiModel != null) {
                        composer2.L(-1310879772);
                        SectionThemeUiModel sectionThemeUiModel3 = sectionThemeUiModel;
                        Color colorA3 = (sectionThemeUiModel3 == null || (str4 = sectionThemeUiModel3.f58826b) == null) ? null : StringExtKt.a(str4);
                        if (colorA3 == null) {
                            composer2.L(-1843400787);
                            j3 = LVAppDesignKitTheme.c(composer2).f48361b.f48382k;
                            composer2.F();
                        } else {
                            composer2.L(-1843403949);
                            composer2.F();
                            j3 = colorA3.f8872a;
                        }
                        Modifier modifierD = tr.d(str, 1.0f);
                        RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.f8591k, composer2, 54);
                        int iHashCode5 = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN5 = composer2.n();
                        Modifier modifierC6 = ComposedModifierKt.c(composer2, modifierD);
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function8);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, rowMeasurePolicyA, function15);
                        Updater.c(composer2, persistentCompositionLocalMapN5, function16);
                        cj.s(iHashCode5, composer2, function17, composer2, function18);
                        Updater.c(composer2, modifierC6, function19);
                        Modifier modifierA3 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(cj.b(str, RowScopeInstance.f5040a, 1.0f, true), null, null, 7);
                        TextStyle textStyle = LVAppDesignKitTheme.n(composer2).m;
                        ProductsArticleSectionUiModel.ProductInfoUiModel productInfoUiModel3 = productInfoUiModel;
                        String str11 = productInfoUiModel3.f58821b;
                        if (str11 == null) {
                            str11 = "";
                        }
                        TextOverflow.f10989a.getClass();
                        int i12 = TextOverflow.f10991c;
                        boolean z6 = true;
                        long j5 = j3;
                        TextKt.c(str11, modifierA3, j5, 0L, null, 0L, null, null, 0L, i12, false, 2, 0, null, textStyle, composer, 0, 24960, 110584);
                        composer2 = composer;
                        if (productInfoUiModel3.d) {
                            composer2.L(1281733394);
                            i9 = LVAppDesignKitTheme.g(composer2).V;
                            composer2.F();
                        } else {
                            composer2.L(1281850264);
                            i9 = LVAppDesignKitTheme.g(composer2).U;
                            composer2.F();
                        }
                        if (productInfoUiModel3.d) {
                            composer2.L(1282053283);
                            String str12 = productInfoUiModel3.f58821b;
                            strB = StringResources_androidKt.b(R.string.alt_remove_from_wishlist, new Object[]{str12 != null ? str12 : ""}, composer2);
                            composer2.F();
                        } else {
                            composer2.L(1282216808);
                            String str13 = productInfoUiModel3.f58821b;
                            strB = StringResources_androidKt.b(R.string.alt_add_to_wishlist, new Object[]{str13 != null ? str13 : ""}, composer2);
                            composer2.F();
                        }
                        Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier(str), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                        if (z) {
                            composer2.L(1282660511);
                            f3 = LVAppDesignKitTheme.d(composer2).m;
                            composer2.F();
                        } else {
                            composer2.L(1282796415);
                            f3 = LVAppDesignKitTheme.d(composer2).o;
                            composer2.F();
                        }
                        Modifier modifierO2 = SizeKt.o(modifierM, f3);
                        boolean zY3 = composer2.y(immersiveProductUiModel2) | composer2.K(function2);
                        if (i4 > 4) {
                            i10 = i2;
                            if (!composer2.d(i10)) {
                            }
                            z4 = zY3 | z6;
                            objX3 = composer2.x();
                            if (z4 || objX3 == composer$Companion$Empty$1) {
                                objX3 = new ou(immersiveProductUiModel2, function2, i10, 3);
                                composer2.q(objX3);
                            }
                            Modifier modifierC7 = ModifierExtKt.c(modifierO2, false, null, null, (Function0) objX3, 31);
                            objX4 = composer2.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = new x20(2);
                                composer2.q(objX4);
                            }
                            IconKt.a(PainterResources_androidKt.a(i9, composer2, 0), strB, SemanticsModifierKt.b(modifierC7, false, (Function1) objX4), j5, composer2, 8, 0);
                            composer2.r();
                            str2 = productInfoUiModel3.f58822c;
                            if (str2 == null) {
                                composer2.L(-1307710240);
                                composer2.F();
                            } else {
                                Modifier modifierA4 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(pq0.j(-1307710239, composer2, str), null, null, 7);
                                TextStyle textStyle2 = LVAppDesignKitTheme.n(composer2).n;
                                if (sectionThemeUiModel3 != null || (str3 = sectionThemeUiModel3.f58826b) == null) {
                                    colorA = null;
                                } else {
                                    colorA = StringExtKt.a(str3);
                                }
                                if (colorA == null) {
                                    composer2.L(1227638575);
                                    j4 = LVAppDesignKitTheme.c(composer2).f48361b.l;
                                    composer2.F();
                                } else {
                                    composer2.L(1227635165);
                                    composer2.F();
                                    j4 = colorA.f8872a;
                                }
                                TextKt.c(str2, modifierA4, j4, 0L, null, 0L, null, null, 0L, i12, false, 0, 0, null, textStyle2, composer2, 0, KyberEngine.KyberPolyBytes, 126968);
                                composer2 = composer2;
                                composer2.F();
                            }
                            composer2.F();
                        } else {
                            i10 = i2;
                        }
                        if ((i3 & 6) != 4) {
                            z6 = false;
                        }
                        z4 = zY3 | z6;
                        objX3 = composer2.x();
                        if (z4) {
                            objX3 = new ou(immersiveProductUiModel2, function2, i10, 3);
                            composer2.q(objX3);
                        } else {
                            objX3 = new ou(immersiveProductUiModel2, function2, i10, 3);
                            composer2.q(objX3);
                        }
                        Modifier modifierC8 = ModifierExtKt.c(modifierO2, false, null, null, (Function0) objX3, 31);
                        objX4 = composer2.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new x20(2);
                            composer2.q(objX4);
                        }
                        IconKt.a(PainterResources_androidKt.a(i9, composer2, 0), strB, SemanticsModifierKt.b(modifierC8, false, (Function1) objX4), j5, composer2, 8, 0);
                        composer2.r();
                        str2 = productInfoUiModel3.f58822c;
                        if (str2 == null) {
                            composer2.L(-1307710240);
                            composer2.F();
                        } else {
                            Modifier modifierA5 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(pq0.j(-1307710239, composer2, str), null, null, 7);
                            TextStyle textStyle3 = LVAppDesignKitTheme.n(composer2).n;
                            if (sectionThemeUiModel3 != null) {
                                colorA = null;
                            } else {
                                colorA = null;
                            }
                            if (colorA == null) {
                                composer2.L(1227638575);
                                j4 = LVAppDesignKitTheme.c(composer2).f48361b.l;
                                composer2.F();
                            } else {
                                composer2.L(1227635165);
                                composer2.F();
                                j4 = colorA.f8872a;
                            }
                            TextKt.c(str2, modifierA5, j4, 0L, null, 0L, null, null, 0L, i12, false, 0, 0, null, textStyle3, composer2, 0, KyberEngine.KyberPolyBytes, 126968);
                            composer2 = composer2;
                            composer2.F();
                        }
                        composer2.F();
                    } else {
                        composer2.L(-1307107506);
                        composer2.L(-1843277513);
                        int i13 = i5;
                        while (i13 < 2) {
                            LVSkeletonKt.c(SizeKt.f(tr.d(str, 1.0f), LVAppDesignKitTheme.d(composer2).f48390j), Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, composer2, 0, 14);
                            i13++;
                            composer2 = composer;
                        }
                        composer.F();
                        LVSkeletonKt.e(null, null, null, composer, 0, 7);
                        composer2 = composer;
                        composer2.F();
                    }
                    composer2.r();
                    composer2.F();
                } else {
                    composer2.L(1017386610);
                    composer2.F();
                }
                composer2.r();
                composer2.F();
            } else {
                i7 = 1;
            }
            composer2.L(921064280);
            composer2.F();
            composer2.r();
            if (productInfoUiModel != null) {
                String str14 = productInfoUiModel.f58822c;
                i8 = ((str14 != null || StringsKt.w(str14)) && ((str5 = productInfoUiModel.f58821b) == null || StringsKt.w(str5))) ? i7 : i5;
            } else {
                i8 = i5;
            }
            if (immersiveArticleProductDisplayStyleUiModel == ImmersiveArticleProductDisplayStyleUiModel.IMAGE_ONLY) {
                composer2.L(1017386610);
                composer2.F();
            } else {
                composer2.L(1017386610);
                composer2.F();
            }
            composer2.r();
            composer2.F();
        }
        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
    }
}
