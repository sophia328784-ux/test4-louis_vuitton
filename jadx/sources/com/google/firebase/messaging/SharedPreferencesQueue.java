package com.google.firebase.messaging;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayDeque;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* JADX INFO: loaded from: classes2.dex */
final class SharedPreferencesQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences f35280a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f35283e;
    public final ArrayDeque d = new ArrayDeque();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f35281b = "topic_operation_queue";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f35282c = ",";

    public SharedPreferencesQueue(SharedPreferences sharedPreferences, ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        this.f35280a = sharedPreferences;
        this.f35283e = scheduledThreadPoolExecutor;
    }

    public static SharedPreferencesQueue a(SharedPreferences sharedPreferences, ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        SharedPreferencesQueue sharedPreferencesQueue = new SharedPreferencesQueue(sharedPreferences, scheduledThreadPoolExecutor);
        synchronized (sharedPreferencesQueue.d) {
            try {
                sharedPreferencesQueue.d.clear();
                String string = sharedPreferencesQueue.f35280a.getString(sharedPreferencesQueue.f35281b, "");
                if (!TextUtils.isEmpty(string) && string.contains(sharedPreferencesQueue.f35282c)) {
                    String[] strArrSplit = string.split(sharedPreferencesQueue.f35282c, -1);
                    int length = strArrSplit.length;
                    for (String str : strArrSplit) {
                        if (!TextUtils.isEmpty(str)) {
                            sharedPreferencesQueue.d.add(str);
                        }
                    }
                    return sharedPreferencesQueue;
                }
                return sharedPreferencesQueue;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
