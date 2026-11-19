package com.perfectcorp.perfectlib.makeupcam.template;

import android.text.TextUtils;
import com.perfectcorp.common.utility.Log;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* JADX INFO: loaded from: classes3.dex */
public final class LocalizedString {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Map f40985b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f40986a = new a();

    static {
        HashMap map = new HashMap();
        for (Map.Entry<String, TemplateConsts.LocaleEnum> entry : TemplateConsts.LocaleEnum.LOCALE_TO_ENUM.entrySet()) {
            map.put(entry.getKey(), entry.getValue().name());
        }
        f40985b = Collections.unmodifiableMap(map);
    }

    public LocalizedString(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            for (Map.Entry entry : f40985b.entrySet()) {
                ((a) this.f40986a).put((String) entry.getValue(), jSONObject.optString((String) entry.getValue()));
            }
            ((a) this.f40986a).put("def", jSONObject.optString("def"));
        } catch (Throwable th) {
            Log.e("LocalizedString", "[fromJSON]", th);
            Log.d("LocalizedString", str);
        }
    }

    public static String a(NodeList nodeList) {
        NodeList childNodes;
        return (nodeList == null || nodeList.item(0) == null || (childNodes = nodeList.item(0).getChildNodes()) == null || childNodes.item(0) == null) ? "" : childNodes.item(0).getNodeValue().trim();
    }

    public final String b() {
        String str;
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        String str2 = language + '_' + locale.getCountry();
        Map map = f40985b;
        String str3 = (String) map.get(str2);
        Map map2 = this.f40986a;
        String str4 = str3 != null ? (String) ((HashMap) map2).get(str3) : null;
        if (str4 != null) {
            return str4;
        }
        String str5 = (String) map.get(language);
        String str6 = str5 != null ? (String) ((HashMap) map2).get(str5) : null;
        if (str6 != null) {
            return str6;
        }
        return (!"zh".equals(language) || (str = (String) ((HashMap) map2).get("cht")) == null) ? (String) ((HashMap) map2).get("def") : str;
    }

    public final JSONObject c() {
        Map map;
        JSONObject jSONObject = new JSONObject();
        try {
            Iterator it = f40985b.entrySet().iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                map = this.f40986a;
                String str = "";
                if (!zHasNext) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                String str2 = (String) ((HashMap) map).get((String) entry.getValue());
                String str3 = (String) entry.getValue();
                if (str2 != null) {
                    str = str2;
                }
                jSONObject.put(str3, str);
            }
            String str4 = (String) ((HashMap) map).get("def");
            jSONObject.put("def", str4 != null ? str4 : "");
            return jSONObject;
        } catch (Throwable th) {
            Log.e("LocalizedString", "[toJSON]", th);
            return jSONObject;
        }
    }

    public LocalizedString() {
    }

    public LocalizedString(Node node) {
        if (node instanceof Element) {
            Element element = (Element) node;
            for (Map.Entry entry : f40985b.entrySet()) {
                NodeList elementsByTagName = element.getElementsByTagName((String) entry.getValue());
                ((a) this.f40986a).put((String) entry.getValue(), a(elementsByTagName));
            }
            ((a) this.f40986a).put("def", a(element.getElementsByTagName("def")));
        }
    }
}
