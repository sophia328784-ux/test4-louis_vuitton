package com.google.android.gms.internal.clearcut;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class zzab {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ConcurrentHashMap f29624h = new ConcurrentHashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String[] f29625i = {ConfigurationName.KEY, "value"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ContentResolver f29626a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Uri f29627b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile HashMap f29629e;
    public final Object d = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f29630f = new Object();
    public final ArrayList g = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ContentObserver f29628c = new zzac(this);

    public zzab(ContentResolver contentResolver, Uri uri) {
        this.f29626a = contentResolver;
        this.f29627b = uri;
    }

    public final HashMap a() {
        try {
            HashMap map = new HashMap();
            Cursor cursorQuery = this.f29626a.query(this.f29627b, f29625i, null, null, null);
            if (cursorQuery == null) {
                return map;
            }
            while (cursorQuery.moveToNext()) {
                try {
                    map.put(cursorQuery.getString(0), cursorQuery.getString(1));
                } catch (Throwable th) {
                    cursorQuery.close();
                    throw th;
                }
            }
            cursorQuery.close();
            return map;
        } catch (SQLiteException | SecurityException unused) {
            return null;
        }
    }
}
