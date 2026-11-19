package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.ScaleKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationIconButton;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationSearchBar;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionSearchBarKt;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleHelper;
import com.vuitton.android.presentation.screen.immersivearticle.models.AssetArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSizeCardUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class o1 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76657b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f76658c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f76659e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f76660f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f76661h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f76662i;

    public /* synthetic */ o1(ConfigurationSearchBar configurationSearchBar, String str, int i2, Function0 function0, boolean z, SoftwareKeyboardController softwareKeyboardController, Function0 function1) {
        this.f76660f = configurationSearchBar;
        this.g = str;
        this.d = i2;
        this.f76659e = function0;
        this.f76658c = z;
        this.f76662i = softwareKeyboardController;
        this.f76661h = function1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        Composer composer;
        int i2 = this.f76657b;
        Object obj4 = Composer.Companion.f7939a;
        Object obj5 = this.f76662i;
        int i3 = this.d;
        Object obj6 = this.f76661h;
        Object obj7 = this.g;
        Object obj8 = this.f76660f;
        switch (i2) {
            case 0:
                ConfigurationSearchBar configurationSearchBar = (ConfigurationSearchBar) obj8;
                String str = (String) obj7;
                SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) obj5;
                Function0 function0 = (Function0) obj6;
                Function2 function2 = (Function2) obj;
                Composer composer2 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                float f2 = AICompanionSearchBarKt.f52815a;
                function2.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer2.y(function2) ? 4 : 2;
                }
                if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierJ = PaddingKt.j(BackgroundKt.b(tr.d("AICompanionSearchBar$lambda$1", 1.0f), configurationSearchBar.d, LVAppDesignKitTheme.j(composer2).f48412e), LVAppDesignKitTheme.l(composer2).f48416e, LVAppDesignKitTheme.l(composer2).d);
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    Alignment.f8582a.getClass();
                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, composer2, 0);
                    int iHashCode = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierJ);
                    ComposeUiNode.b0.getClass();
                    int i4 = iIntValue;
                    Function0 function1 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function1);
                    } else {
                        composer2.o();
                    }
                    Function2 function3 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer2, rowMeasurePolicyA, function3);
                    Function2 function4 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer2, persistentCompositionLocalMapN, function4);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function5 = ComposeUiNode.Companion.g;
                    Updater.c(composer2, numValueOf, function5);
                    Function1 function6 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer2, function6);
                    Function2 function7 = ComposeUiNode.Companion.d;
                    Updater.c(composer2, modifierC, function7);
                    RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
                    Modifier modifierB = cj.b("AICompanionSearchBar$lambda$1", rowScopeInstance, 1.0f, true);
                    BiasAlignment.Vertical vertical = Alignment.Companion.l;
                    Modifier modifierB2 = rowScopeInstance.b(modifierB, vertical);
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8586e, false);
                    int iHashCode2 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierB2);
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function1);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, measurePolicyD, function3);
                    Updater.c(composer2, persistentCompositionLocalMapN2, function4);
                    cj.s(iHashCode2, composer2, function5, composer2, function6);
                    Updater.c(composer2, modifierC2, function7);
                    function2.invoke(composer2, Integer.valueOf(i4 & 14));
                    if (str.length() == 0) {
                        composer2.L(1498954870);
                        TextKt.c(StringResources_androidKt.c(composer2, i3), null, configurationSearchBar.f48577b, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).f48429j, composer2, 0, 0, 131066);
                        Composer composer3 = composer2;
                        composer3.F();
                        composer = composer3;
                    } else {
                        Composer composer4 = composer2;
                        composer4.L(1499209256);
                        composer4.F();
                        composer = composer4;
                    }
                    composer.r();
                    Modifier modifierB3 = rowScopeInstance.b(new DTFunctionNameModifier(r43), Alignment.Companion.m);
                    MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8589i, false);
                    int iHashCode3 = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer, modifierB3);
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function1);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, measurePolicyD2, function3);
                    Updater.c(composer, persistentCompositionLocalMapN3, function4);
                    cj.s(iHashCode3, composer, function5, composer, function6);
                    DTFunctionNameModifier dTFunctionNameModifierF = a.f(composer, modifierC3, function7, r43);
                    RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, composer, 48);
                    int iHashCode4 = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer, dTFunctionNameModifierF);
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function1);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, rowMeasurePolicyA2, function3);
                    Updater.c(composer, persistentCompositionLocalMapN4, function4);
                    cj.s(iHashCode4, composer, function5, composer, function6);
                    Updater.c(composer, modifierC4, function7);
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer).i0, composer, 0), StringResources_androidKt.c(composer, R.string.alt_mic), SizeKt.o(PaddingKt.m(ModifierExtKt.c(ModifierExtKt.e(new DTFunctionNameModifier(r43), "aiCompanion_microphone_button"), false, null, null, this.f76659e, 31), LVAppDesignKitTheme.l(composer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10), IconSize.f48349c), configurationSearchBar.f48578c, composer, 8, 0);
                    Modifier modifierO = SizeKt.o(n00.g("AICompanionSearchBar$lambda$1", "aiCompanion_sendMessage_button"), AICompanionSearchBarKt.f52815a);
                    int i5 = LVAppDesignKitTheme.g(composer).O1;
                    String strC = StringResources_androidKt.c(composer, R.string.alt_send);
                    long j2 = LVAppDesignKitTheme.c(composer).f48361b.v;
                    long j3 = LVAppDesignKitTheme.c(composer).f48361b.v;
                    long j4 = LVAppDesignKitTheme.c(composer).f48361b.m;
                    float f3 = IconSize.f48348b;
                    PaddingValuesImpl paddingValuesImplA = PaddingKt.a(AICompanionSearchBarKt.f52816b);
                    ConfigurationIconButton.Border.None none = ConfigurationIconButton.Border.None.f48559a;
                    ConfigurationIconButton configurationIconButton = new ConfigurationIconButton(j2, j3, null, null, j4, f3, paddingValuesImplA, none, none, none, 12, null);
                    boolean z = (StringsKt.w(str) || this.f76658c) ? false : true;
                    boolean zK = composer.K(softwareKeyboardController) | composer.K(function0);
                    Object objX = composer.x();
                    if (zK || objX == obj4) {
                        objX = new n1(softwareKeyboardController, function0, 0);
                        composer.q(objX);
                    }
                    LVIconButtonKt.b(modifierO, configurationIconButton, i5, null, strC, false, 0, z, false, (Function0) objX, composer, 0, 0, 744);
                    composer.r();
                    composer.r();
                    composer.r();
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            default:
                LvExoPlayer lvExoPlayer = (LvExoPlayer) obj8;
                AssetUiModel assetUiModel = (AssetUiModel) obj7;
                AssetArticleSectionUiModel assetArticleSectionUiModel = (AssetArticleSectionUiModel) obj6;
                State state = (State) obj5;
                Composer composer5 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((BoxScope) obj).getClass();
                if (composer5.p(1 & iIntValue2, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierO2 = new DTFunctionNameModifier("ImmersiveArticleAssetView$lambda$2$0$1$1").o(SizeKt.f5052c);
                    float fFloatValue = ((Number) state.getF10755b()).floatValue();
                    Modifier modifierB4 = ClipKt.b(ScaleKt.a(modifierO2, fFloatValue, fFloatValue));
                    ExoPlayer exoPlayer = lvExoPlayer.f50900a;
                    String str2 = assetUiModel.f51781c.f51783c;
                    ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel = assetArticleSectionUiModel.g;
                    Float fValueOf = immersiveArticleSizeCardUiModel != ImmersiveArticleSizeCardUiModel.FULLSCREEN ? Float.valueOf(ImmersiveArticleHelper.a(immersiveArticleSizeCardUiModel)) : null;
                    boolean zD = composer5.d(i3);
                    Function0 function8 = this.f76659e;
                    boolean zK2 = zD | composer5.K(function8);
                    Object objX2 = composer5.x();
                    if (zK2 || objX2 == obj4) {
                        objX2 = new v20(i3, 0, function8);
                        composer5.q(objX2);
                    }
                    LvVideoPlayerKt.b(modifierB4, exoPlayer, str2, null, fValueOf, true, null, null, false, false, false, this.f76658c, null, false, 4, null, null, null, null, (Function0) objX2, null, composer5, ImageMetadata.EDGE_MODE, 24576, 0, 1554376);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ o1(LvExoPlayer lvExoPlayer, AssetUiModel assetUiModel, AssetArticleSectionUiModel assetArticleSectionUiModel, boolean z, int i2, Function0 function0, State state) {
        this.f76660f = lvExoPlayer;
        this.g = assetUiModel;
        this.f76661h = assetArticleSectionUiModel;
        this.f76658c = z;
        this.d = i2;
        this.f76659e = function0;
        this.f76662i = state;
    }
}
