package com.networkbench.agent.impl.session.screen;

import android.graphics.Rect;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public class NBSMaskViewRect {
    private String className;
    private Rect rect;
    private String viewId = "";
    private NBSMaskViewType viewType;

    public NBSMaskViewRect(Rect rect, NBSMaskViewType nBSMaskViewType, String str) {
        this.rect = rect;
        this.viewType = nBSMaskViewType;
        this.className = str;
    }

    public String getClassName() {
        String str = this.className;
        return str == null ? "" : str;
    }

    public Rect getRect() {
        Rect rect = this.rect;
        return rect == null ? new Rect() : rect;
    }

    public String getViewId() {
        return this.viewId;
    }

    public NBSMaskViewType getViewType() {
        return this.viewType;
    }

    public boolean isContainViewRect(Rect rect) {
        Rect rect2;
        return (rect == null || (rect2 = this.rect) == null || !rect2.contains(rect)) ? false : true;
    }

    public boolean isRectOutofScreen(int i2, int i3) {
        Rect rect = this.rect;
        return rect == null || rect.left >= i2 || rect.top >= i3 || rect.right <= 0 || rect.bottom <= 0;
    }

    public void setViewId(String str) {
        if (str == null) {
            return;
        }
        this.viewId = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("maskViewRect:{rect:");
        sb.append(this.rect);
        sb.append(", viewType:");
        sb.append(this.viewType);
        sb.append(", className:");
        return n00.r(this.className, "}", sb);
    }
}
