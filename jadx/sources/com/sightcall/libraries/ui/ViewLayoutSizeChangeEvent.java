package com.sightcall.libraries.ui;

import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003JY\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\"\u001a\u00020\u0003HÖ\u0081\u0004J\n\u0010#\u001a\u00020$HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000eR\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000e¨\u0006%"}, d2 = {"Lcom/sightcall/libraries/ui/ViewLayoutSizeChangeEvent;", "", "left", "", "top", "right", "bottom", "oldLeft", "oldTop", "oldRight", "oldBottom", "<init>", "(IIIIIIII)V", "getLeft", "()I", "getTop", "getRight", "getBottom", "getOldLeft", "getOldTop", "getOldRight", "getOldBottom", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "hashCode", "toString", "", "ui_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ViewLayoutSizeChangeEvent {
    private final int bottom;
    private final int left;
    private final int oldBottom;
    private final int oldLeft;
    private final int oldRight;
    private final int oldTop;
    private final int right;
    private final int top;

    public ViewLayoutSizeChangeEvent(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.left = i2;
        this.top = i3;
        this.right = i4;
        this.bottom = i5;
        this.oldLeft = i6;
        this.oldTop = i7;
        this.oldRight = i8;
        this.oldBottom = i9;
    }

    public static /* synthetic */ ViewLayoutSizeChangeEvent copy$default(ViewLayoutSizeChangeEvent viewLayoutSizeChangeEvent, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i2 = viewLayoutSizeChangeEvent.left;
        }
        if ((i10 & 2) != 0) {
            i3 = viewLayoutSizeChangeEvent.top;
        }
        if ((i10 & 4) != 0) {
            i4 = viewLayoutSizeChangeEvent.right;
        }
        if ((i10 & 8) != 0) {
            i5 = viewLayoutSizeChangeEvent.bottom;
        }
        if ((i10 & 16) != 0) {
            i6 = viewLayoutSizeChangeEvent.oldLeft;
        }
        if ((i10 & 32) != 0) {
            i7 = viewLayoutSizeChangeEvent.oldTop;
        }
        if ((i10 & 64) != 0) {
            i8 = viewLayoutSizeChangeEvent.oldRight;
        }
        if ((i10 & 128) != 0) {
            i9 = viewLayoutSizeChangeEvent.oldBottom;
        }
        int i11 = i8;
        int i12 = i9;
        int i13 = i6;
        int i14 = i7;
        return viewLayoutSizeChangeEvent.copy(i2, i3, i4, i5, i13, i14, i11, i12);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getLeft() {
        return this.left;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getTop() {
        return this.top;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getRight() {
        return this.right;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getBottom() {
        return this.bottom;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getOldLeft() {
        return this.oldLeft;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final int getOldTop() {
        return this.oldTop;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final int getOldRight() {
        return this.oldRight;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final int getOldBottom() {
        return this.oldBottom;
    }

    public final ViewLayoutSizeChangeEvent copy(int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        return new ViewLayoutSizeChangeEvent(left, top, right, bottom, oldLeft, oldTop, oldRight, oldBottom);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ViewLayoutSizeChangeEvent)) {
            return false;
        }
        ViewLayoutSizeChangeEvent viewLayoutSizeChangeEvent = (ViewLayoutSizeChangeEvent) other;
        return this.left == viewLayoutSizeChangeEvent.left && this.top == viewLayoutSizeChangeEvent.top && this.right == viewLayoutSizeChangeEvent.right && this.bottom == viewLayoutSizeChangeEvent.bottom && this.oldLeft == viewLayoutSizeChangeEvent.oldLeft && this.oldTop == viewLayoutSizeChangeEvent.oldTop && this.oldRight == viewLayoutSizeChangeEvent.oldRight && this.oldBottom == viewLayoutSizeChangeEvent.oldBottom;
    }

    public final int getBottom() {
        return this.bottom;
    }

    public final int getLeft() {
        return this.left;
    }

    public final int getOldBottom() {
        return this.oldBottom;
    }

    public final int getOldLeft() {
        return this.oldLeft;
    }

    public final int getOldRight() {
        return this.oldRight;
    }

    public final int getOldTop() {
        return this.oldTop;
    }

    public final int getRight() {
        return this.right;
    }

    public final int getTop() {
        return this.top;
    }

    public int hashCode() {
        return Integer.hashCode(this.oldBottom) + tr.b(this.oldRight, tr.b(this.oldTop, tr.b(this.oldLeft, tr.b(this.bottom, tr.b(this.right, tr.b(this.top, Integer.hashCode(this.left) * 31, 31), 31), 31), 31), 31), 31);
    }

    public String toString() {
        int i2 = this.left;
        int i3 = this.top;
        int i4 = this.right;
        int i5 = this.bottom;
        int i6 = this.oldLeft;
        int i7 = this.oldTop;
        int i8 = this.oldRight;
        int i9 = this.oldBottom;
        StringBuilder sbP = fc.p(i2, i3, "ViewLayoutSizeChangeEvent(left=", ", top=", ", right=");
        fc.x(i4, i5, ", bottom=", ", oldLeft=", sbP);
        fc.x(i6, i7, ", oldTop=", ", oldRight=", sbP);
        sbP.append(i8);
        sbP.append(", oldBottom=");
        sbP.append(i9);
        sbP.append(")");
        return sbP.toString();
    }
}
