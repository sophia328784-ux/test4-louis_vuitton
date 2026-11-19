package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.data.net.interceptor.PreprodAuthorizationInterceptor;
import com.vuitton.android.data.repository.TokenExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import okhttp3.Headers;
import okhttp3.Request;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class sv implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f79883c;

    public /* synthetic */ sv(boolean z, int i2) {
        this.f79882b = i2;
        this.f79883c = z;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f79882b;
        boolean z = this.f79883c;
        switch (i2) {
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
                    if (formFieldGenericUiModel.getD() == FormSectionTypeUiModel.PHONE_BLOC && z) {
                        Modifier modifierM = PaddingKt.m(pq0.h(1.0f, -472730200, composer, "EditMyInfoFormContent$lambda$0$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                        String strC = StringResources_androidKt.c(composer, R.string.mylv_lva_sms_phone_number_mandatory_update);
                        TextStyle textStyle = LVAppDesignKitTheme.n(composer).f48429j;
                        long j2 = LVAppDesignKitTheme.c(composer).f48361b.f48382k;
                        TextAlign.f10959b.getClass();
                        TextKt.c(strC, modifierM, j2, 0L, null, 0L, null, new TextAlign(TextAlign.g), 0L, 0, false, 0, 0, null, textStyle, composer, 0, 0, 130040);
                        composer.F();
                    } else {
                        composer.L(-472154003);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Request request = (Request) obj;
                String str = (String) obj3;
                request.getClass();
                ((String) obj2).getClass();
                str.getClass();
                Request.Builder builder = new Request.Builder(request);
                Headers headers = request.f76971c;
                if (headers.a("clientToken") != null) {
                    builder.b("clientToken", str);
                }
                if (headers.a("accessToken") != null) {
                    builder.b("accessToken", str);
                }
                if (headers.a("Authorization") != null) {
                    PreprodAuthorizationInterceptor.f47078b.getClass();
                    if (!PreprodAuthorizationInterceptor.Companion.a(request, z)) {
                        builder.b("Authorization", TokenExtKt.a(str));
                    }
                }
                return new Request(builder);
            default:
                Composer composer2 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifierO = new DTFunctionNameModifier("StoreModeButton_IStmHkI$lambda$0$1$0").o(SizeKt.f5052c);
                Alignment.f8582a.getClass();
                BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
                int iHashCode = Long.hashCode(composer2.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                Modifier modifierC = ComposedModifierKt.c(composer2, modifierO);
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
                Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                if (z) {
                    composer2.L(524480619);
                    ProgressViewKt.a(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("StoreModeButton_IStmHkI$lambda$0$1$0"), biasAlignment), LVAppDesignKitTheme.c(composer2).f48361b.m, false, composer2, 0, 4);
                    composer2.F();
                } else {
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).f48398i, composer2, 0), null, SizeKt.o(pq0.j(524794494, composer2, "StoreModeButton_IStmHkI$lambda$0$1$0"), LVAppDesignKitTheme.d(composer2).n), LVAppDesignKitTheme.c(composer2).f48361b.m, composer2, 56, 0);
                    composer2 = composer2;
                    composer2.F();
                }
                composer2.r();
                return Unit.f71739a;
        }
    }
}
