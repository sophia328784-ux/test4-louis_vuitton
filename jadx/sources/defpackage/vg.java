package defpackage;

import android.content.Context;
import android.content.Intent;
import android.nfc.NfcAdapter;
import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.compose.foundation.GestureConnection;
import androidx.compose.foundation.gestures.BringIntoViewRequestPriorityQueue;
import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.foundation.gestures.DragScope;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableNode;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextFieldDelegate;
import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.FinishComposingTextCommand;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.Dependency;
import androidx.work.impl.model.DependencyDao_Impl;
import com.linkplay.core.device.LPDevice;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.databinding.ItemConnectivityTrunkSpeakerBinding;
import com.vuitton.android.presentation.databinding.ItemConnectivityWatchBinding;
import com.vuitton.android.presentation.screen.catalog.CatalogTracker;
import com.vuitton.android.presentation.screen.catalog.models.CatalogTrackingUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CatalogTrackingUiModelKt;
import com.vuitton.android.presentation.screen.catalog.models.CategoryUiModel;
import com.vuitton.android.presentation.screen.certificates.CertificateViewModel;
import com.vuitton.android.presentation.screen.certificates.components.CertificateFormField;
import com.vuitton.android.presentation.screen.certificates.components.CertificateFormState;
import com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateTrackingUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateVisionnaireUiModel;
import com.vuitton.android.presentation.screen.certificates.nfc.CertificateNfcScanViewModelImpl;
import com.vuitton.android.presentation.screen.certificates.nfc.model.NfcScanState;
import com.vuitton.android.presentation.screen.connectivity.ConnectedObjectUiModel;
import com.vuitton.android.presentation.screen.connectivity.TrunkSpeakerConnectivityItem;
import com.vuitton.android.presentation.screen.connectivity.WatchUiModel;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityAdapter;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityView;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListActivity;
import com.vuitton.android.presentation.screen.connectivity.watch.WatchActivity;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModel;
import com.vuitton.android.presentation.screen.repairs.models.CancellationReasonUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.storemode.StoreModeRoute;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeCategoryL1UiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeCategoryL3UiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeTrackingUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import net.rtccloud.sdk.Call;
import okhttp3.internal.cache.DiskLruCache;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.json.JSONObject;
import retrofit2.HttpException;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class vg implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80577b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f80578c;
    public final /* synthetic */ Object d;

    public /* synthetic */ vg(Object obj, Object obj2, int i2) {
        this.f80577b = i2;
        this.f80578c = obj;
        this.d = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object value;
        boolean z = false;
        switch (this.f80577b) {
            case 0:
                Outline.Generic generic = (Outline.Generic) this.f80578c;
                Brush brush = (Brush) this.d;
                ContentDrawScope contentDrawScope = (ContentDrawScope) obj;
                contentDrawScope.R1();
                DrawScope.G0(contentDrawScope, generic.f8902a, brush, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, 0, 60);
                return Unit.f71739a;
            case 1:
                ((BringIntoViewRequestPriorityQueue) this.f80578c).f4423a.n((ContentInViewNode.Request) this.d);
                return Unit.f71739a;
            case 2:
                Function1 function1 = (Function1) this.f80578c;
                CareServiceDetailUiModel.CancellationReason cancellationReason = (CareServiceDetailUiModel.CancellationReason) this.d;
                if (((Boolean) obj).booleanValue()) {
                    function1.invoke(cancellationReason);
                }
                return Unit.f71739a;
            case 3:
                Function1 function2 = (Function1) this.f80578c;
                CancellationReasonUiModel cancellationReasonUiModel = (CancellationReasonUiModel) this.d;
                if (((Boolean) obj).booleanValue()) {
                    function2.invoke(cancellationReasonUiModel);
                }
                return Unit.f71739a;
            case 4:
                CatalogTracker catalogTracker = (CatalogTracker) this.f80578c;
                CategoryUiModel categoryUiModel = (CategoryUiModel) this.d;
                int iIntValue = ((Integer) obj).intValue();
                String str = categoryUiModel.f55364b;
                catalogTracker.getClass();
                str.getClass();
                catalogTracker.f55231a.a(CatalogTrackingUiModelKt.a(new CatalogTrackingUiModel.OnSubcategoryScrollEvent(str, iIntValue)));
                return Unit.f71739a;
            case 5:
                StoreModeViewModel storeModeViewModel = (StoreModeViewModel) this.f80578c;
                Function1 function3 = (Function1) this.d;
                ContributionLinkUiModel contributionLinkUiModel = (ContributionLinkUiModel) obj;
                float f2 = CatalogStoreModeKt.f64850a;
                contributionLinkUiModel.getClass();
                if (storeModeViewModel.F()) {
                    float f3 = CatalogStoreModeKt.f64850a;
                    if (contributionLinkUiModel instanceof ContributionLinkUiModel.ImmersiveArticle) {
                        storeModeViewModel.S6(new StoreModeTrackingUiModel.ArticleClickedEvent(((ContributionLinkUiModel.ImmersiveArticle) contributionLinkUiModel).f51168b));
                    }
                    function3.invoke(contributionLinkUiModel);
                }
                return Unit.f71739a;
            case 6:
                Function2 function4 = (Function2) this.f80578c;
                StoreModeViewModel storeModeViewModel2 = (StoreModeViewModel) this.d;
                StoreModeCategoryL3UiModel storeModeCategoryL3UiModel = (StoreModeCategoryL3UiModel) obj;
                float f4 = CatalogStoreModeKt.f64850a;
                storeModeCategoryL3UiModel.getClass();
                String str2 = storeModeCategoryL3UiModel.f65050c;
                String str3 = storeModeCategoryL3UiModel.f65049b;
                function4.invoke(str2, str3);
                storeModeViewModel2.S6(new StoreModeTrackingUiModel.CatalogLevel3ClickEvent(str3, ((StoreModeViewState) storeModeViewModel2.getB().getValue()).f65086h));
                return Unit.f71739a;
            case 7:
                StoreModeViewModel storeModeViewModel3 = (StoreModeViewModel) this.f80578c;
                NavHostController navHostController = (NavHostController) this.d;
                StoreModeCategoryL1UiModel storeModeCategoryL1UiModel = (StoreModeCategoryL1UiModel) obj;
                float f5 = CatalogStoreModeKt.f64850a;
                storeModeCategoryL1UiModel.getClass();
                if (storeModeViewModel3.F()) {
                    float f6 = CatalogStoreModeKt.f64850a;
                    NavController.d(navHostController, new StoreModeRoute.Level2(storeModeCategoryL1UiModel.f65042a), null, 6);
                }
                storeModeViewModel3.S6(new StoreModeTrackingUiModel.CatalogLevel1ClickEvent(storeModeCategoryL1UiModel.f65043b, ((StoreModeViewState) storeModeViewModel3.getB().getValue()).f65086h));
                return Unit.f71739a;
            case 8:
                CertificateFormField certificateFormField = (CertificateFormField) this.f80578c;
                Function1 function5 = (Function1) this.d;
                String str4 = (String) obj;
                Regex regex = CertificateFormField.l;
                str4.getClass();
                if (CertificateFormField.l.a(str4) || str4.length() == 0) {
                    String strV = StringsKt.V(15, StringsKt.J(str4, "\n", ""));
                    ((SnapshotMutableStateImpl) certificateFormField.f55665h).setValue(strV.length() != 0 ? strV : null);
                    ((SnapshotMutableStateImpl) certificateFormField.f55666i).setValue("");
                    ((SnapshotMutableStateImpl) certificateFormField.f55668k).setValue(Boolean.FALSE);
                    Function1 function6 = certificateFormField.g;
                    if (function6 != null) {
                        function6.invoke(str4);
                    }
                    function5.invoke(Boolean.valueOf(certificateFormField.g()));
                }
                return Unit.f71739a;
            case 9:
                Function1 function7 = (Function1) this.f80578c;
                CertificateFormState certificateFormState = (CertificateFormState) this.d;
                ((Boolean) obj).booleanValue();
                if (function7 != null) {
                    function7.invoke(Boolean.valueOf(certificateFormState.b()));
                }
                certificateFormState.b();
                return Unit.f71739a;
            case 10:
                SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) this.f80578c;
                AddCertificateViewModel addCertificateViewModel = (AddCertificateViewModel) this.d;
                Map map = (Map) obj;
                map.getClass();
                if (softwareKeyboardController != null) {
                    softwareKeyboardController.b();
                }
                addCertificateViewModel.k5(map);
                return Unit.f71739a;
            case 11:
                CertificateVisionnaireUiModel certificateVisionnaireUiModel = (CertificateVisionnaireUiModel) this.f80578c;
                CertificateViewModel certificateViewModel = (CertificateViewModel) this.d;
                String str5 = (String) obj;
                str5.getClass();
                if (certificateVisionnaireUiModel != null) {
                    certificateViewModel.u(new CertificateTrackingUiModel.NfcErrorEvent(certificateVisionnaireUiModel, str5));
                }
                return Unit.f71739a;
            case 12:
                CertificateNfcScanViewModelImpl certificateNfcScanViewModelImpl = (CertificateNfcScanViewModelImpl) this.f80578c;
                Context context = (Context) this.d;
                ((ActivityResult) obj).getClass();
                certificateNfcScanViewModelImpl.f55900b.getClass();
                NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(context);
                if (defaultAdapter != null && defaultAdapter.isEnabled()) {
                    MutableStateFlow mutableStateFlow = certificateNfcScanViewModelImpl.f55907k;
                    do {
                        value = mutableStateFlow.getValue();
                    } while (!mutableStateFlow.i(value, NfcScanState.Scanning.f55939a));
                }
                return Unit.f71739a;
            case 13:
                IndirectPointerInputChange indirectPointerInputChange = (IndirectPointerInputChange) this.f80578c;
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) this.d;
                z = ref$BooleanRef.f71917b || ((GestureConnection) obj).a1(indirectPointerInputChange);
                ref$BooleanRef.f71917b = z;
                return Boolean.valueOf(!z);
            case 14:
                PointerInputChange pointerInputChange = (PointerInputChange) this.f80578c;
                Ref$BooleanRef ref$BooleanRef2 = (Ref$BooleanRef) this.d;
                z = ref$BooleanRef2.f71917b || ((GestureConnection) obj).n0(pointerInputChange);
                ref$BooleanRef2.f71917b = z;
                return Boolean.valueOf(!z);
            case 15:
                ConnectivityAdapter connectivityAdapter = (ConnectivityAdapter) this.f80578c;
                ConnectedObjectUiModel connectedObjectUiModel = (ConnectedObjectUiModel) this.d;
                int i2 = ConnectivityAdapter.LightUpViewHolder.d;
                ((View) obj).getClass();
                connectivityAdapter.f56041b.l(connectedObjectUiModel);
                return Unit.f71739a;
            case 16:
                TrunkSpeakerConnectivityItem trunkSpeakerConnectivityItem = (TrunkSpeakerConnectivityItem) this.f80578c;
                ItemConnectivityTrunkSpeakerBinding itemConnectivityTrunkSpeakerBinding = ((ConnectivityAdapter.TrunkSpeakerViewHolder) this.d).f56049b;
                int i3 = ConnectivityAdapter.TrunkSpeakerViewHolder.f56048c;
                ((View) obj).getClass();
                if (trunkSpeakerConnectivityItem.f55967b.size() == 1) {
                    Object obj2 = trunkSpeakerConnectivityItem.f55967b.get(0);
                    obj2.getClass();
                    String upnpUUID = ((LPDevice) obj2).getUpnpUUID();
                    upnpUUID.getClass();
                    if (upnpUUID.length() > 0) {
                        Context context2 = itemConnectivityTrunkSpeakerBinding.f51402b.getContext();
                        WifiDeviceListActivity.Companion companion = WifiDeviceListActivity.t;
                        Context context3 = itemConnectivityTrunkSpeakerBinding.f51402b.getContext();
                        context3.getClass();
                        companion.getClass();
                        context2.startActivity(WifiDeviceListActivity.Companion.a(context3, upnpUUID));
                    }
                } else {
                    Context context4 = itemConnectivityTrunkSpeakerBinding.f51402b.getContext();
                    WifiDeviceListActivity.Companion companion2 = WifiDeviceListActivity.t;
                    Context context5 = itemConnectivityTrunkSpeakerBinding.f51402b.getContext();
                    context5.getClass();
                    companion2.getClass();
                    context4.startActivity(WifiDeviceListActivity.Companion.a(context5, null));
                }
                return Unit.f71739a;
            case 17:
                ItemConnectivityWatchBinding itemConnectivityWatchBinding = (ItemConnectivityWatchBinding) this.f80578c;
                WatchUiModel watchUiModel = (WatchUiModel) this.d;
                int i4 = ConnectivityAdapter.WatchViewHolder.d;
                ((View) obj).getClass();
                Context context6 = itemConnectivityWatchBinding.f51406b.getContext();
                WatchActivity.Companion companion3 = WatchActivity.r;
                Context context7 = itemConnectivityWatchBinding.f51406b.getContext();
                context7.getClass();
                String str6 = watchUiModel.f55970b;
                companion3.getClass();
                Intent intentPutExtra = new Intent(context7, (Class<?>) WatchActivity.class).putExtra("WATCH_ID", str6);
                intentPutExtra.getClass();
                context6.startActivity(intentPutExtra);
                return Unit.f71739a;
            case 18:
                ConnectivityAdapter connectivityAdapter2 = (ConnectivityAdapter) this.f80578c;
                WatchUiModel watchUiModel2 = (WatchUiModel) this.d;
                int i5 = ConnectivityAdapter.WatchViewHolder.d;
                ((View) obj).getClass();
                connectivityAdapter2.f56041b.l(watchUiModel2);
                return Unit.f71739a;
            case 19:
                JSONObject jSONObject = (JSONObject) this.f80578c;
                ((ConnectivityView) obj).H(jSONObject.has("message") ? jSONObject.getString("message") : null, jSONObject.has("errorCode") ? Integer.valueOf(jSONObject.getInt("errorCode")) : null, Integer.valueOf(((HttpException) this.d).f79346b));
                return Unit.f71739a;
            case 20:
                LegacyTextFieldState legacyTextFieldState = (LegacyTextFieldState) this.f80578c;
                Brush brush2 = (Brush) this.d;
                ContentDrawScope contentDrawScope2 = (ContentDrawScope) obj;
                contentDrawScope2.R1();
                if (((Boolean) ((SnapshotMutableStateImpl) legacyTextFieldState.s).getF10755b()).booleanValue() || ((Boolean) ((SnapshotMutableStateImpl) legacyTextFieldState.t).getF10755b()).booleanValue()) {
                    DrawScope.q1(contentDrawScope2, brush2, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, 0, 126);
                }
                return Unit.f71739a;
            case 21:
                CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode = (CoreTextFieldSemanticsModifierNode) this.f80578c;
                AnnotatedString annotatedString = (AnnotatedString) obj;
                if (!coreTextFieldSemanticsModifierNode.u && coreTextFieldSemanticsModifierNode.v) {
                    TextInputSession textInputSession = coreTextFieldSemanticsModifierNode.t.f5928e;
                    if (textInputSession != null) {
                        TextFieldDelegate.Companion companion4 = TextFieldDelegate.f5962a;
                        List listP = CollectionsKt.P(new FinishComposingTextCommand(), new CommitTextCommand(annotatedString, 1));
                        LegacyTextFieldState legacyTextFieldState2 = coreTextFieldSemanticsModifierNode.t;
                        EditProcessor editProcessor = legacyTextFieldState2.d;
                        lq lqVar = legacyTextFieldState2.v;
                        companion4.getClass();
                        TextFieldValue textFieldValueA = editProcessor.a(listP);
                        if (Intrinsics.c((TextInputSession) textInputSession.f10861a.f10844b.get(), textInputSession)) {
                            textInputSession.f10862b.e(null, textFieldValueA);
                        }
                        lqVar.invoke(textFieldValueA);
                    } else {
                        TextFieldValue textFieldValue = coreTextFieldSemanticsModifierNode.s;
                        String str7 = textFieldValue.f10840a.f10420c;
                        long j2 = textFieldValue.f10841b;
                        TextRange.Companion companion5 = TextRange.f10564b;
                        String string = StringsKt.K(str7, (int) (j2 >> 32), (int) (BodyPartID.bodyIdMax & j2), annotatedString).toString();
                        int length = annotatedString.f10420c.length() + ((int) (coreTextFieldSemanticsModifierNode.s.f10841b >> 32));
                        coreTextFieldSemanticsModifierNode.t.v.invoke(new TextFieldValue(string, TextRangeKt.a(length, length), (TextRange) null, 4, (DefaultConstructorMarker) null));
                    }
                    z = true;
                }
                return Boolean.valueOf(z);
            case 22:
                DependencyDao_Impl dependencyDao_Impl = (DependencyDao_Impl) this.f80578c;
                Dependency dependency = (Dependency) this.d;
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                DependencyDao_Impl.Companion companion6 = DependencyDao_Impl.f20484c;
                sQLiteConnection.getClass();
                dependencyDao_Impl.f20486b.c(sQLiteConnection, dependency);
                return Unit.f71739a;
            case 23:
                DiskLruCache diskLruCache = (DiskLruCache) this.f80578c;
                DiskLruCache.Editor editor = (DiskLruCache.Editor) this.d;
                ((IOException) obj).getClass();
                synchronized (diskLruCache) {
                    editor.c();
                }
                return Unit.f71739a;
            case 24:
                DispatchCountryViewModel dispatchCountryViewModel = (DispatchCountryViewModel) this.f80578c;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) this.d;
                InAppDispatch inAppDispatch = (InAppDispatch) obj;
                inAppDispatch.getClass();
                dispatchCountryViewModel.Q8(inAppDispatch);
                lVModalBottomSheetState.e();
                return Unit.f71739a;
            case 25:
                InAppDispatch inAppDispatch2 = (InAppDispatch) this.f80578c;
                String str8 = (String) this.d;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                boolean z2 = inAppDispatch2.f67481h;
                String strH = inAppDispatch2.f67480f;
                if (!z2) {
                    strH = tr.h(strH, ", ", str8);
                }
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, strH);
                return Unit.f71739a;
            case 26:
                DistantRepairFormBffViewModel distantRepairFormBffViewModel = (DistantRepairFormBffViewModel) this.f80578c;
                Function1 function8 = (Function1) this.d;
                Integer num = (Integer) obj;
                num.getClass();
                distantRepairFormBffViewModel.d(DistantRepairTrackingUiModel.AddImageClickedEvent.f57421a);
                function8.invoke(num);
                return Unit.f71739a;
            case 27:
                DistantRepairFormViewModel distantRepairFormViewModel = (DistantRepairFormViewModel) this.f80578c;
                Function1 function9 = (Function1) this.d;
                Integer num2 = (Integer) obj;
                num2.getClass();
                distantRepairFormViewModel.d(DistantRepairTrackingUiModel.AddImageClickedEvent.f57421a);
                function9.invoke(num2);
                return Unit.f71739a;
            case 28:
                DragScope dragScope = (DragScope) this.f80578c;
                DraggableNode draggableNode = (DraggableNode) this.d;
                long jG = Offset.g(draggableNode.P ? -1.0f : 1.0f, ((DragEvent.DragDelta) obj).f4482a);
                Orientation orientation = draggableNode.L;
                Function3 function10 = DraggableKt.f4565a;
                dragScope.a(Float.intBitsToFloat((int) (orientation == Orientation.Vertical ? jG & BodyPartID.bodyIdMax : jG >> 32)));
                return Unit.f71739a;
            default:
                Function2 function11 = (Function2) this.f80578c;
                FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) this.d;
                obj.getClass();
                function11.invoke(((FormFieldUiModel) formFieldGenericUiModel).d, obj);
                return Unit.f71739a;
        }
    }
}
