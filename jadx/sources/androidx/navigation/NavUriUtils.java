package androidx.navigation;

import android.net.Uri;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/navigation/NavUriUtils;", "", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NavUriUtils {
    public static String a(String str) {
        str.getClass();
        String strEncode = Uri.encode(str, null);
        strEncode.getClass();
        return strEncode;
    }
}
