package com.linkplay.lpmdpkit.utils;

import android.os.Build;
import defpackage.o60;

/* JADX INFO: loaded from: classes2.dex */
public class PhoneUUIDBuilder {
    private static String uuidBuild;

    static {
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
        String string = sb.toString();
        uuidBuild = string;
        uuidBuild = string.replace(" ", "");
    }

    public static String uuidBuild() {
        return uuidBuild;
    }
}
