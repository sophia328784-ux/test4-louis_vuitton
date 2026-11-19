package defpackage;

import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.material3.SheetValue;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.vuitton.android.presentation.compose.animation.Nav3TransitionsKt;
import com.vuitton.android.presentation.extensions.SemanticsPropertyReceiverExtKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$loadDynamicForms$1;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.ComposableSingletons$PLPItemsKt;
import com.vuitton.android.presentation.screen.plp.models.plp.PlpSectionUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fj0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69155b;

    public /* synthetic */ fj0(int i2) {
        this.f69155b = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f69155b) {
            case 0:
                SheetValue sheetValue = (SheetValue) obj;
                sheetValue.getClass();
                return Boolean.valueOf(sheetValue != SheetValue.PartiallyExpanded);
            case 1:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver);
                return Unit.f71739a;
            case 2:
                return Boolean.valueOf(((FormFieldGenericUiModel) obj).getD() == FormSectionTypeUiModel.EMAIL);
            case 3:
                if (OsaContactFormViewModelImpl$loadDynamicForms$1.WhenMappings.f60666a[((FormSectionTypeUiModel) obj).ordinal()] == 1) {
                    return "osa_accountCheckingEmail_textField";
                }
                return null;
            case 4:
                return Boolean.valueOf(((FormFieldGenericUiModel) obj).getD() != FormSectionTypeUiModel.EMAIL);
            case 5:
                int i2 = OsaContactFormViewModelImpl$loadDynamicForms$1.WhenMappings.f60666a[((FormSectionTypeUiModel) obj).ordinal()];
                if (i2 == 2) {
                    return "osa_accountFirstName_textField";
                }
                if (i2 != 3) {
                    return null;
                }
                return "osa_accountLastName_textField";
            case 6:
                return Boolean.valueOf(((FormFieldGenericUiModel) obj).getD() == FormSectionTypeUiModel.PHONE_BLOC);
            case 7:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver2);
                return Unit.f71739a;
            case 8:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver3);
                return Unit.f71739a;
            case 9:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver4);
                return Unit.f71739a;
            case 10:
                SemanticsPropertyReceiver semanticsPropertyReceiver5 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver5.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver5);
                return Unit.f71739a;
            case 11:
                SemanticsPropertyReceiver semanticsPropertyReceiver6 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver6.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver6);
                return Unit.f71739a;
            case 12:
                SemanticsPropertyReceiver semanticsPropertyReceiver7 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver7.getClass();
                SemanticsPropertyReceiverExtKt.a(semanticsPropertyReceiver7);
                return Unit.f71739a;
            case 13:
                SemanticsPropertyReceiver semanticsPropertyReceiver8 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver8.getClass();
                SemanticsPropertyReceiverExtKt.a(semanticsPropertyReceiver8);
                return Unit.f71739a;
            case 14:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 15:
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope.getClass();
                return Nav3TransitionsKt.a(animatedContentTransitionScope);
            case 16:
                AnimatedContentTransitionScope animatedContentTransitionScope2 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope2.getClass();
                return Nav3TransitionsKt.b(animatedContentTransitionScope2);
            case 17:
                SemanticsPropertyReceiver semanticsPropertyReceiver9 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver9.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver9);
                return Unit.f71739a;
            case 18:
                return Unit.f71739a;
            case 19:
                ((Integer) obj).intValue();
                return Unit.f71739a;
            case 20:
                SemanticsPropertyReceiver semanticsPropertyReceiver10 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver10.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver10);
                return Unit.f71739a;
            case 21:
                ContentDrawScope contentDrawScope = (ContentDrawScope) obj;
                contentDrawScope.getClass();
                contentDrawScope.R1();
                return Unit.f71739a;
            case 22:
                ((PlpSectionUiModel) obj).getClass();
                return Unit.f71739a;
            case 23:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 24:
                ((PlpSectionUiModel) obj).getClass();
                return Unit.f71739a;
            case 25:
                ((Boolean) obj).booleanValue();
                return Unit.f71739a;
            case 26:
                ((Integer) obj).intValue();
                return Unit.f71739a;
            case 27:
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                ComposableSingletons$PLPItemsKt.f62810a.getClass();
                LazyListScope.f(lazyListScope, null, ComposableSingletons$PLPItemsKt.f62812c, 3);
                return Unit.f71739a;
            case 28:
                LazyListScope lazyListScope2 = (LazyListScope) obj;
                lazyListScope2.getClass();
                ComposableSingletons$PLPItemsKt.f62810a.getClass();
                LazyListScope.f(lazyListScope2, null, ComposableSingletons$PLPItemsKt.f62812c, 3);
                return Unit.f71739a;
            default:
                return Integer.valueOf(((Integer) obj).intValue() * 2);
        }
    }
}
