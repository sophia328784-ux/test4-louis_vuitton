package defpackage;

import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.ExitTransition;
import androidx.compose.material3.SheetValue;
import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.input.KeyboardType;
import com.vuitton.android.presentation.compose.animation.EnterTransitionKt;
import com.vuitton.android.presentation.compose.animation.ExitTransitionKt;
import com.vuitton.android.presentation.extensions.SemanticsPropertyReceiverExtKt;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl$loadAuthenticationForm$1;
import com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterErrorListUiModelException;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.foundation.model.domain.model.authentication.oauth.NativeRegisterErrorListException;
import com.vuitton.foundation.model.domain.model.authentication.oauth.NativeRegisterException;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class be0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20841b;

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f20841b) {
            case 0:
                ((AnimatedContentTransitionScope) obj).getClass();
                ExitTransition.f3629a.getClass();
                return ExitTransition.f3630b;
            case 1:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertyReceiverExtKt.a(semanticsPropertyReceiver);
                return Unit.f71739a;
            case 2:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.v(semanticsPropertyReceiver2, true);
                return Unit.f71739a;
            case 3:
                SheetValue sheetValue = (SheetValue) obj;
                sheetValue.getClass();
                return Boolean.valueOf(sheetValue != SheetValue.PartiallyExpanded);
            case 4:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver3);
                return Unit.f71739a;
            case 5:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver4);
                return Unit.f71739a;
            case 6:
                SemanticsPropertyReceiver semanticsPropertyReceiver5 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver5.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver5);
                return Unit.f71739a;
            case 7:
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope.getClass();
                return EnterTransitionKt.a(animatedContentTransitionScope, 0, 3);
            case 8:
                AnimatedContentTransitionScope animatedContentTransitionScope2 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope2.getClass();
                return ExitTransitionKt.a(animatedContentTransitionScope2, 0, 3);
            case 9:
                AnimatedContentTransitionScope animatedContentTransitionScope3 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope3.getClass();
                return EnterTransitionKt.b(animatedContentTransitionScope3, 0, 3);
            case 10:
                AnimatedContentTransitionScope animatedContentTransitionScope4 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope4.getClass();
                return ExitTransitionKt.b(animatedContentTransitionScope4, 0, 3);
            case 11:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 12:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 13:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 14:
                SemanticsPropertyReceiver semanticsPropertyReceiver6 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver6.getClass();
                SemanticsPropertyReceiverExtKt.a(semanticsPropertyReceiver6);
                return Unit.f71739a;
            case 15:
                int i2 = NativeLoginViewModelImpl$loadAuthenticationForm$1.WhenMappings.f53612a[((FormSectionTypeUiModel) obj).ordinal()];
                if (i2 == 1) {
                    return "nativeLogin_email_textField";
                }
                if (i2 != 2) {
                    return null;
                }
                return "nativeLogin_password_textField";
            case 16:
                SemanticsPropertyReceiver semanticsPropertyReceiver7 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver7.getClass();
                ContentType.f8649a.getClass();
                SemanticsPropertiesKt.j(semanticsPropertyReceiver7, ContentType.Companion.K);
                return Unit.f71739a;
            case 17:
                ((SemanticsPropertyReceiver) obj).getClass();
                KeyboardType.f10809b.getClass();
                return Unit.f71739a;
            case 18:
                return Integer.valueOf(-((Integer) obj).intValue());
            case 19:
                return Integer.valueOf(-((Integer) obj).intValue());
            case 20:
                return Integer.valueOf(-((Integer) obj).intValue());
            case 21:
                return Integer.valueOf(-((Integer) obj).intValue());
            case 22:
                NativeRegisterException nativeRegisterException = (NativeRegisterException) obj;
                int i3 = NativeRegisterErrorListException.f66635c;
                nativeRegisterException.getClass();
                String str = nativeRegisterException.f66637b;
                return str == null ? "" : str;
            case 23:
                NativeRegisterExceptionUiModel nativeRegisterExceptionUiModel = (NativeRegisterExceptionUiModel) obj;
                int i4 = NativeRegisterErrorListUiModelException.f53954c;
                nativeRegisterExceptionUiModel.getClass();
                String f53956a = nativeRegisterExceptionUiModel.getF53956a();
                return f53956a == null ? "" : f53956a;
            case 24:
                SemanticsPropertyReceiver semanticsPropertyReceiver8 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver8.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver8, new CollectionInfo(5, 1));
                return Unit.f71739a;
            case 25:
                Map.Entry entry = (Map.Entry) obj;
                entry.getClass();
                return "\"" + entry.getKey() + "\": " + entry.getValue();
            case 26:
                Map.Entry entry2 = (Map.Entry) obj;
                entry2.getClass();
                return entry2.getKey() + ":" + entry2.getValue();
            case 27:
                FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                formSectionTypeUiModel.getClass();
                switch (NativeRegisterViewModelImpl.WhenMappings.f53723b[formSectionTypeUiModel.ordinal()]) {
                    case 9:
                        return "nativeRegister_birthdayDate_textField";
                    case 10:
                        return "nativeRegister_phoneNumber_textField";
                    case 11:
                        return "nativeRegister_country_textField";
                    case 12:
                        return "nativeRegister_callingCode_textField";
                    default:
                        return null;
                }
            case 28:
                FormSectionTypeUiModel formSectionTypeUiModel2 = (FormSectionTypeUiModel) obj;
                formSectionTypeUiModel2.getClass();
                int i5 = NativeRegisterViewModelImpl.WhenMappings.f53723b[formSectionTypeUiModel2.ordinal()];
                if (i5 == 1) {
                    return "nativeRegister_email_textField";
                }
                if (i5 == 2) {
                    return "nativeRegister_password_textField";
                }
                if (i5 != 3) {
                    return null;
                }
                return "nativeRegister_confirmPassword_textField";
            default:
                FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj;
                formFieldGenericUiModel.getClass();
                return Boolean.valueOf(formFieldGenericUiModel.getD() == FormSectionTypeUiModel.EMAIL_TRACKING_CONSENT);
        }
    }
}
