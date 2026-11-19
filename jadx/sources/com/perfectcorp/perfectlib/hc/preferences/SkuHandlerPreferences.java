package com.perfectcorp.perfectlib.hc.preferences;

import android.content.SharedPreferences;
import com.perfectcorp.common.utility.BasicPreferences;
import com.perfectcorp.common.utility.DatabaseSharedPreferences;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SkuHandlerPreferences {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BasicPreferences f40330a = new BasicPreferences(DatabaseSharedPreferences.a("SKU_HANDLER_STATUS_PREFERENCES"));

    public static void a(ConcurrentHashMap concurrentHashMap) {
        SharedPreferences.Editor editorEdit = f40330a.edit();
        for (Map.Entry entry : concurrentHashMap.entrySet()) {
            editorEdit.putString("KEY_LIST_MESSAGE_DIGEST_" + ((String) entry.getKey()), (String) entry.getValue());
        }
        editorEdit.commit();
    }
}
