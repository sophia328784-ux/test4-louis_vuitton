package com.linkplay.lpmdpkit;

import android.text.TextUtils;
import com.linkplay.lpmdpkit.bean.LPAlarmData;
import com.linkplay.lpmdpkit.bean.LPAlarmList;
import com.linkplay.lpmdpkit.bean.LPPlayHeader;
import com.linkplay.lpmdpkit.bean.LPPlayMediaData;
import com.linkplay.lpmdpkit.bean.LPPlayMusicList;
import com.linkplay.lpmdpkit.bean.LPPresetData;
import com.linkplay.lpmdpkit.utils.GsonCore;
import com.linkplay.lpmdpkit.utils.LPBackupQueueConstants;
import com.linkplay.lpmdpkit.utils.LPLogUtil;
import com.linkplay.lpmdpkit.utils.LPPresetUtil;
import com.linkplay.lpmdpkit.utils.LPQueueXmlCreator;
import com.linkplay.lpmdpkit.utils.LPXmlUtil;
import com.linkplay.lpmdpkit.utils.LpAlarmUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LPMDPKitManager {
    private static final String TAG = "LPMDPKit";
    private static volatile LPMDPKitManager mInstance;
    private List<LPStreamServiceProtocol> protocols = new ArrayList();

    public static LPMDPKitManager getInstance() {
        if (mInstance == null) {
            synchronized (LPMDPKitManager.class) {
                try {
                    if (mInstance == null) {
                        mInstance = new LPMDPKitManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return mInstance;
    }

    public String addAlarmWithAlarmList(LPAlarmList lPAlarmList) {
        if (lPAlarmList == null) {
            return "";
        }
        LPAlarmData lPAlarmData = new LPAlarmData();
        lPAlarmData.setBackupQueue(LPAlarmList.LPAlarmType.LP_ALARM_PLAYKEYMAP.equalsIgnoreCase(lPAlarmList.getType()) ? "" : LPQueueXmlCreator.createXml4SingleSourceQueue(lPAlarmList));
        lPAlarmData.setKeyMapping(LpAlarmUtil.getAlarmXml(lPAlarmList));
        return GsonCore.toJson(lPAlarmData);
    }

    public void addStreamServiceProtocol(LPStreamServiceProtocol lPStreamServiceProtocol) {
        if (this.protocols.contains(lPStreamServiceProtocol)) {
            return;
        }
        this.protocols.add(lPStreamServiceProtocol);
    }

    public String deletePresetDataWithIndex(int i2, List<LPPlayMusicList> list) {
        if (list == null || i2 < 0) {
            return "";
        }
        LPLogUtil.i("LPMDPKit", "deletePresetDataWithIndex" + i2);
        LPPresetData lPPresetData = new LPPresetData();
        String keyMapping = LPPresetUtil.getKeyMapping(list, new LPPlayMusicList(i2));
        LPLogUtil.i("LPMDPKit", "keymapping = " + keyMapping);
        lPPresetData.setKeyMapping(keyMapping);
        lPPresetData.setIndex(String.valueOf(i2));
        return GsonCore.toJson(lPPresetData);
    }

    public String editAlarmWithAlarmList(LPAlarmList lPAlarmList) {
        if (lPAlarmList == null) {
            return "";
        }
        LPAlarmData lPAlarmData = new LPAlarmData();
        lPAlarmData.setBackupQueue(LPAlarmList.LPAlarmType.LP_ALARM_PLAYKEYMAP.equalsIgnoreCase(lPAlarmList.getType()) ? "" : LPQueueXmlCreator.createXml4SingleSourceQueue(lPAlarmList));
        lPAlarmData.setKeyMapping(LpAlarmUtil.getAlarmXml(lPAlarmList));
        LPPlayHeader header = lPAlarmList.getHeader();
        if (header == null || header.getHeadTitle() == null || TextUtils.isEmpty(header.getHeadTitle().trim())) {
            lPAlarmData.setQueueName(lPAlarmList.getContext());
        } else {
            lPAlarmData.setQueueName(header.getHeadTitle().trim());
        }
        return GsonCore.toJson(lPAlarmData);
    }

    public List<LPAlarmList> getAlarmWithString(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return LpAlarmUtil.parse(str);
    }

    public LPPlayMusicList getBrowseListWithString(String str) {
        return LPXmlUtil.convert2CurrentQueueItem(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object, java.util.List<com.linkplay.lpmdpkit.bean.LPPlayMusicList>] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.util.List] */
    public List<LPPlayMusicList> getPresetListDataWithNumber(int i2, String str) {
        if (i2 <= 0) {
            return null;
        }
        List<LPPlayMusicList> list = LPPresetUtil.parse(str);
        ?? arrayList = new ArrayList();
        int size = (list == null || list.size() <= 0) ? i2 : i2 - (list.size() - 1);
        if (size <= 0) {
            arrayList = list.subList(1, i2 + 1);
        } else {
            if (list != null && list.size() > 0) {
                arrayList.addAll(list.subList(1, list.size()));
            }
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(new LPPlayMusicList());
            }
        }
        LPLogUtil.e("LPMDPKit", "get preset list = " + GsonCore.toJson(arrayList));
        return arrayList;
    }

    public LPPlayMusicList getUSBPlaylistWithString(String str) {
        return LPXmlUtil.convert2CurrentQueueItem(str);
    }

    public LPPlayMediaData playMusicSingleSource(LPPlayMusicList lPPlayMusicList) {
        if (lPPlayMusicList != null && lPPlayMusicList.getAccount() != null) {
            for (LPStreamServiceProtocol lPStreamServiceProtocol : this.protocols) {
                if (lPStreamServiceProtocol.getSource().equals(lPPlayMusicList.getAccount().getSource())) {
                    return lPStreamServiceProtocol.playXMLForMusicList(lPPlayMusicList);
                }
            }
        }
        return null;
    }

    public String setAlarmStatusWithOpen(boolean z, LPAlarmList lPAlarmList) {
        if (lPAlarmList == null) {
            return "";
        }
        LPAlarmData lPAlarmData = new LPAlarmData();
        lPAlarmList.setEnable(z);
        lPAlarmData.setBackupQueue(LPAlarmList.LPAlarmType.LP_ALARM_PLAYKEYMAP.equalsIgnoreCase(lPAlarmList.getType()) ? "" : LPQueueXmlCreator.createXml4SingleSourceQueue(lPAlarmList));
        lPAlarmData.setKeyMapping(LpAlarmUtil.getAlarmXml(lPAlarmList));
        return GsonCore.toJson(lPAlarmData);
    }

    public String updatePresetDataWithPlayMusicList(LPPlayMusicList lPPlayMusicList, List<LPPlayMusicList> list) {
        String backupQueueContextRhapsody = "";
        if (lPPlayMusicList == null) {
            return "";
        }
        LPPlayHeader header = lPPlayMusicList.getHeader();
        LPPresetData lPPresetData = new LPPresetData();
        String keyMapping = LPPresetUtil.getKeyMapping(list, lPPlayMusicList);
        if (header.getMediaType().equals("RADIO-NETWORK")) {
            backupQueueContextRhapsody = LPBackupQueueConstants.getBackupQueueContextForRadio(lPPlayMusicList);
        } else if (header.getMediaType().equals("SONGLIST-NETWORK")) {
            backupQueueContextRhapsody = LPBackupQueueConstants.getBackupQueueContextRhapsody(lPPlayMusicList);
        }
        lPPresetData.setKeyMapping(keyMapping);
        lPPresetData.setBackupQueue(backupQueueContextRhapsody);
        lPPresetData.setIndex(String.valueOf(lPPlayMusicList.getIndex()));
        LPLogUtil.d("LPMDPKit", "preset backupQueue = " + backupQueueContextRhapsody);
        LPLogUtil.d("LPMDPKit", "preset keymapping = " + keyMapping);
        return GsonCore.toJson(lPPresetData);
    }
}
