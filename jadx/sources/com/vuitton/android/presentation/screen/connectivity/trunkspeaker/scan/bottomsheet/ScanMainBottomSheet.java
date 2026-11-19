package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.device.LPDevice;
import com.lp.ble.manager.LPBLEManager;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.TrunkSpeakerConnectionTypeEnum;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.TrunkSpeakerTypeEnum;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListActivity;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkGeneralHelper;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.ScanFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.helper.ScanNavigationHelper;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.helper.ScanTutorialHelper$WhenMappings;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.SpeakerTypeFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.StandardTutorialFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.bledevicelist.LVBLEDeviceListFragment;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.du0;
import defpackage.v40;
import defpackage.xo0;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0002\u000b\fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;", "Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "Listener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class ScanMainBottomSheet extends Hilt_ScanMainBottomSheet {
    public static final Companion R = new Companion(null);
    public static final String S = "ScanMainBottomSheet";
    public ScanFragment O;
    public String P;
    public ScanNavigationHelper Q;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$Listener;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Listener {
    }

    public ScanMainBottomSheet() {
        super(R.layout.fragment_connected_objects_tutorial);
        setCancelable(true);
        U(true);
        T(true);
    }

    public static final void V(final ScanMainBottomSheet scanMainBottomSheet, final TrunkSpeakerTypeEnum trunkSpeakerTypeEnum, final TrunkSpeakerConnectionTypeEnum trunkSpeakerConnectionTypeEnum) {
        StandardTutorialFragment.Listener listener = new StandardTutorialFragment.Listener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet$openPowerOnYourSpeakerFragment$listener$1
            @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.StandardTutorialFragment.Listener
            public final void a() {
                ScanMainBottomSheet.X(this.f56602a);
            }

            @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.StandardTutorialFragment.Listener
            public final void b() {
                ScanMainBottomSheet.W(this.f56602a, trunkSpeakerTypeEnum, trunkSpeakerConnectionTypeEnum);
            }
        };
        Context context = scanMainBottomSheet.getContext();
        if (context != null) {
            ScanNavigationHelper scanNavigationHelperY = scanMainBottomSheet.Y();
            FragmentManager childFragmentManager = scanMainBottomSheet.getChildFragmentManager();
            ScanBottomSheetRouter scanBottomSheetRouter = scanNavigationHelperY.f56615a;
            StandardTutorialFragment.Companion companion = StandardTutorialFragment.K;
            String string = context.getString(R.string.Speaker_Trunk_Turn_On_Speaker_Title);
            string.getClass();
            String string2 = context.getString(R.string.speaker_trunk_turn_on_speaker_subtitle);
            string2.getClass();
            companion.getClass();
            StandardTutorialFragment standardTutorialFragmentA = StandardTutorialFragment.Companion.a(2131231582, string, string2);
            standardTutorialFragmentA.G = listener;
            String str = StandardTutorialFragment.M;
            scanBottomSheetRouter.getClass();
            ScanBottomSheetRouter.a(childFragmentManager, standardTutorialFragmentA, str, true);
        }
    }

    public static final void W(final ScanMainBottomSheet scanMainBottomSheet, final TrunkSpeakerTypeEnum trunkSpeakerTypeEnum, final TrunkSpeakerConnectionTypeEnum trunkSpeakerConnectionTypeEnum) {
        int i2;
        StandardTutorialFragment.Listener listener = new StandardTutorialFragment.Listener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet$openSwitchOnSpeakerFragment$listener$1
            @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.StandardTutorialFragment.Listener
            public final void a() {
                ScanMainBottomSheet.X(this.f56609a);
            }

            @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.StandardTutorialFragment.Listener
            public final void b() {
                String string;
                String string2;
                int i3;
                ScanMainBottomSheet.Companion companion = ScanMainBottomSheet.R;
                final ScanMainBottomSheet scanMainBottomSheet2 = this.f56609a;
                final TrunkSpeakerTypeEnum trunkSpeakerTypeEnum2 = trunkSpeakerTypeEnum;
                final TrunkSpeakerConnectionTypeEnum trunkSpeakerConnectionTypeEnum2 = trunkSpeakerConnectionTypeEnum;
                StandardTutorialFragment.Listener listener2 = new StandardTutorialFragment.Listener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet$openSelectSpeakerPositionFragment$listener$1
                    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.StandardTutorialFragment.Listener
                    public final void a() {
                        ScanMainBottomSheet.X(scanMainBottomSheet2);
                    }

                    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.StandardTutorialFragment.Listener
                    public final void b() {
                        int i4;
                        ScanMainBottomSheet.Companion companion2 = ScanMainBottomSheet.R;
                        final TrunkSpeakerConnectionTypeEnum trunkSpeakerConnectionTypeEnum3 = trunkSpeakerConnectionTypeEnum2;
                        final ScanMainBottomSheet scanMainBottomSheet3 = scanMainBottomSheet2;
                        StandardTutorialFragment.Listener listener3 = new StandardTutorialFragment.Listener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet$openActivatePairingModeFragment$listener$1

                            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                            public static final /* synthetic */ class WhenMappings {

                                /* JADX INFO: renamed from: a, reason: collision with root package name */
                                public static final /* synthetic */ int[] f56593a;

                                static {
                                    int[] iArr = new int[TrunkSpeakerConnectionTypeEnum.values().length];
                                    try {
                                        iArr[TrunkSpeakerConnectionTypeEnum.BLUETOOTH.ordinal()] = 1;
                                    } catch (NoSuchFieldError unused) {
                                    }
                                    try {
                                        iArr[TrunkSpeakerConnectionTypeEnum.WIFI.ordinal()] = 2;
                                    } catch (NoSuchFieldError unused2) {
                                    }
                                    f56593a = iArr;
                                }
                            }

                            @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.StandardTutorialFragment.Listener
                            public final void a() {
                                ScanMainBottomSheet.X(scanMainBottomSheet3);
                            }

                            @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.StandardTutorialFragment.Listener
                            public final void b() {
                                int i5 = WhenMappings.f56593a[trunkSpeakerConnectionTypeEnum3.ordinal()];
                                final ScanMainBottomSheet scanMainBottomSheet4 = scanMainBottomSheet3;
                                if (i5 != 1) {
                                    if (i5 != 2) {
                                        v40.g();
                                        return;
                                    }
                                    ScanMainBottomSheet.Companion companion3 = ScanMainBottomSheet.R;
                                    ScanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1 scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1 = new ScanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1(scanMainBottomSheet4);
                                    if (scanMainBottomSheet4.getContext() != null) {
                                        ScanNavigationHelper scanNavigationHelperY = scanMainBottomSheet4.Y();
                                        FragmentManager childFragmentManager = scanMainBottomSheet4.getChildFragmentManager();
                                        ScanBottomSheetRouter scanBottomSheetRouter = scanNavigationHelperY.f56615a;
                                        LVBLEDeviceListFragment.N.getClass();
                                        LVBLEDeviceListFragment lVBLEDeviceListFragment = new LVBLEDeviceListFragment();
                                        lVBLEDeviceListFragment.L = scanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1;
                                        String str = LVBLEDeviceListFragment.P;
                                        scanBottomSheetRouter.getClass();
                                        ScanBottomSheetRouter.a(childFragmentManager, lVBLEDeviceListFragment, str, true);
                                        return;
                                    }
                                    return;
                                }
                                ScanMainBottomSheet.Companion companion4 = ScanMainBottomSheet.R;
                                StandardTutorialFragment.Listener listener4 = new StandardTutorialFragment.Listener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet$openBluetoothInformationFragment$listener$1
                                    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.StandardTutorialFragment.Listener
                                    public final void a() {
                                        ScanMainBottomSheet.X(scanMainBottomSheet4);
                                    }

                                    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.StandardTutorialFragment.Listener
                                    public final void b() {
                                        Intent intent = new Intent("android.settings.BLUETOOTH_SETTINGS");
                                        ScanMainBottomSheet scanMainBottomSheet5 = scanMainBottomSheet4;
                                        scanMainBottomSheet5.startActivity(intent);
                                        scanMainBottomSheet5.dismissAllowingStateLoss();
                                        ScanFragment scanFragment = scanMainBottomSheet5.O;
                                        if (scanFragment != null) {
                                            scanFragment.O();
                                        }
                                    }
                                };
                                Context context = scanMainBottomSheet4.getContext();
                                if (context != null) {
                                    ScanNavigationHelper scanNavigationHelperY2 = scanMainBottomSheet4.Y();
                                    FragmentManager childFragmentManager2 = scanMainBottomSheet4.getChildFragmentManager();
                                    ScanBottomSheetRouter scanBottomSheetRouter2 = scanNavigationHelperY2.f56615a;
                                    String string3 = context.getString(R.string.Speaker_Trunk_BT_Tuto_Title);
                                    string3.getClass();
                                    String string4 = context.getString(R.string.Speaker_Trunk_BT_Tuto_Android_Subtitle);
                                    string4.getClass();
                                    StandardTutorialFragment.K.getClass();
                                    StandardTutorialFragment standardTutorialFragmentA = StandardTutorialFragment.Companion.a(R.drawable.bluetooth_phone_icon_speaker_trunk, string3, string4);
                                    standardTutorialFragmentA.G = listener4;
                                    String str2 = StandardTutorialFragment.M;
                                    scanBottomSheetRouter2.getClass();
                                    ScanBottomSheetRouter.a(childFragmentManager2, standardTutorialFragmentA, str2, true);
                                }
                            }
                        };
                        Context context = scanMainBottomSheet3.getContext();
                        if (context != null) {
                            ScanNavigationHelper scanNavigationHelperY = scanMainBottomSheet3.Y();
                            FragmentManager childFragmentManager = scanMainBottomSheet3.getChildFragmentManager();
                            TrunkSpeakerTypeEnum trunkSpeakerTypeEnum3 = trunkSpeakerTypeEnum2;
                            trunkSpeakerTypeEnum3.getClass();
                            ScanBottomSheetRouter scanBottomSheetRouter = scanNavigationHelperY.f56615a;
                            String string3 = context.getString(R.string.Speaker_Trunk_Pairing_Mode_Activation_Title);
                            string3.getClass();
                            String string4 = context.getString(R.string.Speaker_Trunk_Pairing_Mode_Activation_Subtitle);
                            string4.getClass();
                            int i5 = ScanTutorialHelper$WhenMappings.f56616a[trunkSpeakerTypeEnum3.ordinal()];
                            if (i5 == 1) {
                                i4 = 2131231584;
                            } else {
                                if (i5 != 2) {
                                    v40.g();
                                    return;
                                }
                                i4 = 2131231585;
                            }
                            StandardTutorialFragment.K.getClass();
                            StandardTutorialFragment standardTutorialFragmentA = StandardTutorialFragment.Companion.a(i4, string3, string4);
                            standardTutorialFragmentA.G = listener3;
                            String str = StandardTutorialFragment.M;
                            scanBottomSheetRouter.getClass();
                            ScanBottomSheetRouter.a(childFragmentManager, standardTutorialFragmentA, str, true);
                        }
                    }
                };
                Context context = scanMainBottomSheet2.getContext();
                if (context != null) {
                    ScanNavigationHelper scanNavigationHelperY = scanMainBottomSheet2.Y();
                    FragmentManager childFragmentManager = scanMainBottomSheet2.getChildFragmentManager();
                    trunkSpeakerTypeEnum2.getClass();
                    trunkSpeakerConnectionTypeEnum2.getClass();
                    ScanBottomSheetRouter scanBottomSheetRouter = scanNavigationHelperY.f56615a;
                    int[] iArr = ScanTutorialHelper$WhenMappings.f56617b;
                    int i4 = iArr[trunkSpeakerConnectionTypeEnum2.ordinal()];
                    if (i4 == 1) {
                        string = context.getString(R.string.Speaker_Trunk_BT_Title);
                    } else {
                        if (i4 != 2) {
                            v40.g();
                            return;
                        }
                        string = context.getString(R.string.Speaker_Trunk_Wifi_Title);
                    }
                    string.getClass();
                    int i5 = iArr[trunkSpeakerConnectionTypeEnum2.ordinal()];
                    if (i5 == 1) {
                        string2 = context.getString(R.string.Speaker_Trunk_BT_Subtitle);
                    } else {
                        if (i5 != 2) {
                            v40.g();
                            return;
                        }
                        string2 = context.getString(R.string.Speaker_Trunk_Wifi_Subtitle);
                    }
                    string2.getClass();
                    int i6 = ScanTutorialHelper$WhenMappings.f56616a[trunkSpeakerTypeEnum2.ordinal()];
                    if (i6 == 1) {
                        int i7 = iArr[trunkSpeakerConnectionTypeEnum2.ordinal()];
                        if (i7 == 1) {
                            i3 = 2131231591;
                        } else {
                            if (i7 != 2) {
                                v40.g();
                                return;
                            }
                            i3 = 2131231593;
                        }
                    } else {
                        if (i6 != 2) {
                            v40.g();
                            return;
                        }
                        int i8 = iArr[trunkSpeakerConnectionTypeEnum2.ordinal()];
                        if (i8 == 1) {
                            i3 = 2131231592;
                        } else {
                            if (i8 != 2) {
                                v40.g();
                                return;
                            }
                            i3 = 2131231594;
                        }
                    }
                    StandardTutorialFragment.K.getClass();
                    StandardTutorialFragment standardTutorialFragmentA = StandardTutorialFragment.Companion.a(i3, string, string2);
                    standardTutorialFragmentA.G = listener2;
                    String str = StandardTutorialFragment.M;
                    scanBottomSheetRouter.getClass();
                    ScanBottomSheetRouter.a(childFragmentManager, standardTutorialFragmentA, str, true);
                }
            }
        };
        Context context = scanMainBottomSheet.getContext();
        if (context != null) {
            ScanNavigationHelper scanNavigationHelperY = scanMainBottomSheet.Y();
            FragmentManager childFragmentManager = scanMainBottomSheet.getChildFragmentManager();
            trunkSpeakerTypeEnum.getClass();
            ScanBottomSheetRouter scanBottomSheetRouter = scanNavigationHelperY.f56615a;
            int i3 = ScanTutorialHelper$WhenMappings.f56616a[trunkSpeakerTypeEnum.ordinal()];
            if (i3 == 1) {
                i2 = 2131231651;
            } else {
                if (i3 != 2) {
                    v40.g();
                    return;
                }
                i2 = 2131231652;
            }
            StandardTutorialFragment.Companion companion = StandardTutorialFragment.K;
            String string = context.getString(R.string.Speaker_Trunk_Turn_On_Speaker_Title);
            string.getClass();
            String string2 = context.getString(R.string.Speaker_Trunk_Turn_On_Speaker_Turn_On_Subtitle);
            string2.getClass();
            companion.getClass();
            StandardTutorialFragment standardTutorialFragmentA = StandardTutorialFragment.Companion.a(i2, string, string2);
            standardTutorialFragmentA.G = listener;
            String str = StandardTutorialFragment.M;
            scanBottomSheetRouter.getClass();
            ScanBottomSheetRouter.a(childFragmentManager, standardTutorialFragmentA, str, true);
        }
    }

    public static final void X(ScanMainBottomSheet scanMainBottomSheet) {
        FragmentActivity activity = scanMainBottomSheet.getActivity();
        if (activity != null) {
            activity.runOnUiThread(new du0(scanMainBottomSheet, 0));
        }
    }

    public final ScanNavigationHelper Y() {
        ScanNavigationHelper scanNavigationHelper = this.Q;
        if (scanNavigationHelper != null) {
            return scanNavigationHelper;
        }
        Intrinsics.h("scanNavigationHelper");
        throw null;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Object next;
        LPDevice lPDevice;
        FragmentActivity activity;
        dialogInterface.getClass();
        LPBLEManager.getInstance().stopScan();
        LPBLEManager.getInstance().disConnect();
        String str = this.P;
        if (str != null) {
            TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
            if (str.length() == 0) {
                lPDevice = null;
            } else {
                List<LPDevice> devices = LPDeviceManager.getInstance().getDevices();
                devices.getClass();
                Iterator<T> it = devices.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((LPDevice) next).getDeviceStatus().getSSID(), str));
                lPDevice = (LPDevice) next;
            }
            if (lPDevice != null && (activity = getActivity()) != null) {
                WifiDeviceListActivity.Companion companion = WifiDeviceListActivity.t;
                String upnpUUID = lPDevice.getUpnpUUID();
                companion.getClass();
                activity.startActivity(WifiDeviceListActivity.Companion.a(activity, upnpUUID));
            }
            this.P = null;
        }
        FragmentActivity activity2 = getActivity();
        if (activity2 != null) {
            activity2.setResult(-1);
        }
        FragmentActivity activity3 = getActivity();
        if (activity3 != null) {
            activity3.finish();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.Hilt_BaseBottomSheet, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        ScanNavigationHelper scanNavigationHelperY = Y();
        FragmentManager childFragmentManager = getChildFragmentManager();
        xo0 xo0Var = new xo0(this, 12);
        ScanBottomSheetRouter scanBottomSheetRouter = scanNavigationHelperY.f56615a;
        SpeakerTypeFragment.H.getClass();
        SpeakerTypeFragment speakerTypeFragment = new SpeakerTypeFragment(xo0Var);
        String str = SpeakerTypeFragment.J;
        scanBottomSheetRouter.getClass();
        ScanBottomSheetRouter.a(childFragmentManager, speakerTypeFragment, str, false);
    }
}
