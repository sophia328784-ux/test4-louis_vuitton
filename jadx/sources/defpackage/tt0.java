package defpackage;

import android.R;
import com.google.android.material.snackbar.Snackbar;
import com.linkplay.core.device.LPDevice;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.RoomDetailFragment;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class tt0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80144b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RoomDetailFragment f80145c;
    public final /* synthetic */ LPDevice d;

    public /* synthetic */ tt0(RoomDetailFragment roomDetailFragment, LPDevice lPDevice, int i2) {
        this.f80144b = i2;
        this.f80145c = roomDetailFragment;
        this.d = lPDevice;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80144b;
        final LPDevice lPDevice = this.d;
        final RoomDetailFragment roomDetailFragment = this.f80145c;
        switch (i2) {
            case 0:
                final int i3 = 1;
                roomDetailFragment.requireActivity().runOnUiThread(new Runnable() { // from class: ut0
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i4 = i3;
                        LPDevice lPDevice2 = lPDevice;
                        RoomDetailFragment roomDetailFragment2 = roomDetailFragment;
                        switch (i4) {
                            case 0:
                                Snackbar.g(roomDetailFragment2.requireActivity().findViewById(R.id.content), roomDetailFragment2.getString(com.vuitton.android.R.string.speaker_trunk_room_page_remove_device_failed_error, lPDevice2.getDeviceStatus().getFriendlyName()), -1).h();
                                break;
                            default:
                                Snackbar.g(roomDetailFragment2.requireActivity().findViewById(R.id.content), roomDetailFragment2.getString(com.vuitton.android.R.string.speaker_trunk_room_page_remove_device_failed_error, lPDevice2.getDeviceStatus().getFriendlyName()), -1).h();
                                break;
                        }
                    }
                });
                break;
            default:
                final int i4 = 0;
                roomDetailFragment.requireActivity().runOnUiThread(new Runnable() { // from class: ut0
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i5 = i4;
                        LPDevice lPDevice2 = lPDevice;
                        RoomDetailFragment roomDetailFragment2 = roomDetailFragment;
                        switch (i5) {
                            case 0:
                                Snackbar.g(roomDetailFragment2.requireActivity().findViewById(R.id.content), roomDetailFragment2.getString(com.vuitton.android.R.string.speaker_trunk_room_page_remove_device_failed_error, lPDevice2.getDeviceStatus().getFriendlyName()), -1).h();
                                break;
                            default:
                                Snackbar.g(roomDetailFragment2.requireActivity().findViewById(R.id.content), roomDetailFragment2.getString(com.vuitton.android.R.string.speaker_trunk_room_page_remove_device_failed_error, lPDevice2.getDeviceStatus().getFriendlyName()), -1).h();
                                break;
                        }
                    }
                });
                break;
        }
        return Unit.f71739a;
    }
}
