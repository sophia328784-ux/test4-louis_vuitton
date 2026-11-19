package defpackage;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.screen.authentication.register.components.ComposableSingletons$NativeRegisterBirthInfoComposableKt;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterViewState;
import com.vuitton.android.presentation.screen.dynamicform.components.DynamicFormComposableKt;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class nf0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76515b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeRegisterViewState f76516c;
    public final /* synthetic */ Function2 d;

    public /* synthetic */ nf0(NativeRegisterViewState nativeRegisterViewState, Function2 function2, int i2) {
        this.f76515b = i2;
        this.f76516c = nativeRegisterViewState;
        this.d = function2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2;
        int i3 = this.f76515b;
        NativeRegisterViewState nativeRegisterViewState = this.f76516c;
        switch (i3) {
            case 0:
                FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                formFieldGenericUiModel.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer.K(formFieldGenericUiModel) ? 4 : 2;
                }
                if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    if (formFieldGenericUiModel.getD() == FormSectionTypeUiModel.MARKETING_TEXTS_CONSENT) {
                        i2 = 0;
                        TextKt.c(StringResources_androidKt.c(composer, R.string.mylv_lva_sms_description), PaddingKt.m(pq0.j(723550567, composer, "NativeRegisterBirthInfoComposable$lambda$7$0$2"), LVAppDesignKitTheme.l(composer).f48419i, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.c(composer).f48361b.n, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).l, composer, 0, 0, 131064);
                        composer = composer;
                        composer.F();
                    } else {
                        i2 = 0;
                        composer.L(724018295);
                        composer.F();
                    }
                    if (formFieldGenericUiModel.getD() == FormSectionTypeUiModel.MARKETING_EMAILS_CONSENT) {
                        composer.L(724182130);
                        FormUiModel formUiModel = nativeRegisterViewState.f54036j;
                        FormUiModel.f57485b.getClass();
                        boolean z = (Intrinsics.c(formUiModel, FormUiModel.Companion.a()) || !nativeRegisterViewState.f54032e.g) ? i2 : 1;
                        TweenSpec tweenSpecC = AnimationSpecKt.c(500, i2, null, 6);
                        Object objX = composer.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = new be0(20);
                            composer.q(objX);
                        }
                        EnterTransition enterTransitionD = EnterExitTransitionKt.d(tweenSpecC, null, (Function1) objX, 6);
                        TweenSpec tweenSpecC2 = AnimationSpecKt.c(500, i2, null, 6);
                        Object objX2 = composer.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new be0(21);
                            composer.q(objX2);
                        }
                        AnimatedVisibilityKt.c(ColumnScopeInstance.f4944a, z, null, enterTransitionD, EnterExitTransitionKt.n(tweenSpecC2, null, (Function1) objX2, 6), null, ComposableLambdaKt.b(-256093375, new nf0(nativeRegisterViewState, this.d, 1), composer), composer, 1600512, 18);
                        composer.F();
                    } else {
                        composer.L(726308823);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                break;
            default:
                Composer composer2 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("NativeRegisterBirthInfoComposable$lambda$7$0$2$2"), LVAppDesignKitTheme.l(composer2).f48419i, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                float f2 = -LVAppDesignKitTheme.l(composer2).f48415c;
                Dp.Companion companion = Dp.f11004c;
                Modifier modifierC = OffsetKt.c(modifierM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1);
                LVColorScheme lVColorScheme = LVColorScheme.INVERT;
                FormUiModel formUiModel2 = nativeRegisterViewState.f54036j;
                ComposableSingletons$NativeRegisterBirthInfoComposableKt.f53798a.getClass();
                DynamicFormComposableKt.a(modifierC, lVColorScheme, formUiModel2, false, Call.Parameters.DEFAULT_CAMERA_ZOOM, this.d, null, null, null, null, false, false, false, null, null, null, ComposableSingletons$NativeRegisterBirthInfoComposableKt.f53799b, null, false, composer2, 24624, 1572864, 458696);
                break;
        }
        return Unit.f71739a;
    }
}
