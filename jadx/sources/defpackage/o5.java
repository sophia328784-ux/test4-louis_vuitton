package defpackage;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.AndroidCursorHandle_androidKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.DpSize;
import com.vuitton.android.presentation.screen.audioguide.components.AudioGuideBackgroundKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class o5 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76695b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f76696c;
    public final /* synthetic */ Object d;

    public /* synthetic */ o5(int i2, String str, long j2) {
        this.d = str;
        this.f76696c = j2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76695b;
        long j2 = this.f76696c;
        Object obj3 = this.d;
        switch (i2) {
            case 0:
                Modifier modifierE = (Modifier) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                float f2 = AndroidCursorHandle_androidKt.f5847a;
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "CursorHandle_USBMPiE$lambda$1");
                }
                Modifier modifier = modifierE;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    if (j2 != 9205357640488583168L) {
                        composer.L(-1244013944);
                        Modifier modifierM = SizeKt.m(modifier, DpSize.b(j2), DpSize.a(j2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12);
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8585c, false);
                        int iHashCode = Long.hashCode(composer.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                        Modifier modifierC = ComposedModifierKt.c(composer, modifierM);
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
                        AndroidCursorHandle_androidKt.b(null, composer, 0, 1);
                        composer.r();
                        composer.F();
                    } else {
                        composer.L(-1243644858);
                        AndroidCursorHandle_androidKt.b(modifier, composer, 0, 0);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                AudioGuideBackgroundKt.a((String) obj3, j2, (Composer) obj, RecomposeScopeImplKt.a(7));
                return Unit.f71739a;
            default:
                Function0 function1 = (Function0) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    IconButtonKt.a(function1, null, false, null, null, ComposableLambdaKt.b(-513577736, new g(j2, 5), composer2), composer2, 1572864, 62);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ o5(long j2, Modifier modifier) {
        this.f76696c = j2;
        this.d = modifier;
    }

    public /* synthetic */ o5(long j2, Function0 function0) {
        this.d = function0;
        this.f76696c = j2;
    }
}
