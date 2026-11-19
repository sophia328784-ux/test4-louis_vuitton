package com.linkplay.medialib;

import com.linkplay.lpmdpkit.bean.LPPlayItem;

/* JADX INFO: loaded from: classes2.dex */
public class LPMSLibraryPlayItem extends LPPlayItem {
    private String[] currDirArr;
    private String local_id = "";
    private String track = ContentTree.ROOT_ID;
    private String genreName = "unknown";
    private String Size = "";
    private int fileId = 0;
    private String songlist = "";
    private String filePath = "";
    private int songCount = 0;
    private String folderName = "";

    public String[] getCurrDirArr() {
        return this.currDirArr;
    }

    public int getFileId() {
        return this.fileId;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public String getFolderName() {
        return this.folderName;
    }

    public String getGenreName() {
        return this.genreName;
    }

    public String getLocal_id() {
        return this.local_id;
    }

    public String getSize() {
        return this.Size;
    }

    public int getSongCount() {
        return this.songCount;
    }

    public String getSonglist() {
        return this.songlist;
    }

    public String getTrack() {
        return this.track;
    }

    public void setCurrDirArr(String[] strArr) {
        this.currDirArr = strArr;
    }

    public void setFileId(int i2) {
        this.fileId = i2;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public void setFolderName(String str) {
        this.folderName = str;
    }

    public void setGenreName(String str) {
        this.genreName = str;
    }

    public void setLocal_id(String str) {
        this.local_id = str;
    }

    public void setSize(String str) {
        this.Size = str;
    }

    public void setSongCount(int i2) {
        this.songCount = i2;
    }

    public void setSonglist(String str) {
        this.songlist = str;
    }

    public void setTrack(String str) {
        this.track = str;
    }
}
