package com.google.firebase.messaging;

import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
final class TopicsStore {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static WeakReference f35296b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SharedPreferencesQueue f35297a;

    public final synchronized TopicOperation a() {
        String str;
        TopicOperation topicOperation;
        SharedPreferencesQueue sharedPreferencesQueue = this.f35297a;
        synchronized (sharedPreferencesQueue.d) {
            str = (String) sharedPreferencesQueue.d.peek();
        }
        Pattern pattern = TopicOperation.d;
        topicOperation = null;
        if (!TextUtils.isEmpty(str)) {
            String[] strArrSplit = str.split("!", -1);
            if (strArrSplit.length == 2) {
                topicOperation = new TopicOperation(strArrSplit[0], strArrSplit[1]);
            }
        }
        return topicOperation;
    }
}
