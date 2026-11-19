package defpackage;

import android.content.Context;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.ColorResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.common.editorial.components.CarouselAssetKt;
import com.vuitton.android.presentation.common.editorial.components.carouselm.CarouselMItemKt;
import com.vuitton.android.presentation.common.editorial.models.CarouselMItemUiModel;
import com.vuitton.android.presentation.compose.LVPlayPauseButtonKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductImageUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductMediaUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductVideoUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyColorSelectorKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyProductTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ColorUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LookUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TutorialSectionDataUiModel;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlinx.collections.immutable.ImmutableList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rd implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79316b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f79317c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f79318e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f79319f;

    public /* synthetic */ rd(LVColorScheme lVColorScheme, boolean z, Function2 function2, List list) {
        this.f79316b = 1;
        this.d = lVColorScheme;
        this.f79317c = z;
        this.f79318e = function2;
        this.f79319f = list;
    }

    /* JADX WARN: Code duplicated, block: B:106:0x04c8  */
    /* JADX WARN: Code duplicated, block: B:107:0x04ca  */
    /* JADX WARN: Code duplicated, block: B:110:0x04ff  */
    /* JADX WARN: Code duplicated, block: B:115:0x0524  */
    /* JADX WARN: Code duplicated, block: B:117:0x052c  */
    /* JADX WARN: Code duplicated, block: B:121:0x053e  */
    /* JADX WARN: Code duplicated, block: B:87:0x03e1  */
    /* JADX WARN: Code duplicated, block: B:89:0x0418  */
    /* JADX WARN: Code duplicated, block: B:91:0x0421  */
    /* JADX WARN: Code duplicated, block: B:92:0x0425  */
    /* JADX WARN: Code duplicated, block: B:95:0x0461  */
    /* JADX WARN: Code duplicated, block: B:96:0x0464  */
    /* JADX WARN: Code duplicated, block: B:99:0x0469  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        BiasAlignment.Horizontal horizontal;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapN;
        Modifier modifierC;
        Function0 function0;
        String str;
        String str2;
        ColorUiModel colorUiModel;
        ColorUiModel colorUiModel2;
        int i2 = this.f79316b;
        String str3 = null;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj5 = this.f79319f;
        Object obj6 = this.f79318e;
        Object obj7 = this.d;
        switch (i2) {
            case 0:
                TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) obj7;
                LookUiModel lookUiModel = (LookUiModel) obj6;
                Function0 function1 = (Function0) obj5;
                LookUiModel lookUiModel2 = (LookUiModel) obj2;
                Composer composer = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScope) obj).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                String strH = tr.h((tryOnProductUiModel == null || (colorUiModel2 = tryOnProductUiModel.g) == null) ? null : colorUiModel2.f62159a, " - ", lookUiModel != null ? lookUiModel.d : null);
                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                boolean z = this.f79317c;
                if (lookUiModel2 == null) {
                    Modifier modifierH = pq0.h(1.0f, -1289891422, composer, "BeautyColorSelector$lambda$8$1");
                    Alignment.f8582a.getClass();
                    horizontal = Alignment.Companion.o;
                    Modifier modifierB = columnScopeInstance.b(modifierH, horizontal);
                    columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, composer, 0);
                    iHashCode = Long.hashCode(composer.getT());
                    persistentCompositionLocalMapN = composer.n();
                    modifierC = ComposedModifierKt.c(composer, modifierB);
                    ComposeUiNode.b0.getClass();
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (composer.getF7976a() != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function0);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer, ComposeUiNode.Companion.f9645h);
                    Modifier modifierA = ModifierExtKt.a(PaddingKt.m(columnScopeInstance.b(a.f(composer, modifierC, ComposeUiNode.Companion.d, "BeautyColorSelector$lambda$8$1"), horizontal), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), null, null, 7);
                    if (tryOnProductUiModel != null) {
                        str = tryOnProductUiModel.f62187f;
                    } else {
                        str = null;
                    }
                    if (str == null) {
                        str = "";
                    }
                    TextKt.c(str, modifierA, LVAppDesignKitTheme.c(composer).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).o, composer, 0, 0, 131064);
                    Modifier modifierA2 = ModifierExtKt.a(PaddingKt.m(columnScopeInstance.b(new DTFunctionNameModifier("BeautyColorSelector$lambda$8$1"), horizontal), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, 7), null, null, 7);
                    if (tryOnProductUiModel != null && (colorUiModel = tryOnProductUiModel.g) != null) {
                        str3 = colorUiModel.f62159a;
                    }
                    if (str3 == null) {
                        str2 = "";
                    } else {
                        str2 = str3;
                    }
                    TextKt.c(str2, modifierA2, LVAppDesignKitTheme.c(composer).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).m, composer, 0, 0, 131064);
                    if (z) {
                        composer.L(-1761846931);
                        BeautyColorSelectorKt.b(0, composer, PaddingKt.m(columnScopeInstance.b(new DTFunctionNameModifier("BeautyColorSelector$lambda$8$1"), horizontal), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, 7), tryOnProductUiModel == null && tryOnProductUiModel.f62190j);
                        composer.F();
                    } else {
                        composer.L(-1761468297);
                        composer.F();
                    }
                    composer.r();
                    composer.F();
                } else {
                    if ((tryOnProductUiModel != null ? tryOnProductUiModel.f62185c : null) != BeautyProductTypeUiModel.NONE) {
                        Modifier modifierH2 = pq0.h(1.0f, -1290960457, composer, "BeautyColorSelector$lambda$8$1");
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal2 = Alignment.Companion.o;
                        Modifier modifierM = PaddingKt.m(PaddingKt.m(columnScopeInstance.b(modifierH2, horizontal2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).d, 7);
                        ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f4920c, horizontal2, composer, 48);
                        int iHashCode2 = Long.hashCode(composer.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
                        Modifier modifierC2 = ComposedModifierKt.c(composer, modifierM);
                        ComposeUiNode.b0.getClass();
                        Function0 function2 = ComposeUiNode.Companion.f9641b;
                        if (composer.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer.B();
                        if (composer.getS()) {
                            composer.C(function2);
                        } else {
                            composer.o();
                        }
                        Updater.c(composer, columnMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                        Updater.b(composer, ComposeUiNode.Companion.f9645h);
                        Updater.c(composer, modifierC2, ComposeUiNode.Companion.d);
                        BeautyColorSelectorKt.c(strH, function1, composer, 0);
                        if (z) {
                            composer.L(-1528685834);
                            BeautyColorSelectorKt.b(0, composer, PaddingKt.m(columnScopeInstance.b(new DTFunctionNameModifier("BeautyColorSelector$lambda$8$1"), horizontal2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, 7), tryOnProductUiModel != null && tryOnProductUiModel.f62190j);
                            composer.F();
                        } else {
                            composer.L(-1528307200);
                            composer.F();
                        }
                        composer.r();
                        composer.F();
                    } else {
                        Modifier modifierH3 = pq0.h(1.0f, -1289891422, composer, "BeautyColorSelector$lambda$8$1");
                        Alignment.f8582a.getClass();
                        horizontal = Alignment.Companion.o;
                        Modifier modifierB2 = columnScopeInstance.b(modifierH3, horizontal);
                        columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, composer, 0);
                        iHashCode = Long.hashCode(composer.getT());
                        persistentCompositionLocalMapN = composer.n();
                        modifierC = ComposedModifierKt.c(composer, modifierB2);
                        ComposeUiNode.b0.getClass();
                        function0 = ComposeUiNode.Companion.f9641b;
                        if (composer.getF7976a() != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer.B();
                        if (composer.getS()) {
                            composer.C(function0);
                        } else {
                            composer.o();
                        }
                        Updater.c(composer, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(composer, ComposeUiNode.Companion.f9645h);
                        Modifier modifierA3 = ModifierExtKt.a(PaddingKt.m(columnScopeInstance.b(a.f(composer, modifierC, ComposeUiNode.Companion.d, "BeautyColorSelector$lambda$8$1"), horizontal), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), null, null, 7);
                        if (tryOnProductUiModel != null) {
                            str = tryOnProductUiModel.f62187f;
                        } else {
                            str = null;
                        }
                        if (str == null) {
                            str = "";
                        }
                        TextKt.c(str, modifierA3, LVAppDesignKitTheme.c(composer).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).o, composer, 0, 0, 131064);
                        Modifier modifierA4 = ModifierExtKt.a(PaddingKt.m(columnScopeInstance.b(new DTFunctionNameModifier("BeautyColorSelector$lambda$8$1"), horizontal), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, 7), null, null, 7);
                        if (tryOnProductUiModel != null) {
                            str3 = colorUiModel.f62159a;
                        }
                        if (str3 == null) {
                            str2 = "";
                        } else {
                            str2 = str3;
                        }
                        TextKt.c(str2, modifierA4, LVAppDesignKitTheme.c(composer).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).m, composer, 0, 0, 131064);
                        if (z) {
                            composer.L(-1761846931);
                            BeautyColorSelectorKt.b(0, composer, PaddingKt.m(columnScopeInstance.b(new DTFunctionNameModifier("BeautyColorSelector$lambda$8$1"), horizontal), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, 7), tryOnProductUiModel == null && tryOnProductUiModel.f62190j);
                            composer.F();
                        } else {
                            composer.L(-1761468297);
                            composer.F();
                        }
                        composer.r();
                        composer.F();
                    }
                }
                return Unit.f71739a;
            case 1:
                LVColorScheme lVColorScheme = (LVColorScheme) obj7;
                Function2 function3 = (Function2) obj6;
                List list = (List) obj5;
                int iIntValue = ((Integer) obj).intValue();
                CarouselMItemUiModel carouselMItemUiModel = (CarouselMItemUiModel) obj2;
                Composer composer2 = (Composer) obj3;
                int iIntValue2 = ((Integer) obj4).intValue();
                carouselMItemUiModel.getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                boolean zK = composer2.K(function3) | composer2.y(list) | composer2.y(carouselMItemUiModel);
                Object objX = composer2.x();
                if (zK || objX == composer$Companion$Empty$1) {
                    objX = new n0(function3, list, carouselMItemUiModel, 10);
                    composer2.q(objX);
                }
                CarouselMItemKt.a(null, carouselMItemUiModel, iIntValue, lVColorScheme, this.f79317c, (Function1) objX, composer2, (iIntValue2 & 112) | ((iIntValue2 << 6) & 896));
                return Unit.f71739a;
            case 2:
                Function1 function4 = (Function1) obj6;
                Context context = (Context) obj5;
                int iIntValue3 = ((Integer) obj2).intValue();
                Composer composer3 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((PagerScope) obj).getClass();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                ProductMediaUiModel productMediaUiModel = (ProductMediaUiModel) ((ImmutableList) obj7).get(iIntValue3);
                if (productMediaUiModel instanceof ProductImageUiModel) {
                    Modifier modifierB3 = BackgroundKt.b(pq0.j(499435700, composer3, "PdpSlider$lambda$1$0$2").o(SizeKt.f5052c), ColorResources_androidKt.a(composer3, R.color.off_white), RectangleShapeKt.f8913a);
                    boolean zK2 = composer3.K(function4) | composer3.K(productMediaUiModel);
                    Object objX2 = composer3.x();
                    if (zK2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new jm0(function4, (ProductImageUiModel) productMediaUiModel, 6);
                        composer3.q(objX2);
                    }
                    Modifier modifierA5 = AspectRatioKt.a(ClickableKt.d(modifierB3, false, null, null, (Function0) objX2, 15), 1.0f, true);
                    String strB = new UrlFactory(ContextExtKt.f((Context) composer3.k(AndroidCompositionLocals_androidKt.f9936b))).b(((ProductImageUiModel) productMediaUiModel).f61733b, new ImageConfiguration.Background.Opaque(null, 1, null));
                    strB.getClass();
                    ImageLoaderKt.b(modifierA5, strB, null, null, null, 0, false, null, null, null, composer3, 0, 2044);
                    composer3.F();
                } else {
                    if (!(productMediaUiModel instanceof ProductVideoUiModel)) {
                        throw o60.v(composer3, 1124488707);
                    }
                    composer3.L(500333553);
                    Object objX3 = composer3.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new LvExoPlayer(context);
                        composer3.q(objX3);
                    }
                    LvExoPlayer lvExoPlayer = (LvExoPlayer) objX3;
                    Modifier modifierO = new DTFunctionNameModifier("PdpSlider$lambda$1$0$2").o(SizeKt.f5052c);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode3 = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer3.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer3, modifierO);
                    ComposeUiNode.b0.getClass();
                    Function0 function5 = ComposeUiNode.Companion.f9641b;
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function5);
                    } else {
                        composer3.o();
                    }
                    Updater.c(composer3, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer3, persistentCompositionLocalMapN3, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer3, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                    Updater.b(composer3, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer3, modifierC3, ComposeUiNode.Companion.d);
                    Modifier modifierB4 = ClipKt.b(SizeKt.d(new DTFunctionNameModifier("PdpSlider$lambda$1$0$2"), 1.0f));
                    ExoPlayer exoPlayer = lvExoPlayer.f50900a;
                    ProductVideoUiModel productVideoUiModel = (ProductVideoUiModel) productMediaUiModel;
                    String str4 = productVideoUiModel.f61743b;
                    String str5 = productVideoUiModel.f61744c;
                    Float fValueOf = Float.valueOf(1.0f);
                    boolean z2 = this.f79317c;
                    LvVideoPlayerKt.b(modifierB4, exoPlayer, str4, null, fValueOf, true, str5, null, false, false, false, z2, null, false, 4, null, null, null, null, null, null, composer3, 221190, 24576, 0, 2078600);
                    if (z2) {
                        Modifier modifierG = BoxScopeInstance.f4938a.g(pq0.j(633728908, composer3, "PdpSlider$lambda$1$0$2"), Alignment.Companion.f8588h);
                        boolean zBooleanValue = ((Boolean) ((SnapshotMutableStateImpl) lvExoPlayer.f50901b).getF10755b()).booleanValue();
                        boolean zY = composer3.y(lvExoPlayer);
                        Object objX4 = composer3.x();
                        if (zY || objX4 == composer$Companion$Empty$1) {
                            objX4 = new gj(lvExoPlayer, 11);
                            composer3.q(objX4);
                        }
                        LVPlayPauseButtonKt.a(0, composer3, modifierG, (Function0) objX4, zBooleanValue);
                        composer3.F();
                    } else {
                        composer3.L(634375661);
                        composer3.F();
                    }
                    composer3.r();
                    composer3.F();
                }
                return Unit.f71739a;
            default:
                Context context2 = (Context) obj7;
                PagerState pagerState = (PagerState) obj6;
                TutorialSectionDataUiModel.AssetListSectionUiModel assetListSectionUiModel = (TutorialSectionDataUiModel.AssetListSectionUiModel) obj5;
                int iIntValue4 = ((Integer) obj2).intValue();
                Composer composer4 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((PagerScope) obj).getClass();
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                Modifier modifierC4 = FocusableKt.c(GradientKt.a(new DTFunctionNameModifier("TutorialAssetList$lambda$1$0"), GradientKt.f48343b), null, 3);
                boolean zY2 = composer4.y(context2) | composer4.K(pagerState);
                Object objX5 = composer4.x();
                if (zY2 || objX5 == composer$Companion$Empty$1) {
                    objX5 = new m21(context2, pagerState, 24);
                    composer4.q(objX5);
                }
                Modifier modifierB5 = SemanticsModifierKt.b(modifierC4, false, (Function1) objX5);
                AssetUiModel assetUiModel = (AssetUiModel) assetListSectionUiModel.f62193a.get(iIntValue4);
                Object objX6 = composer4.x();
                if (objX6 == composer$Companion$Empty$1) {
                    objX6 = new l31(27);
                    composer4.q(objX6);
                }
                CarouselAssetKt.a(modifierB5, assetUiModel, 0.8f, RectangleShapeKt.f8913a, this.f79317c, (Function0) objX6, composer4, 200064, 0);
                return Unit.f71739a;
        }
    }

    public /* synthetic */ rd(Object obj, Object obj2, Object obj3, boolean z, int i2) {
        this.f79316b = i2;
        this.d = obj;
        this.f79318e = obj2;
        this.f79319f = obj3;
        this.f79317c = z;
    }
}
