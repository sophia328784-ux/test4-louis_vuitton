package defpackage;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVPassLocalProviderKt;
import com.vuitton.android.presentation.screen.account.lvpass.LVPassActivity;
import com.vuitton.android.presentation.screen.account.lvpass.components.QRCodeComposableKt;
import com.vuitton.android.presentation.screen.account.userworldwideid.UserWorldwideIdViewModel;
import defpackage.ef;
import defpackage.t30;
import defpackage.x60;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class w60 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80774b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LVPassActivity f80775c;

    public /* synthetic */ w60(LVPassActivity lVPassActivity, int i2) {
        this.f80774b = i2;
        this.f80775c = lVPassActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80774b;
        final LVPassActivity lVPassActivity = this.f80775c;
        int i3 = 1;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                LVPassActivity.Companion companion = LVPassActivity.s;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(1403237539, new w60(lVPassActivity, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                LVPassActivity.Companion companion2 = LVPassActivity.s;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    LVPassLocalProviderKt.a(ComposableLambdaKt.b(1567372013, new Function2() { // from class: com.vuitton.android.presentation.screen.account.lvpass.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            Composer composer2 = (Composer) obj3;
                            int iIntValue2 = ((Integer) obj4).intValue();
                            LVPassActivity.Companion companion3 = LVPassActivity.s;
                            int i4 = 0;
                            if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                Context context = (Context) composer2.k(AndroidCompositionLocals_androidKt.f9936b);
                                Unit unit = Unit.f71739a;
                                LVPassActivity lVPassActivity2 = lVPassActivity;
                                boolean zY = composer2.y(lVPassActivity2) | composer2.y(context);
                                Object objX = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$1) {
                                    objX = new LVPassActivity$onCreate$1$1$1$1$1(lVPassActivity2, context, null);
                                    composer2.q(objX);
                                }
                                EffectsKt.e(composer2, unit, (Function2) objX);
                                QRCodeViewModel qRCodeViewModel = (QRCodeViewModel) lVPassActivity2.q.getF71699b();
                                UserWorldwideIdViewModel userWorldwideIdViewModel = (UserWorldwideIdViewModel) lVPassActivity2.r.getF71699b();
                                boolean zY2 = composer2.y(lVPassActivity2);
                                Object objX2 = composer2.x();
                                if (zY2 || objX2 == composer$Companion$Empty$1) {
                                    LVPassActivity$onCreate$1$1$1$2$1 lVPassActivity$onCreate$1$1$1$2$1 = new LVPassActivity$onCreate$1$1$1$2$1(1, lVPassActivity2, LVPassActivity.class, "setBrightness", "setBrightness(Z)V", 0);
                                    composer2.q(lVPassActivity$onCreate$1$1$1$2$1);
                                    objX2 = lVPassActivity$onCreate$1$1$1$2$1;
                                }
                                Function1 function1 = (Function1) ((KFunction) objX2);
                                boolean zY3 = composer2.y(lVPassActivity2) | composer2.y(context);
                                Object objX3 = composer2.x();
                                int i5 = 7;
                                if (zY3 || objX3 == composer$Companion$Empty$1) {
                                    objX3 = new t30(lVPassActivity2, context, i5);
                                    composer2.q(objX3);
                                }
                                Function0 function0 = (Function0) objX3;
                                boolean zY4 = composer2.y(lVPassActivity2);
                                Object objX4 = composer2.x();
                                if (zY4 || objX4 == composer$Companion$Empty$1) {
                                    objX4 = new x60(lVPassActivity2, i4);
                                    composer2.q(objX4);
                                }
                                Function0 function2 = (Function0) objX4;
                                boolean zY5 = composer2.y(context);
                                Object objX5 = composer2.x();
                                if (zY5 || objX5 == composer$Companion$Empty$1) {
                                    objX5 = new ef(context, i5);
                                    composer2.q(objX5);
                                }
                                QRCodeComposableKt.b(qRCodeViewModel, userWorldwideIdViewModel, function1, function0, function2, (Function1) objX5, composer2, 0);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer), composer, 6);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
