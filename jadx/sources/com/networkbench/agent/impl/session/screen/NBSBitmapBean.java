package com.networkbench.agent.impl.session.screen;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.networkbench.agent.impl.g.a.h;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.com.google.gson.JsonArray;
import defpackage.n00;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class NBSBitmapBean {
    private static final String TAG = "NBSBitmapBean";
    public String bitMapPath;
    public volatile int count;
    public boolean drawPath;
    public boolean firstBean;
    String frame_ID;
    boolean frame_format;
    int frame_header_size;
    long frame_height;
    int frame_size;
    long frame_time;
    long frame_width;
    long height;
    Bitmap image_data;
    String sessionId;
    int userOperationSize;
    NBSScreenActionData user_operation_data;
    private List<NBSWebViewItem> webviewItems;
    long width;

    public NBSBitmapBean(long j2, h hVar) {
        this.count = 0;
        this.firstBean = false;
        this.drawPath = false;
        this.frame_time = j2;
        this.frame_format = true;
        String string = UUID.randomUUID().toString();
        this.frame_ID = string;
        this.user_operation_data = new NBSScreenActionData(string, hVar);
        this.webviewItems = new CopyOnWriteArrayList();
    }

    private String strToBinstr(String str) {
        char[] charArray = str.toCharArray();
        String string = "";
        for (char c2 : charArray) {
            StringBuilder sbT = n00.t(string);
            sbT.append(Integer.toBinaryString(c2));
            string = sbT.toString();
        }
        return string;
    }

    public void addWebViewItem(NBSWebViewItem nBSWebViewItem) {
        if (nBSWebViewItem != null) {
            this.webviewItems.add(nBSWebViewItem);
        }
    }

    public boolean checkoutBitmap(NBSBitmapBean nBSBitmapBean) {
        return nBSBitmapBean == null || this.frame_time - nBSBitmapBean.frame_time > 750;
    }

    public NBSBitmapBean copyNBSBitmapBean() {
        NBSBitmapBean nBSBitmapBean = new NBSBitmapBean();
        nBSBitmapBean.firstBean = this.firstBean;
        nBSBitmapBean.frame_ID = this.frame_ID;
        nBSBitmapBean.frame_height = this.frame_height;
        nBSBitmapBean.frame_width = this.frame_width;
        nBSBitmapBean.sessionId = this.sessionId;
        nBSBitmapBean.frame_format = this.frame_format;
        nBSBitmapBean.frame_time = System.currentTimeMillis();
        nBSBitmapBean.frame_size = this.frame_size;
        nBSBitmapBean.bitMapPath = this.bitMapPath;
        nBSBitmapBean.userOperationSize = this.userOperationSize;
        nBSBitmapBean.user_operation_data = this.user_operation_data;
        nBSBitmapBean.webviewItems = this.webviewItems;
        return nBSBitmapBean;
    }

    public void deletBitMap() {
        this.image_data = null;
    }

    public String getBitMapPath() {
        return this.bitMapPath;
    }

    public String getFrame_ID() {
        return this.frame_ID;
    }

    public Bitmap getImage_data() {
        return this.image_data;
    }

    public String getNBSScreenActionData() {
        NBSScreenActionData nBSScreenActionData = this.user_operation_data;
        nBSScreenActionData.scale = this.frame_width / this.width;
        return nBSScreenActionData.asJsonArray().toString();
    }

    public void setBitMapPath(String str) {
        this.bitMapPath = str;
    }

    public void setSessionID(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.sessionId = str;
        this.firstBean = true;
    }

    public void setWidthAndHeight(int i2, int i3) {
        this.width = i2;
        this.height = i3;
    }

    public String toString() {
        return "NBSBitmapBean{frame_header_size=" + this.frame_header_size + ", frame_ID='" + this.frame_ID + "', frame_time=" + this.frame_time + ", frame_format=" + this.frame_format + ", frame_size=" + this.frame_size + ", frame_width=" + this.frame_width + ", frame_height=" + this.frame_height + ", image_data=" + this.image_data + ", bitMapPath='" + this.bitMapPath + "', userOperationSize=" + this.userOperationSize + ", user_operation_data=" + this.user_operation_data + '}';
    }

    public byte[] webviewItemsToByte() {
        JsonArray jsonArray = new JsonArray();
        Iterator<NBSWebViewItem> it = this.webviewItems.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().asJson());
        }
        if (jsonArray.size() == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[0];
        try {
            return jsonArray.toString().getBytes("utf-8");
        } catch (Throwable th) {
            Logger.error(TAG, "error webviewItemsToByte", th);
            return bArr;
        }
    }

    private NBSBitmapBean() {
        this.count = 0;
        this.firstBean = false;
        this.drawPath = false;
    }
}
