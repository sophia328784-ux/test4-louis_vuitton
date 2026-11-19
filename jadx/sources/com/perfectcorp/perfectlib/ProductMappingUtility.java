package com.perfectcorp.perfectlib;

import android.database.Cursor;
import android.text.TextUtils;
import android.util.Pair;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ph.database.mcsdk.IdRow;
import com.perfectcorp.perfectlib.ph.database.mcsdk.ProductMappingDatabase;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import defpackage.bq0;
import defpackage.d21;
import defpackage.d8;
import defpackage.ho0;
import defpackage.no0;
import defpackage.o7;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
abstract class ProductMappingUtility {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d8 f39805a = new d8(17);

    public interface SkuToProductMapperInterface {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AnonymousClass1 f39807a = new AnonymousClass1();

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ProductMappingUtility$SkuToProductMapperInterface$1, reason: invalid class name */
        class AnonymousClass1 implements SkuToProductMapperInterface {
            @Override // com.perfectcorp.perfectlib.ProductMappingUtility.SkuToProductMapperInterface
            public final String a(String str) {
                return str;
            }

            @Override // com.perfectcorp.perfectlib.ProductMappingUtility.SkuToProductMapperInterface
            public final String a(String str, String str2) {
                return str2;
            }
        }

        String a(String str);

        String a(String str, String str2);
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k a(Iterable iterable) {
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k(Observable.fromIterable(iterable).flatMapSingle(new no0(6)).toList().f(f39805a));
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p b(String str, String str2) {
        Callable bq0Var;
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            bq0Var = new bq0(str2, false, 0);
        } else {
            bq0Var = TextUtils.isEmpty(str2) ? new bq0(str, false, 1) : new ho0(str, str2, z, 1);
        }
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(bq0Var);
    }

    public static List c(List list) {
        Threads.b();
        bz bzVar = ImmutableList.f42200c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            EffectId effectId = (EffectId) it.next();
            PerfectEffect perfectEffect = effectId.f39555a;
            if (perfectEffect.beautyMode == BeautyMode.SKIN_SMOOTHER || com.perfectcorp.perfectlib.ph.unit.sku.a.f(effectId.f39556b)) {
                builder.f(effectId);
            } else {
                try {
                    IdRow idRow = (IdRow) new o7(effectId.f39557c, effectId.d, 7).call();
                    EffectId.Builder builderA = EffectId.a(effectId);
                    builderA.f39568c = EffectId.c(idRow.f41149c);
                    builderA.d = EffectId.c(idRow.f41150e);
                    builder.f(builderA.a());
                } catch (Throwable th) {
                    Log.e("ProductMappingUtility", "perfectEffect=" + perfectEffect, th);
                }
            }
        }
        return builder.i();
    }

    public static class SkuToProductMapper implements SkuToProductMapperInterface {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HashMap f39806b;

