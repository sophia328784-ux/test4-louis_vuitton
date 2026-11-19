package defpackage;

import android.widget.Toast;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.lp.ble.entity.LPBluetoothDevice;
import com.lp.ble.manager.LPBLEManager;
import com.lp.ble.manager.LPBLEScanListener;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.bledevicelist.LVBLEDeviceListFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.bledevicelist.LVBLEDeviceListFragment$startScan$1$1;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.bledevicelist.LVBluetoothDeviceAdapter;
import defpackage.jr;
import java.util.ArrayList;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class f50 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69048b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LVBLEDeviceListFragment f69049c;

    public /* synthetic */ f50(LVBLEDeviceListFragment lVBLEDeviceListFragment, int i2) {
        this.f69048b = i2;
        this.f69049c = lVBLEDeviceListFragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f69048b;
        LVBLEDeviceListFragment lVBLEDeviceListFragment = this.f69049c;
        switch (i2) {
            case 0:
                LVBLEDeviceListFragment.Companion companion = LVBLEDeviceListFragment.N;
                FragmentActivity activity = lVBLEDeviceListFragment.getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new f50(lVBLEDeviceListFragment, 3));
                }
                RecyclerView.Adapter adapter = lVBLEDeviceListFragment.V().f51320e.getAdapter();
                LVBluetoothDeviceAdapter lVBluetoothDeviceAdapter = adapter instanceof LVBluetoothDeviceAdapter ? (LVBluetoothDeviceAdapter) adapter : null;
                if (lVBluetoothDeviceAdapter != null) {
                    lVBluetoothDeviceAdapter.f56643c.clear();
                }
                final LVBLEDeviceListFragment$startScan$1$1 lVBLEDeviceListFragment$startScan$1$1 = new LVBLEDeviceListFragment$startScan$1$1(lVBLEDeviceListFragment);
                final ArrayList arrayList = new ArrayList();
                LPBLEManager.getInstance().startScan(new LPBLEScanListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkBLEHelper$scanBLE$1
                    @Override // com.lp.ble.manager.LPBLEScanListener
                    public final void LPBLEScanFailed(int i3) {
                    }

                    @Override // com.lp.ble.manager.LPBLEScanListener
                    public final void LPBLEScanFinish() {
                    }

                    @Override // com.lp.ble.manager.LPBLEScanListener
                    public final void LPBLEScanResult(LPBluetoothDevice lPBluetoothDevice) {
                        lPBluetoothDevice.getClass();
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList arrayList3 = arrayList;
                        arrayList2.addAll(arrayList3);
                        int size = arrayList2.size();
                        int i3 = 0;
                        while (true) {
                            if (i3 >= size) {
                                arrayList2.add(lPBluetoothDevice);
                                break;
                            }
                            Object obj = arrayList2.get(i3);
                            obj.getClass();
                            String str = ((LPBluetoothDevice) obj).f36360c;
                            str.getClass();
                            String str2 = lPBluetoothDevice.f36360c;
                            str2.getClass();
                            if (StringsKt.k(str, str2, false)) {
                                arrayList2.set(i3, lPBluetoothDevice);
                                break;
                            }
                            i3++;
                        }
                        arrayList3.clear();
                        arrayList3.addAll(arrayList2);
                        LVBLEDeviceListFragment lVBLEDeviceListFragment2 = lVBLEDeviceListFragment$startScan$1$1.f56641a;
                        LVBLEDeviceListFragment.Companion companion2 = LVBLEDeviceListFragment.N;
                        lVBLEDeviceListFragment2.W();
                        FragmentActivity activity2 = lVBLEDeviceListFragment2.getActivity();
                        if (activity2 != null) {
                            activity2.runOnUiThread(new jr(lVBLEDeviceListFragment2, arrayList3, 24));
                        }
                    }
                });
                break;
            case 1:
                LVBLEDeviceListFragment.Companion companion2 = LVBLEDeviceListFragment.N;
                lVBLEDeviceListFragment.getClass();
                LPBLEManager.getInstance().stopScan();
                break;
            case 2:
                LVBLEDeviceListFragment.Companion companion3 = LVBLEDeviceListFragment.N;
                lVBLEDeviceListFragment.V().d.setVisibility(8);
                break;
            case 3:
                LVBLEDeviceListFragment.Companion companion4 = LVBLEDeviceListFragment.N;
                lVBLEDeviceListFragment.V().d.setVisibility(0);
                break;
            default:
                Toast.makeText(lVBLEDeviceListFragment.getActivity(), lVBLEDeviceListFragment.getString(R.string.speaker_trunk_tutorial_ble_connection_failed_error), 1).show();
                break;
        }
    }
}
