package com.google.firebase.installations.local;

import androidx.datastore.preferences.core.Preferences;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.datastorage.JavaDataStorage;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes2.dex */
public class IidStore {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Preferences.Key f35186c = new Preferences.Key("|S||P|");
    public static final Preferences.Key d = new Preferences.Key("|S|id");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String[] f35187e = {Browse.CAPS_WILDCARD, "FCM", "GCM", ""};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final JavaDataStorage f35188a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f35189b;

    /* JADX WARN: Code duplicated, block: B:12:0x003c  */
    public IidStore(FirebaseApp firebaseApp) {
        firebaseApp.a();
        this.f35188a = new JavaDataStorage(firebaseApp.f34330a, "com.google.android.gms.appid");
        firebaseApp.a();
        FirebaseOptions firebaseOptions = firebaseApp.f34332c;
        String str = firebaseOptions.f34348e;
        if (str == null) {
            firebaseApp.a();
            str = firebaseOptions.f34346b;
            if (str.startsWith("1:") || str.startsWith("2:")) {
                String[] strArrSplit = str.split(":");
                if (strArrSplit.length != 4) {
                    str = null;
                } else {
                    str = strArrSplit[1];
                    if (str.isEmpty()) {
                        str = null;
                    }
                }
            }
        }
        this.f35189b = str;
    }

    public IidStore(JavaDataStorage javaDataStorage, String str) {
        this.f35188a = javaDataStorage;
        this.f35189b = str;
    }
}
