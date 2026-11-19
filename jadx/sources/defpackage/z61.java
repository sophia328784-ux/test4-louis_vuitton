package defpackage;

import android.R;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.snackbar.Snackbar;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListAdapter;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkRoomHelper;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class z61 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81557b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WifiDeviceListFragment f81558c;

    public /* synthetic */ z61(WifiDeviceListFragment wifiDeviceListFragment, int i2) {
        this.f81557b = i2;
        this.f81558c = wifiDeviceListFragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f81557b;
        WifiDeviceListFragment wifiDeviceListFragment = this.f81558c;
        switch (i2) {
            case 0:
                WifiDeviceListFragment.Companion companion = WifiDeviceListFragment.L;
                if (wifiDeviceListFragment.isAdded() && wifiDeviceListFragment.isResumed()) {
                    RecyclerView.Adapter adapter = wifiDeviceListFragment.O().f51359e.getAdapter();
                    adapter.getClass();
                    WifiDeviceListAdapter wifiDeviceListAdapter = (WifiDeviceListAdapter) adapter;
                    ArrayList arrayList = new ArrayList(TrunkRoomHelper.c());
                    ArrayList arrayList2 = wifiDeviceListAdapter.d;
                    arrayList2.clear();
                    arrayList2.addAll(arrayList);
                    wifiDeviceListAdapter.notifyDataSetChanged();
                }
                wifiDeviceListFragment.O().f51360f.setRefreshing(false);
                break;
            case 1:
                WifiDeviceListFragment.Companion companion2 = WifiDeviceListFragment.L;
                Snackbar.g(wifiDeviceListFragment.requireActivity().findViewById(R.id.content), wifiDeviceListFragment.getString(com.vuitton.android.R.string.speaker_trunk_room_creation_failed), -1).h();
                wifiDeviceListFragment.O().d.setVisibility(8);
                break;
            default:
                WifiDeviceListFragment.Companion companion3 = WifiDeviceListFragment.L;
                WifiDeviceListAdapter wifiDeviceListAdapter2 = (WifiDeviceListAdapter) wifiDeviceListFragment.G.getF71699b();
                ArrayList arrayList3 = new ArrayList(TrunkRoomHelper.c());
                ArrayList arrayList4 = wifiDeviceListAdapter2.d;
                arrayList4.clear();
                arrayList4.addAll(arrayList3);
                wifiDeviceListAdapter2.notifyDataSetChanged();
                Snackbar.g(wifiDeviceListFragment.requireActivity().findViewById(R.id.content), wifiDeviceListFragment.getString(com.vuitton.android.R.string.speaker_trunk_room_creation_success), -1).h();
                wifiDeviceListFragment.O().d.setVisibility(8);
                break;
        }
    }
}
