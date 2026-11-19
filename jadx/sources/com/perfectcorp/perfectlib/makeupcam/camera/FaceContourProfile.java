package com.perfectcorp.perfectlib.makeupcam.camera;

import android.graphics.Point;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class FaceContourProfile {
    public byte[] m_data = null;
    public Point m_roi_start = new Point(0, 0);
    public int m_width = 0;
    public int m_height = 0;
    public int m_stride = 0;

    public static FaceContourProfile newProfile() {
        return new FaceContourProfile();
    }

    public void AllocByteArray(int i2, int i3, int i4) {
        if (this.m_width == i2 && this.m_height == i3 && this.m_stride == i4) {
            return;
        }
        this.m_width = i2;
        this.m_height = i3;
        this.m_stride = i4;
        this.m_data = new byte[i4 * i3];
    }

    public void InitWithDummyData() {
        this.m_stride = 16;
        this.m_height = 16;
        this.m_width = 16;
        byte[] bArr = new byte[16 * 16];
        this.m_data = bArr;
        Arrays.fill(bArr, (byte) 2);
        this.m_roi_start = new Point(0, 0);
    }
}
