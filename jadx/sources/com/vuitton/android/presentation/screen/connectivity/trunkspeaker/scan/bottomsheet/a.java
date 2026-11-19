package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet;

import android.bluetooth.BluetoothDevice;
import androidx.fragment.app.FragmentManager;
import com.lp.ble.entity.LPBluetoothDevice;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkGeneralHelper;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.helper.ScanNavigationHelper;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiSuccessFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.bledevicelist.LVBLEDeviceListFragment;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f56613b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ScanMainBottomSheet f56614c;
    public final /* synthetic */ LPBluetoothDevice d;

    public /* synthetic */ a(ScanMainBottomSheet scanMainBottomSheet, LPBluetoothDevice lPBluetoothDevice, int i2) {
        this.f56613b = i2;
        this.f56614c = scanMainBottomSheet;
        this.d = lPBluetoothDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String name;
        int i2 = this.f56613b;
        LPBluetoothDevice lPBluetoothDevice = this.d;
        ScanMainBottomSheet scanMainBottomSheet = this.f56614c;
        switch (i2) {
            case 0:
                scanMainBottomSheet.P = lPBluetoothDevice.f36359b.getName();
                ScanMainBottomSheet$openWifiConnectionSuccess$listener$1 scanMainBottomSheet$openWifiConnectionSuccess$listener$1 = new ScanMainBottomSheet$openWifiConnectionSuccess$listener$1(scanMainBottomSheet);
                if (scanMainBottomSheet.getContext() != null) {
                    ScanNavigationHelper scanNavigationHelperY = scanMainBottomSheet.Y();
                    FragmentManager childFragmentManager = scanMainBottomSheet.getChildFragmentManager();
                    ScanBottomSheetRouter scanBottomSheetRouter = scanNavigationHelperY.f56615a;
                    ConnectToWifiSuccessFragment.H.getClass();
                    ConnectToWifiSuccessFragment connectToWifiSuccessFragment = new ConnectToWifiSuccessFragment();
                    connectToWifiSuccessFragment.G = scanMainBottomSheet$openWifiConnectionSuccess$listener$1;
                    String str = ConnectToWifiSuccessFragment.J;
                    scanBottomSheetRouter.getClass();
                    ScanBottomSheetRouter.a(childFragmentManager, connectToWifiSuccessFragment, str, true);
                }
                break;
            default:
                ScanMainBottomSheet.Companion companion = ScanMainBottomSheet.R;
                ScanMainBottomSheet$openConnectToWifi$listener$1 scanMainBottomSheet$openConnectToWifi$listener$1 = new ScanMainBottomSheet$openConnectToWifi$listener$1(scanMainBottomSheet, lPBluetoothDevice);
                if (scanMainBottomSheet.getContext() != null) {
                    ScanNavigationHelper scanNavigationHelperY2 = scanMainBottomSheet.Y();
                    FragmentManager childFragmentManager2 = scanMainBottomSheet.getChildFragmentManager();
                    lPBluetoothDevice.getClass();
                    ScanBottomSheetRouter scanBottomSheetRouter2 = scanNavigationHelperY2.f56615a;
                    ConnectToWifiFragment.L.getClass();
                    ConnectToWifiFragment connectToWifiFragment = new ConnectToWifiFragment();
                    TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
                    BluetoothDevice bluetoothDevice = lPBluetoothDevice.f36359b;
                    TrunkGeneralHelper.SpeakerTrunkType speakerTrunkType = null;
                    if (bluetoothDevice != null && (name = bluetoothDevice.getName()) != null && name.length() > 0) {
                        String name2 = lPBluetoothDevice.f36359b.getName();
                        name2.getClass();
                        if (TrunkGeneralHelper.f(name2)) {
                            speakerTrunkType = TrunkGeneralHelper.SpeakerTrunkType.PM;
                        } else {
                            String name3 = lPBluetoothDevice.f36359b.getName();
                            name3.getClass();
                            if (TrunkGeneralHelper.e(name3)) {
                                speakerTrunkType = TrunkGeneralHelper.SpeakerTrunkType.GM;
                            }
                        }
                    }
                    connectToWifiFragment.G = speakerTrunkType;
                    connectToWifiFragment.H = scanMainBottomSheet$openConnectToWifi$listener$1;
                    LVBLEDeviceListFragment.N.getClass();
                    String str2 = LVBLEDeviceListFragment.P;
                    scanBottomSheetRouter2.getClass();
                    ScanBottomSheetRouter.a(childFragmentManager2, connectToWifiFragment, str2, true);
                }
                break;
        }
    }
}
