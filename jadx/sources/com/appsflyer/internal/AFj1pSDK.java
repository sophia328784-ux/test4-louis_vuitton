package com.appsflyer.internal;

import android.database.Cursor;

/* JADX INFO: loaded from: classes.dex */
public final class AFj1pSDK {
    public static final String Y_(Cursor cursor, String str) {
        cursor.getClass();
        str.getClass();
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex != -1) {
            return cursor.getString(columnIndex);
        }
        return null;
    }
}
