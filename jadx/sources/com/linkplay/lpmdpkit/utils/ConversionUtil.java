package com.linkplay.lpmdpkit.utils;

import android.text.TextUtils;
import com.linkplay.lpmdpkit.bean.LPAccount;
import com.linkplay.lpmdpkit.bean.LPPlayHeader;
import com.linkplay.lpmdpkit.bean.LPPlayItem;
import com.linkplay.lpmdpkit.bean.LPPlayMediaData;
import com.linkplay.lpmdpkit.bean.LPPlayMusicList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ConversionUtil {
    public static LPPlayMediaData playConvert2PlayMeadiaData(LPAccount lPAccount, LPPlayHeader lPPlayHeader, List<LPPlayItem> list, int i2) {
        String searchUrl;
        LPPlayMediaData lPPlayMediaData = new LPPlayMediaData();
        if (lPPlayHeader != null) {
            lPPlayMediaData.setMediaSource(lPPlayHeader.getMediaSource());
            searchUrl = lPPlayHeader.getSearchUrl();
        } else {
            searchUrl = "";
        }
        if (TextUtils.isEmpty(searchUrl) && list != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            if (list.size() <= 100) {
                ArrayList arrayList4 = new ArrayList();
                ArrayList arrayList5 = new ArrayList();
                for (int i3 = 0; i3 < list.size(); i3++) {
                    if (i3 >= i2) {
                        arrayList5.add(list.get(i3));
                    } else {
                        arrayList4.add(list.get(i3));
                    }
                }
                arrayList.addAll(arrayList5);
                arrayList.addAll(arrayList4);
            } else {
                List<LPPlayItem> listSubList = list.subList(i2, list.size());
                if (listSubList.size() >= 100) {
                    Iterator<LPPlayItem> it = listSubList.subList(0, 100).iterator();
                    while (it.hasNext()) {
                        arrayList.add(it.next());
                    }
                } else if (listSubList.size() < 100) {
                    List<LPPlayItem> listSubList2 = list.subList(0, 100 - listSubList.size());
                    Iterator<LPPlayItem> it2 = listSubList.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(it2.next());
                    }
                    Iterator<LPPlayItem> it3 = listSubList2.iterator();
                    while (it3.hasNext()) {
                        arrayList.add(it3.next());
                    }
                }
            }
            if (arrayList.size() == 1) {
                arrayList2.add((LPPlayItem) arrayList.get(0));
            } else if (arrayList.size() > 1) {
                arrayList2.add((LPPlayItem) arrayList.get(0));
                arrayList2.add((LPPlayItem) arrayList.get(1));
                for (int i4 = 2; i4 < arrayList.size(); i4++) {
                    arrayList3.add((LPPlayItem) arrayList.get(i4));
                }
            }
            LPPlayMusicList lPPlayMusicList = new LPPlayMusicList();
            lPPlayMusicList.setList(arrayList2);
            lPPlayMusicList.setHeader(lPPlayHeader);
            lPPlayMusicList.setAccount(lPAccount);
            if (arrayList3.size() > 0) {
                LPPlayMusicList lPPlayMusicList2 = new LPPlayMusicList();
                lPPlayMusicList2.setList(arrayList3);
                lPPlayMusicList2.setHeader(lPPlayHeader);
                lPPlayMusicList2.setAccount(lPAccount);
                lPPlayMediaData.setTailData(Collections.singletonList(LPQueueXmlCreator.createXml4SingleSourceQueue(lPPlayMusicList2)));
            }
            lPPlayMediaData.setPlayData(LPQueueXmlCreator.createXml4SingleSourceQueue(lPPlayMusicList));
            lPPlayMediaData.setPlayIndex(i2);
            if (lPPlayHeader != null) {
                lPPlayMediaData.setQueueName(lPPlayHeader.getHeadTitle());
            }
        }
        if (!TextUtils.isEmpty(searchUrl)) {
            LPPlayMusicList lPPlayMusicList3 = new LPPlayMusicList();
            lPPlayMusicList3.setList(null);
            lPPlayMusicList3.setHeader(lPPlayHeader);
            lPPlayMusicList3.setAccount(lPAccount);
            lPPlayMediaData.setPlayData(LPQueueXmlCreator.createXml4SingleSourceQueue(lPPlayMusicList3));
            lPPlayMediaData.setPlayIndex(i2);
            if (lPPlayHeader != null) {
                lPPlayMediaData.setQueueName(lPPlayHeader.getHeadTitle());
            }
            lPPlayMediaData.setAppendCount(0);
        }
        return lPPlayMediaData;
    }
}
