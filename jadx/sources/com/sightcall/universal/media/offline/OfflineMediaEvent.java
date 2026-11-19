package com.sightcall.universal.media.offline;

/* JADX INFO: loaded from: classes3.dex */
public class OfflineMediaEvent {
    private int currentFile;
    private boolean isActive;
    private int numberOfFiles;

    public OfflineMediaEvent(boolean z, int i2, int i3) {
        this.isActive = z;
        this.numberOfFiles = i2;
        this.currentFile = i3;
    }

    public int getCurrentFile() {
        return this.currentFile;
    }

    public int getNumberOfFiles() {
        return this.numberOfFiles;
    }

    public boolean isActive() {
        return this.isActive;
    }

    public void setActive(boolean z) {
        this.isActive = z;
    }

    public void setCurrentFile(int i2) {
        this.currentFile = i2;
    }

    public void setNumberOfFiles(int i2) {
        this.numberOfFiles = i2;
    }
}
