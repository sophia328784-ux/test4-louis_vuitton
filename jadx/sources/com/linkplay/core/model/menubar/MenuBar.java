package com.linkplay.core.model.menubar;

/* JADX INFO: loaded from: classes2.dex */
public class MenuBar {
    public int cap1;
    public int capability;
    public int languages;
    public int plms;
    public int streams;

    public MenuBar(int i2, int i3, int i4) {
        this.capability = i2;
        this.plms = i3;
        this.streams = i4;
    }

    public MenuBar() {
    }

    public MenuBar(int i2) {
        this.languages = i2;
    }

    public MenuBar(int i2, int i3) {
        this.capability = i2;
        this.cap1 = i3;
    }
}
