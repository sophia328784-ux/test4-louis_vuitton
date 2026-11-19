package com.perfectcorp.perfectlib.ph.template;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.makeupcam.template.EffectInfo;
import com.perfectcorp.perfectlib.makeupcam.template.TemplateConsts;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
final class i implements Callable<YMKPrimitiveData.Effect> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ String f41651a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ g f41652b;

    public i(g gVar, String str) {
        this.f41652b = gVar;
        this.f41651a = str;
    }

    @Override // java.util.concurrent.Callable
    public final YMKPrimitiveData.Effect call() throws Exception {
        String str = this.f41651a;
        float f2 = TemplateUtils.f41580a;
        EffectInfo effectInfoA = com.perfectcorp.perfectlib.ph.database.ymk.look.a.a(YMKDatabase.b(), str);
        Objects.requireNonNull(effectInfoA);
        BeautyMode beautyModeD = TemplateConsts.d(effectInfoA.d);
        String str2 = effectInfoA.f40937c;
        SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
        String str3 = effectInfoA.f40939f;
        ArrayList arrayListA = com.perfectcorp.perfectlib.ph.database.ymk.color.a.a(sQLiteDatabaseB, str3);
        EffectInfo.Extras extrasA = EffectInfo.Extras.a(effectInfoA.f40941i);
        JSONObject jSONObject = new JSONObject(effectInfoA.g);
        EffectInfo.Intensities.Builder builder = new EffectInfo.Intensities.Builder();
        builder.f40977a = TemplateConsts.b(-1, jSONObject.optString("intensity"));
        builder.f40978b = TemplateConsts.b(-1, jSONObject.optString("hidden_intensity"));
        builder.f40979c = TemplateConsts.b(-1, jSONObject.optString("radius"));
        int iB = TemplateConsts.b(-1, jSONObject.optString("browdefinition"));
        int iB2 = TemplateConsts.b(-1000, jSONObject.optString("browcurvature"));
        int iB3 = TemplateConsts.b(-1000, jSONObject.optString("browthickness"));
        int iB4 = TemplateConsts.b(-1000, jSONObject.optString("browpositionx"));
        int iB5 = TemplateConsts.b(-1000, jSONObject.optString("browpositiony"));
        int iB6 = TemplateConsts.b(-1000, jSONObject.optString("browheadlocation"));
        int iB7 = TemplateConsts.b(-1000, jSONObject.optString("browtaillocation"));
        builder.d = iB;
        builder.f40980e = iB2;
        builder.f40981f = iB3;
        builder.g = iB4;
        builder.f40982h = iB5;
        builder.f40983i = iB6;
        builder.f40984j = iB7;
        EffectInfo.Intensities intensitiesA = builder.a();
        String str4 = extrasA.f40951a;
        if (!TextUtils.isEmpty(str4) && !com.perfectcorp.perfectlib.ph.database.ymk.palette.a.d(YMKDatabase.b(), str4, true)) {
            try {
                SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
                DBUtility.i(sQLiteDatabaseC, new s(sQLiteDatabaseC, effectInfoA, arrayListA, extrasA));
            } catch (Throwable th) {
                Log.j("TemplateUtils", "addFakePalette", th);
            }
        }
        return new YMKPrimitiveData.Effect(str, beautyModeD, str2, TemplateUtils.A(str3), intensitiesA, effectInfoA.f40942j, extrasA);
    }
}
