package defpackage;

import android.content.Context;
import android.text.Editable;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import androidx.core.content.ContextCompat;
import com.linkplay.core.device.LPDevice;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.screen.connectivity.travel.form.HotelFormFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.RoomDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.model.WifiTrunkDevice;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkGeneralHelper;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class js implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f71460c;

    public /* synthetic */ js(Object obj, int i2) {
        this.f71459b = i2;
        this.f71460c = obj;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        int i2 = this.f71459b;
        Object obj = this.f71460c;
        switch (i2) {
            case 0:
                for (EditText editText : (EditText[]) obj) {
                    if (editText.hasFocus()) {
                    }
                    break;
                }
                InputMethodManager inputMethodManager = (InputMethodManager) ContextCompat.getSystemService(view.getContext(), InputMethodManager.class);
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
                }
                break;
            case 1:
                HotelFormFragment hotelFormFragment = (HotelFormFragment) obj;
                HotelFormFragment.Companion companion = HotelFormFragment.G;
                if (z && !view.isAccessibilityFocused()) {
                    hotelFormFragment.M();
                    break;
                }
                break;
            case 2:
                RoomDetailFragment roomDetailFragment = (RoomDetailFragment) obj;
                RoomDetailFragment.Companion companion2 = RoomDetailFragment.L;
                if (!z) {
                    Context context = roomDetailFragment.getContext();
                    if (context != null) {
                        ContextExtKt.d(context, roomDetailFragment.P().d.getWindowToken());
                    }
                    Editable text = roomDetailFragment.P().d.getText();
                    if (text != null) {
                        WifiTrunkDevice.RoomSpeaker roomSpeaker = roomDetailFragment.G;
                        LPDevice lPDevice = roomSpeaker != null ? roomSpeaker.f56555b : null;
                        String string = text.toString();
                        if (string.length() != 0 && lPDevice != null) {
                            TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
                            TrunkGeneralHelper.d(roomDetailFragment.getActivity(), lPDevice, new cl0(lPDevice, string, roomDetailFragment, 8), null, 24);
                        }
                    }
                }
                break;
            default:
                WifiDeviceDetailFragment wifiDeviceDetailFragment = (WifiDeviceDetailFragment) obj;
                WifiDeviceDetailFragment.Companion companion3 = WifiDeviceDetailFragment.N;
                if (!z) {
                    Context context2 = wifiDeviceDetailFragment.getContext();
                    if (context2 != null) {
                        ContextExtKt.d(context2, wifiDeviceDetailFragment.O().f51335j.getWindowToken());
                    }
                    Editable text2 = wifiDeviceDetailFragment.O().f51335j.getText();
                    if (text2 != null) {
                        String string2 = text2.toString();
                        if (string2.length() != 0) {
                            TrunkGeneralHelper trunkGeneralHelper2 = TrunkGeneralHelper.f56577a;
                            TrunkGeneralHelper.d(wifiDeviceDetailFragment.getActivity(), wifiDeviceDetailFragment.Q(), new c61(string2, wifiDeviceDetailFragment, 6), null, 24);
                            break;
                        }
                    }
                }
                break;
        }
    }
}
