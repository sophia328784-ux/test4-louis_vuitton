package com.perfectcorp.perfectlib.hc.database.ymk;

import com.perfectcorp.perfectlib.hc.preferences.JewelryLookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.LookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.NailLookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.SkuHandlerPreferences;
import com.perfectcorp.perfectlib.ymk.Globals;

/* JADX INFO: loaded from: classes3.dex */
final class c extends DatabaseOpenHelper.b {
    @Override // com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper.b
    public final void a() {
        DatabaseOpenHelper.n(Globals.f41932a.getDatabasePath("youcammakeup-live.sqlite"));
        SkuHandlerPreferences.f40330a.m();
        LookHandlerPreferences.f40326a.m();
        NailLookHandlerPreferences.f40328a.edit().remove("LOOK_LIST_MESSAGE_DIGEST").apply();
        JewelryLookHandlerPreferences.f40324a.edit().remove("LOOK_LIST_MESSAGE_DIGEST").apply();
    }
}
