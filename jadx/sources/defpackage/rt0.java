package defpackage;

import android.text.Editable;
import android.view.KeyEvent;
import android.widget.TextView;
import com.linkplay.core.device.LPDevice;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerDetailPageBinding;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.RoomDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.model.WifiTrunkDevice;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkGeneralHelper;
import com.vuitton.android.presentation.screen.connectivity.views.ClickableEditText;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rt0 implements TextView.OnEditorActionListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79612b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f79613c;
    public final /* synthetic */ Object d;

    public /* synthetic */ rt0(Object obj, Object obj2, int i2) {
        this.f79612b = i2;
        this.f79613c = obj;
        this.d = obj2;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
        int i3 = this.f79612b;
        Object obj = this.d;
        Object obj2 = this.f79613c;
        switch (i3) {
            case 0:
                RoomDetailFragment roomDetailFragment = (RoomDetailFragment) obj2;
                WifiTrunkDevice.RoomSpeaker roomSpeaker = (WifiTrunkDevice.RoomSpeaker) obj;
                RoomDetailFragment.Companion companion = RoomDetailFragment.L;
                if (i2 == 6) {
                    roomDetailFragment.P().d.setOnFocusChangeListener(null);
                    Editable text = roomDetailFragment.P().d.getText();
                    if (text != null) {
                        LPDevice lPDevice = roomSpeaker.f56555b;
                        String string = text.toString();
                        if (string.length() != 0 && lPDevice != null) {
                            TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
                            TrunkGeneralHelper.d(roomDetailFragment.getActivity(), lPDevice, new cl0(lPDevice, string, roomDetailFragment, 8), null, 24);
                        }
                    }
                    roomDetailFragment.P().d.clearFocus();
                    roomDetailFragment.P().d.setOnFocusChangeListener(roomDetailFragment.I);
                }
                break;
            default:
                FragmentTrunkSpeakerDetailPageBinding fragmentTrunkSpeakerDetailPageBinding = (FragmentTrunkSpeakerDetailPageBinding) obj2;
                WifiDeviceDetailFragment wifiDeviceDetailFragment = (WifiDeviceDetailFragment) obj;
                WifiDeviceDetailFragment.Companion companion2 = WifiDeviceDetailFragment.N;
                if (i2 == 6) {
                    ClickableEditText clickableEditText = fragmentTrunkSpeakerDetailPageBinding.f51335j;
                    clickableEditText.setOnFocusChangeListener(null);
                    Editable text2 = clickableEditText.getText();
                    if (text2 != null) {
                        String string2 = text2.toString();
                        if (string2.length() != 0) {
                            TrunkGeneralHelper trunkGeneralHelper2 = TrunkGeneralHelper.f56577a;
                            TrunkGeneralHelper.d(wifiDeviceDetailFragment.getActivity(), wifiDeviceDetailFragment.Q(), new c61(string2, wifiDeviceDetailFragment, 6), null, 24);
                        }
                    }
                    clickableEditText.clearFocus();
                    clickableEditText.setOnFocusChangeListener(wifiDeviceDetailFragment.M);
                }
                break;
        }
        return false;
    }
}
