package com.linkplay.medialib;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class MusicSplitPageItem implements Serializable {
    public ELocSearchType classify;
    public boolean isPaged;
    public int page;
    public int pageSize;
    public String searchKey;
    public boolean shouldExecuteSearchKey;

    public MusicSplitPageItem(boolean z, int i2, int i3) {
        this.isPaged = false;
        this.classify = ELocSearchType.LP_SONGS;
        this.searchKey = "";
        this.shouldExecuteSearchKey = false;
        this.isPaged = z;
        this.page = i2;
        this.pageSize = i3;
    }

    public void setSearchKey(String str) {
        this.searchKey = str;
    }

    public void setShouldExecuteSearchKey(boolean z) {
        this.shouldExecuteSearchKey = z;
    }

    public MusicSplitPageItem(boolean z, int i2, int i3, ELocSearchType eLocSearchType) {
        this.isPaged = false;
        ELocSearchType eLocSearchType2 = ELocSearchType.LP_ARTIST;
        this.searchKey = "";
        this.shouldExecuteSearchKey = false;
        this.isPaged = z;
        this.pageSize = i2;
        this.page = i3;
        this.classify = eLocSearchType;
    }

    public MusicSplitPageItem(boolean z, int i2, int i3, ELocSearchType eLocSearchType, String str, boolean z2) {
        this.isPaged = false;
        ELocSearchType eLocSearchType2 = ELocSearchType.LP_ARTIST;
        this.isPaged = z;
        this.pageSize = i2;
        this.page = i3;
        this.classify = eLocSearchType;
        this.searchKey = str;
        this.shouldExecuteSearchKey = z2;
    }
}
