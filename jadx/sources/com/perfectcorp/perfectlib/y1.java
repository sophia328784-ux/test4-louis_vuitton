package com.perfectcorp.perfectlib;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.thirdparty.com.google.common.base.Predicate;
import java.util.Objects;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class y1 implements Predicate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41925b;

    public /* synthetic */ y1(int i2) {
        this.f41925b = i2;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        boolean z = false;
        switch (this.f41925b) {
            case 0:
                EffectId effectId = (EffectId) obj;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                Objects.requireNonNull(effectId);
                return !TextUtils.isEmpty(EffectId.c(effectId.getWearingStyleGuid()));
            case 1:
                EffectId effectId2 = (EffectId) obj;
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                Objects.requireNonNull(effectId2);
                if (TextUtils.isEmpty(EffectId.c(effectId2.getPatternGuid()))) {
                    return false;
                }
                VtoSetting.Parameter parameter = effectId2.n;
                return (parameter instanceof EarringParameter) && ((EarringParameter) parameter).f39551a;
            case 2:
                EffectId effectId3 = (EffectId) obj;
                ThreadPoolExecutor threadPoolExecutor3 = MakeupCamInternal.n;
                Objects.requireNonNull(effectId3);
                if (TextUtils.isEmpty(EffectId.c(effectId3.getPatternGuid()))) {
                    return false;
                }
                VtoSetting.Parameter parameter2 = effectId3.n;
                return (parameter2 instanceof EarringParameter) && !((EarringParameter) parameter2).f39551a;
            case 3:
                EffectId effectId4 = (EffectId) obj;
                ThreadPoolExecutor threadPoolExecutor4 = MakeupCamInternal.n;
                Objects.requireNonNull(effectId4);
                com.perfectcorp.perfectlib.ph.database.ymk.background.b bVar = com.perfectcorp.perfectlib.ph.database.ymk.background.b.d;
                SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
                String str = effectId4.f39557c;
                Objects.requireNonNull(str);
                bVar.getClass();
                Threads.b();
                Cursor cursorRawQuery = null;
                try {
                    cursorRawQuery = sQLiteDatabaseB.rawQuery("SELECT COUNT(*) FROM " + bVar.f40266b + " WHERE guid=? ", new String[]{str});
                    if (DBUtility.f(cursorRawQuery) && cursorRawQuery.getInt(0) > 0) {
                        z = true;
                    }
                } catch (Throwable th) {
                    try {
                        Log.e("BackgroundInfoDao", "[exists] failed. guid=".concat(str), th);
                    } finally {
                        IO.b(cursorRawQuery);
                    }
                    break;
                }
                return z;
            case 4:
                PerfectEffect perfectEffect = (PerfectEffect) obj;
                ThreadPoolExecutor threadPoolExecutor5 = MakeupCamInternal.n;
                return perfectEffect != PerfectEffect.FUN_STICKER;
            default:
                PerfectEffect perfectEffect2 = (PerfectEffect) obj;
                int i2 = PhotoMakeupInternal.n;
                return perfectEffect2 != PerfectEffect.FUN_STICKER;
        }
    }
}
