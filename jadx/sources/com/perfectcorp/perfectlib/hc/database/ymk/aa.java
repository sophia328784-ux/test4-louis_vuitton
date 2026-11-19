package com.perfectcorp.perfectlib.hc.database.ymk;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.internal.ModuleConfig;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class aa extends d$a {
    /* JADX WARN: Code duplicated, block: B:43:0x0214  */
    /* JADX WARN: Code duplicated, block: B:58:0x026c A[LOOP:1: B:8:0x00c9->B:58:0x026c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:67:0x0278 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v34, types: [com.perfectcorp.perfectlib.hc.database.ymk.ad$g] */
    @Override // com.perfectcorp.perfectlib.hc.database.ymk.d$a, com.perfectcorp.perfectlib.hc.database.ymk.d$b
    public final void a(SQLiteDatabase sQLiteDatabase) throws IllegalAccessException, InvocationTargetException {
        Cursor cursor;
        super.a(sQLiteDatabase);
        int i2 = 3;
        Log.g(3, "DatabaseUpgrade_1_21", "[dropUselessTables] start");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS SkuUpdateCache");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS NoticeCache");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS EventTemplate");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS ContestCache");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS MakeupCategoryCache");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS FilmMetadataCache");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS TemplateMetadataCache");
        Log.g(3, "DatabaseUpgrade_1_21", "[dropUselessTables] end");
        sQLiteDatabase.execSQL("ALTER TABLE PatternPaletteInfo ADD isDeleted INTEGER DEFAULT 0");
        sQLiteDatabase.execSQL("ALTER TABLE IdSystemInfo ADD Size INTEGER DEFAULT 0");
        Log.g(3, "DatabaseUpgrade_1_21", "[createNewTables] start");
        sQLiteDatabase.execSQL("CREATE TABLE Sku (_id INTEGER PRIMARY KEY AUTOINCREMENT,skuId BIGINT DEFAULT -1,skuGuid TEXT NOT NULL,name TEXT,longName TEXT,isDefault INTEGER DEFAULT 0,vendor TEXT,startDate BIGINT,endDate BIGINT,featureType TEXT,featureSubtype TEXT,lastModified INTEGER DEFAULT -1,info TEXT,customerId BIGINT DEFAULT -1,isDeleted INTEGER DEFAULT 0,extraInfo TEXT,hidden TEXT,UNIQUE (skuGuid) ON CONFLICT REPLACE);");
        sQLiteDatabase.execSQL("CREATE TABLE SkuItem (_id INTEGER PRIMARY KEY AUTOINCREMENT,itemGuid TEXT,skuGuid TEXT,isHot INTEGER DEFAULT 0,freeSampleUrl TEXT,shoppingUrl TEXT,moreInfoUrl TEXT,itemDescription TEXT,customerInfo TEXT,isDeleted INTEGER DEFAULT 0,itemThumbnailPath TEXT NOT NULL,itemThumbnailIndexedPath TEXT NOT NULL,itemPaletteThumbnail TEXT NOT NULL,displayColorList TEXT NOT NULL,colorNumber TEXT NOT NULL,itemName TEXT NOT NULL,itemLongName TEXT NOT NULL,isIntensitySliderHidden INTEGER DEFAULT 0,isRadiusSliderHidden INTEGER DEFAULT 0,isHiddenIntensitySliderHidden INTEGER DEFAULT 0,isShineIntensitySliderHidden TEXT,UNIQUE (skuGuid,itemGuid));");
        sQLiteDatabase.execSQL("CREATE TABLE ProductMaskList (_id INTEGER PRIMARY KEY AUTOINCREMENT,productGuid TEXT,lastModified INTEGER,featureType TEXT,UNIQUE (productGuid) ON CONFLICT REPLACE);");
        sQLiteDatabase.execSQL("CREATE TABLE ProductMaskDetail (_id INTEGER PRIMARY KEY AUTOINCREMENT,productGuid TEXT,skuGuid TEXT,featureType TEXT,UNIQUE (productGuid,skuGuid) ON CONFLICT REPLACE);");
        sQLiteDatabase.execSQL("CREATE TABLE DownloadImage (_id INTEGER PRIMARY KEY AUTOINCREMENT,url TEXT,path TEXT,referenceId TEXT,size INTEGER DEFAULT 0,UNIQUE (url,referenceId) ON CONFLICT REPLACE);");
        Log.g(3, "DatabaseUpgrade_1_21", "[createNewTables] end");
        Log.g(3, "DatabaseUpgrade_1_21", "[createNewTableIndexes] start");
        int i3 = 5;
        boolean z = true;
        int i4 = 2;
        Iterator<E> it = FluentIterable.h((Iterable[]) Arrays.copyOf(new Iterable[]{ad$j.f40290a, ad$h.f40289a, ad$d.f40279a, ad$c.f40278a, ad$a.f40277a}, 5)).iterator();
        while (it.hasNext()) {
            sQLiteDatabase.execSQL((String) it.next());
        }
        Log.g(3, "DatabaseUpgrade_1_21", "[createNewTableIndexes] end");
        Cursor cursorQuery = sQLiteDatabase.query("SkuCache", new String[]{"JsonString"}, null, null, null, null, null, null);
        if (!DBUtility.f(cursorQuery)) {
            return;
        }
        while (true) {
            ad$i ad_i = (ad$i) GsonHelper.f39260a.i(cursorQuery.getString(cursorQuery.getColumnIndex("JsonString")), ad$i.class);
            ad$f ad_f = new ad$f(ad_i);
            ContentValues contentValues = new ContentValues();
            contentValues.put("skuId", Long.valueOf(ad_f.f40280a));
            contentValues.put("skuGuid", ad_f.f40284f);
            contentValues.put("name", ad_f.d);
            contentValues.put("longName", ad_f.f40283e);
            contentValues.put("isDefault", (Integer) 0);
            contentValues.put("vendor", ad_f.g);
            contentValues.put("startDate", Long.valueOf(ad_f.f40285h));
            contentValues.put("endDate", Long.valueOf(ad_f.f40286i));
            contentValues.put("featureType", ad_f.f40281b);
            contentValues.put("featureSubtype", ad_f.f40282c);
            contentValues.put("lastModified", Long.valueOf(ad_f.f40287j));
            contentValues.put("info", ad_f.l);
            contentValues.put("customerId", Long.valueOf(ad_f.f40288k));
            contentValues.put("isDeleted", (Integer) 0);
            contentValues.put("extraInfo", ad_f.m);
            contentValues.put("hidden", ad_f.n);
            try {
                long jReplace = sQLiteDatabase.replace("Sku", null, contentValues);
                if (jReplace < 0) {
                    Log.g(i3, "DatabaseUpgrade_1_21", "[insertOrReplace] failed. id: " + jReplace);
                }
                boolean zA = MoreCollections.a(ad_i.items);
                Class cls = Boolean.TYPE;
                if (!zA) {
                    BeautyMode beautyModeValueOfSkuFeatureType = BeautyMode.valueOfSkuFeatureType(ad_i.type);
                    int i5 = ae.f40291a[beautyModeValueOfSkuFeatureType.ordinal()];
                    boolean zIsAccessory = (i5 == z || i5 == i4 || i5 == i2) ? z : beautyModeValueOfSkuFeatureType.isAccessory();
                    Iterator it2 = ad_i.items.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            final ad$i.c cVar = (ad$i.c) it2.next();
                            if (zIsAccessory) {
                                cursor = cursorQuery;
                            } else {
                                cursor = cursorQuery;
                                if (DBUtility.e(sQLiteDatabase, "PaletteInfo", "GUID", cVar.itemGUID)) {
                                }
                                if (ModuleConfig.t) {
                                    ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                                    ApplyEffectUtility.class.getDeclaredMethod("cacheCleanerDeleteById", String.class, cls).invoke(null, ad_i.skuGUID, Boolean.TRUE);
                                }
                            }
                            if (!zIsAccessory || DBUtility.e(sQLiteDatabase, "PatternInfo", "GUID", cVar.itemGUID)) {
                                final String str = ad_i.skuGUID;
                                try {
                                    ad$i ad_i2 = ad_i;
                                    long jReplace2 = sQLiteDatabase.replace("SkuItem", null, new Object(str, cVar) { // from class: com.perfectcorp.perfectlib.hc.database.ymk.ad$g
                                        private final String colorNumber;
                                        private final String customerInfo;
                                        private final String displayColorList;
                                        private final String freeSampleUrl;
                                        private final String guid;
                                        private final int isDeleted;
                                        private final String isHiddenIntensitySliderHidden;
                                        private final int isHot;
                                        private final String isIntensitySliderHidden;
                                        private final String isRadiusSliderHidden;
                                        private final String isShineIntensitySliderHidden;
                                        private final String itemDescription;
                                        private final String itemLongName;
                                        private final String itemName;
                                        private final String itemPaletteThumbnail;
                                        private final String itemThumbnailIndexedPath;
                                        private final String itemThumbnailPath;
                                        private final String moreInfoUrl;
                                        private final String shoppingUrl;
                                        private final String skuGuid;

                                        {
                                            String str2;
                                            this.guid = cVar.itemGUID;
                                            this.skuGuid = str;
                                            this.isHot = cVar.hot ? 1 : 0;
                                            this.freeSampleUrl = cVar.freeSampleURL;
                                            this.shoppingUrl = cVar.shoppingURL;
                                            this.moreInfoUrl = cVar.moreInfoURL;
                                            this.itemDescription = cVar.itemDescription;
                                            JsonElement jsonElement = cVar.customerInfo;
                                            this.customerInfo = jsonElement == null ? "" : jsonElement.toString();
                                            this.isDeleted = 0;
                                            this.itemThumbnailPath = cVar.info.itemContent.a("item_thumbnail");
                                            this.itemThumbnailIndexedPath = cVar.info.itemContent.a("item_thumbnail_indexed");
                                            this.itemPaletteThumbnail = cVar.info.itemContent.a("item_palette_thumbnail");
                                            ad$i.c.a.C0127a c0127a = cVar.info.itemContent;
                                            c0127a.getClass();
                                            try {
                                                Optional optionalM = FluentIterable.n(c0127a.display_color).m();
                                                str2 = optionalM.d() ? ((ad$e$a) optionalM.c()).attr_color_list : "";
                                            } catch (Throwable th) {
                                                Log.c("DatabaseUpgrade_1_21", "[getDisplayColor]", th);
                                            }
                                            this.displayColorList = str2;
                                            this.colorNumber = MoreCollections.a(cVar.info.itemContent.palettes) ? "" : cVar.info.itemContent.palettes.get(0).attr_color_number;
                                            this.itemName = cVar.info.itemContent.b("item_name");
                                            this.itemLongName = cVar.info.itemContent.b("item_long_name");
                                            this.isIntensitySliderHidden = cVar.info.itemContent.c("item_intensity_slider");
                                            this.isRadiusSliderHidden = cVar.info.itemContent.c("item_radius_slider");
                                            this.isHiddenIntensitySliderHidden = cVar.info.itemContent.c("item_hidden_intensity_slider");
                                            this.isShineIntensitySliderHidden = cVar.info.itemContent.c("item_shine_intensity_slider");
                                        }

                                        public final ContentValues a() {
                                            ContentValues contentValues2 = new ContentValues();
                                            contentValues2.put("itemGuid", this.guid);
                                            contentValues2.put("skuGuid", this.skuGuid);
                                            contentValues2.put("isHot", Integer.valueOf(this.isHot));
                                            contentValues2.put("freeSampleUrl", this.freeSampleUrl);
                                            contentValues2.put("shoppingUrl", this.shoppingUrl);
                                            contentValues2.put("moreInfoUrl", this.moreInfoUrl);
                                            contentValues2.put("itemDescription", this.itemDescription);
                                            contentValues2.put("customerInfo", this.customerInfo);
                                            contentValues2.put("isDeleted", Integer.valueOf(this.isDeleted));
                                            contentValues2.put("itemThumbnailPath", this.itemThumbnailPath);
                                            contentValues2.put("itemThumbnailIndexedPath", this.itemThumbnailIndexedPath);
                                            contentValues2.put("itemPaletteThumbnail", this.itemPaletteThumbnail);
                                            contentValues2.put("displayColorList", this.displayColorList);
                                            contentValues2.put("colorNumber", this.colorNumber);
                                            contentValues2.put("itemName", this.itemName);
                                            contentValues2.put("itemLongName", this.itemLongName);
                                            contentValues2.put("isIntensitySliderHidden", this.isIntensitySliderHidden);
                                            contentValues2.put("isRadiusSliderHidden", this.isRadiusSliderHidden);
                                            contentValues2.put("isHiddenIntensitySliderHidden", this.isHiddenIntensitySliderHidden);
                                            contentValues2.put("isShineIntensitySliderHidden", this.isShineIntensitySliderHidden);
                                            return contentValues2;
                                        }
                                    }.a());
                                    if (jReplace2 < 0) {
                                        Log.g(5, "DatabaseUpgrade_1_21", "[insertOrReplace] failed. id: " + jReplace2);
                                    }
                                    ad_i = ad_i2;
                                    cursorQuery = cursor;
                                } catch (Throwable th) {
                                    Log.e("DatabaseUpgrade_1_21", "[insertOrReplace] error", th);
                                    throw th;
                                }
                            } else if (ModuleConfig.t) {
                                ImmutableSet immutableSet2 = ApplyEffectUtility.f39471a;
                                ApplyEffectUtility.class.getDeclaredMethod("cacheCleanerDeleteById", String.class, cls).invoke(null, ad_i.skuGUID, Boolean.TRUE);
                            }
                        }
                        if (!cursor.moveToNext()) {
                            return;
                        }
                        i3 = 5;
                        cursorQuery = cursor;
                        i2 = 3;
                        z = true;
                        i4 = 2;
                    }
                } else if (ModuleConfig.t) {
                    ImmutableSet immutableSet3 = ApplyEffectUtility.f39471a;
                    ApplyEffectUtility.class.getDeclaredMethod("cacheCleanerDeleteById", String.class, cls).invoke(null, ad_i.skuGUID, Boolean.TRUE);
                }
                cursor = cursorQuery;
                if (!cursor.moveToNext()) {
                    return;
                }
                i3 = 5;
                cursorQuery = cursor;
                i2 = 3;
                z = true;
                i4 = 2;
            } catch (Throwable th2) {
                Log.e("DatabaseUpgrade_1_21", "[insertOrReplace] error", th2);
                throw th2;
            }
        }
    }
}
