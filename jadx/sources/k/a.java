package k;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static HashMap f71507a = new HashMap();

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (f71507a == null) {
            f71507a = new HashMap();
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!f71507a.containsKey(str)) {
            f71507a.put(str, Long.valueOf(jCurrentTimeMillis));
            return true;
        }
        if ((jCurrentTimeMillis - ((Long) f71507a.get(str)).longValue()) / 1000 <= 0.5d) {
            return false;
        }
        f71507a.put(str, Long.valueOf(jCurrentTimeMillis));
        return true;
    }
}
