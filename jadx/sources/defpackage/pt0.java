package defpackage;

import android.widget.Toast;
import com.google.android.material.snackbar.Snackbar;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.RoomDetailFragment;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pt0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78923b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RoomDetailFragment f78924c;

    public /* synthetic */ pt0(RoomDetailFragment roomDetailFragment, int i2) {
        this.f78923b = i2;
        this.f78924c = roomDetailFragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f78923b;
        RoomDetailFragment roomDetailFragment = this.f78924c;
        switch (i2) {
            case 0:
                RoomDetailFragment.Companion companion = RoomDetailFragment.L;
                Toast.makeText(roomDetailFragment.getActivity(), roomDetailFragment.getString(R.string.speaker_trunk_room_destroyed), 1).show();
                break;
            case 1:
                RoomDetailFragment.Companion companion2 = RoomDetailFragment.L;
                Snackbar.g(roomDetailFragment.requireActivity().findViewById(android.R.id.content), roomDetailFragment.getString(R.string.speaker_trunk_room_page_remove_device_success), -1).h();
                break;
            case 2:
                RoomDetailFragment.Companion companion3 = RoomDetailFragment.L;
                Toast.makeText(roomDetailFragment.getActivity(), roomDetailFragment.getString(R.string.speaker_trunk_room_page_update_name_failed_error), 1).show();
                break;
            default:
                RoomDetailFragment.Companion companion4 = RoomDetailFragment.L;
                Toast.makeText(roomDetailFragment.getActivity(), roomDetailFragment.getString(R.string.speaker_trunk_room_page_update_name_success), 1).show();
                break;
        }
    }
}
