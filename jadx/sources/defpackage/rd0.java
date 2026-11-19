package defpackage;

import android.graphics.PathMeasure;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.onboarding.components.ConfirmPreferenceIconsBottomKt;
import com.vuitton.android.presentation.screen.onboarding.components.OnboardingIconComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rd0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79320b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LVModalBottomSheetState f79321c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f79322e;

    public /* synthetic */ rd0(LVModalBottomSheetState lVModalBottomSheetState, Function1 function1, MutableState mutableState, int i2) {
        this.f79320b = i2;
        this.f79321c = lVModalBottomSheetState;
        this.d = function1;
        this.f79322e = mutableState;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f79320b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        MutableState mutableState = this.f79322e;
        Function1 function1 = this.d;
        LVModalBottomSheetState lVModalBottomSheetState = this.f79321c;
        ColumnScope columnScope = (ColumnScope) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        switch (i2) {
            case 0:
                columnScope.getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    boolean zY = composer.y(lVModalBottomSheetState) | composer.K(function1);
                    Object objX = composer.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new qd0(lVModalBottomSheetState, function1, mutableState, 1);
                        composer.q(objX);
                    }
                    ConfirmPreferenceIconsBottomKt.a((Function0) objX, composer, 0);
                } else {
                    composer.D();
                }
                break;
            default:
                PathMeasure pathMeasure = OnboardingIconComposableKt.f59551a;
                columnScope.getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    boolean zY2 = composer.y(lVModalBottomSheetState) | composer.K(function1);
                    Object objX2 = composer.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new qd0(lVModalBottomSheetState, function1, mutableState, 2);
                        composer.q(objX2);
                    }
                    ConfirmPreferenceIconsBottomKt.a((Function0) objX2, composer, 0);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
