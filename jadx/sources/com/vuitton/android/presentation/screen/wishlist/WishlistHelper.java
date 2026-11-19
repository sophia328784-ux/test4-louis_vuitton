package com.vuitton.android.presentation.screen.wishlist;

import kotlin.Metadata;
import kotlin.Result;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/WishlistHelper;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class WishlistHelper {
    /* JADX WARN: Code duplicated, block: B:12:0x002e  */
    public static String a(ResponseBody responseBody) {
        Object failure;
        if (responseBody == null) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            JSONArray jSONArray = new JSONObject(responseBody.string()).getJSONArray("formExceptions");
            if (jSONArray.length() > 0) {
                JSONObject jSONObject = jSONArray.getJSONObject(0);
                if (jSONObject.has("localizedMessage")) {
                    failure = jSONObject.getString("localizedMessage");
                } else {
                    failure = null;
                }
            } else {
                failure = null;
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        return (String) (failure instanceof Result.Failure ? null : failure);
    }
}
