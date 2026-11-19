package com.perfectcorp.perfectlib.ph.template;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.makeupcam.template.ColorInfo;
import com.perfectcorp.perfectlib.makeupcam.template.EffectInfo;
import com.perfectcorp.perfectlib.makeupcam.template.LocalizedString;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class s implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ SQLiteDatabase f41711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ EffectInfo f41712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private /* synthetic */ Collection f41713c;
    private /* synthetic */ EffectInfo.Extras d;

    public s(SQLiteDatabase sQLiteDatabase, EffectInfo effectInfo, Collection collection, EffectInfo.Extras extras) {
        this.f41711a = sQLiteDatabase;
        this.f41712b = effectInfo;
        this.f41713c = collection;
        this.d = extras;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.perfectcorp.perfectlib.ph.database.ymk.color.a.c(this.f41711a, Collections.singletonList(this.f41712b.f40939f));
        Iterator it = this.f41713c.iterator();
        while (it.hasNext()) {
            com.perfectcorp.perfectlib.ph.database.ymk.color.a.b(this.f41711a, (ColorInfo) it.next());
        }
        com.perfectcorp.perfectlib.ph.database.ymk.palette.a.b(this.f41711a, new d(this.d.f40951a, this.f41712b.f40939f, this.f41713c.size(), new LocalizedString().c().toString(), "", YMKPrimitiveData.SourceType.DEFAULT.name(), this.d.g, false, "", this.f41712b.d, "", "", GsonHelper.f39261b.k(new com.perfectcorp.perfectlib.ph.template.idc.d.f(new com.perfectcorp.perfectlib.ph.template.idc.d.f.a()))), Collections.EMPTY_LIST);
    }
}
