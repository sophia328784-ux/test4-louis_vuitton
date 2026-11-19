package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Pair;
import com.linkplay.medialib.ContentTree;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.EffectId;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.LookInfo;
import com.perfectcorp.perfectlib.ProductInfo;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.SkuInfo;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.database.mcsdk.IdRow;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.b;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDao;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.e;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.g;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.i;
import com.perfectcorp.perfectlib.ph.template.SkuTemplateUtils;
import com.perfectcorp.perfectlib.ph.unit.sku.a;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import java.util.AbstractSet;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class p7 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f78777c;
    public final /* synthetic */ Object d;

    public /* synthetic */ p7(boolean z, Sku sku) {
        this.f78776b = 0;
        this.f78777c = z;
        this.d = sku;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        ProductInfo productInfoL;
        String str;
        int i2 = this.f78776b;
        boolean z = true;
        boolean z2 = this.f78777c;
        Object obj2 = this.d;
        switch (i2) {
            case 0:
                Sku sku = (Sku) obj2;
                String str2 = sku.f41266f;
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                if (z2) {
                    SingleSource singleSourceCollectInto = ApplyEffectUtility.B(0, Collections.singleton(str2)).collectInto(new ConcurrentHashMap(), new v7(1));
                    t7 t7Var = new t7(str2, 1);
                    singleSourceCollectInto.getClass();
                    return new t(singleSourceCollectInto, t7Var);
                }
                if (sku.f41263b.equals(SkuBeautyMode$FeatureType.BACKGROUND.toString())) {
                    Single singleCollectInto = ApplyEffectUtility.g(Collections.singleton(str2)).collectInto(new ConcurrentHashMap(), new v7(6));
                    t7 t7Var2 = new t7(str2, 2);
                    singleCollectInto.getClass();
                    return new t(singleCollectInto, t7Var2);
                }
                SingleSource singleSourceCollectInto2 = ApplyEffectUtility.B(0, Collections.singleton(str2)).collectInto(new ConcurrentHashMap(), new v7(5));
                t7 t7Var3 = new t7(str2, 3);
                singleSourceCollectInto2.getClass();
                return new t(singleSourceCollectInto2, t7Var3);
            case 1:
                LookHandler lookHandler = (LookHandler) obj2;
                b bVar = (b) obj;
                ConcurrentHashMap concurrentHashMap = lookHandler.f39666c;
                String str3 = bVar.d;
                String str4 = bVar.q;
                Optional optionalF = ApplyEffectUtility.F(str3);
                if (optionalF.d()) {
                    if (z2 && !TextUtils.isEmpty(str4)) {
                        str3 = str4;
                    }
                    concurrentHashMap.put(str3, (YMKPrimitiveData.Look) optionalF.c());
                }
                return new LookInfo(concurrentHashMap, bVar, (YMKPrimitiveData.Look) optionalF.g(), lookHandler.f39665b);
            case 2:
                SkuHandler skuHandler = (SkuHandler) obj2;
                Pair pair = (Pair) obj;
                Optional optionalA = SkuDao.a(YMKDatabase.b(), (String) pair.second, false);
                if (optionalA.d()) {
                    z = false;
                } else {
                    optionalA = i.a(YMKDatabase.b(), (String) pair.second);
                }
                if (optionalA.d()) {
                    Sku sku2 = (Sku) optionalA.c();
                    BeautyMode beautyModeC = SkuTemplateUtils.c(sku2.f41263b);
                    String str5 = (String) pair.first;
                    if (z) {
                        ProductInfo productInfo = new ProductInfo(beautyModeC, str5, sku2, skuHandler.f39935b);
                        bz bzVar = ImmutableList.f42200c;
                        ImmutableList.Builder builder = new ImmutableList.Builder();
                        String str6 = productInfo.f39799e;
                        AbstractSet abstractSetM = SkuHandler.m(str6);
                        SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
                        Threads.b();
                        for (e eVar : g.c(sQLiteDatabaseC, Contract.SkuItemOnly.f40245a, "skuGuid=? AND isDeleted=?", new String[]{str6, ContentTree.ROOT_ID})) {
                            String str7 = eVar.f41292a;
                            if (z2) {
                                try {
                                    str = ((IdRow) new o7(str6, str7, 7).call()).f41150e;
                                    if (!str.equals(EffectId.INVALID_ID)) {
                                    }
                                } catch (Throwable th) {
                                    Log.e("SkuHandler", "[createSkuInfos] query product mapping failed.", th);
                                }
                            } else {
                                str = str7;
                            }
                            if (abstractSetM.contains(str7)) {
                                builder.f(SkuInfo.a(productInfo, str, eVar));
                            } else {
                                a.v(3, "[createSkuInfos] Filter out SKU by product mask. skuGuid=", str7, "SkuHandler");
                            }
                        }
                        productInfo.f39802i.addAll(builder.i());
                        productInfoL = productInfo;
                    } else {
                        productInfoL = skuHandler.l(beautyModeC, str5, sku2, z2);
                    }
                    if (!productInfoL.getSkus().isEmpty() || (productInfoL.f39797b == BeautyMode.BACKGROUND && !TextUtils.isEmpty(productInfoL.f39799e))) {
                        return Optional.e(productInfoL);
                    }
                }
                return Optional.a();
            default:
                Pattern pattern = a.f41721a;
                Log.g(3, "PanelDataCenter", "Start syncSkuSetDBWithServer");
                return new j(new v81((List) obj2, z2, 0)).i(Schedulers.f43170c);
        }
    }

    public /* synthetic */ p7(Object obj, boolean z, int i2) {
        this.f78776b = i2;
        this.d = obj;
        this.f78777c = z;
    }
}
