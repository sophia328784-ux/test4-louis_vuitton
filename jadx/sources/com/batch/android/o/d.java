package com.batch.android.o;

import com.batch.android.BatchEventAttributes;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f23836a = 200;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f23837b = 64;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f23838c = 10;
    private static final int d = 20;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f23839e = 2048;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f23840f = 200;
    private static final int g = 25;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Pattern f23841h = Pattern.compile("^[a-zA-Z0-9_]{1,30}$");

    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f23842a;

        static {
            int[] iArr = new int[com.batch.android.l1.a.values().length];
            f23842a = iArr;
            try {
                iArr[com.batch.android.l1.a.URL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23842a[com.batch.android.l1.a.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23842a[com.batch.android.l1.a.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f23842a[com.batch.android.l1.a.LONG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f23842a[com.batch.android.l1.a.BOOL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f23842a[com.batch.android.l1.a.DATE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f23842a[com.batch.android.l1.a.OBJECT_ARRAY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f23842a[com.batch.android.l1.a.STRING_ARRAY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f23842a[com.batch.android.l1.a.OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f23844a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final b f23845b;

        public c(String str, b bVar) {
            this.f23844a = str;
            this.f23845b = bVar;
        }

        public String a() {
            String strJoin = String.join(FileUtils.HIDDEN_PREFIX, this.f23845b.b());
            if (strJoin.isEmpty()) {
                strJoin = "<attributes root>";
            }
            StringBuilder sbU = n00.u(strJoin, ": ");
            sbU.append(this.f23844a);
            return sbU.toString();
        }
    }

    private static List<c> a(BatchEventAttributes batchEventAttributes, b bVar) {
        int iA = bVar.a();
        if (iA > 3) {
            return Collections.singletonList(new c("Object attributes cannot be nested in more than three levels", bVar));
        }
        if (batchEventAttributes.getAttributes().isEmpty() && batchEventAttributes.getLabel() == null && batchEventAttributes.getTags() == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        if (iA > 0) {
            if (batchEventAttributes.getLabel() != null) {
                arrayList.add(new c("Labels are not allowed in sub-objects", bVar.a(BatchEventAttributes.LABEL_KEY)));
            }
            if (batchEventAttributes.getTags() != null) {
                arrayList.add(new c("Tags are not allowed in sub-objects", bVar.a(BatchEventAttributes.TAGS_KEY)));
            }
        } else {
            if (batchEventAttributes.getLabel() != null) {
                a(b(batchEventAttributes.getLabel()), bVar.a(BatchEventAttributes.LABEL_KEY), arrayList);
            }
            if (batchEventAttributes.getTags() != null) {
                a(d(new ArrayList(batchEventAttributes.getTags()), bVar.a(BatchEventAttributes.TAGS_KEY)), arrayList);
            }
        }
        Map<String, f> attributes = batchEventAttributes.getAttributes();
        if (attributes.size() > 20) {
            arrayList.add(new c("objects cannot hold more than 20 attributes", bVar));
        }
        for (Map.Entry<String, f> entry : attributes.entrySet()) {
            String key = entry.getKey();
            f value = entry.getValue();
            c cVarA = a(key, bVar);
            if (cVarA != null) {
                arrayList.add(cVarA);
            } else {
                a(a(value, bVar.a(key)), arrayList);
            }
        }
        return arrayList;
    }

    private static c b(String str, b bVar) {
        if (str.trim().isEmpty()) {
            return new c("string attribute cannot be empty or made of whitespace", bVar);
        }
        if (str.length() > 200) {
            return new c("string attribute cannot be longer than 200 characters", bVar);
        }
        if (str.contains("\n")) {
            return new c("string attribute cannot be multiline", bVar);
        }
        return null;
    }

    private static String c(String str) {
        if (str.trim().isEmpty()) {
            return "tag cannot be empty or made of whitespace";
        }
        if (str.length() > 64) {
            return "tag cannot be longer than 64";
        }
        if (str.contains("\n")) {
            return "tag cannot be multiline";
        }
        return null;
    }

    private static List<c> d(List<String> list, b bVar) {
        ArrayList arrayList = new ArrayList();
        if (list.size() > 10) {
            arrayList.add(new c("must not contain more than 10 values", bVar));
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            String strC = c(list.get(i2));
            if (strC != null) {
                arrayList.add(new c(strC, bVar.a(i2)));
            }
        }
        return arrayList;
    }

    private static List<c> c(List<String> list, b bVar) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            a(b(list.get(i2), bVar.a(i2)), arrayList);
        }
        return arrayList;
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<String> f23843a;

        public b(List<String> list) {
            this.f23843a = list;
        }

        public b a(int i2) {
            ArrayList arrayList = new ArrayList(this.f23843a);
            arrayList.set(arrayList.size() - 1, ((String) cj.c(1, arrayList)) + "[" + i2 + "]");
            return new b(arrayList);
        }

        public List<String> b() {
            return this.f23843a;
        }

        public b a(String str) {
            ArrayList arrayList = new ArrayList(this.f23843a);
            arrayList.add(str);
            return new b(arrayList);
        }

        public int a() {
            return this.f23843a.size();
        }
    }

    private static List<c> b(List<BatchEventAttributes> list, b bVar) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            a(a(list.get(i2), bVar.a(i2)), arrayList);
        }
        return arrayList;
    }

    private static List<String> b(String str) {
        ArrayList arrayList = new ArrayList();
        if (str.length() > 200) {
            arrayList.add("cannot be longer than 200 characters");
        }
        if (str.trim().isEmpty()) {
            arrayList.add("cannot be empty or only made of whitespace");
        }
        if (str.contains("\n")) {
            arrayList.add("cannot be multiline");
        }
        return arrayList;
    }

    public static List<String> a(BatchEventAttributes batchEventAttributes) {
        ArrayList arrayList = new ArrayList();
        Iterator<c> it = a(batchEventAttributes, new b(new ArrayList())).iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().a());
        }
        return arrayList;
    }

    public static boolean a(String str) {
        return f23841h.matcher(str).matches();
    }

    private static c a(String str, b bVar) {
        String strH = fc.h("invalid attribute name '", str, "':");
        if (!str.equals(str.toLowerCase())) {
            return new c(strH.concat(" object has been tampered with"), bVar);
        }
        if (f23841h.matcher(str).matches()) {
            return null;
        }
        return new c(strH.concat(" please make sure that the key is made of letters, underscores and numbers only (a-zA-Z0-9_). It also can't be longer than 30 characters"), bVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static List<c> a(f fVar, b bVar) {
        ArrayList arrayList = new ArrayList();
        c cVar = new c("attribute is not of the right underlying type. this is an internal error and should be reported", bVar);
        switch (a.f23842a[fVar.f23853b.ordinal()]) {
            case 1:
                Object obj = fVar.f23852a;
                if (obj instanceof URI) {
                    a(a((URI) obj, bVar), arrayList);
                    return arrayList;
                }
                arrayList.add(cVar);
                return arrayList;
            case 2:
                Object obj2 = fVar.f23852a;
                if (obj2 instanceof String) {
                    a(b((String) obj2, bVar), arrayList);
                    return arrayList;
                }
                arrayList.add(cVar);
                return arrayList;
            case 3:
            case 4:
                if (!(fVar.f23852a instanceof Number)) {
                    arrayList.add(cVar);
                }
                return arrayList;
            case 5:
                if (!(fVar.f23852a instanceof Boolean)) {
                    arrayList.add(cVar);
                    return arrayList;
                }
                return arrayList;
            case 6:
                if (!(fVar.f23852a instanceof Long)) {
                    arrayList.add(cVar);
                    return arrayList;
                }
                return arrayList;
            case 7:
            case 8:
                Object obj3 = fVar.f23852a;
                if (obj3 instanceof List) {
                    List list = (List) obj3;
                    c cVarA = a((List<?>) list, bVar);
                    if (cVarA != null) {
                        arrayList.add(cVarA);
                        return arrayList;
                    }
                    com.batch.android.l1.a aVar = fVar.f23853b;
                    if (aVar == com.batch.android.l1.a.OBJECT_ARRAY) {
                        try {
                            a(b((List<BatchEventAttributes>) list, bVar), arrayList);
                            return arrayList;
                        } catch (ClassCastException unused) {
                            arrayList.add(cVar);
                        }
                    } else if (aVar == com.batch.android.l1.a.STRING_ARRAY) {
                        try {
                            a(c(list, bVar), arrayList);
                            return arrayList;
                        } catch (ClassCastException unused2) {
                            arrayList.add(cVar);
                        }
                    }
                    return arrayList;
                }
                arrayList.add(cVar);
                return arrayList;
            case 9:
                Object obj4 = fVar.f23852a;
                if (obj4 instanceof BatchEventAttributes) {
                    a(a((BatchEventAttributes) obj4, bVar), arrayList);
                    return arrayList;
                }
                arrayList.add(cVar);
                return arrayList;
            default:
                return arrayList;
        }
    }

    private static c a(List<?> list, b bVar) {
        if (bVar.a() > 3) {
            return new c("array attributes cannot be nested in more than three levels", bVar);
        }
        if (list.size() > 25) {
            return new c("array attributes cannot have more than 25 elements", bVar);
        }
        return null;
    }

    private static c a(URI uri, b bVar) {
        if (uri.toString().length() > 2048) {
            return new c("URL attributes cannot be longer than 2048 characters", bVar);
        }
        if (uri.getScheme() == null || uri.getAuthority() == null) {
            return new c("URL attributes must follow the format 'scheme://[authority][path][?query][#fragment]'", bVar);
        }
        return null;
    }

    private static void a(List<String> list, b bVar, List<c> list2) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            list2.add(new c(it.next(), bVar));
        }
    }

    private static void a(c cVar, List<c> list) {
        if (cVar != null) {
            list.add(cVar);
        }
    }

    private static void a(List<c> list, List<c> list2) {
        list2.addAll(list);
    }
}
