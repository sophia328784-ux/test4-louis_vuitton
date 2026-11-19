package com.batch.android.o;

import com.batch.android.BatchEventAttributes;
import com.batch.android.json.JSONArray;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.batch.android.v0.l;
import com.sightcall.universal.media.offline.FileUtils;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f23835a;

        static {
            int[] iArr = new int[com.batch.android.l1.a.values().length];
            f23835a = iArr;
            try {
                iArr[com.batch.android.l1.a.URL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23835a[com.batch.android.l1.a.OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23835a[com.batch.android.l1.a.OBJECT_ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f23835a[com.batch.android.l1.a.STRING_ARRAY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static JSONObject a(BatchEventAttributes batchEventAttributes) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(l.f24145h, b(batchEventAttributes));
        jSONObject.put("label", batchEventAttributes.getLabel());
        if (batchEventAttributes.getTags() != null) {
            jSONObject.put("tags", new JSONArray((Collection) batchEventAttributes.getTags()));
        }
        return jSONObject;
    }

    public static JSONObject b(BatchEventAttributes batchEventAttributes) throws JSONException, ClassCastException {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, f> entry : batchEventAttributes.getAttributes().entrySet()) {
            f value = entry.getValue();
            String str = entry.getKey().toLowerCase(Locale.US) + FileUtils.HIDDEN_PREFIX + value.f23853b.b();
            int i2 = a.f23835a[value.f23853b.ordinal()];
            if (i2 == 1) {
                jSONObject.put(str, value.f23852a.toString());
            } else if (i2 == 2) {
                jSONObject.put(str, b((BatchEventAttributes) value.f23852a));
            } else if (i2 != 3) {
                Object obj = value.f23852a;
                if (i2 != 4) {
                    jSONObject.put(str, obj);
                } else {
                    jSONObject.put(str, new JSONArray((Collection) obj));
                }
            } else {
                jSONObject.put(str, a((List<BatchEventAttributes>) value.f23852a));
            }
        }
        return jSONObject;
    }

    public static JSONArray a(List<BatchEventAttributes> list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<BatchEventAttributes> it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(b(it.next()));
        }
        return jSONArray;
    }
}
