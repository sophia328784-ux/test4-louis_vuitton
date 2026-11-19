package com.sightcall.uvc;

import java.util.Locale;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class Size {
    public int frameIntervalIndex;
    public int frameIntervalType;
    public int frame_type;
    public int height;
    public int index;
    public int[] intervals;
    public int type;
    public int width;

    public Size(Size size) {
        this.type = size.type;
        this.frame_type = size.frame_type;
        this.index = size.index;
        this.width = size.width;
        this.height = size.height;
        this.frameIntervalType = size.frameIntervalType;
        this.frameIntervalIndex = size.frameIntervalIndex;
        int[] iArr = size.intervals;
        int length = iArr != null ? iArr.length : -1;
        if (length <= 0) {
            this.intervals = null;
            return;
        }
        int[] iArr2 = new int[length];
        this.intervals = iArr2;
        System.arraycopy(size.intervals, 0, iArr2, 0, length);
    }

    public Size set(Size size) {
        if (size != null) {
            this.type = size.type;
            this.frame_type = size.frame_type;
            this.index = size.index;
            this.width = size.width;
            this.height = size.height;
            this.frameIntervalType = size.frameIntervalType;
            this.frameIntervalIndex = size.frameIntervalIndex;
            int[] iArr = size.intervals;
            int length = iArr != null ? iArr.length : -1;
            if (length > 0) {
                int[] iArr2 = new int[length];
                this.intervals = iArr2;
                System.arraycopy(size.intervals, 0, iArr2, 0, length);
                return this;
            }
            this.intervals = null;
        }
        return this;
    }

    public String toString() {
        int i2 = this.height;
        return String.format(Locale.US, "%dx%d (%.2f) type:%d frame:%d index:%d", Integer.valueOf(this.width), Integer.valueOf(this.height), Float.valueOf(i2 == 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : this.width / i2), Integer.valueOf(this.type), Integer.valueOf(this.frame_type), Integer.valueOf(this.index));
    }

    public Size(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.type = i2;
        this.frame_type = i3;
        this.index = i4;
        this.width = i5;
        this.height = i6;
        this.frameIntervalType = 0;
        this.frameIntervalIndex = 0;
        this.intervals = new int[]{i7, i8, i9};
    }

    public Size(int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        this.type = i2;
        this.frame_type = i3;
        this.index = i4;
        this.width = i5;
        this.height = i6;
        int length = iArr != null ? iArr.length : -1;
        if (length > 0) {
            this.frameIntervalType = length;
            int[] iArr2 = new int[length];
            this.intervals = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
        } else {
            this.frameIntervalType = -1;
            this.intervals = null;
        }
        this.frameIntervalIndex = 0;
    }

    public Size(int i2, int i3, int i4, int i5, int i6) {
        this.type = i2;
        this.frame_type = i3;
        this.index = i4;
        this.width = i5;
        this.height = i6;
        this.frameIntervalType = -1;
        this.frameIntervalIndex = 0;
        this.intervals = null;
    }
}
