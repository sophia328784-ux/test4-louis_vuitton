package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager;

import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.group.LPMultiroomListener;
import com.linkplay.core.group.LPMultiroomManager;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.model.WifiTrunkDevice;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class TrunkRoomHelper {
    public static void a(LPDevice lPDevice, List list, final Function0 function0, final Function0 function1) {
        lPDevice.getClass();
        list.getClass();
        Iterator it = list.iterator();
        while (it.hasNext()) {
        }
        LPMultiroomManager.getInstance().deviceMultiroomWithSlaveDeviceList(list, lPDevice, new LPMultiroomListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkRoomHelper$createMultiRoomWithMaster$2
            @Override // com.linkplay.core.group.LPMultiroomListener
            public final void failed(Exception exc) {
                exc.getClass();
                function1.mo47invoke();
            }

            @Override // com.linkplay.core.group.LPMultiroomListener
            public final void success(String str) {
                str.getClass();
                function0.mo47invoke();
            }
        });
    }

    public static ArrayList b(List list) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            LPDevice lPDevice = (LPDevice) obj;
            if ("U_Trunk_speaker_GM".equals(lPDevice.getDeviceStatus().getProject()) || "U_Trunk_speaker_PM".equals(lPDevice.getDeviceStatus().getProject())) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static ArrayList c() {
        List<LPDevice> masterDevices = LPDeviceManager.getInstance().getMasterDevices();
        masterDevices.getClass();
        ArrayList<LPDevice> arrayListB = b(masterDevices);
        for (LPDevice lPDevice : arrayListB) {
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (LPDevice lPDevice2 : arrayListB) {
            List<LPDevice> slaveDevices = LPDeviceManager.getInstance().getSlaveDevices(lPDevice2.getDeviceStatus().getUUID());
            if (slaveDevices.size() > 0) {
                arrayList2.add(new WifiTrunkDevice.RoomSpeaker(lPDevice2, new ArrayList(slaveDevices)));
            } else {
                TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
                arrayList3.add(new WifiTrunkDevice.SimpleSpeaker(lPDevice2, TrunkGeneralHelper.b(lPDevice2)));
            }
        }
        arrayList.addAll(arrayList2);
        arrayList.addAll(arrayList3);
        return arrayList;
    }
}
