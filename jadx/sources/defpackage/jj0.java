package defpackage;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class jj0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71412b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f71413c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ jj0(MutableState mutableState, Function0 function0) {
        this.f71413c = mutableState;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f71412b;
        MutableState mutableState = this.f71413c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(1 & iIntValue, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierB = WindowInsetsPadding_androidKt.b(BackgroundKt.b(tr.d("OsaKisaComposable$lambda$5", 1.0f), LVAppDesignKitTheme.c(composer).f48361b.f48374a, RectangleShapeKt.f8913a));
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC = ComposedModifierKt.c(composer, modifierB);
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
                    LVButtonKt.b(0, 376, composer, PaddingKt.l(tr.d("OsaKisaComposable$lambda$5", 1.0f), LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48415c, LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48417f), LVAppDesignKitTheme.b(composer).f48446a, null, null, StringResources_androidKt.c(composer, R.string.legal_specific_consent_cta), this.d, false, ((Boolean) mutableState.getF10755b()).booleanValue(), false);
                    composer.r();
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                float f2 = ThankYouScreenKt.f65243a;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    AnimatedVisibilityKt.e(((Boolean) mutableState.getF10755b()).booleanValue(), null, EnterExitTransitionKt.f(AnimationSpecKt.c(1000, 0, null, 6), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), null, null, ComposableLambdaKt.b(-1655864266, new kv0(this.d, 6), composer2), composer2, 196992, 26);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ jj0(Function0 function0, MutableState mutableState) {
        this.d = function0;
        this.f71413c = mutableState;
    }
}
