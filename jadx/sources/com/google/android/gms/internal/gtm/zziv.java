package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.md;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zziv {
    public static zzdh a(Object obj) throws JSONException {
        String string;
        JSONArray jSONArray;
        JSONArray jSONArray2;
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            string = jSONObject.getString("name");
            jSONArray2 = jSONObject.getJSONArray("params");
            jSONArray = jSONObject.getJSONArray("instructions");
        } else {
            if (!(obj instanceof JSONArray)) {
                md.n("invalid JSON in runtime section");
                return null;
            }
            JSONArray jSONArray3 = (JSONArray) obj;
            Preconditions.a(jSONArray3.length() >= 3);
            string = jSONArray3.getString(1);
            JSONArray jSONArray4 = jSONArray3.getJSONArray(2);
            JSONArray jSONArray5 = new JSONArray();
            for (int i2 = 1; i2 < jSONArray4.length(); i2++) {
                Preconditions.a(jSONArray4.get(i2) instanceof String);
                jSONArray5.put(jSONArray4.get(i2));
            }
            JSONArray jSONArray6 = new JSONArray();
            for (int i3 = 3; i3 < jSONArray3.length(); i3++) {
                jSONArray6.put(jSONArray3.get(i3));
            }
            jSONArray = jSONArray6;
            jSONArray2 = jSONArray5;
        }
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < jSONArray2.length(); i4++) {
            arrayList.add(jSONArray2.getString(i4));
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i5 = 0; i5 < jSONArray.length(); i5++) {
            JSONArray jSONArray7 = jSONArray.getJSONArray(i5);
            if (jSONArray7.length() != 0) {
                arrayList2.add(e(jSONArray7));
            }
        }
        return new zzdh(null, string, arrayList, arrayList2);
    }

    public static zzka b(JSONArray jSONArray, ArrayList arrayList, ArrayList arrayList2) throws zziu, JSONException {
        zzjy zzjyVar = new zzjy();
        int i2 = 0;
        while (true) {
            int length = jSONArray.length();
            ArrayList arrayList3 = zzjyVar.d;
            ArrayList arrayList4 = zzjyVar.f30150c;
            ArrayList arrayList5 = zzjyVar.f30149b;
            ArrayList arrayList6 = zzjyVar.f30148a;
            if (i2 >= length) {
                return new zzka(arrayList6, arrayList5, arrayList4, arrayList3);
            }
            JSONArray jSONArray2 = jSONArray.getJSONArray(i2);
            int i3 = 1;
            if (jSONArray2.getString(0).equals("if")) {
                while (i3 < jSONArray2.length()) {
                    arrayList6.add((zzjx) arrayList2.get(jSONArray2.getInt(i3)));
                    i3++;
                }
            } else if (jSONArray2.getString(0).equals("unless")) {
                while (i3 < jSONArray2.length()) {
                    arrayList5.add((zzjx) arrayList2.get(jSONArray2.getInt(i3)));
                    i3++;
                }
            } else if (jSONArray2.getString(0).equals("add")) {
                while (i3 < jSONArray2.length()) {
                    arrayList4.add((zzjx) arrayList.get(jSONArray2.getInt(i3)));
                    i3++;
                }
            } else {
                if (!jSONArray2.getString(0).equals("block")) {
                    String strConcat = "Unknown Rule property: ".concat(String.valueOf(jSONArray2.getString(0)));
                    zzbg.a();
                    throw new zziu(strConcat);
                }
                while (i3 < jSONArray2.length()) {
                    arrayList3.add((zzjx) arrayList.get(jSONArray2.getInt(i3)));
                    i3++;
                }
            }
            i2++;
        }
    }

    public static zzke c(Object obj, ArrayList arrayList) throws zziu, JSONException {
        int i2 = 1;
        if (!(obj instanceof JSONArray)) {
            if (obj instanceof Boolean) {
                return new zzke(8, obj);
            }
            if (obj instanceof Integer) {
                return new zzke(6, obj);
            }
            if (obj instanceof String) {
                return new zzke(1, obj);
            }
            String strConcat = "Invalid value type: ".concat(String.valueOf(obj));
            zzbg.a();
            throw new zziu(strConcat);
        }
        JSONArray jSONArray = (JSONArray) obj;
        String string = jSONArray.getString(0);
        if (string.equals("escape")) {
            zzke zzkeVarC = c(jSONArray.get(1), arrayList);
            for (int i3 = 2; i3 < jSONArray.length(); i3++) {
                zzkeVarC.f30158c.add(Integer.valueOf(jSONArray.getInt(i3)));
            }
            return zzkeVarC;
        }
        if (string.equals("list")) {
            ArrayList arrayList2 = new ArrayList();
            while (i2 < jSONArray.length()) {
                arrayList2.add(c(jSONArray.get(i2), arrayList).a());
                i2++;
            }
            return new zzke(2, arrayList2);
        }
        if (string.equals("map")) {
            HashMap map = new HashMap();
            while (i2 < jSONArray.length()) {
                map.put(c(jSONArray.get(i2), arrayList).a(), c(jSONArray.get(i2 + 1), arrayList).a());
                i2 += 2;
            }
            return new zzke(3, map);
        }
        if (string.equals("macro")) {
            return new zzke(4, arrayList.get(jSONArray.getInt(1)));
        }
        if (!string.equals("template")) {
            String strConcat2 = "Invalid value type: ".concat(String.valueOf(obj));
            zzbg.a();
            throw new zziu(strConcat2);
        }
        ArrayList arrayList3 = new ArrayList();
        while (i2 < jSONArray.length()) {
            arrayList3.add(c(jSONArray.get(i2), arrayList).a());
            i2++;
        }
        return new zzke(7, arrayList3);
    }

    public static ArrayList d(JSONArray jSONArray, ArrayList arrayList) throws JSONException {
        HashMap map;
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i2);
            zzjv zzjvVar = new zzjv();
            Iterator<String> itKeys = jSONObject.keys();
            while (true) {
                boolean zHasNext = itKeys.hasNext();
                map = zzjvVar.f30144a;
                if (zHasNext) {
                    String next = itKeys.next();
                    zzkg zzkgVarA = c(jSONObject.get(next), arrayList).a();
                    if ("push_after_evaluate".equals(next)) {
                        zzjvVar.f30145b = zzkgVarA;
                    } else {
                        map.put(next, zzkgVarA);
                    }
                }
            }
            arrayList2.add(new zzjx(map, zzjvVar.f30145b));
        }
        return arrayList2;
    }

    public static zzkt e(JSONArray jSONArray) throws JSONException {
        Preconditions.a(jSONArray.length() > 0);
        String string = jSONArray.getString(0);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 1; i2 < jSONArray.length(); i2++) {
            Object obj = jSONArray.get(i2);
            if (obj instanceof JSONArray) {
                JSONArray jSONArray2 = (JSONArray) obj;
                if (jSONArray2.length() != 0) {
                    arrayList.add(e(jSONArray2));
                }
            } else if (obj == JSONObject.NULL) {
                arrayList.add(zzko.g);
            } else {
                arrayList.add(zzkw.b(obj));
            }
        }
        return new zzkt(string, arrayList);
    }
}
