package com.vuitton.android.presentation.screen.authentication.social;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialRegisterLayoutKt;
import defpackage.d01;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f54127b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SocialRegisterActivity f54128c;

    public /* synthetic */ a(SocialRegisterActivity socialRegisterActivity, int i2) {
        this.f54127b = i2;
        this.f54128c = socialRegisterActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f54127b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        SocialRegisterActivity socialRegisterActivity = this.f54128c;
        int i3 = 2;
        int i4 = 1;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                SocialRegisterActivity.Companion companion = SocialRegisterActivity.s;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Unit unit = Unit.f71739a;
                    boolean zY = composer.y(socialRegisterActivity);
                    Object objX = composer.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new SocialRegisterActivity$onCreate$1$1$1$1(socialRegisterActivity, null);
                        composer.q(objX);
                    }
                    EffectsKt.e(composer, unit, (Function2) objX);
                    ThemeKt.a(null, ComposableLambdaKt.b(1545763430, new a(socialRegisterActivity, i4), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                SocialRegisterActivity.Companion companion2 = SocialRegisterActivity.s;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    SocialRegisterViewModelImpl socialRegisterViewModelImplJ = socialRegisterActivity.J();
                    SocialRegisterViewModelImpl socialRegisterViewModelImplJ2 = socialRegisterActivity.J();
                    boolean zY2 = composer2.y(socialRegisterViewModelImplJ2);
                    Object objX2 = composer2.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        SocialRegisterActivity$onCreate$1$1$2$1$1 socialRegisterActivity$onCreate$1$1$2$1$1 = new SocialRegisterActivity$onCreate$1$1$2$1$1(2, socialRegisterViewModelImplJ2, SocialRegisterViewModelImpl.class, "onFieldUpdated", "onFieldUpdated(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V", 0);
                        composer2.q(socialRegisterActivity$onCreate$1$1$2$1$1);
                        objX2 = socialRegisterActivity$onCreate$1$1$2$1$1;
                    }
                    KFunction kFunction = (KFunction) objX2;
                    SocialRegisterViewModelImpl socialRegisterViewModelImplJ3 = socialRegisterActivity.J();
                    boolean zY3 = composer2.y(socialRegisterViewModelImplJ3);
                    Object objX3 = composer2.x();
                    if (zY3 || objX3 == composer$Companion$Empty$1) {
                        SocialRegisterActivity$onCreate$1$1$2$2$1 socialRegisterActivity$onCreate$1$1$2$2$1 = new SocialRegisterActivity$onCreate$1$1$2$2$1(0, socialRegisterViewModelImplJ3, SocialRegisterViewModelImpl.class, "onConfirmClicked", "onConfirmClicked()V", 0);
                        composer2.q(socialRegisterActivity$onCreate$1$1$2$2$1);
                        objX3 = socialRegisterActivity$onCreate$1$1$2$2$1;
                    }
                    Function2 function2 = (Function2) kFunction;
                    Function0 function0 = (Function0) ((KFunction) objX3);
                    boolean zY4 = composer2.y(socialRegisterActivity);
                    Object objX4 = composer2.x();
                    if (zY4 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new d01(socialRegisterActivity, i3);
                        composer2.q(objX4);
                    }
                    Function0 function1 = (Function0) objX4;
                    boolean zY5 = composer2.y(socialRegisterActivity);
                    Object objX5 = composer2.x();
                    if (zY5 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new d01(socialRegisterActivity, 3);
                        composer2.q(objX5);
                    }
                    SocialRegisterLayoutKt.a(socialRegisterViewModelImplJ, Modifier.Companion.f8607b, function2, function0, function1, (Function0) objX5, composer2, 48);
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
