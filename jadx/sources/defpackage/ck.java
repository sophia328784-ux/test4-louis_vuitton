package defpackage;

import android.location.Location;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import androidx.activity.OnBackPressedCallback;
import androidx.compose.foundation.layout.FlowLayoutKt;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.material3.SingleRowTopAppBarOverrideScope;
import androidx.compose.material3.TopAppBarState;
import androidx.compose.material3.internal.ParentSemanticsNode;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.runtime.HostDefaultProvider;
import androidx.compose.runtime.HostDefaultProviderKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.ViewTreeHostDefaultKey;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.font.FontFamilyResolverImpl;
import androidx.compose.ui.text.font.TypefaceRequest;
import androidx.compose.ui.text.input.BackspaceCommand;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.DeleteAllCommand;
import androidx.compose.ui.text.input.DeleteSurroundingTextCommand;
import androidx.compose.ui.text.input.DeleteSurroundingTextInCodePointsCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.FinishComposingTextCommand;
import androidx.compose.ui.text.input.MoveCursorCommand;
import androidx.compose.ui.text.input.SetComposingRegionCommand;
import androidx.compose.ui.text.input.SetComposingTextCommand;
import androidx.compose.ui.text.input.SetSelectionCommand;
import androidx.datastore.core.CorruptionException;
import androidx.lifecycle.compose.LifecyclePauseOrDisposeEffectResult;
import androidx.lifecycle.compose.LifecycleResumePauseEffectScope;
import androidx.navigation.NavOptionsBuilder;
import androidx.navigation.PopUpToBuilder;
import com.canhub.cropper.CropImageActivity;
import com.google.firebase.sessions.SessionData;
import com.google.firebase.sessions.SessionDataSerializer;
import com.google.firebase.sessions.Time;
import com.sightcall.advancedannotations.domain.drawer.AnnotationId;
import com.sightcall.advancedannotations.domain.event.EventInterpreterImpl;
import com.vuitton.android.presentation.databinding.FragmentFlightFormBinding;
import com.vuitton.android.presentation.screen.authentication.common.validation.EmailValidationRules;
import com.vuitton.android.presentation.screen.authentication.common.validation.FormPasswordValidationRules;
import com.vuitton.android.presentation.screen.authentication.common.validation.PasswordUiModel;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl;
import com.vuitton.android.presentation.screen.certificates.CertificateRoute;
import com.vuitton.android.presentation.screen.certificates.components.CertificateFormField;
import com.vuitton.android.presentation.screen.connectivity.DiscoverConnectivityView;
import com.vuitton.android.presentation.screen.connectivity.earphone.models.EarphoneTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.earphone.models.EarphoneTrackingUiModelKt;
import com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesActivity;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityView;
import com.vuitton.android.presentation.screen.connectivity.travel.form.FlightFormFragment;
import com.vuitton.android.presentation.screen.connectivity.watch.PairWatchV2Ui;
import com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisorImpl;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.feed.FeedViewModelImpl;
import com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoItem;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.plp.activities.ExclusivePLPActivity;
import com.vuitton.android.presentation.screen.plp.activities.PLPDestinations;
import com.vuitton.android.presentation.screen.plp.activities.PLPDestinationsKt;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl;
import com.vuitton.android.presentation.utils.EmulatorDetector;
import com.vuitton.foundation.model.domain.model.common.Coordinates;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.io.IOException;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.cache.DiskLruCache;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ck implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21166b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f21167c;

    public /* synthetic */ ck(EditCommand editCommand, EditProcessor editProcessor) {
        this.f21166b = 18;
        this.f21167c = editCommand;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String strConcat;
        StringBuilder sb;
        int i2;
        int i3 = this.f21166b;
        boolean z = false;
        z = false;
        Object obj2 = this.f21167c;
        switch (i3) {
            case 0:
                String str = (String) obj;
                str.getClass();
                ((PLPCatalogViewModelImpl) obj2).O0(new PLPTrackingUiModel.DispatchFilterSelectedEvent(str));
                return Unit.f71739a;
            case 1:
                CertificateFormField certificateFormField = (CertificateFormField) obj2;
                String str2 = (String) obj;
                Regex regex = CertificateFormField.l;
                str2.getClass();
                ((SnapshotMutableStateImpl) certificateFormField.f55665h).setValue(str2.length() != 0 ? str2 : null);
                ((SnapshotMutableStateImpl) certificateFormField.f55666i).setValue("");
                ((SnapshotMutableStateImpl) certificateFormField.f55668k).setValue(Boolean.FALSE);
                Function1 function1 = certificateFormField.g;
                if (function1 != null) {
                    function1.invoke(str2);
                }
                return Unit.f71739a;
            case 2:
                NavOptionsBuilder navOptionsBuilder = (NavOptionsBuilder) obj;
                navOptionsBuilder.getClass();
                navOptionsBuilder.g = new CertificateRoute.NfcScan(((CertificateRoute.NfcScan) obj2).f55605a);
                navOptionsBuilder.d = -1;
                navOptionsBuilder.f18194e = false;
                PopUpToBuilder popUpToBuilder = new PopUpToBuilder();
                popUpToBuilder.f18215a = true;
                navOptionsBuilder.f18194e = true;
                navOptionsBuilder.f18195f = popUpToBuilder.f18216b;
                return Unit.f71739a;
            case 3:
                TraversableNode traversableNode = (TraversableNode) obj;
                traversableNode.getClass();
                ParentSemanticsNode parentSemanticsNode = (ParentSemanticsNode) traversableNode;
                parentSemanticsNode.q = true;
                parentSemanticsNode.p.invoke((SemanticsPropertyReceiver) obj2);
                SemanticsModifierNodeKt.b(parentSemanticsNode);
                return Boolean.FALSE;
            case 4:
                PanelInfoItem panelInfoItem = (PanelInfoItem) obj2;
                if (((Boolean) obj).booleanValue()) {
                    panelInfoItem.f61712c.mo47invoke();
                }
                return Unit.f71739a;
            case 5:
                return ((HostDefaultProvider) ((CompositionLocalAccessorScope) obj).b(HostDefaultProviderKt.f8003a)).a((ViewTreeHostDefaultKey) obj2);
            case 6:
                ConnectivityView connectivityView = (ConnectivityView) obj;
                connectivityView.D(((PairWatchV2Ui) obj2).f56700b);
                connectivityView.I();
                return Unit.f71739a;
            case 7:
                PermissionsViewModel permissionsViewModel = (PermissionsViewModel) obj2;
                final LifecycleResumePauseEffectScope lifecycleResumePauseEffectScope = (LifecycleResumePauseEffectScope) obj;
                lifecycleResumePauseEffectScope.getClass();
                permissionsViewModel.l4();
                permissionsViewModel.x9();
                return new LifecyclePauseOrDisposeEffectResult(lifecycleResumePauseEffectScope) { // from class: com.vuitton.android.presentation.screen.feed.components.subcomponents.ContactabilitySectionKt$ContactabilitySection$lambda$0$0$$inlined$onPauseOrDispose$1
                };
            case 8:
                int i4 = CropImageActivity.p;
                ((OnBackPressedCallback) obj).getClass();
                ((CropImageActivity) obj2).x();
                return Unit.f71739a;
            case 9:
                float f2 = DatePickerKt.f6780a;
                SemanticsPropertiesKt.i((SemanticsPropertyReceiver) obj, (String) ((Pair) obj2).f71705b);
                return Unit.f71739a;
            case 10:
                float fFloatValue = ((Float) obj).floatValue();
                TopAppBarState f6904a = ((SingleRowTopAppBarOverrideScope) obj2).l.getF6904a();
                f6904a.c(f6904a.b() + fFloatValue);
                return Unit.f71739a;
            case 11:
                int i5 = DiscoverConnectivityView.d;
                ((View) obj).getClass();
                Function0 function0 = ((DiscoverConnectivityView) obj2).f55941b;
                if (function0 != null) {
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            case 12:
                String str3 = DiskLruCache.w;
                ((IOException) obj).getClass();
                TimeZone timeZone = _UtilJvmKt.f77018a;
                ((DiskLruCache) obj2).n = true;
                return Unit.f71739a;
            case 13:
                ((coil3.disk.DiskLruCache) obj2).o = true;
                return Unit.f71739a;
            case 14:
                InAppDispatch inAppDispatch = (InAppDispatch) obj;
                inAppDispatch.getClass();
                ((DispatchCountryViewModel) obj2).i2(inAppDispatch, false);
                return Unit.f71739a;
            case 15:
                FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj;
                int i6 = DynamicFormSupervisorImpl.d;
                formFieldUiModel.getClass();
                FormFieldUiModel formFieldUiModel2 = (FormFieldUiModel) ((re) obj2).invoke(formFieldUiModel);
                if (formFieldUiModel2.d == formFieldUiModel.d) {
                    return formFieldUiModel2;
                }
                md.n("Section type mismatch during swap!");
                return null;
            case 16:
                FormFieldUiModel formFieldUiModel3 = (FormFieldUiModel) obj2;
                FormFieldUiModel formFieldUiModel4 = (FormFieldUiModel) obj;
                int i7 = DynamicFormSupervisorImpl.d;
                formFieldUiModel4.getClass();
                return formFieldUiModel4.d == formFieldUiModel3.d ? formFieldUiModel3 : formFieldUiModel4;
            case 17:
                FormFieldUiModel formFieldUiModel5 = (FormFieldUiModel) obj;
                int i8 = DynamicFormSupervisorImpl.d;
                formFieldUiModel5.getClass();
                if (ArraysKt.f(formFieldUiModel5.d, (FormSectionTypeUiModel[]) obj2)) {
                    return null;
                }
                return formFieldUiModel5;
            case 18:
                EditCommand editCommand = (EditCommand) obj;
                String str4 = ((EditCommand) obj2) == editCommand ? " > " : "   ";
                if (!(editCommand instanceof CommitTextCommand)) {
                    if (editCommand instanceof SetComposingTextCommand) {
                        sb = new StringBuilder("SetComposingTextCommand(text.length=");
                        SetComposingTextCommand setComposingTextCommand = (SetComposingTextCommand) editCommand;
                        sb.append(setComposingTextCommand.f10835a.f10420c.length());
                        sb.append(", newCursorPosition=");
                        i2 = setComposingTextCommand.f10836b;
                    } else if (editCommand instanceof SetComposingRegionCommand) {
                        strConcat = ((SetComposingRegionCommand) editCommand).toString();
                    } else if (editCommand instanceof DeleteSurroundingTextCommand) {
                        strConcat = ((DeleteSurroundingTextCommand) editCommand).toString();
                    } else if (editCommand instanceof DeleteSurroundingTextInCodePointsCommand) {
                        strConcat = ((DeleteSurroundingTextInCodePointsCommand) editCommand).toString();
                    } else if (editCommand instanceof SetSelectionCommand) {
                        strConcat = ((SetSelectionCommand) editCommand).toString();
                    } else if (editCommand instanceof FinishComposingTextCommand) {
                        strConcat = "FinishComposingTextCommand()";
                    } else if (editCommand instanceof BackspaceCommand) {
                        strConcat = "BackspaceCommand()";
                    } else if (editCommand instanceof MoveCursorCommand) {
                        strConcat = ((MoveCursorCommand) editCommand).toString();
                    } else if (editCommand instanceof DeleteAllCommand) {
                        strConcat = "DeleteAllCommand()";
                    } else {
                        String strB = Reflection.f71922a.b(editCommand.getClass()).B();
                        if (strB == null) {
                            strB = "{anonymous EditCommand}";
                        }
                        strConcat = "Unknown EditCommand: ".concat(strB);
                    }
                    return str4.concat(strConcat);
                }
                sb = new StringBuilder("CommitTextCommand(text.length=");
                CommitTextCommand commitTextCommand = (CommitTextCommand) editCommand;
                sb.append(commitTextCommand.f10759a.f10420c.length());
                sb.append(", newCursorPosition=");
                i2 = commitTextCommand.f10760b;
                strConcat = tr.k(sb, i2, ')');
                return str4.concat(strConcat);
            case 19:
                EmailValidationRules emailValidationRules = (EmailValidationRules) obj2;
                ((FormSectionTypeUiModel) obj).getClass();
                String str5 = emailValidationRules.f53488b;
                if ((str5 == null || StringsKt.w(str5)) && !emailValidationRules.f53487a) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 20:
                String str6 = (String) obj;
                EmulatorDetector emulatorDetector = EmulatorDetector.f65833a;
                str6.getClass();
                ((EmulatorDetector) obj2).getClass();
                return EmulatorDetector.a(str6);
            case 21:
                return EventInterpreterImpl.handleDrivenDrawModeEvent$lambda$0$0((EventInterpreterImpl) obj2, (AnnotationId) obj);
            case 22:
                ExclusivePLPActivity exclusivePLPActivity = (ExclusivePLPActivity) obj2;
                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                ExclusivePLPActivity.Companion companion = ExclusivePLPActivity.p;
                plpProductUiModel.getClass();
                exclusivePLPActivity.startActivity(PLPDestinationsKt.a(new PLPDestinations.PageFromExclusive(plpProductUiModel), exclusivePLPActivity));
                return Unit.f71739a;
            case 23:
                FaqCategoriesActivity.Companion companion2 = FaqCategoriesActivity.s;
                ((FaqCategoriesActivity) obj2).I().d.a(EarphoneTrackingUiModelKt.a(new EarphoneTrackingUiModel.FaqCategoryClickEvent((String) obj)));
                return Unit.f71739a;
            case 24:
                FeedViewModelImpl feedViewModelImpl = (FeedViewModelImpl) obj2;
                Location location = (Location) obj;
                location.getClass();
                feedViewModelImpl.H = new Coordinates(location.getLatitude(), location.getLongitude());
                feedViewModelImpl.Ia();
                feedViewModelImpl.D9();
                return Unit.f71739a;
            case 25:
                ((CorruptionException) obj).getClass();
                return new SessionData(((SessionDataSerializer) obj2).f35464a.a(null), (Time) null, (Map) null, 6, (DefaultConstructorMarker) null);
            case 26:
                FlightFormFragment.Companion companion3 = FlightFormFragment.Q;
                ((Editable) obj).getClass();
                EditText editText = ((FragmentFlightFormBinding) obj2).u;
                String string = editText.getText().toString();
                Locale locale = Locale.ROOT;
                String upperCase = string.toUpperCase(locale);
                upperCase.getClass();
                if (!string.equals(upperCase)) {
                    String upperCase2 = string.toUpperCase(locale);
                    upperCase2.getClass();
                    editText.setText(upperCase2);
                    editText.setSelection(editText.getText().length());
                }
                return Unit.f71739a;
            case 27:
                MutableVector mutableVector = (MutableVector) obj2;
                int i9 = FlowLayoutKt.f4978a;
                Object[] objArr = mutableVector.f8165b;
                int i10 = mutableVector.d;
                for (int i11 = 0; i11 < i10; i11++) {
                    ((MeasureResult) objArr[i11]).k();
                }
                return Unit.f71739a;
            case 28:
                TypefaceRequest typefaceRequest = (TypefaceRequest) obj;
                return ((FontFamilyResolverImpl) obj2).b(new TypefaceRequest(null, typefaceRequest.f10749b, typefaceRequest.f10750c, typefaceRequest.d, typefaceRequest.f10751e, null)).getF10755b();
            default:
                ForgetPasswordViewModelImpl forgetPasswordViewModelImpl = (ForgetPasswordViewModelImpl) obj2;
                FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                formSectionTypeUiModel.getClass();
                FormPasswordValidationRules formPasswordValidationRules = forgetPasswordViewModelImpl.f53504f;
                PasswordUiModel passwordUiModel = (PasswordUiModel) forgetPasswordViewModelImpl.f53508k.getValue();
                ss ssVar = new ss(forgetPasswordViewModelImpl, 14);
                formPasswordValidationRules.getClass();
                return FormPasswordValidationRules.a(ssVar, passwordUiModel, formSectionTypeUiModel);
        }
    }

    public /* synthetic */ ck(Object obj, int i2) {
        this.f21166b = i2;
        this.f21167c = obj;
    }
}
