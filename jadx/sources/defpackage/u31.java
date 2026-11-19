package defpackage;

import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.pager.PagerScope;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextMeasurer;
import androidx.compose.ui.text.TextMeasurerHelperKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Density;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.authentication.welcome.components.WelcomeScreenKt;
import com.vuitton.android.presentation.screen.authentication.welcome.model.WelcomeLoginAdvantages;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class u31 implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80220b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f80221c;
    public final /* synthetic */ Context d;

    public /* synthetic */ u31(int i2, Context context, List list) {
        this.f80220b = i2;
        this.f80221c = list;
        this.d = context;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        Composer composer;
        String str;
        int i2 = this.f80220b;
        AssetVideoUiModel assetVideoUiModel = null;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Context context = this.d;
        List list = this.f80221c;
        switch (i2) {
            case 0:
                int iIntValue = ((Integer) obj2).intValue();
                Composer composer2 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((PagerScope) obj).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                AssetUiModel assetUiModel = (AssetUiModel) list.get(iIntValue);
                AssetImageUiModel assetImageUiModel = assetUiModel.f51780b;
                if (assetImageUiModel == null || !StringExtKt.a(assetImageUiModel.f51778b)) {
                    assetImageUiModel = null;
                }
                if (assetImageUiModel == null) {
                    composer2.L(-10314410);
                    composer2.F();
                    composer = composer2;
                } else {
                    Modifier modifierO = pq0.j(-10314409, composer2, "TheLookImmersiveArticleDetailScreen$lambda$5$0$0$0$1$0").o(SizeKt.f5052c);
                    String strB = new UrlFactory(ContextExtKt.f(context)).b(assetImageUiModel.f51778b, new ImageConfiguration.Background.Opaque(null, 1, null));
                    strB.getClass();
                    ContentScale.f9447a.getClass();
                    ImageLoaderKt.b(modifierO, strB, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, composer2, 390, 2040);
                    composer = composer2;
                    composer.F();
                }
                AssetVideoUiModel assetVideoUiModel2 = assetUiModel.f51781c;
                if (assetVideoUiModel2 != null && StringExtKt.a(assetVideoUiModel2.f51783c)) {
                    assetVideoUiModel = assetVideoUiModel2;
                }
                if (assetVideoUiModel == null) {
                    composer.L(-9317016);
                    composer.F();
                } else {
                    Modifier modifierO2 = pq0.j(-9317015, composer, "TheLookImmersiveArticleDetailScreen$lambda$5$0$0$0$1$0").o(SizeKt.f5052c);
                    Object objX = composer.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new LvExoPlayer(context).f50900a;
                        composer.q(objX);
                    }
                    Composer composer3 = composer;
                    LvVideoPlayerKt.b(modifierO2, (ExoPlayer) objX, assetVideoUiModel.f51783c, null, null, false, assetVideoUiModel.d, null, false, false, false, false, null, false, 0, null, null, null, null, null, null, composer3, 6, 24576, 0, 2080696);
                    composer3.F();
                }
                return Unit.f71739a;
            default:
                int iIntValue2 = ((Integer) obj2).intValue();
                Composer composer4 = (Composer) obj3;
                ((Integer) obj4).getClass();
                float f2 = WelcomeScreenKt.f54272a;
                ((PagerScope) obj).getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("LoginAdvantagesCarousel$lambda$6"), LVAppDesignKitTheme.l(composer4).f48420j, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer4, 0);
                int iHashCode = Long.hashCode(composer4.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer4.n();
                Modifier modifierC = ComposedModifierKt.c(composer4, modifierK);
                ComposeUiNode.b0.getClass();
                Function0 function0 = ComposeUiNode.Companion.f9641b;
                if (composer4.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer4.B();
                if (composer4.getS()) {
                    composer4.C(function0);
                } else {
                    composer4.o();
                }
                Updater.c(composer4, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(composer4, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                Updater.c(composer4, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(composer4, ComposeUiNode.Companion.f9645h);
                Updater.c(composer4, modifierC, ComposeUiNode.Companion.d);
                StringResourceUiModel title = ((WelcomeLoginAdvantages) list.get(iIntValue2)).getTitle();
                if (title != null) {
                    Modifier modifierH = pq0.h(1.0f, -1993763028, composer4, "LoginAdvantagesCarousel$lambda$6");
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer4).l;
                    long j2 = LVAppDesignKitTheme.c(composer4).f48361b.m;
                    TextAlign.f10959b.getClass();
                    str = "LoginAdvantagesCarousel$lambda$6";
                    TextKt.c(StringResourceUiModelKt.a(title, context), modifierH, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, composer4, 48, 0, 130040);
                    composer4 = composer4;
                    composer4.F();
                } else {
                    str = "LoginAdvantagesCarousel$lambda$6";
                    composer4.L(-1993387959);
                    TextStyle textStyle2 = LVAppDesignKitTheme.n(composer4).l;
                    TextMeasurer textMeasurerA = TextMeasurerHelperKt.a(composer4);
                    boolean zK = composer4.K(textStyle2) | composer4.K(textMeasurerA);
                    Object objX2 = composer4.x();
                    if (zK || objX2 == composer$Companion$Empty$1) {
                        TextAlign.f10959b.getClass();
                        objX2 = Integer.valueOf((int) (TextMeasurer.a(textMeasurerA, "", TextStyle.a(textStyle2, 0L, 0L, null, null, 0L, null, TextAlign.f10961e, 0, 0L, null, null, 16744447), 0L, 1020).f10554c & BodyPartID.bodyIdMax));
                        composer4.q(objX2);
                    }
                    SpacerKt.a(composer4, SizeKt.f(new DTFunctionNameModifier(str), ((Density) composer4.k(CompositionLocalsKt.f10031h)).k1(((Number) objX2).intValue())));
                    composer4.F();
                }
                Modifier modifierE = ModifierExtKt.e(SizeKt.d(PaddingKt.m(new DTFunctionNameModifier(str), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer4).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f), "mylvAuthentication_welcome_text");
                TextStyle textStyle3 = LVAppDesignKitTheme.n(composer4).f48426f;
                long j3 = LVAppDesignKitTheme.c(composer4).f48361b.m;
                TextAlign.f10959b.getClass();
                Composer composer5 = composer4;
                TextKt.c(StringResourceUiModelKt.a(((WelcomeLoginAdvantages) list.get(iIntValue2)).getDescription(), context), modifierE, j3, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle3, composer5, 0, 0, 130040);
                composer5.r();
                return Unit.f71739a;
        }
    }
}
