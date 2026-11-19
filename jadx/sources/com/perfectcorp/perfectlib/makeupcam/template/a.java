package com.perfectcorp.perfectlib.makeupcam.template;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
final class a extends HashMap<String, String> {
    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* synthetic */ Object put(Object obj, Object obj2) {
        String str = (String) obj;
        String str2 = (String) obj2;
        return (String) (TextUtils.isEmpty(str2) ? remove(str) : super.put(str, str2));
    }
}
