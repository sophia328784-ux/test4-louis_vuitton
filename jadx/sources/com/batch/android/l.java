package com.batch.android;

import android.content.Context;
import android.os.Handler;
import com.batch.android.e.t;
import com.batch.android.n.a0;
import defpackage.j91;
import defpackage.md;
import defpackage.oq0;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class l {

    /* JADX INFO: loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f23613a;

        static {
            int[] iArr = new int[com.batch.android.l1.a.values().length];
            f23613a = iArr;
            try {
                iArr[com.batch.android.l1.a.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23613a[com.batch.android.l1.a.DATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23613a[com.batch.android.l1.a.LONG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f23613a[com.batch.android.l1.a.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f23613a[com.batch.android.l1.a.STRING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f23613a[com.batch.android.l1.a.URL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:22:0x0071  */
    /* JADX WARN: Code duplicated, block: B:24:0x0083 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x0085 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0087  */
    /* JADX WARN: Code duplicated, block: B:28:0x008b  */
    /* JADX WARN: Code duplicated, block: B:40:? A[RETURN, SYNTHETIC] */
    public static /* synthetic */ void a(Context context, boolean z, BatchAttributesFetchListener batchAttributesFetchListener) {
        HashMap map;
        BatchUserAttribute.Type type;
        com.batch.android.l1.c cVarA = a0.a(context);
        int i2 = 2;
        if (cVarA != null) {
            HashMap<String, com.batch.android.l1.d> attributes = cVarA.getAttributes();
            if (attributes != null) {
                map = new HashMap();
                for (Map.Entry<String, com.batch.android.l1.d> entry : attributes.entrySet()) {
                    switch (a.f23613a[entry.getValue().f23673b.ordinal()]) {
                        case 1:
                            type = BatchUserAttribute.Type.BOOL;
                            break;
                        case 2:
                            type = BatchUserAttribute.Type.DATE;
                            break;
                        case 3:
                            type = BatchUserAttribute.Type.LONGLONG;
                            break;
                        case 4:
                            type = BatchUserAttribute.Type.DOUBLE;
                            break;
                        case 5:
                            type = BatchUserAttribute.Type.STRING;
                            break;
                        case 6:
                            type = BatchUserAttribute.Type.URL;
                            break;
                        default:
                            continue;
                    }
                    map.put(entry.getKey().substring(2), new BatchUserAttribute(entry.getValue().f23672a, type));
                }
            }
            if (z) {
                new Handler(context.getMainLooper()).post(new j91(batchAttributesFetchListener, map, i2));
            } else if (batchAttributesFetchListener != null) {
                if (map != null) {
                    batchAttributesFetchListener.onSuccess(map);
                } else {
                    batchAttributesFetchListener.onError();
                }
            }
        }
        t.a(com.batch.android.v0.l.f24144f, "Datasource error.");
        map = null;
        if (z) {
            new Handler(context.getMainLooper()).post(new j91(batchAttributesFetchListener, map, i2));
        } else if (batchAttributesFetchListener != null) {
            if (map != null) {
                batchAttributesFetchListener.onSuccess(map);
            } else {
                batchAttributesFetchListener.onError();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Context context, boolean z, BatchTagCollectionsFetchListener batchTagCollectionsFetchListener) {
        Map<String, Set<String>> mapC;
        com.batch.android.l1.c cVarA = a0.a(context);
        if (cVarA == null) {
            t.a(com.batch.android.v0.l.f24144f, "Datasource error.");
            mapC = null;
        } else {
            mapC = cVarA.c();
        }
        if (z) {
            new Handler(context.getMainLooper()).post(new j91(batchTagCollectionsFetchListener, mapC, 3));
        } else if (batchTagCollectionsFetchListener != null) {
            if (mapC == null) {
                batchTagCollectionsFetchListener.onError();
            } else {
                batchTagCollectionsFetchListener.onSuccess(mapC);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(BatchTagCollectionsFetchListener batchTagCollectionsFetchListener, Map map) {
        if (batchTagCollectionsFetchListener != null) {
            if (map == null) {
                batchTagCollectionsFetchListener.onError();
            } else {
                batchTagCollectionsFetchListener.onSuccess(map);
            }
        }
    }

    public static void a(Context context, BatchAttributesFetchListener batchAttributesFetchListener, boolean z) {
        if (context != null) {
            oq0 oq0Var = new oq0(context, z, batchAttributesFetchListener, 1);
            if (z) {
                com.batch.android.v0.l.a(0L, oq0Var);
                return;
            } else {
                oq0Var.run();
                return;
            }
        }
        md.n("Context can't be null");
    }

    public static void a(Context context, BatchTagCollectionsFetchListener batchTagCollectionsFetchListener, boolean z) {
        if (context != null) {
            oq0 oq0Var = new oq0(context, z, batchTagCollectionsFetchListener, 2);
            if (z) {
                com.batch.android.v0.l.a(0L, oq0Var);
                return;
            } else {
                oq0Var.run();
                return;
            }
        }
        md.n("Context can't be null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(BatchAttributesFetchListener batchAttributesFetchListener, HashMap map) {
        if (batchAttributesFetchListener != null) {
            if (map != null) {
                batchAttributesFetchListener.onSuccess(map);
            } else {
                batchAttributesFetchListener.onError();
            }
        }
    }
}
