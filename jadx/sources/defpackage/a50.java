package defpackage;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextStyle;
import com.vuitton.android.designkit.components.components.LVAnimatedDigitsKt;
import com.vuitton.android.presentation.compose.components.LVLiveCountdownKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class a50 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f410b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f411c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f412e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f413f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f414h;

    public /* synthetic */ a50(Modifier modifier, int i2, String str, boolean z, TextStyle textStyle, long j2) {
        this.f411c = modifier;
        this.g = i2;
        this.d = str;
        this.f413f = z;
        this.f414h = textStyle;
        this.f412e = j2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f410b;
        int i3 = this.g;
        Object obj3 = this.f414h;
        switch (i2) {
            case 0:
                TextStyle textStyle = (TextStyle) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                Modifier modifierE = this.f411c;
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "LVAnimatedDigits_V_9fs2A$lambda$1");
                }
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    Alignment.f8582a.getClass();
                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, composer, 0);
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC = ComposedModifierKt.c(composer, modifierE);
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
                    Updater.c(composer, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
                    composer.L(1385275122);
                    for (int i4 = 0; i4 < i3; i4++) {
                        LVAnimatedDigitsKt.b(this.d.charAt(i4), this.f413f, textStyle, this.f412e, composer, 0);
                    }
                    composer.F();
                    composer.r();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                LVLiveCountdownKt.b(this.f411c, this.d, this.f412e, (String) obj3, this.f413f, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ a50(Modifier modifier, String str, long j2, String str2, boolean z, int i2) {
        this.f411c = modifier;
        this.d = str;
        this.f412e = j2;
        this.f414h = str2;
        this.f413f = z;
        this.g = i2;
    }
}
