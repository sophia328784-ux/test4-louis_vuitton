package defpackage;

import android.os.Build;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsConnection_androidKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.layout.e;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemScope;
import androidx.compose.foundation.pager.PagerScope;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.InspectableValueKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v10 implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ComposableLambdaImpl f80473c;

    public /* synthetic */ v10(ComposableLambdaImpl composableLambdaImpl, int i2) {
        this.f80472b = i2;
        this.f80473c = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        int i2 = this.f80472b;
        ComposableLambdaImpl composableLambdaImpl = this.f80473c;
        switch (i2) {
            case 0:
                PagerScope pagerScope = (PagerScope) obj;
                Integer num = (Integer) obj2;
                num.getClass();
                int iIntValue = ((Integer) obj4).intValue();
                pagerScope.getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                composableLambdaImpl.g(pagerScope, num, (Composer) obj3, Integer.valueOf((iIntValue & 112) | (iIntValue & 14) | KyberEngine.KyberPolyBytes));
                return Unit.f71739a;
            case 1:
                LazyStaggeredGridItemScope lazyStaggeredGridItemScope = (LazyStaggeredGridItemScope) obj;
                ((Integer) obj2).getClass();
                Composer composer = (Composer) obj3;
                int iIntValue2 = ((Integer) obj4).intValue();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer.K(lazyStaggeredGridItemScope) ? 4 : 2;
                }
                if (composer.p(iIntValue2 & 1, (iIntValue2 & 131) != 130)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    composableLambdaImpl.A(lazyStaggeredGridItemScope, composer, Integer.valueOf(iIntValue2 & 14));
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                Integer num2 = (Integer) obj2;
                num2.getClass();
                Composer composer2 = (Composer) obj3;
                int iIntValue3 = ((Integer) obj4).intValue();
                ((PagerScope) obj).getClass();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                Modifier modifierD = ScrollKt.d(PaddingKt.k(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2$0$1").o(SizeKt.f5052c), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), ScrollKt.b(composer2), false, 14);
                float f2 = WindowInsetsConnection_androidKt.f5070a;
                if (Build.VERSION.SDK_INT >= 30) {
                    modifierD = ComposedModifierKt.a(modifierD, InspectableValueKt.f10100a, new e());
                }
                Modifier modifierA = WindowInsetsPadding_androidKt.a(modifierD);
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, composer2, 48);
                int iHashCode = Long.hashCode(composer2.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                Modifier modifierC = ComposedModifierKt.c(composer2, modifierA);
                ComposeUiNode.b0.getClass();
                Function0 function0 = ComposeUiNode.Companion.f9641b;
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
                Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                composableLambdaImpl.g(ColumnScopeInstance.f4944a, num2, composer2, Integer.valueOf((iIntValue3 & 112) | 6));
                composer2.r();
                return Unit.f71739a;
        }
    }
}
