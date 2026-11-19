package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerBluetoothInfoBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.TrunkSpeakerTypeEnum;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanBottomSheetRouter;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet$openBluetoothInfoFragment$listener$1;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet$openConnectionTypeFragment$listener$1;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.helper.ScanNavigationHelper;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.BluetoothInfoFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectionTypeFragment;
import dagger.hilt.android.AndroidEntryPoint;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\u000b\fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "Listener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class BluetoothInfoFragment extends Hilt_BluetoothInfoFragment {
    public final FragmentViewBindingDelegate F;
    public ScanMainBottomSheet$openBluetoothInfoFragment$listener$1 G;
    public static final /* synthetic */ KProperty[] I = {Reflection.f71922a.h(new PropertyReference1Impl(BluetoothInfoFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerBluetoothInfoBinding;", 0))};
    public static final Companion H = new Companion(null);
    public static final String J = "BluetoothInfoFragment";

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment$Listener;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Listener {
    }

    public BluetoothInfoFragment() {
        super(R.layout.fragment_trunk_speaker_bluetooth_info);
        this.F = FragmentExtKt.d(this, BluetoothInfoFragment$binding$2.f56618b);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.Hilt_BluetoothInfoFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        KProperty[] kPropertyArr = I;
        final int i2 = 0;
        KProperty kProperty = kPropertyArr[0];
        FragmentViewBindingDelegate fragmentViewBindingDelegate = this.F;
        ViewExtKt.d(((FragmentTrunkSpeakerBluetoothInfoBinding) fragmentViewBindingDelegate.c(this, kProperty)).f51322c, new Function1(this) { // from class: ue

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ BluetoothInfoFragment f80296c;

            {
                this.f80296c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i3 = i2;
                BluetoothInfoFragment bluetoothInfoFragment = this.f80296c;
                View view2 = (View) obj;
                switch (i3) {
                    case 0:
                        BluetoothInfoFragment.Companion companion = BluetoothInfoFragment.H;
                        view2.getClass();
                        ScanMainBottomSheet$openBluetoothInfoFragment$listener$1 scanMainBottomSheet$openBluetoothInfoFragment$listener$1 = bluetoothInfoFragment.G;
                        if (scanMainBottomSheet$openBluetoothInfoFragment$listener$1 != null) {
                            ScanMainBottomSheet scanMainBottomSheet = scanMainBottomSheet$openBluetoothInfoFragment$listener$1.f56594a;
                            TrunkSpeakerTypeEnum trunkSpeakerTypeEnum = scanMainBottomSheet$openBluetoothInfoFragment$listener$1.f56595b;
                            ScanMainBottomSheet.Companion companion2 = ScanMainBottomSheet.R;
                            ScanMainBottomSheet$openConnectionTypeFragment$listener$1 scanMainBottomSheet$openConnectionTypeFragment$listener$1 = new ScanMainBottomSheet$openConnectionTypeFragment$listener$1(trunkSpeakerTypeEnum, scanMainBottomSheet);
                            ScanNavigationHelper scanNavigationHelperY = scanMainBottomSheet.Y();
                            FragmentManager childFragmentManager = scanMainBottomSheet.getChildFragmentManager();
                            ScanBottomSheetRouter scanBottomSheetRouter = scanNavigationHelperY.f56615a;
                            ConnectionTypeFragment.H.getClass();
                            ConnectionTypeFragment connectionTypeFragment = new ConnectionTypeFragment();
                            connectionTypeFragment.G = scanMainBottomSheet$openConnectionTypeFragment$listener$1;
                            String str = ConnectionTypeFragment.J;
                            scanBottomSheetRouter.getClass();
                            ScanBottomSheetRouter.a(childFragmentManager, connectionTypeFragment, str, true);
                        }
                        break;
                    default:
                        BluetoothInfoFragment.Companion companion3 = BluetoothInfoFragment.H;
                        view2.getClass();
                        ScanMainBottomSheet$openBluetoothInfoFragment$listener$1 scanMainBottomSheet$openBluetoothInfoFragment$listener$2 = bluetoothInfoFragment.G;
                        if (scanMainBottomSheet$openBluetoothInfoFragment$listener$2 != null) {
                            ScanMainBottomSheet.X(scanMainBottomSheet$openBluetoothInfoFragment$listener$2.f56594a);
                        }
                        break;
                }
                return Unit.f71739a;
            }
        });
        final int i3 = 1;
        ViewExtKt.d(((FragmentTrunkSpeakerBluetoothInfoBinding) fragmentViewBindingDelegate.c(this, kPropertyArr[0])).f51321b, new Function1(this) { // from class: ue

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ BluetoothInfoFragment f80296c;

            {
                this.f80296c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i3;
                BluetoothInfoFragment bluetoothInfoFragment = this.f80296c;
                View view2 = (View) obj;
                switch (i4) {
                    case 0:
                        BluetoothInfoFragment.Companion companion = BluetoothInfoFragment.H;
                        view2.getClass();
                        ScanMainBottomSheet$openBluetoothInfoFragment$listener$1 scanMainBottomSheet$openBluetoothInfoFragment$listener$1 = bluetoothInfoFragment.G;
                        if (scanMainBottomSheet$openBluetoothInfoFragment$listener$1 != null) {
                            ScanMainBottomSheet scanMainBottomSheet = scanMainBottomSheet$openBluetoothInfoFragment$listener$1.f56594a;
                            TrunkSpeakerTypeEnum trunkSpeakerTypeEnum = scanMainBottomSheet$openBluetoothInfoFragment$listener$1.f56595b;
                            ScanMainBottomSheet.Companion companion2 = ScanMainBottomSheet.R;
                            ScanMainBottomSheet$openConnectionTypeFragment$listener$1 scanMainBottomSheet$openConnectionTypeFragment$listener$1 = new ScanMainBottomSheet$openConnectionTypeFragment$listener$1(trunkSpeakerTypeEnum, scanMainBottomSheet);
                            ScanNavigationHelper scanNavigationHelperY = scanMainBottomSheet.Y();
                            FragmentManager childFragmentManager = scanMainBottomSheet.getChildFragmentManager();
                            ScanBottomSheetRouter scanBottomSheetRouter = scanNavigationHelperY.f56615a;
                            ConnectionTypeFragment.H.getClass();
                            ConnectionTypeFragment connectionTypeFragment = new ConnectionTypeFragment();
                            connectionTypeFragment.G = scanMainBottomSheet$openConnectionTypeFragment$listener$1;
                            String str = ConnectionTypeFragment.J;
                            scanBottomSheetRouter.getClass();
                            ScanBottomSheetRouter.a(childFragmentManager, connectionTypeFragment, str, true);
                        }
                        break;
                    default:
                        BluetoothInfoFragment.Companion companion3 = BluetoothInfoFragment.H;
                        view2.getClass();
                        ScanMainBottomSheet$openBluetoothInfoFragment$listener$1 scanMainBottomSheet$openBluetoothInfoFragment$listener$2 = bluetoothInfoFragment.G;
                        if (scanMainBottomSheet$openBluetoothInfoFragment$listener$2 != null) {
                            ScanMainBottomSheet.X(scanMainBottomSheet$openBluetoothInfoFragment$listener$2.f56594a);
                        }
                        break;
                }
                return Unit.f71739a;
            }
        });
    }
}
