package com.sightcall.pratik.utils;

import android.util.Base64;
import com.sightcall.universal.media.offline.FileUtils;
import java.io.UnsupportedEncodingException;
import kotlin.Metadata;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u001a\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0002\u001a\u0010\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0002¨\u0006\u0006"}, d2 = {"getUid", "", "JwtEncoded", "getBody", "getJson", "strEncoded", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class JWTUtilsKt {
    private static final String getBody(String str) {
        try {
            String[] strArr = (String[]) StringsKt__StringsKt.split$default(str, new String[]{FileUtils.HIDDEN_PREFIX}, false, 0, 6, null).toArray(new String[0]);
            if (strArr.length > 2) {
                return getJson(strArr[1]);
            }
            return null;
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    private static final String getJson(String str) {
        byte[] bArrDecode = Base64.decode(str, 8);
        bArrDecode.getClass();
        return new String(bArrDecode, Charsets.UTF_8);
    }

    public static final String getUid(String str) {
        String strOptString;
        str.getClass();
        String body = getBody(str);
        if (body == null || (strOptString = new JSONObject(body).optString("uid")) == null) {
            return null;
        }
        return strOptString;
    }
}
