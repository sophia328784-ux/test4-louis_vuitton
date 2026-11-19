package com.google.firebase.heartbeatinfo;

import android.content.Context;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import com.google.firebase.datastorage.JavaDataStorage;
import com.google.firebase.datastorage.JavaDataStorageKt;
import defpackage.tr;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes2.dex */
class HeartBeatInfoStorage {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Preferences.Key f35135b = new Preferences.Key("fire-global");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Preferences.Key f35136c = new Preferences.Key("fire-count");
    public static final Preferences.Key d = new Preferences.Key("last-used-date");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final JavaDataStorage f35137a;

    public HeartBeatInfoStorage(Context context, String str) {
        this.f35137a = new JavaDataStorage(context, tr.g("FirebaseHeartBeat", str));
    }

    public static String b(long j2) {
        return new Date(j2).toInstant().atOffset(ZoneOffset.UTC).toLocalDateTime().format(DateTimeFormatter.ISO_LOCAL_DATE);
    }

    public static Preferences.Key c(MutablePreferences mutablePreferences, String str) {
        for (Map.Entry entry : mutablePreferences.a().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Iterator it = ((Set) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (str.equals((String) it.next())) {
                        String str2 = ((Preferences.Key) entry.getKey()).f12885a;
                        str2.getClass();
                        return new Preferences.Key(str2);
                    }
                }
            }
        }
        return null;
    }

    public static void d(MutablePreferences mutablePreferences, String str) {
        Preferences.Key keyC = c(mutablePreferences, str);
        if (keyC == null) {
            return;
        }
        HashSet hashSet = new HashSet((Collection) JavaDataStorageKt.a(mutablePreferences, keyC, new HashSet()));
        hashSet.remove(str);
        if (hashSet.isEmpty()) {
            mutablePreferences.d(keyC);
        } else {
            mutablePreferences.f(keyC, hashSet);
        }
    }

    public final synchronized ArrayList a() {
        try {
            ArrayList arrayList = new ArrayList();
            String strB = b(System.currentTimeMillis());
            for (Map.Entry entry : this.f35137a.b().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    HashSet hashSet = new HashSet((Set) entry.getValue());
                    hashSet.remove(strB);
                    if (!hashSet.isEmpty()) {
                        arrayList.add(new AutoValue_HeartBeatResult(((Preferences.Key) entry.getKey()).f12885a, new ArrayList(hashSet)));
                    }
                }
            }
            final long jCurrentTimeMillis = System.currentTimeMillis();
            synchronized (this) {
                this.f35137a.a(new Function1() { // from class: com.google.firebase.heartbeatinfo.e
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        ((MutablePreferences) obj).e(HeartBeatInfoStorage.f35135b, Long.valueOf(jCurrentTimeMillis));
                        return null;
                    }
                });
            }
            return arrayList;
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public final synchronized boolean e(Preferences.Key key, long j2) {
        if (b(((Long) this.f35137a.c(key, -1L)).longValue()).equals(b(j2))) {
            return false;
        }
        this.f35137a.d(key, Long.valueOf(j2));
        return true;
    }
}
