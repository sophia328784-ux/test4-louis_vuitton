package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Pair;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.ShadeFinder;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.SkuSetInfo;
import com.perfectcorp.perfectlib.exceptions.SkuAndShadeIdMappingFailedException;
import com.perfectcorp.perfectlib.ph.database.mcsdk.IdRow;
import com.perfectcorp.perfectlib.ph.database.mcsdk.a;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.h;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class z7 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81559b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f81560c;
    public final /* synthetic */ boolean d;

    public /* synthetic */ z7(String str, boolean z) {
        this.f81559b = 1;
        this.f81560c = str;
        this.d = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) throws Exception {
        int i2 = this.f81559b;
        String str = this.f81560c;
        boolean z = this.d;
        switch (i2) {
            case 0:
                Pair pair = (Pair) obj;
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                a.A(new StringBuilder("[downloadSkuByProtocolMethod] insertToDb id="), (String) pair.first, 3, "ApplyEffectUtility");
                ((SkuDataForProtocol) pair.second).k();
                h hVarA = ((SkuDataForProtocol) pair.second).a((String) pair.first);
                if (z) {
                    Threads.b();
                    String str2 = this.f81560c;
                    if (TextUtils.isEmpty(str2) || hVarA == null) {
                        throw new SkuAndShadeIdMappingFailedException("shadeId and skuMetadata can not be empty");
                    }
                    ArrayList arrayList = new ArrayList();
                    String str3 = MoreCollections.a(hVarA.items) ? "" : hVarA.items.get(0).itemGUID;
                    if (TextUtils.isEmpty(str3)) {
                        arrayList.add(new IdRow(hVarA.type, hVarA.skuGUID, hVarA.productId, str3, str2));
                    } else {
                        for (h.d dVar : hVarA.items) {
                            arrayList.add(new IdRow(hVarA.type, hVarA.skuGUID, hVarA.productId, TextUtils.isEmpty(dVar.itemGUID) ? "" : dVar.itemGUID, TextUtils.isEmpty(dVar.shadeId) ? str2 : dVar.shadeId));
                        }
                    }
                    a aVarH = a.h();
                    aVarH.getClass();
                    if (MoreCollections.a(arrayList)) {
                        Log.d("SkuAndShadeIdMappingDatabase", "[insert] insert value is empty");
                    } else {
                        SQLiteDatabase writableDatabase = aVarH.getWritableDatabase();
                        bz bzVarListIterator = ((ImmutableList) a.f41153b).listIterator(0);
                        while (bzVarListIterator.hasNext()) {
                            a.k(arrayList, writableDatabase, ((Integer) bzVarListIterator.next()).intValue());
                        }
                        a.k(arrayList, writableDatabase, 125);
                    }
                }
                hVarA.getClass();
                return new Sku(hVarA);
            case 1:
                return new ShadeFinder(str, z);
            default:
                com.perfectcorp.perfectlib.ph.database.ymk.skuset.a aVar = (com.perfectcorp.perfectlib.ph.database.ymk.skuset.a) obj;
                Single list = Observable.fromIterable(SkuSetInfo.b(aVar, z)).filter(new yw0(19)).map(new hx0(aVar, 1)).toList();
                t7 t7Var = new t7(str, 19);
                list.getClass();
                return new t(list, t7Var);
        }
    }

    public /* synthetic */ z7(int i2, String str, boolean z) {
        this.f81559b = i2;
        this.d = z;
        this.f81560c = str;
    }
}
