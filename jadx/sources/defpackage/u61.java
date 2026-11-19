package defpackage;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.device.LPDeviceSettings;
import com.linkplay.core.device.LPDeviceSettingsListener;
import com.linkplay.core.status.LPPlayChannel;
import com.vuitton.android.R;
import com.vuitton.android.presentation.extensions.FragmentTransactionExtKt;
import com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailActivityRouter;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.a;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.disposition.DispositionListBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.LVTrunkSpotifyHelper;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkGeneralHelper;
import com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.BaseListBottomSheet;
import com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategoryType;
import defpackage.u61;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class u61 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WifiDeviceDetailFragment f80244c;

    public /* synthetic */ u61(WifiDeviceDetailFragment wifiDeviceDetailFragment, int i2) {
        this.f80243b = i2;
        this.f80244c = wifiDeviceDetailFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        FragmentManager supportFragmentManager;
        FragmentManager supportFragmentManager2;
        FragmentManager supportFragmentManager3;
        FragmentManager supportFragmentManager4;
        int i2 = this.f80243b;
        int i3 = 2;
        int i4 = 1;
        final WifiDeviceDetailFragment wifiDeviceDetailFragment = this.f80244c;
        switch (i2) {
            case 0:
                WifiDeviceDetailFragment.Companion companion = WifiDeviceDetailFragment.N;
                ((View) obj).getClass();
                if (wifiDeviceDetailFragment.I != null) {
                    ConnectivitySectionDetailActivityRouter.a(wifiDeviceDetailFragment.getActivity(), FaqCategoryType.SPEAKER_TRUNK);
                    return Unit.f71739a;
                }
                Intrinsics.h("connectivitySectionDetailActivityRouter");
                throw null;
            case 1:
                LPDevice lPDevice = (LPDevice) obj;
                WifiDeviceDetailFragment.Companion companion2 = WifiDeviceDetailFragment.N;
                lPDevice.getClass();
                FragmentActivity activity = wifiDeviceDetailFragment.getActivity();
                if (activity != null && (supportFragmentManager = activity.getSupportFragmentManager()) != null) {
                    BaseListBottomSheet.Companion companion3 = BaseListBottomSheet.S;
                    String strG = tr.g("IP: ", lPDevice.getDeviceStatus().getIP());
                    String strG2 = tr.g("MAC: ", lPDevice.getDeviceStatus().getMAC());
                    String strG3 = tr.g("SSID: ", lPDevice.getDeviceStatus().getSSID());
                    String firmware = lPDevice.getDeviceStatus().getFirmware();
                    List listP = CollectionsKt.P(strG, strG2, strG3, tr.g("Firmware: ", firmware != null ? StringsKt.J(firmware, "Linkplay.", "") : null), tr.g("MCU version: ", lPDevice.getDeviceStatus().getMCUVer()), tr.g("Firmware Date: ", lPDevice.getDeviceStatus().getRelease()));
                    String string = wifiDeviceDetailFragment.getString(R.string.version);
                    string.getClass();
                    String string2 = wifiDeviceDetailFragment.getString(R.string.version);
                    string2.getClass();
                    companion3.getClass();
                    BaseListBottomSheet.Companion.a(string, string2, listP).show(supportFragmentManager, BaseListBottomSheet.V);
                }
                return Unit.f71739a;
            case 2:
                LPDevice lPDevice2 = (LPDevice) obj;
                WifiDeviceDetailFragment.Companion companion4 = WifiDeviceDetailFragment.N;
                lPDevice2.getClass();
                FragmentActivity activity2 = wifiDeviceDetailFragment.getActivity();
                if (activity2 != null && (supportFragmentManager2 = activity2.getSupportFragmentManager()) != null) {
                    DispositionListBottomSheet.Companion companion5 = DispositionListBottomSheet.S;
                    LPPlayChannel playChannel = lPDevice2.getDeviceInfo().getPlayChannel();
                    playChannel.getClass();
                    companion5.getClass();
                    DispositionListBottomSheet dispositionListBottomSheet = new DispositionListBottomSheet();
                    Bundle bundle = new Bundle();
                    bundle.putSerializable("SELECTED_MODE", playChannel);
                    dispositionListBottomSheet.setArguments(bundle);
                    dispositionListBottomSheet.R = wifiDeviceDetailFragment;
                    dispositionListBottomSheet.show(supportFragmentManager2, DispositionListBottomSheet.V);
                }
                return Unit.f71739a;
            case 3:
                LPDevice lPDevice3 = (LPDevice) obj;
                WifiDeviceDetailFragment.Companion companion6 = WifiDeviceDetailFragment.N;
                lPDevice3.getClass();
                if (wifiDeviceDetailFragment.J == null) {
                    Intrinsics.h("trunkSpeakerRouter");
                    throw null;
                }
                FragmentActivity activity3 = wifiDeviceDetailFragment.getActivity();
                String upnpUUID = lPDevice3.getUpnpUUID();
                upnpUUID.getClass();
                if (activity3 != null && (supportFragmentManager3 = activity3.getSupportFragmentManager()) != null) {
                    FragmentTransaction fragmentTransactionD = supportFragmentManager3.d();
                    fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
                    SpeakerTrunkEqualizerFragment.M.getClass();
                    SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment = new SpeakerTrunkEqualizerFragment();
                    Bundle bundle2 = new Bundle();
                    bundle2.putSerializable("DEVICE", upnpUUID);
                    speakerTrunkEqualizerFragment.setArguments(bundle2);
                    String str = SpeakerTrunkEqualizerFragment.O;
                    fragmentTransactionD.i(R.id.fragment_container, speakerTrunkEqualizerFragment, str, 1);
                    fragmentTransactionD.d(str);
                    FragmentTransactionExtKt.a(fragmentTransactionD, activity3);
                    fragmentTransactionD.e();
                }
                return Unit.f71739a;
            case 4:
                WifiDeviceDetailFragment.Companion companion7 = WifiDeviceDetailFragment.N;
                ((LPDevice) obj).getClass();
                GenericBottomSheet.Companion companion8 = GenericBottomSheet.R;
                String string3 = wifiDeviceDetailFragment.getString(R.string.speaker_trunk_detail_reset_device_subtitle);
                string3.getClass();
                GenericBottomSheet genericBottomSheetB = GenericBottomSheet.Companion.b(companion8, string3, wifiDeviceDetailFragment.getString(R.string.button_no), wifiDeviceDetailFragment.getString(R.string.button_yes), 16);
                genericBottomSheetB.O = new GenericBottomSheet.OnPositiveClickListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment$resetDevice$1
                    @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnPositiveClickListener
                    public final void a() {
                        WifiDeviceDetailFragment wifiDeviceDetailFragment2 = wifiDeviceDetailFragment;
                        if (wifiDeviceDetailFragment2.getContext() != null) {
                            WifiDeviceDetailFragment.Companion companion9 = WifiDeviceDetailFragment.N;
                            wifiDeviceDetailFragment2.O().f51333h.setVisibility(0);
                            TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
                            TrunkGeneralHelper.d(wifiDeviceDetailFragment2.getActivity(), wifiDeviceDetailFragment2.Q(), new u61(wifiDeviceDetailFragment2, 10), null, 24);
                        }
                    }
                };
                FragmentActivity activity4 = wifiDeviceDetailFragment.getActivity();
                if (activity4 != null && (supportFragmentManager4 = activity4.getSupportFragmentManager()) != null) {
                    genericBottomSheetB.show(supportFragmentManager4, GenericBottomSheet.S);
                }
                return Unit.f71739a;
            case 5:
                WifiDeviceDetailFragment.Companion companion9 = WifiDeviceDetailFragment.N;
                ((View) obj).getClass();
                TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
                TrunkGeneralHelper.d(wifiDeviceDetailFragment.getActivity(), wifiDeviceDetailFragment.Q(), new u61(wifiDeviceDetailFragment, i4), null, 24);
                return Unit.f71739a;
            case 6:
                WifiDeviceDetailFragment.Companion companion10 = WifiDeviceDetailFragment.N;
                ((View) obj).getClass();
                LVTrunkSpotifyHelper.b(wifiDeviceDetailFragment.getActivity());
                return Unit.f71739a;
            case 7:
                WifiDeviceDetailFragment.Companion companion11 = WifiDeviceDetailFragment.N;
                ((View) obj).getClass();
                TrunkGeneralHelper trunkGeneralHelper2 = TrunkGeneralHelper.f56577a;
                TrunkGeneralHelper.d(wifiDeviceDetailFragment.getActivity(), wifiDeviceDetailFragment.Q(), new u61(wifiDeviceDetailFragment, 4), null, 24);
                return Unit.f71739a;
            case 8:
                WifiDeviceDetailFragment.Companion companion12 = WifiDeviceDetailFragment.N;
                ((View) obj).getClass();
                TrunkGeneralHelper trunkGeneralHelper3 = TrunkGeneralHelper.f56577a;
                TrunkGeneralHelper.d(wifiDeviceDetailFragment.getActivity(), wifiDeviceDetailFragment.Q(), new u61(wifiDeviceDetailFragment, i3), null, 24);
                return Unit.f71739a;
            case 9:
                WifiDeviceDetailFragment.Companion companion13 = WifiDeviceDetailFragment.N;
                ((View) obj).getClass();
                TrunkGeneralHelper trunkGeneralHelper4 = TrunkGeneralHelper.f56577a;
                TrunkGeneralHelper.d(wifiDeviceDetailFragment.getActivity(), wifiDeviceDetailFragment.Q(), new u61(wifiDeviceDetailFragment, 3), null, 24);
                return Unit.f71739a;
            default:
                final LPDevice lPDevice4 = (LPDevice) obj;
                lPDevice4.getClass();
                final a aVar = new a(wifiDeviceDetailFragment, i4);
                final v61 v61Var = new v61(wifiDeviceDetailFragment, i3);
                LPDeviceSettings deviceSettings = lPDevice4.getDeviceSettings();
                if (deviceSettings != null) {
                    deviceSettings.resetDeviceWithHandler(new LPDeviceSettingsListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkConfigHelper$resetDevice$1
                        @Override // com.linkplay.core.device.LPDeviceSettingsListener
                        public final void failure(Exception exc) {
                            exc.getClass();
                            v61Var.mo47invoke();
                        }

                        @Override // com.linkplay.core.device.LPDeviceSettingsListener
                        public final void success(String str2) {
                            str2.getClass();
                            LPDeviceManager.getInstance().deleteLPDevice(lPDevice4.getUpnpUUID());
                            aVar.mo47invoke();
                        }
                    });
                }
                return Unit.f71739a;
        }
    }
}
