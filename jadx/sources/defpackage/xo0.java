package defpackage;

import android.content.Context;
import android.view.View;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.text.input.internal.RecordingInputConnection;
import androidx.compose.foundation.text.selection.MouseSelectionObserver;
import androidx.compose.runtime.ControlledComposition;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.SnapshotMutableDoubleStateImpl;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableLongStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotMutationPolicy;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.composer.gapbuffer.GapAnchorKt;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.input.EditCommand;
import androidx.fragment.app.FragmentManager;
import androidx.room.RoomConnectionManager;
import androidx.sqlite.db.SupportSQLiteDatabase;
import com.sightcall.livetranslation.settings.SettingsPanelInteractor;
import com.sightcall.livetranslation.settings.SettingsPanelViewHolder;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.StaggeredGridItemKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeItemUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.TrunkSpeakerTypeEnum;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanBottomSheetRouter;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet$openBluetoothInfoFragment$listener$1;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.helper.ScanNavigationHelper;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.BluetoothInfoFragment;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterDataTypeUiModel;
import com.vuitton.android.presentation.screen.portal.PortalSliderViewModel;
import com.vuitton.android.presentation.screen.portal.PortalSwipeType;
import com.vuitton.android.presentation.screen.portal.models.PortalTrackingUiModel;
import com.vuitton.android.presentation.screen.repairs.RepairRouter;
import com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressBffFragment;
import com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressFragment;
import com.vuitton.android.presentation.screen.search.SearchViewModel;
import com.vuitton.android.presentation.screen.search.models.SearchTrackingUiModel;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategory;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqPdf;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.Job;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xo0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81172c;

    public /* synthetic */ xo0(Object obj, int i2) {
        this.f81171b = i2;
        this.f81172c = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f81171b;
        Object objB = null;
        int i3 = 5;
        Object obj2 = this.f81172c;
        switch (i2) {
            case 0:
                PolymorphicSerializer polymorphicSerializer = (PolymorphicSerializer) obj2;
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                classSerialDescriptorBuilder.getClass();
                BuiltinSerializersKt.e(StringCompanionObject.f71926a);
                PrimitiveSerialDescriptor primitiveSerialDescriptor = StringSerializer.f75685b;
                EmptyList emptyList = EmptyList.f71768b;
                classSerialDescriptorBuilder.a("type", primitiveSerialDescriptor, emptyList, false);
                classSerialDescriptorBuilder.a("value", SerialDescriptorsKt.f("kotlinx.serialization.Polymorphic<" + polymorphicSerializer.f75517a.B() + '>', SerialKind.CONTEXTUAL.f75562a, new SerialDescriptor[0]), emptyList, false);
                List list = polymorphicSerializer.f75518b;
                list.getClass();
                classSerialDescriptorBuilder.f75529b = list;
                return Unit.f71739a;
            case 1:
                PortalSwipeType portalSwipeType = (PortalSwipeType) obj;
                portalSwipeType.getClass();
                ((PortalSliderViewModel) obj2).bc(new PortalTrackingUiModel.OnPortalSwipeEvent(portalSwipeType));
                return Unit.f71739a;
            case 2:
                ProductArActivity.Companion companion = ProductArActivity.D;
                ((View) obj).getClass();
                ((ProductArActivity) obj2).finish();
                return Unit.f71739a;
            case 3:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                SemanticsPropertiesKt.p(semanticsPropertyReceiver, ((PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) obj2).f62952a);
                return Unit.f71739a;
            case 4:
                Recomposer recomposer = (Recomposer) obj2;
                Throwable th = (Throwable) obj;
                Recomposer.Companion companion2 = Recomposer.z;
                CancellationException cancellationException = new CancellationException("Recomposer effect job completed");
                cancellationException.initCause(th);
                synchronized (recomposer.f8083c) {
                    try {
                        Job job = recomposer.d;
                        if (job != null) {
                            recomposer.u.setValue(Recomposer.State.ShuttingDown);
                            job.cancel(cancellationException);
                            recomposer.r = null;
                            job.invokeOnCompletion(new rp0(recomposer, th, i3));
                        } else {
                            recomposer.f8084e = cancellationException;
                            recomposer.u.setValue(Recomposer.State.ShutDown);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return Unit.f71739a;
            case 5:
                Recomposer.Companion companion3 = Recomposer.z;
                ((ControlledComposition) obj2).a(obj);
                return Unit.f71739a;
            case 6:
                ((RecordingInputConnection) obj2).b((EditCommand) obj);
                return Unit.f71739a;
            case 7:
                Saver saver = (Saver) obj2;
                MutableState mutableState = (MutableState) obj;
                if (!(mutableState instanceof SnapshotMutableState)) {
                    md.n("Failed requirement.");
                    return null;
                }
                SnapshotMutableState snapshotMutableState = (SnapshotMutableState) mutableState;
                if (snapshotMutableState.getF10755b() != null) {
                    Object f10755b = snapshotMutableState.getF10755b();
                    f10755b.getClass();
                    objB = saver.b(f10755b);
                }
                SnapshotMutationPolicy f8133c = snapshotMutableState.getF8133c();
                f8133c.getClass();
                return SnapshotStateKt.f(objB, f8133c);
            case 8:
                RepairConfirmAddressBffFragment repairConfirmAddressBffFragment = (RepairConfirmAddressBffFragment) obj2;
                String str = (String) obj;
                RepairConfirmAddressBffFragment.Companion companion4 = RepairConfirmAddressBffFragment.M;
                str.getClass();
                repairConfirmAddressBffFragment.R();
                Context contextRequireContext = repairConfirmAddressBffFragment.requireContext();
                contextRequireContext.getClass();
                RepairRouter.e(contextRequireContext, repairConfirmAddressBffFragment.L, str);
                return Unit.f71739a;
            case 9:
                RepairConfirmAddressFragment repairConfirmAddressFragment = (RepairConfirmAddressFragment) obj2;
                String str2 = (String) obj;
                RepairConfirmAddressFragment.Companion companion5 = RepairConfirmAddressFragment.M;
                str2.getClass();
                repairConfirmAddressFragment.Q();
                Context contextRequireContext2 = repairConfirmAddressFragment.requireContext();
                contextRequireContext2.getClass();
                RepairRouter.e(contextRequireContext2, repairConfirmAddressFragment.L, str2);
                return Unit.f71739a;
            case 10:
                SupportSQLiteDatabase supportSQLiteDatabase = (SupportSQLiteDatabase) obj;
                int i4 = RoomConnectionManager.f19450h;
                supportSQLiteDatabase.getClass();
                ((RoomConnectionManager) obj2).g = supportSQLiteDatabase;
                return Unit.f71739a;
            case 11:
                ((SaveableStateHolder) obj2).c(obj);
                return Unit.f71739a;
            case 12:
                ScanMainBottomSheet scanMainBottomSheet = (ScanMainBottomSheet) obj2;
                TrunkSpeakerTypeEnum trunkSpeakerTypeEnum = (TrunkSpeakerTypeEnum) obj;
                ScanMainBottomSheet.Companion companion6 = ScanMainBottomSheet.R;
                trunkSpeakerTypeEnum.getClass();
                ScanMainBottomSheet$openBluetoothInfoFragment$listener$1 scanMainBottomSheet$openBluetoothInfoFragment$listener$1 = new ScanMainBottomSheet$openBluetoothInfoFragment$listener$1(trunkSpeakerTypeEnum, scanMainBottomSheet);
                ScanNavigationHelper scanNavigationHelperY = scanMainBottomSheet.Y();
                FragmentManager childFragmentManager = scanMainBottomSheet.getChildFragmentManager();
                ScanBottomSheetRouter scanBottomSheetRouter = scanNavigationHelperY.f56615a;
                BluetoothInfoFragment.H.getClass();
                BluetoothInfoFragment bluetoothInfoFragment = new BluetoothInfoFragment();
                bluetoothInfoFragment.G = scanMainBottomSheet$openBluetoothInfoFragment$listener$1;
                String str3 = BluetoothInfoFragment.J;
                scanBottomSheetRouter.getClass();
                ScanBottomSheetRouter.a(childFragmentManager, bluetoothInfoFragment, str3, true);
                return Unit.f71739a;
            case 13:
                ((Map) obj2).remove(obj);
                return Unit.f71739a;
            case 14:
                ScrollState scrollState = (ScrollState) obj2;
                float fFloatValue = ((Float) obj).floatValue();
                MutableIntState mutableIntState = scrollState.f4290a;
                SnapshotMutableIntStateImpl snapshotMutableIntStateImpl = (SnapshotMutableIntStateImpl) mutableIntState;
                float f2 = snapshotMutableIntStateImpl.f() + fFloatValue + scrollState.f4294f;
                float fC = RangesKt.c(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, scrollState.g());
                boolean z = f2 == fC;
                float f3 = fC - snapshotMutableIntStateImpl.f();
                int iRound = Math.round(f3);
                ((SnapshotMutableIntStateImpl) mutableIntState).i(snapshotMutableIntStateImpl.f() + iRound);
                scrollState.f4294f = f3 - iRound;
                if (!z) {
                    fFloatValue = f3;
                }
                return Float.valueOf(fFloatValue);
            case 15:
                ScrollingLogic scrollingLogic = (ScrollingLogic) obj2;
                return new Offset(scrollingLogic.e(scrollingLogic.f4715k, ((Offset) obj).f8808a, scrollingLogic.f4714j));
            case 16:
                SearchViewModel searchViewModel = (SearchViewModel) obj2;
                FocusState focusState = (FocusState) obj;
                focusState.getClass();
                if (focusState.a()) {
                    searchViewModel.x7(SearchTrackingUiModel.OnHitOnBottomSearchBar.f64269a);
                }
                return Unit.f71739a;
            case 17:
                PointerInputChange pointerInputChange = (PointerInputChange) obj;
                if (((MouseSelectionObserver) obj2).c(pointerInputChange.f9330c)) {
                    pointerInputChange.a();
                }
                return Unit.f71739a;
            case 18:
                KSerializer kSerializer = (KSerializer) obj2;
                ((List) obj).getClass();
                return kSerializer;
            case 19:
                return SettingsPanelViewHolder.render$lambda$0((SettingsPanelViewHolder) obj2, (SettingsPanelInteractor.State) obj);
            case 20:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver2, new CollectionInfo(((ProductFilterDataTypeUiModel.Simple) obj2).f62961a.size(), 1));
                return Unit.f71739a;
            case 21:
                return Integer.valueOf(((SlotTable) obj2).h(GapAnchorKt.a(((MovableContentStateReference) obj).f8027e)));
            case 22:
                ((SnapshotMutableDoubleStateImpl) obj2).p(((Double) obj).doubleValue());
                return Unit.f71739a;
            case 23:
                ((SnapshotMutableFloatStateImpl) obj2).w(((Float) obj).floatValue());
                return Unit.f71739a;
            case 24:
                ((SnapshotMutableIntStateImpl) obj2).i(((Integer) obj).intValue());
                return Unit.f71739a;
            case 25:
                ((SnapshotMutableLongStateImpl) obj2).D(((Long) obj).longValue());
                return Unit.f71739a;
            case 26:
                ((SnapshotMutableStateImpl) obj2).setValue(obj);
                return Unit.f71739a;
            case 27:
                SneakerDetailFragment sneakerDetailFragment = (SneakerDetailFragment) obj2;
                List<FaqCategory> list2 = (List) obj;
                SneakerDetailFragment.Companion companion7 = SneakerDetailFragment.Z;
                list2.getClass();
                for (FaqCategory faqCategory : list2) {
                    List<FaqPdf> list3 = faqCategory.f67310e;
                    if (list3 != null) {
                        for (FaqPdf faqPdf : list3) {
                            sneakerDetailFragment.F0(faqPdf.f67314b, new bx(sneakerDetailFragment, faqPdf, i3));
                        }
                    }
                    if (!faqCategory.d.isEmpty()) {
                        sneakerDetailFragment.F0(sneakerDetailFragment.getString(R.string.rml_faq), new hi(sneakerDetailFragment, i3));
                    }
                }
                return Unit.f71739a;
            case 28:
                FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj;
                formFieldGenericUiModel.getClass();
                return Boolean.valueOf(((LinkedHashSet) obj2).contains(formFieldGenericUiModel.getD()));
            default:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                float f4 = StaggeredGridItemKt.f55396a;
                semanticsPropertyReceiver3.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver3, 0);
                SemanticsPropertiesKt.p(semanticsPropertyReceiver3, ((ThemeItemUiModel) obj2).d);
                return Unit.f71739a;
        }
    }
}
