package com.google.android.gms.internal.gtm;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzn extends SQLiteOpenHelper {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzn(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i2) {
        super(context, "gtm_urls.db", (SQLiteDatabase.CursorFactory) null, 1);
        int i3 = zzp.f30205a;
    }
}