        /* JADX WARN: Code duplicated, block: B:29:0x007d  */
        /* JADX WARN: Code duplicated, block: B:42:0x0099 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:43:0x0091 A[SYNTHETIC] */
        public SkuToProductMapper(SkuBeautyMode$FeatureType skuBeautyMode$FeatureType) {
            List<IdRow> listI;
            HashMap map;
            String str;
            String str2;
            Pair pair;
            Threads.b();
            ProductMappingDatabase productMappingDatabaseH = ProductMappingDatabase.h();
            String string = skuBeautyMode$FeatureType.toString();
            productMappingDatabaseH.getClass();
            Objects.requireNonNull(string, "type can't be null");
            try {
                Cursor cursorQuery = productMappingDatabaseH.getReadableDatabase().query("ProductMapping", null, "type=?", new String[]{string}, null, null, null, null);
                try {
                    if (cursorQuery.moveToFirst()) {
                        ImmutableList.Builder builder = new ImmutableList.Builder();
                        do {
                            builder.f(ProductMappingDatabase.c(cursorQuery));
                        } while (cursorQuery.moveToNext());
                        listI = builder.i();
                        cursorQuery.close();
                    } else {
                        listI = Collections.EMPTY_LIST;
                        cursorQuery.close();
                    }
                } catch (Throwable th) {
                    if (cursorQuery == null) {
                        throw th;
                    }
                    try {
                        cursorQuery.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                    map = new HashMap();
                    for (IdRow idRow : listI) {
                        String str3 = idRow.f41148b;
                        str = idRow.f41150e;
                        str2 = idRow.d;
                        pair = (Pair) map.get(str3);
                        if (pair != null) {
                            ((Map) pair.second).put(str2, str);
                        } else {
                            HashMap map2 = new HashMap();
                            map2.put(str2, str);
                            map.put(idRow.f41148b, new Pair(idRow.f41149c, map2));
                        }
                    }
                    this.f39806b = map;
                }
            } catch (Throwable th3) {
                Log.e("ProductMappingDatabase", "get type=".concat(string), th3);
                listI = Collections.EMPTY_LIST;
            }
            map = new HashMap();
            while (r0.hasNext()) {
                String str4 = idRow.f41148b;
                str = idRow.f41150e;
                str2 = idRow.d;
                pair = (Pair) map.get(str4);
                if (pair != null) {
                    ((Map) pair.second).put(str2, str);
                } else {
                    HashMap map3 = new HashMap();
                    map3.put(str2, str);
                    map.put(idRow.f41148b, new Pair(idRow.f41149c, map3));
                }
            }
            this.f39806b = map;
        }

        @Override // com.perfectcorp.perfectlib.ProductMappingUtility.SkuToProductMapperInterface
        public final String a(String str, String str2) {
            Object obj;
            Pair pair = (Pair) this.f39806b.get(str);
            if (pair != null && !TextUtils.isEmpty((CharSequence) pair.first) && (obj = pair.second) != null && !((Map) obj).isEmpty()) {
                String str3 = (String) ((Map) pair.second).get(str2);
                if (!TextUtils.isEmpty(str3)) {
                    return str3;
                }
                Log.g(5, "ProductMappingUtility", d21.l("can not get productId by skuGuid=", str, " and skuItemGuid=", str2, ", continue to check SkuAndShadeIdMapping."));
                return a.a(str2);
            }
            Log.g(5, "ProductMappingUtility", "can not get shadetId by skuGuid=" + str + ", continue to check SkuAndShadeIdMapping.");
            if (!TextUtils.isEmpty(str2)) {
                return a.a(str2);
            }
            com.perfectcorp.perfectlib.ph.database.mcsdk.a aVarH = com.perfectcorp.perfectlib.ph.database.mcsdk.a.h();
            aVarH.getClass();
            Objects.requireNonNull(str, "skuGuid can't be null");
            Optional optionalJ = aVarH.j("skuGuid=?", new String[]{str});
            if (optionalJ.d() && IdRow.f41146f != optionalJ.c() && !TextUtils.isEmpty(((IdRow) optionalJ.c()).f41150e)) {
                return ((IdRow) optionalJ.c()).f41150e;
            }
            Log.d("SkuAndShadeIdMappingUtility", "can not get shadetId by skuGuid=" + str + " from SkuAndShadeIdMapping.");
            return EffectId.INVALID_ID;
        }

        @Override // com.perfectcorp.perfectlib.ProductMappingUtility.SkuToProductMapperInterface
        public final String a(String str) {
            Pair pair = (Pair) this.f39806b.get(str);
            if (pair != null && !TextUtils.isEmpty((CharSequence) pair.first)) {
                return (String) pair.first;
            }
            Log.g(5, "ProductMappingUtility", "can not get productId by skuGuid=" + str + ", continue to check SkuAndShadeIdMapping.");
            com.perfectcorp.perfectlib.ph.database.mcsdk.a aVarH = com.perfectcorp.perfectlib.ph.database.mcsdk.a.h();
            aVarH.getClass();
            Objects.requireNonNull(str, "skuGuid can't be null");
            Optional optionalJ = aVarH.j("skuGuid=?", new String[]{str});
            if (optionalJ.d() && IdRow.f41146f != optionalJ.c() && !TextUtils.isEmpty(((IdRow) optionalJ.c()).f41149c)) {
                return ((IdRow) optionalJ.c()).f41149c;
            }
            Log.d("SkuAndShadeIdMappingUtility", "can not get productId by skuGuid=" + str + " from SkuAndShadeIdMapping.");
            return EffectId.INVALID_ID;
        }
    }
}
