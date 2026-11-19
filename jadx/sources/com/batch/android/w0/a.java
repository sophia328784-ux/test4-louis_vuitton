package com.batch.android.w0;

import com.batch.android.x0.b;
import com.batch.android.z0.x;
import java.math.BigInteger;
import java.net.URI;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    public static void a(b bVar, Object obj) throws Exception {
        if (obj == null) {
            bVar.d();
            return;
        }
        if (obj instanceof Byte) {
            bVar.a(((Byte) obj).byteValue());
            return;
        }
        if (obj instanceof Short) {
            bVar.a(((Short) obj).shortValue());
            return;
        }
        if (obj instanceof Integer) {
            bVar.f(((Integer) obj).intValue());
            return;
        }
        if (obj instanceof Long) {
            bVar.a(((Long) obj).longValue());
            return;
        }
        if (obj instanceof BigInteger) {
            bVar.a((BigInteger) obj);
            return;
        }
        if (obj instanceof Float) {
            bVar.a(((Float) obj).floatValue());
            return;
        }
        if (obj instanceof Double) {
            bVar.a(((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Boolean) {
            bVar.a(((Boolean) obj).booleanValue());
            return;
        }
        if (obj instanceof String) {
            bVar.a((String) obj);
            return;
        }
        if (obj instanceof URI) {
            bVar.a(obj.toString());
            return;
        }
        if (obj instanceof x) {
            ((x) obj).a(bVar);
        } else if (obj instanceof Map) {
            a(bVar, (Map<Object, Object>) obj);
        } else {
            if (!(obj instanceof List)) {
                throw new Exception("Object type cannot be serialize");
            }
            a(bVar, (List<Object>) obj);
        }
    }

    public static void a(b bVar, Map<Object, Object> map) throws Exception {
        bVar.g(map.size());
        for (Map.Entry<Object, Object> entry : map.entrySet()) {
            a(bVar, entry.getKey());
            a(bVar, entry.getValue());
        }
    }

    public static void a(b bVar, List<Object> list) throws Exception {
        bVar.d(list.size());
        Iterator<Object> it = list.iterator();
        while (it.hasNext()) {
            a(bVar, it.next());
        }
    }
}
