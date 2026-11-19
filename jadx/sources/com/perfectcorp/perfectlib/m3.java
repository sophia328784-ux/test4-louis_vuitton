package com.perfectcorp.perfectlib;

import android.text.TextUtils;
import com.perfectcorp.common.utility.BasicPreferences;
import com.perfectcorp.common.utility.DatabaseSharedPreferences;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.core.ApplyEffectParams;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.internal.ModuleConfig;
import com.perfectcorp.thirdparty.io.reactivex.Completable;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class m3 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40477b;

    public /* synthetic */ m3(int i2) {
        this.f40477b = i2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f40477b) {
            case 0:
                ApplyEffectParams applyEffectParams = PerfectLib.f39738a;
                Log.g(3, "PerfectLib", "clear makeup look finish");
                return !ModuleConfig.t ? com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b : (Completable) NailLookHandler.class.getDeclaredMethod("clearAllCompletable", null).invoke(null, null);
            case 1:
                ApplyEffectParams applyEffectParams2 = PerfectLib.f39738a;
                Log.g(3, "PerfectLib", "clear nail look finish");
                return !ModuleConfig.t ? com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b : (Completable) JewelryLookHandler.class.getDeclaredMethod("clearAllCompletable", null).invoke(null, null);
            default:
                BasicPreferences basicPreferences = new BasicPreferences(DatabaseSharedPreferences.a("SkinCare3Preferences"));
                String string = SkinCare3RecommendationHandler.Preferences.f39889a.getString("RECOMMENDATION_EXTRA_INFO", null);
                String string2 = basicPreferences.getString("FEATURE_CHECK_INVENTORY", "false");
                if (!TextUtils.isEmpty(string2) && "true".equalsIgnoreCase(string2) && !TextUtils.isEmpty(string)) {
                    try {
                        JSONArray jSONArray = new JSONArray(string);
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                            if (jSONObjectOptJSONObject != null) {
                                jSONObjectOptJSONObject.put("inventory", 0);
                            }
                        }
                        SkinCare3RecommendationHandler.Preferences.f39889a.edit().putString("RECOMMENDATION_EXTRA_INFO", jSONArray.toString()).apply();
                        com.perfectcorp.perfectlib.rh.database.ymk.skincare.a aVar = com.perfectcorp.perfectlib.rh.database.ymk.skincare.a.d;
                        List<com.perfectcorp.perfectlib.rh.database.ymk.skincare.c> listO = aVar.o(YMKDatabase.b(), aVar.h(YMKDatabase.b(), "ProductId", null, null));
                        HashMap map = new HashMap();
                        for (com.perfectcorp.perfectlib.rh.database.ymk.skincare.c cVar : listO) {
                            if (!TextUtils.isEmpty(cVar.a().upc) && !TextUtils.isEmpty(cVar.a().productId)) {
                                map.put(cVar.a().upc, cVar.a().productId);
                            }
                        }
                        if (!map.isEmpty()) {
                            return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.n(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.b(new a2(map)), new a0(map, jSONArray, 7));
                        }
                    } catch (JSONException e2) {
                        Log.e("SkinCare3RecommendationHandler", "[updateInventory] json parse failed", e2);
                    }
                }
                return com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
        }
    }
}
