package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Pair;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.PerfectLib;
import com.perfectcorp.perfectlib.ShadeFinder;
import com.perfectcorp.perfectlib.core.ApplyEffectParams;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.ph.database.mcsdk.IdRow;
import com.perfectcorp.perfectlib.ph.database.mcsdk.ProductMappingDatabase;
import com.perfectcorp.perfectlib.ymk.clflurry.MCSDKCreateFunctionalityEvent;
import com.perfectcorp.perfectlib.ymk.clflurry.a;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.uma.b;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class d8 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f68469a;

    public /* synthetic */ d8(int i2) {
        this.f68469a = i2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        switch (this.f68469a) {
            case 0:
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                Log.e("ApplyEffectUtility", "[downloadSkuSets] queryForCacheFirstThenUpdate failed", (Throwable) obj);
                return;
            case 1:
                fc.z((List) obj, new StringBuilder("[preloadSku] success, preloaded size="), 3, "ContentPreloader");
                return;
            case 2:
                fc.z((List) obj, new StringBuilder("[preloadLook] success, preloaded size="), 3, "ContentPreloader");
                return;
            case 3:
                Log.g(3, "ContentPreloader", o60.j((System.nanoTime() - ((Long) obj).longValue()) / 1000000, " ms", new StringBuilder("preload total time=")));
                return;
            case 4:
                new MCSDKCreateFunctionalityEvent(MCSDKCreateFunctionalityEvent.Functionality.FACE_ATTRIBUTE).b();
                return;
            case 5:
                Log.c("JewelryLookHandler", "[clearAll] failed.", (Throwable) obj);
                return;
            case 6:
                Log.c("LookHandler", "[clearAll] failed.", (Throwable) obj);
                return;
            case 7:
                Log.c("LookHandler", "[deleteLooks] failed", (Throwable) obj);
                return;
            case 8:
                new MCSDKCreateFunctionalityEvent(MCSDKCreateFunctionalityEvent.Functionality.MAKEUP).b();
                return;
            case 9:
                new MCSDKCreateFunctionalityEvent(MCSDKCreateFunctionalityEvent.Functionality.MAKEUP).b();
                return;
            case 10:
                Log.g(3, "MakeupCam", "Instance released.");
                return;
            case 11:
                throw new AssertionError("Shouldn't get here.");
            case 12:
                Log.c("NailLookHandler", "[clearAll] failed.", (Throwable) obj);
                return;
            case 13:
                ApplyEffectParams applyEffectParams = PerfectLib.f39738a;
                if (a.b()) {
                    return;
                }
                b.a();
                return;
            case 14:
                Log.g(3, "PhotoMakeup", "Instance released.");
                return;
            case 15:
                throw new AssertionError("Shouldn't get here.");
            case 16:
                new MCSDKCreateFunctionalityEvent(MCSDKCreateFunctionalityEvent.Functionality.MAKEUP).b();
                return;
            case 17:
                LinkedList linkedList = new LinkedList();
                Log.g(3, "ProductMappingUtility", "[UPDATE_PRODUCT_MAPPING_CONSUMER] start");
                for (Pair pair : (List) obj) {
                    for (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sdk.a.b bVar : (List) pair.second) {
                        if (TextUtils.isEmpty(bVar.skuGUID) || TextUtils.isEmpty(bVar.productId)) {
                            StringBuilder sb = new StringBuilder("[UPDATE_PRODUCT_MAPPING_CONSUMER] skip it, there is empty id, skuGUID=");
                            sb.append(bVar.skuGUID);
                            sb.append(", productId=");
                            a.A(sb, bVar.productId, 5, "ProductMappingUtility");
                        } else {
                            for (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sdk.a.C0172a c0172a : bVar.items) {
                                if (TextUtils.isEmpty(c0172a.skuItemGUID) || TextUtils.isEmpty(c0172a.shadetId)) {
                                    StringBuilder sb2 = new StringBuilder("[UPDATE_PRODUCT_MAPPING_CONSUMER] skip it, there is empty id, skuItemGUID=");
                                    sb2.append(c0172a.skuItemGUID);
                                    sb2.append(", shadetId=");
                                    a.A(sb2, c0172a.shadetId, 5, "ProductMappingUtility");
                                } else {
                                    linkedList.add(new IdRow((String) pair.first, bVar.skuGUID, bVar.productId, c0172a.skuItemGUID, c0172a.shadetId));
                                }
                            }
                        }
                    }
                }
                if (linkedList.isEmpty()) {
                    Log.g(3, "ProductMappingUtility", "[UPDATE_PRODUCT_MAPPING_CONSUMER] product mapping table is empty");
                    ProductMappingDatabase.h().n();
                    return;
                } else {
                    Log.g(3, "ProductMappingUtility", "[UPDATE_PRODUCT_MAPPING_CONSUMER] update DB");
                    DBUtility.i(ProductMappingDatabase.h().getWritableDatabase(), new hn0(linkedList, 10));
                    Log.g(3, "ProductMappingUtility", "[UPDATE_PRODUCT_MAPPING_CONSUMER] end");
                    return;
                }
            case 18:
                Log.g(3, "ProductMaskHelper", "[syncServer] ready to update DB");
                Log.g(3, "ProductMaskHelper", "[runInTransaction] start");
                SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
                DBUtility.i(sQLiteDatabaseC, new eq0((List) obj, sQLiteDatabaseC, 0));
                Log.g(3, "ProductMaskHelper", "[runInTransaction] end");
                Log.g(3, "ProductMaskHelper", "[syncServer] DB updated for feature types");
                return;
            case 19:
                Log.e("ProductMaskHelper", "[syncServer] failed", (Throwable) obj);
                return;
            case 20:
                Log.g(3, "ProductMaskHelper", "[checkNeedToUpdate] needToUpdate=" + ((Boolean) obj));
                return;
            case 21:
                Log.e("ProductMaskHelper", "[checkNeedToUpdate] failed", (Throwable) obj);
                return;
            case 22:
                a.v(3, "[queryDetectionMode] succeeded. featureMode=", (String) obj, "ShadeFinder");
                return;
            case 23:
                Log.e("ShadeFinder", "[queryDetectionMode] failed", (Throwable) obj);
                return;
            case 24:
                ShadeFinder.a();
                a.A(new StringBuilder("[queryCustomFeatures] succeeded. customFeature="), ((com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.shadefinder.b.a) obj).brand, 3, "ShadeFinder");
                return;
            case 25:
                Log.e("ShadeFinder", "[queryCustomFeatures] failed, using stored preferences", (Throwable) obj);
                ShadeFinder.a();
                return;
            case 26:
                Log.g(3, "ShadeFinder", "[queryDetectionMode] New shade finder detection mode updated.");
                return;
            case 27:
                Log.e("ShadeFinder", "[queryDetectionMode] Update shade finder detection mode failed.", (Throwable) obj);
                return;
            case 28:
                Log.g(3, "ShadeFinder", "[createInstance] succeeded");
                return;
            default:
                Log.e("ShadeFinder", "[createInstance] failed", (Throwable) obj);
                return;
        }
    }
}
