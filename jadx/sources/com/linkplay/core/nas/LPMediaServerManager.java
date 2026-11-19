package com.linkplay.core.nas;

import android.widget.ArrayAdapter;
import com.android.wiimu.upnp.impl.h;
import com.linkplay.core.clingx.LPDlnaMediaServerData;
import java.util.ArrayList;
import java.util.List;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.support.model.container.Container;

/* JADX INFO: loaded from: classes2.dex */
public class LPMediaServerManager {
    private static final String RootID0 = "0";
    private static LPMediaServerManager instance;

    private LPMediaServerManager() {
    }

    private void failed(String str, LPMediaServerResultListener lPMediaServerResultListener) {
        if (lPMediaServerResultListener != null) {
            lPMediaServerResultListener.onFailed(new Exception(str));
        }
    }

    public static LPMediaServerManager getInstance() {
        if (instance == null) {
            synchronized (LPMediaServerManager.class) {
                try {
                    if (instance == null) {
                        instance = new LPMediaServerManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    private void success(String str, LPMediaServerResultListener lPMediaServerResultListener) {
    }

    public Container createRootContainer(Service service) {
        Device device;
        Container container = new Container();
        container.f78569a = "0";
        if (service == null || (device = service.f78482e) == null) {
            return null;
        }
        container.f78571c = "Content Directory on ".concat(device.h());
        return container;
    }

    public int getMediaServerCount() {
        return LPDlnaMediaServerData.me().getMediaServerCount();
    }

    public List<Device> getMediaServers() {
        ArrayAdapter<Device> mediaServers = LPDlnaMediaServerData.me().getMediaServers();
        ArrayList arrayList = new ArrayList();
        if (mediaServers != null) {
            int count = mediaServers.getCount();
            for (int i2 = 0; i2 < count; i2++) {
                arrayList.add(mediaServers.getItem(i2));
            }
        }
        return arrayList;
    }

    public void searchMusic(LPMediaServerItem lPMediaServerItem, LPMediaServerPlayItem lPMediaServerPlayItem, LPMediaServerResultListener lPMediaServerResultListener) {
        Device device = lPMediaServerItem.getDevice();
        if (device == null) {
            failed("device is null", lPMediaServerResultListener);
            return;
        }
        try {
            h.b().browseNAS(device, lPMediaServerPlayItem, lPMediaServerItem.getCurrPage(), lPMediaServerItem.getPerPage(), lPMediaServerResultListener);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
