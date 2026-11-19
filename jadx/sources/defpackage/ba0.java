package defpackage;

import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterTransition;
import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.material3.SheetValue;
import androidx.compose.ui.graphics.CompositingStrategy;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.ParagraphInfo;
import com.sightcall.libraries.archi.nucleus.NucleusReducerBuilder;
import com.sightcall.livetranslation.live.LiveSentencesInteractorImpl;
import com.sightcall.universal.Universal;
import com.vuitton.android.presentation.compose.animation.Nav3TransitionsKt;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$loadDynamicProfileForm$3;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.main.MainActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ba0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20807b;

    public /* synthetic */ ba0(int i2) {
        this.f20807b = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f20807b) {
            case 0:
                return LiveSentencesInteractorImpl.reducerConfigurator$lambda$0((NucleusReducerBuilder) obj);
            case 1:
                ((Long) obj).longValue();
                return Unit.f71739a;
            case 2:
                String str = (String) obj;
                MainActivity.Companion companion = MainActivity.L;
                str.getClass();
                Universal.start(str);
                return Unit.f71739a;
            case 3:
                MainActivity.Companion companion2 = MainActivity.L;
                return Unit.f71739a;
            case 4:
                return Integer.valueOf(((Integer) obj).intValue() * 2);
            case 5:
                return Integer.valueOf(((Integer) obj).intValue() / 3);
            case 6:
                return Integer.valueOf(((Integer) obj).intValue() / 3);
            case 7:
                float f2 = ModalBottomSheetKt.f7058a;
                return Boolean.TRUE;
            case 8:
                SemanticsPropertiesKt.v((SemanticsPropertyReceiver) obj, true);
                return Unit.f71739a;
            case 9:
                KProperty[] kPropertyArr = SemanticsPropertiesKt.f10359a;
                SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.y;
                Unit unit = Unit.f71739a;
                ((SemanticsPropertyReceiver) obj).a(semanticsPropertyKey, unit);
                return unit;
            case 10:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 11:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 12:
                GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
                graphicsLayerScope.getClass();
                graphicsLayerScope.d(0.99f);
                CompositingStrategy.f8875a.getClass();
                return Unit.f71739a;
            case 13:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 14:
                ParagraphInfo paragraphInfo = (ParagraphInfo) obj;
                StringBuilder sb = new StringBuilder("[");
                sb.append(paragraphInfo.f10472b);
                sb.append(", ");
                return tr.k(sb, paragraphInfo.f10473c, ')');
            case 15:
                ((BookingFormUiModel) obj).getClass();
                return Unit.f71739a;
            case 16:
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope.getClass();
                return Nav3TransitionsKt.a(animatedContentTransitionScope);
            case 17:
                AnimatedContentTransitionScope animatedContentTransitionScope2 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope2.getClass();
                return Nav3TransitionsKt.b(animatedContentTransitionScope2);
            case 18:
                SheetValue sheetValue = (SheetValue) obj;
                sheetValue.getClass();
                return Boolean.valueOf(sheetValue != SheetValue.Hidden);
            case 19:
                AnimatedContentTransitionScope animatedContentTransitionScope3 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope3.getClass();
                return Nav3TransitionsKt.a(animatedContentTransitionScope3);
            case 20:
                AnimatedContentTransitionScope animatedContentTransitionScope4 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope4.getClass();
                return Nav3TransitionsKt.b(animatedContentTransitionScope4);
            case 21:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver);
                return Unit.f71739a;
            case 22:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver2);
                return Unit.f71739a;
            case 23:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 24:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 25:
                FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj;
                formFieldGenericUiModel.getClass();
                return Boolean.valueOf(formFieldGenericUiModel.getD() == FormSectionTypeUiModel.VAT_CODE);
            case 26:
                FormFieldGenericUiModel formFieldGenericUiModel2 = (FormFieldGenericUiModel) obj;
                formFieldGenericUiModel2.getClass();
                return Boolean.valueOf(formFieldGenericUiModel2.getD() == FormSectionTypeUiModel.BRANCH_ID);
            case 27:
                FormFieldGenericUiModel formFieldGenericUiModel3 = (FormFieldGenericUiModel) obj;
                formFieldGenericUiModel3.getClass();
                return formFieldGenericUiModel3;
            case 28:
                switch (MyInformationViewModelImpl$loadDynamicProfileForm$3.WhenMappings.f52559a[((FormSectionTypeUiModel) obj).ordinal()]) {
                    case 1:
                        return "editProfile_phoneNumber_textfield";
                    case 2:
                    default:
                        return null;
                    case 3:
                        return "editProfile_title_text";
                    case 4:
                        return "editProfile_firstName_textfield";
                    case 5:
                        return "editProfile_SecondName_textfield";
                    case 6:
                        return "editProfile_secondFirstName_textfield";
                    case 7:
                        return "editProfile_secondLastName_textfield";
                    case 8:
                        return "editProfile_branchID_textfield";
                    case 9:
                        return "editProfile_taxID_textfield";
                }
            default:
                ((AnimatedContentTransitionScope) obj).getClass();
                EnterTransition.f3626a.getClass();
                return EnterTransition.f3627b;
        }
    }
}
