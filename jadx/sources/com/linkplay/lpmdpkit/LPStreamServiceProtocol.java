package com.linkplay.lpmdpkit;

import com.linkplay.lpmdpkit.bean.LPPlayMediaData;
import com.linkplay.lpmdpkit.bean.LPPlayMusicList;

/* JADX INFO: loaded from: classes2.dex */
public interface LPStreamServiceProtocol {
    String getSource();

    LPPlayMediaData playXMLForMusicList(LPPlayMusicList lPPlayMusicList);
}
