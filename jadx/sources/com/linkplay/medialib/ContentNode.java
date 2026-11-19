package com.linkplay.medialib;

import org.teleal.cling.support.model.container.Container;
import org.teleal.cling.support.model.item.Item;

/* JADX INFO: loaded from: classes2.dex */
public class ContentNode {
    private Container container;
    private String fullPath;
    private String id;
    private boolean isItem;
    private Item item;

    public ContentNode(String str, Container container) {
        this.id = str;
        this.container = container;
        this.fullPath = null;
        this.isItem = false;
    }

    public Container getContainer() {
        return this.container;
    }

    public String getFullPath() {
        String str;
        if (!this.isItem || (str = this.fullPath) == null) {
            return null;
        }
        return str;
    }

    public String getId() {
        return this.id;
    }

    public Item getItem() {
        return this.item;
    }

    public boolean isItem() {
        return this.isItem;
    }

    public ContentNode(String str, Item item, String str2) {
        this.id = str;
        this.item = item;
        this.fullPath = str2;
        this.isItem = true;
    }
}
