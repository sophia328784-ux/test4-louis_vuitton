package com.batch.android.a0;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f22871a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f22872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<String> f22873c;

    public b(String str, String... strArr) {
        this.f22872b = str;
        ArrayList arrayList = new ArrayList();
        this.f22873c = arrayList;
        if (strArr != null) {
            Collections.addAll(arrayList, strArr);
        }
    }

    public boolean a(String str) {
        List<String> list;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        for (String str2 : str.split(",")) {
            String lowerCase = str2.trim().toLowerCase(Locale.US);
            if (lowerCase.length() >= 2) {
                String strSubstring = lowerCase.substring(1);
                if (lowerCase.charAt(0) == '#') {
                    if (strSubstring.equalsIgnoreCase(this.f22872b)) {
                        return true;
                    }
                } else if (lowerCase.charAt(0) == '.' && (list = this.f22873c) != null) {
                    Iterator<String> it = list.iterator();
                    while (it.hasNext()) {
                        if (strSubstring.equalsIgnoreCase(it.next())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public b() {
        this.f22873c = new ArrayList();
    }
}
