package com.batch.android.b;

import android.content.Context;
import com.batch.android.Batch;
import com.batch.android.BatchEventAttributes;
import com.batch.android.UserActionRunnable;
import com.batch.android.UserActionSource;
import com.batch.android.e.t;
import com.batch.android.json.JSONArray;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class j implements UserActionRunnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f22964a = "EventBuiltinActionRunnable";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f22965b = "batch.user.event";

    private Date a(String str) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSXXX", Locale.US).parse(str);
        } catch (ParseException unused) {
            return null;
        }
    }

    @Override // com.batch.android.UserActionRunnable
    public void performAction(Context context, String str, JSONObject jSONObject, UserActionSource userActionSource) {
        try {
            JSONObject jSONObject2 = new JSONObject(jSONObject);
            String string = jSONObject2.getString("e");
            if (string == null) {
                t.c(f22964a, "Could not perform event action : event's null");
                return;
            }
            if (string.length() == 0) {
                t.c(f22964a, "Could not perform event action : event name is empty");
                return;
            }
            BatchEventAttributes batchEventAttributes = new BatchEventAttributes();
            String strReallyOptString = jSONObject2.reallyOptString(b.d, null);
            if (strReallyOptString != null) {
                batchEventAttributes.put(BatchEventAttributes.LABEL_KEY, strReallyOptString);
            }
            JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("t");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    String strOptString = jSONArrayOptJSONArray.optString(i2, null);
                    if (strOptString == null || strOptString.length() <= 0) {
                        t.c(f22964a, "Could not add tag in event action : tag value is null or invalid");
                    } else {
                        arrayList.add(strOptString);
                    }
                }
                batchEventAttributes.putStringList(BatchEventAttributes.TAGS_KEY, arrayList);
            }
            JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("a");
            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.keySet().size() > 0) {
                for (String str2 : jSONObjectOptJSONObject.keySet()) {
                    Object objOpt = jSONObjectOptJSONObject.opt(str2);
                    if (objOpt instanceof Integer) {
                        batchEventAttributes.put(str2, ((Integer) objOpt).intValue());
                    } else if (objOpt instanceof Long) {
                        batchEventAttributes.put(str2, ((Long) objOpt).longValue());
                    } else if (objOpt instanceof Float) {
                        batchEventAttributes.put(str2, ((Float) objOpt).floatValue());
                    } else if (objOpt instanceof Double) {
                        batchEventAttributes.put(str2, ((Double) objOpt).doubleValue());
                    } else if (objOpt instanceof String) {
                        Date dateA = a((String) objOpt);
                        if (dateA != null) {
                            batchEventAttributes.put(str2, dateA);
                        } else {
                            batchEventAttributes.put(str2, (String) objOpt);
                        }
                    } else if (objOpt instanceof Boolean) {
                        batchEventAttributes.put(str2, ((Boolean) objOpt).booleanValue());
                    } else {
                        t.c(f22964a, "Could not add data in event action : value type is invalid");
                    }
                }
            }
            Batch.Profile.trackEvent(string, batchEventAttributes);
        } catch (JSONException e2) {
            t.c(f22964a, "Json object failure : " + e2.getLocalizedMessage());
        }
    }
}
