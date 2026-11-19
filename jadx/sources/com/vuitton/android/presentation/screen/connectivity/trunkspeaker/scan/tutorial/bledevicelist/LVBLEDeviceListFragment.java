package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.bledevicelist;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.lp.ble.entity.LPBluetoothDevice;
import com.lp.ble.manager.LPBLEManager;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerBleDeviceListBinding;
import com.vuitton.android.presentation.databinding.ReusableBottomSheetTitleLayoutBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.bledevicelist.LVBLEDeviceListFragment;
import com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.BaseBottomSheet;
import defpackage.f50;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0002\u000b\fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;", "Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "Listener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LVBLEDeviceListFragment extends BaseBottomSheet {
    public ScanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1 L;
    public final FragmentViewBindingDelegate M;
    public static final /* synthetic */ KProperty[] O = {Reflection.f71922a.h(new PropertyReference1Impl(LVBLEDeviceListFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerBleDeviceListBinding;", 0))};
    public static final Companion N = new Companion(null);
    public static final String P = "LVBLEDeviceListFragment";

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment$Listener;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Listener {
    }

    public LVBLEDeviceListFragment() {
        super(R.layout.fragment_trunk_speaker_ble_device_list);
        this.M = FragmentExtKt.d(this, LVBLEDeviceListFragment$binding$2.f56638b);
    }

    public final FragmentTrunkSpeakerBleDeviceListBinding V() {
        return (FragmentTrunkSpeakerBleDeviceListBinding) this.M.c(this, O[0]);
    }

    public final void W() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new f50(this, 2));
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStop() {
        LPBLEManager.getInstance().stopScan();
        super.onStop();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.Hilt_BaseBottomSheet, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        FragmentTrunkSpeakerBleDeviceListBinding fragmentTrunkSpeakerBleDeviceListBindingV = V();
        ReusableBottomSheetTitleLayoutBinding reusableBottomSheetTitleLayoutBinding = fragmentTrunkSpeakerBleDeviceListBindingV.f51319c;
        TextView textView = reusableBottomSheetTitleLayoutBinding.d;
        final int i2 = 1;
        textView.setAccessibilityHeading(true);
        textView.setText(getString(R.string.speaker_trunk_tutorial_ble_scan_for_speakers_title));
        final int i3 = 0;
        ViewExtKt.d(reusableBottomSheetTitleLayoutBinding.f51461c, new Function1(this) { // from class: e50

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ LVBLEDeviceListFragment f68768c;

            {
                this.f68768c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ScanMainBottomSheet scanMainBottomSheet;
                FragmentActivity activity;
                int i4 = i3;
                LVBLEDeviceListFragment lVBLEDeviceListFragment = this.f68768c;
                switch (i4) {
                    case 0:
                        LVBLEDeviceListFragment.Companion companion = LVBLEDeviceListFragment.N;
                        ((View) obj).getClass();
                        lVBLEDeviceListFragment.W();
                        FragmentActivity activity2 = lVBLEDeviceListFragment.getActivity();
                        int i5 = 1;
                        if (activity2 != null) {
                            activity2.runOnUiThread(new f50(lVBLEDeviceListFragment, i5));
                        }
                        ScanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1 scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1 = lVBLEDeviceListFragment.L;
                        if (scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1 != null && (activity = (scanMainBottomSheet = scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1.f56605a).getActivity()) != null) {
                            activity.runOnUiThread(new du0(scanMainBottomSheet, i5));
                        }
                        break;
                    case 1:
                        LVBLEDeviceListFragment.Companion companion2 = LVBLEDeviceListFragment.N;
                        ((View) obj).getClass();
                        ScanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1 scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$2 = lVBLEDeviceListFragment.L;
                        if (scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$2 != null) {
                            ScanMainBottomSheet.X(scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$2.f56605a);
                        }
                        break;
                    default:
                        LPBluetoothDevice lPBluetoothDevice = (LPBluetoothDevice) obj;
                        LVBLEDeviceListFragment.Companion companion3 = LVBLEDeviceListFragment.N;
                        lPBluetoothDevice.getClass();
                        FragmentActivity activity3 = lVBLEDeviceListFragment.getActivity();
                        if (activity3 != null) {
                            activity3.runOnUiThread(new jr(lVBLEDeviceListFragment, lPBluetoothDevice, 23));
                        }
                        break;
                }
                return Unit.f71739a;
            }
        });
        ViewExtKt.d(fragmentTrunkSpeakerBleDeviceListBindingV.f51318b, new Function1(this) { // from class: e50

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ LVBLEDeviceListFragment f68768c;

            {
                this.f68768c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ScanMainBottomSheet scanMainBottomSheet;
                FragmentActivity activity;
                int i4 = i2;
                LVBLEDeviceListFragment lVBLEDeviceListFragment = this.f68768c;
                switch (i4) {
                    case 0:
                        LVBLEDeviceListFragment.Companion companion = LVBLEDeviceListFragment.N;
                        ((View) obj).getClass();
                        lVBLEDeviceListFragment.W();
                        FragmentActivity activity2 = lVBLEDeviceListFragment.getActivity();
                        int i5 = 1;
                        if (activity2 != null) {
                            activity2.runOnUiThread(new f50(lVBLEDeviceListFragment, i5));
                        }
                        ScanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1 scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1 = lVBLEDeviceListFragment.L;
                        if (scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1 != null && (activity = (scanMainBottomSheet = scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1.f56605a).getActivity()) != null) {
                            activity.runOnUiThread(new du0(scanMainBottomSheet, i5));
                        }
                        break;
                    case 1:
                        LVBLEDeviceListFragment.Companion companion2 = LVBLEDeviceListFragment.N;
                        ((View) obj).getClass();
                        ScanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1 scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$2 = lVBLEDeviceListFragment.L;
                        if (scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$2 != null) {
                            ScanMainBottomSheet.X(scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$2.f56605a);
                        }
                        break;
                    default:
                        LPBluetoothDevice lPBluetoothDevice = (LPBluetoothDevice) obj;
                        LVBLEDeviceListFragment.Companion companion3 = LVBLEDeviceListFragment.N;
                        lPBluetoothDevice.getClass();
                        FragmentActivity activity3 = lVBLEDeviceListFragment.getActivity();
                        if (activity3 != null) {
                            activity3.runOnUiThread(new jr(lVBLEDeviceListFragment, lPBluetoothDevice, 23));
                        }
                        break;
                }
                return Unit.f71739a;
            }
        });
        final int i4 = 2;
        fragmentTrunkSpeakerBleDeviceListBindingV.f51320e.setAdapter(new LVBluetoothDeviceAdapter(new Function1(this) { // from class: e50

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ LVBLEDeviceListFragment f68768c;

            {
                this.f68768c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ScanMainBottomSheet scanMainBottomSheet;
                FragmentActivity activity;
                int i5 = i4;
                LVBLEDeviceListFragment lVBLEDeviceListFragment = this.f68768c;
                switch (i5) {
                    case 0:
                        LVBLEDeviceListFragment.Companion companion = LVBLEDeviceListFragment.N;
                        ((View) obj).getClass();
                        lVBLEDeviceListFragment.W();
                        FragmentActivity activity2 = lVBLEDeviceListFragment.getActivity();
                        int i6 = 1;
                        if (activity2 != null) {
                            activity2.runOnUiThread(new f50(lVBLEDeviceListFragment, i6));
                        }
                        ScanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1 scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1 = lVBLEDeviceListFragment.L;
                        if (scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1 != null && (activity = (scanMainBottomSheet = scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1.f56605a).getActivity()) != null) {
                            activity.runOnUiThread(new du0(scanMainBottomSheet, i6));
                        }
                        break;
                    case 1:
                        LVBLEDeviceListFragment.Companion companion2 = LVBLEDeviceListFragment.N;
                        ((View) obj).getClass();
                        ScanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1 scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$2 = lVBLEDeviceListFragment.L;
                        if (scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$2 != null) {
                            ScanMainBottomSheet.X(scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$2.f56605a);
                        }
                        break;
                    default:
                        LPBluetoothDevice lPBluetoothDevice = (LPBluetoothDevice) obj;
                        LVBLEDeviceListFragment.Companion companion3 = LVBLEDeviceListFragment.N;
                        lPBluetoothDevice.getClass();
                        FragmentActivity activity3 = lVBLEDeviceListFragment.getActivity();
                        if (activity3 != null) {
                            activity3.runOnUiThread(new jr(lVBLEDeviceListFragment, lPBluetoothDevice, 23));
                        }
                        break;
                }
                return Unit.f71739a;
            }
        }));
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new f50(this, i3));
        }
    }
}
