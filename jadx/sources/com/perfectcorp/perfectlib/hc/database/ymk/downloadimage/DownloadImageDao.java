package com.perfectcorp.perfectlib.hc.database.ymk.downloadimage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.ymk.BaseDao;
import com.perfectcorp.thirdparty.com.google.common.collect.at;
import defpackage.md;
import defpackage.tr;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class DownloadImageDao extends BaseDao<DownloadImageInfo> {
    public static final DownloadImageDao d = new DownloadImageDao("DownloadImageDao", "DownloadImage", Contract.DownloadImage.f40210b);

    public enum Type {
        SKU("sku"),
        LOOK("look"),
        HAIR_CARE("hair_care"),
        TAG_SKU("tag_sku"),
        TAG_LOOK("tag_look"),
        SKIN_CARE("skin_care"),
        SKIN_CARE_3("skin_care_3");


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f40305a;

        Type(String str) {
            this.f40305a = str;
        }
    }

    public static ContentValues o(DownloadImageInfo downloadImageInfo) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(ConfigurationName.DOWNLOAD_PLUGIN_URL, downloadImageInfo.f40306a);
        contentValues.put("path", downloadImageInfo.f40307b);
        contentValues.put("referenceId", downloadImageInfo.f40308c);
        contentValues.put("type", downloadImageInfo.d.f40305a);
        contentValues.put("size", Long.valueOf(downloadImageInfo.f40309e));
        return contentValues;
    }

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final Object l(Cursor cursor) {
        String strG = BaseDao.g(cursor, ConfigurationName.DOWNLOAD_PLUGIN_URL);
        String string = cursor.getString(cursor.getColumnIndex("path"));
        String string2 = cursor.getString(cursor.getColumnIndex("referenceId"));
        String string3 = cursor.getString(cursor.getColumnIndex("type"));
        long j2 = cursor.getLong(cursor.getColumnIndex("size"));
        DownloadImageInfo.Builder builder = new DownloadImageInfo.Builder();
        builder.f40310a = strG;
        builder.f40311b = string;
        builder.f40312c = string2;
        for (Type type : Type.values()) {
            if (type.f40305a.equalsIgnoreCase(string3)) {
                builder.d = type;
                builder.f40313e = j2;
                return new DownloadImageInfo(builder);
            }
        }
        md.h(tr.g("Unknown type=", string3));
        return null;
    }

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final /* synthetic */ ContentValues n(Object obj) {
        return o((DownloadImageInfo) obj);
    }

    public final void p(SQLiteDatabase sQLiteDatabase, Type type) {
        d(sQLiteDatabase, "type", type.f40305a);
    }

    public final List q(SQLiteDatabase sQLiteDatabase, Type type) {
        return h(sQLiteDatabase, ConfigurationName.DOWNLOAD_PLUGIN_URL, "path IS NULL AND type", type.f40305a);
    }

    public final HashSet r(SQLiteDatabase sQLiteDatabase, Type type) {
        List listH = h(sQLiteDatabase, "path", "type", type.f40305a);
        if (listH instanceof Collection) {
            return new HashSet(listH);
        }
        Iterator it = listH.iterator();
        HashSet hashSet = new HashSet();
        at.b(hashSet, it);
        return hashSet;
    }

    public final void s(SQLiteDatabase sQLiteDatabase, String str, String str2, long j2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("path", str2);
        contentValues.put("size", Long.valueOf(j2));
        String str3 = this.f40265a;
        Threads.b();
        Objects.requireNonNull(str);
        try {
            Log.g(3, str3, "[updateByTextColumn] column=url, value=" + str + ", count=" + sQLiteDatabase.update(YMKDatabase.a(sQLiteDatabase, this.f40266b), contentValues, ConfigurationName.DOWNLOAD_PLUGIN_URL.concat("=?"), new String[]{str}));
        } catch (Throwable th) {
            Log.e(str3, "[updateByTextColumn] failed", th);
            throw th;
        }
    }
}
