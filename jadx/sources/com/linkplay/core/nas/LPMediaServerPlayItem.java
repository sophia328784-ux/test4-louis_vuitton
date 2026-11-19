package com.linkplay.core.nas;

import org.teleal.cling.support.model.container.Container;

/* JADX INFO: loaded from: classes.dex */
public class LPMediaServerPlayItem {
    private Container container;
    private boolean isDirectory = false;

    public Container getContainer() {
        return this.container;
    }

    public boolean isDirectory() {
        return this.isDirectory;
    }

    public void setContainer(Container container) {
        this.container = container;
    }

    public void setDirectory(boolean z) {
        this.isDirectory = z;
    }
}
