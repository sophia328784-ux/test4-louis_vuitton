package com.linkplay.medialib;

import com.linkplay.lpmdpkit.bean.LPPlayMusicList;

/* JADX INFO: loaded from: classes2.dex */
public interface LPSearchMediaResultListener {
    void failure(Exception exc);

    void success(LPPlayMusicList lPPlayMusicList);
}
