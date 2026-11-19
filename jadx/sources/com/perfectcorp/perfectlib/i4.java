package com.perfectcorp.perfectlib;

import android.database.sqlite.SQLiteDatabase;
import com.linkplay.medialib.ContentTree;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDao;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class i4 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PerfectEffect f40350c;

    public /* synthetic */ i4(PerfectEffect perfectEffect, int i2) {
        this.f40349b = i2;
        this.f40350c = perfectEffect;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f40349b;
        PerfectEffect perfectEffect = this.f40350c;
        switch (i2) {
            case 0:
                return SkuDao.g(YMKDatabase.b(), perfectEffect.beautyMode.getFeatureType().toString(), perfectEffect.itemSubType);
            default:
                SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
                String string = perfectEffect.beautyMode.getFeatureType().toString();
                ItemSubType itemSubType = perfectEffect.itemSubType;
                Threads.b();
                Objects.requireNonNull(itemSubType, "itemSubTypes can not be null");
                if (itemSubType == ItemSubType.NONE) {
                    Threads.b();
                    return com.perfectcorp.perfectlib.ph.database.ymk.sku.i.b(sQLiteDatabaseB, "featureType=? AND isDeleted=?", null, new String[]{string, ContentTree.ROOT_ID});
                }
                String[] strArr = (String[]) itemSubType.c().toArray(new String[0]);
                Threads.b();
                return com.perfectcorp.perfectlib.ph.database.ymk.sku.i.b(sQLiteDatabaseB, "featureType=? AND isDeleted=? AND featureSubtype".concat(DBUtility.c(strArr)), null, new String[]{string, ContentTree.ROOT_ID});
        }
    }
}
