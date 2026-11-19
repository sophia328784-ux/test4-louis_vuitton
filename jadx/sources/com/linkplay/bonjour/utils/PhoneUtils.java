package com.linkplay.bonjour.utils;

import android.os.Build;
import defpackage.n00;
import defpackage.o60;

/* JADX INFO: loaded from: classes2.dex */
public class PhoneUtils {
    private String DISPLAY = Build.DISPLAY;
    private String BOARD = Build.BOARD;
    private String BRAND = Build.BRAND;
    private String CPU_ABI = Build.CPU_ABI;
    private String DEVICE = Build.DEVICE;
    private String HOST = Build.HOST;
    private String MODEL = Build.MODEL;
    private String PRODUCT = Build.PRODUCT;
    private String TAGS = Build.TAGS;
    private String TYPE = Build.TYPE;
    private String USER = Build.USER;

    public static String getPhoneID() {
        StringBuilder sb = new StringBuilder();
        String str = Build.DISPLAY;
        sb.append(str);
        o60.x(10, Build.BOARD, sb);
        o60.x(10, Build.BRAND, sb);
        o60.x(10, Build.CPU_ABI, sb);
        sb.append(Build.DEVICE.length() % 10);
        sb.append(str.length() % 10);
        o60.x(10, Build.HOST, sb);
        o60.x(10, Build.ID, sb);
        o60.x(10, Build.MANUFACTURER, sb);
        o60.x(10, Build.MODEL, sb);
        o60.x(10, Build.PRODUCT, sb);
        o60.x(10, Build.TAGS, sb);
        o60.x(10, Build.TYPE, sb);
        sb.append(Build.USER.length() % 10);
        return sb.toString().replace(" ", "");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Phone{DISPLAY='");
        sb.append(this.DISPLAY);
        sb.append("', BOARD='");
        sb.append(this.BOARD);
        sb.append("', BRAND='");
        sb.append(this.BRAND);
        sb.append("', CPU_ABI='");
        sb.append(this.CPU_ABI);
        sb.append("', DEVICE='");
        sb.append(this.DEVICE);
        sb.append("', HOST='");
        sb.append(this.HOST);
        sb.append("', MODEL='");
        sb.append(this.MODEL);
        sb.append("', PRODUCT='");
        sb.append(this.PRODUCT);
        sb.append("', TAGS='");
        sb.append(this.TAGS);
        sb.append("', TYPE='");
        sb.append(this.TYPE);
        sb.append("', USER='");
        return n00.r(this.USER, "'}", sb);
    }
}
