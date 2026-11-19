package com.batch.android.a0;

import android.graphics.Point;
import android.os.Build;
import android.text.TextUtils;
import com.batch.android.e.t;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f22876c = "CSS";
    private static final Pattern d = Pattern.compile("@media (ios|android|\\*) and \\((max|min)-(width|height):\\s*(\\d*)\\)");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<h> f22877a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List<f> f22878b = new ArrayList();

    public Map<String, String> a(List<c> list) throws Exception {
        char c2;
        char c3;
        if (list == null) {
            return new HashMap();
        }
        try {
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            Iterator<c> it = list.iterator();
            while (true) {
                c2 = 2;
                if (!it.hasNext()) {
                    break;
                }
                c next = it.next();
                if (next instanceof i) {
                    String str = next.f22874a;
                    if (str != null && str.length() > 2) {
                        map2.put(next.f22874a, next.f22875b);
                    }
                } else {
                    String str2 = next.f22874a;
                    if (str2 != null) {
                        map.put(str2, next.f22875b);
                    }
                }
            }
            Iterator it2 = map.entrySet().iterator();
            while (true) {
                c2 = c2;
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it2.next();
                String str3 = (String) entry.getValue();
                if (str3.startsWith("var(")) {
                    Iterator it3 = it2;
                    String strSubstring = str3.substring(4, str3.length() - 1);
                    if (!TextUtils.isEmpty(strSubstring)) {
                        String str4 = (String) map2.get(strSubstring.toLowerCase(Locale.US));
                        if (TextUtils.isEmpty(str4)) {
                            it3.remove();
                        } else {
                            entry.setValue(str4);
                        }
                    }
                    it2 = it3;
                }
            }
            String str5 = (String) map.get("padding");
            if (TextUtils.isEmpty(str5)) {
                c3 = 3;
            } else {
                String[] strArrSplit = str5.split("\\s+");
                c3 = 3;
                if (strArrSplit.length == 1) {
                    String str6 = strArrSplit[0];
                    strArrSplit = new String[]{str6, str6, str6, str6};
                }
                if (strArrSplit.length == 4) {
                    if (!map.containsKey("padding-top")) {
                        map.put("padding-top", strArrSplit[0]);
                    }
                    if (!map.containsKey("padding-right")) {
                        map.put("padding-right", strArrSplit[1]);
                    }
                    if (!map.containsKey("padding-bottom")) {
                        map.put("padding-bottom", strArrSplit[c2]);
                    }
                    if (!map.containsKey("padding-left")) {
                        map.put("padding-left", strArrSplit[3]);
                    }
                }
                map.remove("padding");
            }
            String str7 = (String) map.get("margin");
            if (!TextUtils.isEmpty(str7)) {
                String[] strArrSplit2 = str7.split("\\s+");
                if (strArrSplit2.length == 1) {
                    String str8 = strArrSplit2[0];
                    strArrSplit2 = new String[]{str8, str8, str8, str8};
                }
                if (strArrSplit2.length == 4) {
                    if (!map.containsKey("margin-top")) {
                        map.put("margin-top", strArrSplit2[0]);
                    }
                    if (!map.containsKey("margin-right")) {
                        map.put("margin-right", strArrSplit2[1]);
                    }
                    if (!map.containsKey("margin-bottom")) {
                        map.put("margin-bottom", strArrSplit2[c2]);
                    }
                    if (!map.containsKey("margin-left")) {
                        map.put("margin-left", strArrSplit2[c3]);
                    }
                }
                map.remove("margin");
            }
            return map;
        } catch (Exception e2) {
            t.c(f22876c, "Unexpected error while extracting flat rules", e2);
            throw e2;
        }
    }

    public List<c> b(b bVar, Point point) {
        ArrayList arrayList = new ArrayList(a(bVar, this.f22877a));
        for (f fVar : this.f22878b) {
            if (a(fVar.f22879a, point)) {
                arrayList.addAll(a(bVar, fVar.f22880b));
            }
        }
        return arrayList;
    }

    public Map<String, String> a(b bVar, Point point) {
        return a(b(bVar, point));
    }

    private List<c> a(b bVar, List<h> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (h hVar : list) {
                if (Browse.CAPS_WILDCARD.equals(hVar.f22902a)) {
                    for (c cVar : hVar.f22903b) {
                        if (cVar instanceof i) {
                            arrayList.add(cVar);
                        }
                    }
                } else if (bVar.a(hVar.f22902a)) {
                    arrayList.addAll(hVar.f22903b);
                }
            }
        }
        return arrayList;
    }

    private boolean a(String str, Point point) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (point != null) {
            Matcher matcher = d.matcher(str);
            if (matcher.matches()) {
                try {
                    return a(point, matcher.group(1), matcher.group(2), matcher.group(3), Integer.parseInt(matcher.group(4)));
                } catch (NumberFormatException e2) {
                    t.c(f22876c, "Error while parsing a media query size rule", e2);
                    return false;
                }
            }
        }
        if (str.startsWith("@android")) {
            if (str.length() == 8) {
                return true;
            }
            if (str.length() > 9) {
                try {
                    if (Build.VERSION.SDK_INT >= Integer.parseInt(str.substring(9, str.length()))) {
                        return true;
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        return false;
    }

    private boolean a(Point point, String str, String str2, String str3, int i2) {
        int i3;
        if (point == null || str == null || str2 == null || str3 == null || "ios".equals(str)) {
            return false;
        }
        if ("height".equals(str3)) {
            i3 = point.y;
        } else {
            i3 = point.x;
        }
        if ("max".equals(str2)) {
            return i3 <= i2;
        }
        return i3 >= i2;
    }
}
