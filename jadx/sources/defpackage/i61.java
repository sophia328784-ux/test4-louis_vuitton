package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.options.models.OptionsViewState;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.WearingUiModel;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class i61 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69886b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69887c;
    public final /* synthetic */ Object d;

    public /* synthetic */ i61(Object obj, Object obj2, int i2) {
        this.f69886b = i2;
        this.f69887c = obj;
        this.d = obj2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        WearingUiModel wearingUiModel;
        WearingUiModel wearingUiModel2;
        AssetImageUiModel assetImageUiModel;
        String str;
        Modifier dTFunctionNameModifier;
        int i2 = this.f69886b;
        String str2 = null;
        Object obj4 = this.d;
        Object obj5 = this.f69887c;
        switch (i2) {
            case 0:
                ArrayList arrayList = (ArrayList) obj5;
                Modifier modifierE = (Modifier) obj4;
                int iIntValue = ((Integer) obj).intValue();
                Composer composer = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "WearingCarousel$lambda$1$0");
                }
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer.d(iIntValue) ? 4 : 2;
                }
                if (composer.p(1 & iIntValue2, (iIntValue2 & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierA = AspectRatioKt.a(new DTFunctionNameModifier("WearingCarousel$lambda$1$0"), 0.8f, false);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC = ComposedModifierKt.c(composer, modifierA);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function0);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
                    ModelSizeVariationUiModel modelSizeVariationUiModel = (ModelSizeVariationUiModel) CollectionsKt.G(iIntValue, arrayList);
                    String str3 = (modelSizeVariationUiModel == null || (wearingUiModel2 = (WearingUiModel) CollectionsKt.firstOrNull(modelSizeVariationUiModel.g)) == null || (assetImageUiModel = wearingUiModel2.f61538b) == null || (str = assetImageUiModel.f51778b) == null) ? null : str;
                    Modifier modifierO = new DTFunctionNameModifier("WearingCarousel$lambda$1$0").o(SizeKt.f5052c);
                    ContentScale.f9447a.getClass();
                    ImageLoaderKt.b(modifierO, str3, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, composer, 3462, 2032);
                    ModelSizeVariationUiModel modelSizeVariationUiModel2 = (ModelSizeVariationUiModel) CollectionsKt.G(iIntValue, arrayList);
                    if (modelSizeVariationUiModel2 != null && (wearingUiModel = (WearingUiModel) CollectionsKt.firstOrNull(modelSizeVariationUiModel2.g)) != null) {
                        str2 = wearingUiModel.d;
                    }
                    if (str2 != null) {
                        composer.L(-693923383);
                        Modifier modifierC2 = SizeKt.c(SizeKt.d(modifierE, 1.0f), 0.66f);
                        Brush.Companion companion = Brush.f8862a;
                        Color color = new Color(Color.b(0.6f, LVAppDesignKitTheme.c(composer).f48361b.u));
                        Color.f8866b.getClass();
                        BoxKt.a(BackgroundKt.a(modifierC2, Brush.Companion.b(companion, CollectionsKt.P(color, new Color(Color.f8870h)), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14)), composer, 0);
                        composer.F();
                    } else {
                        composer.L(-693296811);
                        composer.F();
                    }
                    composer.r();
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                OptionsViewState optionsViewState = (OptionsViewState) obj5;
                Function0 function1 = (Function0) obj4;
                Composer composer2 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer2.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("OptionsScreen$lambda$0$0$1");
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, horizontal, composer2, 48);
                    int iHashCode2 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer2, dTFunctionNameModifier2);
                    ComposeUiNode.b0.getClass();
                    Function0 function2 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function2);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer2, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                    Modifier modifierM = PaddingKt.m(a.f(composer2, modifierC3, ComposeUiNode.Companion.d, "OptionsScreen$lambda$0$0$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48419i, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                    if (optionsViewState.f59861h) {
                        composer2.L(-406248018);
                        composer2.F();
                        dTFunctionNameModifier = new DTFunctionNameModifier("OptionsScreen$lambda$0$0$1");
                    } else {
                        dTFunctionNameModifier = PaddingKt.m(pq0.j(-406380171, composer2, "OptionsScreen$lambda$0$0$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48419i, 7);
                        composer2.F();
                    }
                    TextKt.c("6.76.1 (672)", modifierM.o(dTFunctionNameModifier), LVAppDesignKitTheme.c(composer2).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).m, composer2, 0, 0, 131064);
                    if (optionsViewState.f59861h) {
                        Modifier modifierM2 = PaddingKt.m(pq0.j(-405840585, composer2, "OptionsScreen$lambda$0$0$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48419i, 7);
                        String strC = StringResources_androidKt.c(composer2, R.string.icp_certificate_value);
                        boolean zK = composer2.K(function1);
                        Object objX = composer2.x();
                        if (zK || objX == Composer.Companion.f7939a) {
                            objX = new ee0(function1, 10);
                            composer2.q(objX);
                        }
                        LVLinkKt.a(modifierM2, strC, false, null, false, (Function0) objX, composer2, 0, 28);
                        composer2.F();
                    } else {
                        composer2.L(-405534026);
                        composer2.F();
                    }
                    composer2.r();
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
        }
    }
}
