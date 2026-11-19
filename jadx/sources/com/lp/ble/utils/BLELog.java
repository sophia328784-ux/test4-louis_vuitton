package com.lp.ble.utils;

import android.text.TextUtils;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import defpackage.d21;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class BLELog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static HashMap f36371a = new HashMap();

    public interface BLELogCallback {
    }

    public static boolean a(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        String strJ = d21.j(str, str2);
        if (f36371a == null) {
            f36371a = new HashMap();
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!f36371a.containsKey(strJ)) {
            f36371a.put(strJ, Long.valueOf(jCurrentTimeMillis));
            return true;
        }
        if (jCurrentTimeMillis - ((Long) f36371a.get(strJ)).longValue() <= LiveTranslationEntity.DefaultSentenceTimeOut) {
            return false;
        }
        f36371a.put(strJ, Long.valueOf(jCurrentTimeMillis));
        return true;
    }
}
