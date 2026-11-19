package com.perfectcorp.perfectlib.hc.kernelctrl.networktaskmanager.requests;

import com.perfectcorp.common.utility.MoreCollections;
import defpackage.md;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public abstract class RequestUrlHelper {
    public static String a(Collection collection) {
        if (MoreCollections.a(collection)) {
            md.n("collection is empty!");
            return null;
        }
        Iterator it = collection.iterator();
        StringBuilder sb = new StringBuilder();
        while (true) {
            sb.append((String) it.next());
            if (!it.hasNext()) {
                return sb.toString();
            }
            sb.append(",");
        }
    }
}
