package com.perfectcorp.perfectlib;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.debug.NotAnError;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageDao;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageInfo;
import com.perfectcorp.perfectlib.hc.database.ymk.idusage.IdUsageDao;
import com.perfectcorp.perfectlib.hc.preferences.JewelryLookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.LookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.NailLookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.SkuHandlerPreferences;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.perfectlib.makeupcam.template.TemplatePaths;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDao;
import com.perfectcorp.perfectlib.ph.database.ymk.tutorial.TutorialDataDao;
import com.perfectcorp.perfectlib.ph.template.SkuTemplateUtils;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.DownloadFolderHelper;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.base.Predicates;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.b21;
import defpackage.d21;
import defpackage.fc;
import defpackage.g7;
import defpackage.yp;
import java.io.File;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
final class CacheCleaner {

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.CacheCleaner$1, reason: invalid class name */
    abstract /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f39487a;

        static {
            int[] iArr = new int[IdUsageDao.Type.values().length];
            f39487a = iArr;
            try {
                iArr[IdUsageDao.Type.MAKEUP_LOOK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39487a[IdUsageDao.Type.NAIL_LOOK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f39487a[IdUsageDao.Type.JEWELRY_LOOK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f39487a[IdUsageDao.Type.SKU.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f39487a[IdUsageDao.Type.TUTORIAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static abstract class Deleter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final IdUsageDao.Row f39488a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f39489b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final HashMap f39490c = new HashMap();
        public final ArrayList d = new ArrayList();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ArrayList f39491e = new ArrayList();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ArrayList f39492f = new ArrayList();
        public final ArrayList g = new ArrayList();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public long f39493h;

        public static final class LookDeleter extends Deleter {
            @Override // com.perfectcorp.perfectlib.CacheCleaner.Deleter
            public final void b() {
                IdUsageDao.Row row = this.f39488a;
                FileUtils.c(new File(row.d));
                this.f39493h += row.f40317e;
                f();
            }

            @Override // com.perfectcorp.perfectlib.CacheCleaner.Deleter
            public final void c(SQLiteDatabase sQLiteDatabase) {
                IdUsageDao.Row row = this.f39488a;
                com.perfectcorp.perfectlib.ph.database.ymk.look.e.d(sQLiteDatabase, row.f40314a);
                String str = row.f40314a;
                Threads.b();
                LookHandlerPreferences.f40327b.edit().remove(str).commit();
                Threads.b();
                NailLookHandlerPreferences.f40329b.edit().remove(str).commit();
                Threads.b();
                JewelryLookHandlerPreferences.f40325b.edit().remove(str).commit();
            }
        }

        public static final class SkuDeleter extends Deleter {
            @Override // com.perfectcorp.perfectlib.CacheCleaner.Deleter
            public final void b() {
                for (Sku sku : this.f39491e) {
                    com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d dVar = com.perfectcorp.perfectlib.ph.kernelctrl.sku.h.f41569a;
                    boolean z = true;
                    for (com.perfectcorp.perfectlib.ph.kernelctrl.sku.f.a aVar : com.perfectcorp.perfectlib.ph.kernelctrl.sku.f.a.a()) {
                        z = z && FileUtils.c(new File(com.perfectcorp.perfectlib.ph.kernelctrl.sku.f.b(sku, aVar)));
                    }
                }
                f();
            }

            @Override // com.perfectcorp.perfectlib.CacheCleaner.Deleter
            public final void c(SQLiteDatabase sQLiteDatabase) {
                String str = this.f39488a.f40314a;
                Optional optionalA = SkuDao.a(sQLiteDatabase, str, true);
                if (optionalA.d()) {
                    this.f39491e.add((Sku) optionalA.c());
                    DBUtility.i(sQLiteDatabase, new yp(1, sQLiteDatabase, str));
                }
            }
        }

        public static final class TutorialDeleter extends Deleter {
            @Override // com.perfectcorp.perfectlib.CacheCleaner.Deleter
            public final void b() {
                IdUsageDao.Row row = this.f39488a;
                FileUtils.c(new File(row.d));
                this.f39493h += row.f40317e;
            }

            @Override // com.perfectcorp.perfectlib.CacheCleaner.Deleter
            public final void c(SQLiteDatabase sQLiteDatabase) {
                TutorialDataDao tutorialDataDao = TutorialDataDao.d;
                ImmutableList immutableListZ = ImmutableList.z(this.f39488a.f40314a);
                tutorialDataDao.getClass();
                Threads.b();
                Objects.requireNonNull(immutableListZ);
                HashSet hashSet = new HashSet(immutableListZ);
                try {
                    sQLiteDatabase.execSQL("UPDATE " + YMKDatabase.a(sQLiteDatabase, tutorialDataDao.f40266b) + " SET isDownloaded=0 WHERE guid" + DBUtility.b(hashSet));
                } catch (Throwable th) {
                    Log.e("TutorialInfoDao", "[setDeleted] failed. guids=" + hashSet, th);
                }
            }
        }

        public Deleter(IdUsageDao.Row row) {
            this.f39488a = row;
        }

        public static com.perfectcorp.perfectlib.ph.template.m a(com.perfectcorp.perfectlib.ph.template.m mVar, String str) {
            StringBuilder sb = new StringBuilder("removePathFromPatternInfo::patternId=");
            String str2 = mVar.f41671a;
            Log.g(3, "CacheCleaner", d21.p(sb, str2, ", folderPath=", str));
            ArrayList arrayList = new ArrayList(mVar.d);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str3 = (String) it.next();
                if (str3.startsWith(str)) {
                    it.remove();
                    Log.g(3, "CacheCleaner", "removePathFromPatternInfo::patternId=" + str2 + ", deleted thumb path=" + str3);
                }
            }
            com.perfectcorp.perfectlib.ph.template.m.a aVar = new com.perfectcorp.perfectlib.ph.template.m.a(mVar);
            aVar.d = arrayList;
            return aVar.a();
        }

        public static void e(String str, ArrayList arrayList) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (((String) it.next()).startsWith(str)) {
                    it.remove();
                }
            }
        }

        public abstract void b();

        public abstract void c(SQLiteDatabase sQLiteDatabase);

        public final void d(SQLiteDatabase sQLiteDatabase, String str) {
            List<com.perfectcorp.perfectlib.ph.template.m> listI;
            com.perfectcorp.perfectlib.ph.template.m mVarA;
            Cursor cursorQuery = null;
            try {
                cursorQuery = sQLiteDatabase.query("PatternInfo", Contract.PatternInfo.a(), "ThumbPath LIKE ?", new String[]{"%" + str + "%"}, null, null, null, null);
                if (DBUtility.f(cursorQuery)) {
                    bz bzVar = ImmutableList.f42200c;
                    ImmutableList.Builder builder = new ImmutableList.Builder();
                    do {
                        builder.f(com.perfectcorp.perfectlib.ph.database.ymk.pattern.a.a(cursorQuery));
                    } while (cursorQuery.moveToNext());
                    listI = builder.i();
                    IO.b(cursorQuery);
                } else {
                    listI = Collections.EMPTY_LIST;
                    IO.b(cursorQuery);
                }
            } catch (Throwable th) {
                try {
                    Log.e("PatternInfoDao", "getByPossiblePath thumbnailPathPrefix=" + str, th);
                    listI = Collections.EMPTY_LIST;
                } catch (Throwable th2) {
                    IO.b(null);
                    throw th2;
                }
            }
            for (com.perfectcorp.perfectlib.ph.template.m mVar : listI) {
                String str2 = mVar.f41671a;
                HashMap map = this.f39490c;
                com.perfectcorp.perfectlib.ph.template.m mVar2 = (com.perfectcorp.perfectlib.ph.template.m) map.get(str2);
                if (mVar2 != null) {
                    Log.g(3, "CacheCleaner", "scanPatternsAndUpdate updatedPatternInfo=" + mVar2.b());
                    mVarA = a(mVar2, str);
                } else {
                    Log.g(3, "CacheCleaner", "scanPatternsAndUpdate patternInfo=" + mVar.b());
                    mVarA = a(mVar, str);
                }
                if (mVarA.d.isEmpty()) {
                    this.f39489b.add(mVarA);
                } else {
                    map.put(mVarA.f41671a, mVarA);
                }
            }
        }

        public final void f() {
            for (DownloadImageInfo downloadImageInfo : this.g) {
                String str = downloadImageInfo.f40307b;
                if (!TextUtils.isEmpty(str)) {
                    FileUtils.c(new File(str));
                }
                this.f39493h += downloadImageInfo.f40309e;
            }
            for (com.perfectcorp.perfectlib.ph.template.a aVar : this.f39492f) {
                String str2 = aVar.f41607a;
                if (!TextUtils.isEmpty(str2)) {
                    AtomicInteger atomicInteger = com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j.f41498a;
                    FileUtils.c(new File(DownloadFolderHelper.d(), str2));
                }
                this.f39493h += aVar.f41609c;
            }
        }
    }

    public static class HandlerStatusResetter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f39494a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f39495b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f39496c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f39497e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f39498f;
        public boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f39499h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f39500i;

        public HandlerStatusResetter(boolean z) {
            this.f39494a = z;
        }
    }

    public static long a(Collection collection, final boolean z) {
        Object lookDeleter;
        final ArrayList<Deleter> arrayList = new ArrayList();
        Iterator it = collection.iterator();
        while (true) {
            long j2 = 0;
            if (!it.hasNext()) {
                DBUtility.i(b(), new Runnable() { // from class: com.perfectcorp.perfectlib.q
                    /* JADX WARN: Code duplicated, block: B:149:0x0541  */
                    /* JADX WARN: Code duplicated, block: B:152:0x0599  */
                    /* JADX WARN: Code duplicated, block: B:154:0x05a5  */
                    /* JADX WARN: Code duplicated, block: B:155:0x05c5  */
                    /* JADX WARN: Code duplicated, block: B:161:0x05f1 A[LOOP:11: B:159:0x05eb->B:161:0x05f1, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:173:0x0634 A[Catch: all -> 0x063a, TRY_LEAVE, TryCatch #20 {all -> 0x063a, blocks: (B:171:0x062e, B:173:0x0634, B:177:0x063c, B:178:0x0643, B:180:0x0665), top: B:376:0x062e }] */
                    /* JADX WARN: Code duplicated, block: B:177:0x063c A[Catch: all -> 0x063a, TRY_ENTER, TryCatch #20 {all -> 0x063a, blocks: (B:171:0x062e, B:173:0x0634, B:177:0x063c, B:178:0x0643, B:180:0x0665), top: B:376:0x062e }] */
                    /* JADX WARN: Code duplicated, block: B:198:0x069e  */
                    /* JADX WARN: Code duplicated, block: B:201:0x06dd  */
                    /* JADX WARN: Code duplicated, block: B:207:0x070d A[Catch: all -> 0x071e, TRY_LEAVE, TryCatch #38 {all -> 0x071e, blocks: (B:205:0x06f6, B:207:0x070d), top: B:412:0x06f6 }] */
                    /* JADX WARN: Code duplicated, block: B:217:0x073d  */
                    /* JADX WARN: Code duplicated, block: B:222:0x0778  */
                    /* JADX WARN: Code duplicated, block: B:224:0x0783  */
                    /* JADX WARN: Code duplicated, block: B:225:0x0789  */
                    /* JADX WARN: Code duplicated, block: B:226:0x0791  */
                    /* JADX WARN: Code duplicated, block: B:228:0x07a3  */
                    /* JADX WARN: Code duplicated, block: B:229:0x07b6  */
                    /* JADX WARN: Code duplicated, block: B:237:0x07ee A[Catch: all -> 0x07f8, TRY_LEAVE, TryCatch #16 {all -> 0x07f8, blocks: (B:235:0x07e8, B:237:0x07ee, B:241:0x07fc), top: B:368:0x07e8 }] */
                    /* JADX WARN: Code duplicated, block: B:241:0x07fc A[Catch: all -> 0x07f8, TRY_ENTER, TRY_LEAVE, TryCatch #16 {all -> 0x07f8, blocks: (B:235:0x07e8, B:237:0x07ee, B:241:0x07fc), top: B:368:0x07e8 }] */
                    /* JADX WARN: Code duplicated, block: B:278:0x08e8  */
                    /* JADX WARN: Code duplicated, block: B:280:0x08eb  */
                    /* JADX WARN: Code duplicated, block: B:282:0x08ee  */
                    /* JADX WARN: Code duplicated, block: B:284:0x08f1  */
                    /* JADX WARN: Code duplicated, block: B:285:0x08f4  */
                    /* JADX WARN: Code duplicated, block: B:286:0x08f9  */
                    /* JADX WARN: Code duplicated, block: B:287:0x08fe  */
                    /* JADX WARN: Code duplicated, block: B:288:0x0903  */
                    /* JADX WARN: Code duplicated, block: B:291:0x090b  */
                    /* JADX WARN: Code duplicated, block: B:293:0x090f  */
                    /* JADX WARN: Code duplicated, block: B:298:0x091e  */
                    /* JADX WARN: Code duplicated, block: B:303:0x092f  */
                    /* JADX WARN: Code duplicated, block: B:308:0x0946  */
                    /* JADX WARN: Code duplicated, block: B:418:0x0959 A[SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:419:0x0959 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:444:0x0720 A[SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:447:0x06e9 A[SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:449:0x06d7 A[SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:452:0x076c A[SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:454:0x0737 A[SYNTHETIC] */
                    /* JADX WARN: Instruction removed from duplicated block: B:149:0x0541, please report this as an issue */
                    /* JADX WARN: Instruction removed from duplicated block: B:154:0x05a5, please report this as an issue */
                    /* JADX WARN: Instruction removed from duplicated block: B:207:0x070d, please report this as an issue */
                    /* JADX WARN: Instruction removed from duplicated block: B:228:0x07a3, please report this as an issue */
                    @Override // java.lang.Runnable
                    public final void run() {
                        Cursor cursorRawQuery;
                        Cursor cursor;
                        List listI;
                        String str;
                        String str2;
                        String str3;
                        String str4;
                        String str5;
                        String str6;
                        String str7;
                        String str8;
                        String str9;
                        Cursor cursor2;
                        List listI2;
                        Iterator it2;
                        String str10;
                        Iterator it3;
                        String str11;
                        Cursor cursorQuery;
                        List<com.perfectcorp.perfectlib.ph.template.n> listI3;
                        String str12;
                        String str13;
                        String str14;
                        List listSingletonList;
                        int i2;
                        CacheCleaner.HandlerStatusResetter handlerStatusResetter;
                        Optional optionalA;
                        BeautyMode beautyModeC;
                        String str15;
                        Cursor cursorRawQuery2;
                        List list;
                        ArrayList arrayList2;
                        Iterator it4;
                        long jUpdate;
                        SQLiteDatabase sQLiteDatabase;
                        ImmutableList.Builder builder;
                        String str16;
                        String str17;
                        Iterator it5;
                        String str18;
                        String str19;
                        CacheCleaner.Deleter deleter;
                        String string;
                        String str20 = "ExtraData";
                        String str21 = "Thumbnail";
                        String str22 = "ReferencedIds";
                        String str23 = "Id";
                        String str24 = "PaletteInfoDao";
                        String str25 = "GUID";
                        SQLiteDatabase sQLiteDatabaseB = CacheCleaner.b();
                        StringBuilder sb = new StringBuilder("SELECT PaletteInfo.GUID FROM ");
                        String str26 = "PaletteInfo";
                        sb.append(YMKDatabase.a(sQLiteDatabaseB, "PaletteInfo"));
                        sb.append(", ");
                        sb.append(YMKDatabase.a(sQLiteDatabaseB, "EffectInfo"));
                        sb.append(" WHERE EffectInfo.ExtraData LIKE '%' || PaletteInfo.GUID || '%'");
                        String string2 = sb.toString();
                        ArrayList arrayList3 = new ArrayList();
                        try {
                            cursorRawQuery = sQLiteDatabaseB.rawQuery(string2, null);
                            try {
                                if (DBUtility.f(cursorRawQuery)) {
                                    do {
                                        arrayList3.add(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("GUID")));
                                    } while (cursorRawQuery.moveToNext());
                                }
                            } catch (Throwable th) {
                                th = th;
                                try {
                                    Log.e("PaletteInfoDao", th.getMessage(), th);
                                } catch (Throwable th2) {
                                    IO.b(cursorRawQuery);
                                    throw th2;
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            cursorRawQuery = null;
                        }
                        IO.b(cursorRawQuery);
                        CacheCleaner.HandlerStatusResetter handlerStatusResetter2 = new CacheCleaner.HandlerStatusResetter(z);
                        Iterator it6 = arrayList.iterator();
                        while (it6.hasNext()) {
                            CacheCleaner.Deleter deleter2 = (CacheCleaner.Deleter) it6.next();
                            StringBuilder sb2 = new StringBuilder("delete row record=");
                            IdUsageDao.Row row = deleter2.f39488a;
                            sb2.append(row);
                            Log.g(3, "CacheCleaner", sb2.toString());
                            SQLiteDatabase sQLiteDatabaseB2 = CacheCleaner.b();
                            ArrayList arrayList4 = deleter2.f39492f;
                            String str27 = "getByContainedReferencedId referencedId=";
                            Iterator it7 = it6;
                            ArrayList arrayList5 = arrayList3;
                            String str28 = row.f40314a;
                            CacheCleaner.HandlerStatusResetter handlerStatusResetter3 = handlerStatusResetter2;
                            IdUsageDao.Type type = row.f40316c;
                            String str29 = row.d;
                            String str30 = str24;
                            String str31 = "%";
                            try {
                                List list2 = Contract.IdSystemInfo.f40219a;
                                String str32 = str26;
                                Cursor cursorQuery2 = sQLiteDatabaseB2.query("IdSystemInfo", new String[]{str23, str22, "Size", "LastModified"}, "ReferencedIds LIKE ?", new String[]{"%" + str28 + "%"}, null, null, null, null);
                                SQLiteDatabase sQLiteDatabase2 = sQLiteDatabaseB2;
                                try {
                                    if (DBUtility.f(cursorQuery2)) {
                                        bz bzVar = ImmutableList.f42200c;
                                        ImmutableList.Builder builder2 = new ImmutableList.Builder();
                                        while (true) {
                                            builder2.f(com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a.a(cursorQuery2));
                                            if (!cursorQuery2.moveToNext()) {
                                                break;
                                            }
                                            str25 = str25;
                                            str31 = str31;
                                            str28 = str28;
                                            deleter2 = deleter2;
                                            str20 = str20;
                                        }
                                        listI = builder2.i();
                                        IO.b(cursorQuery2);
                                    } else {
                                        listI = Collections.EMPTY_LIST;
                                        IO.b(cursorQuery2);
                                    }
                                    Iterator it8 = listI.iterator();
                                    while (true) {
                                        boolean zHasNext = it8.hasNext();
                                        Iterator it9 = it8;
                                        str = ")";
                                        str2 = str27;
                                        str3 = "DELETE FROM ";
                                        str4 = str22;
                                        str5 = ", referencedId=";
                                        if (!zHasNext) {
                                            break;
                                        }
                                        com.perfectcorp.perfectlib.ph.template.a aVar = (com.perfectcorp.perfectlib.ph.template.a) it9.next();
                                        String str33 = str23;
                                        String str34 = str31;
                                        Log.g(3, "CacheCleaner", "scanIdSystemInfosAndUpdateDb IdSystemInfo=" + aVar.a());
                                        Log.g(3, "CacheCleaner", d21.p(new StringBuilder("removeReferencedIdFromInfo::idSystemInfoId="), aVar.f41607a, ", referencedId=", str28));
                                        ArrayList arrayList6 = new ArrayList(aVar.f41608b);
                                        Iterator it10 = arrayList6.iterator();
                                        while (it10.hasNext()) {
                                            if (((String) it10.next()).equals(str28)) {
                                                it10.remove();
                                            }
                                        }
                                        com.perfectcorp.perfectlib.ph.template.a aVar2 = new com.perfectcorp.perfectlib.ph.template.a(aVar.f41607a, arrayList6, aVar.f41609c, aVar.d);
                                        if (MoreCollections.a(aVar2.f41608b)) {
                                            String str35 = aVar2.f41607a;
                                            try {
                                                sQLiteDatabase2.execSQL(DBUtility.d("DELETE FROM " + YMKDatabase.a(sQLiteDatabase2, "IdSystemInfo") + " WHERE Id IN (" + DBUtility.g(Collections.singletonList(str35)) + ")"));
                                                arrayList4.add(aVar2);
                                                try {
                                                    sQLiteDatabase2.execSQL(DBUtility.d("DELETE FROM " + YMKDatabase.a(sQLiteDatabase2, "ShapeInfo") + " WHERE GUID IN (" + DBUtility.g(Collections.singletonList(str35)) + ")"));
                                                } catch (Throwable th4) {
                                                    Log.e("ShapeInfoDao", "delete by ids", th4);
                                                }
                                            } catch (Throwable th5) {
                                                Log.e("IdSystemInfoDao", "delete ids", th5);
                                                throw th5;
                                            }
                                        } else {
                                            com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a.d(sQLiteDatabase2, aVar2);
                                        }
                                        it8 = it9;
                                        str27 = str2;
                                        str22 = str4;
                                        str23 = str33;
                                        str31 = str34;
                                    }
                                    String str36 = str23;
                                    String str37 = str31;
                                    deleter2.d(sQLiteDatabase2, str29);
                                    Iterator it11 = arrayList4.iterator();
                                    while (it11.hasNext()) {
                                        String str38 = ((com.perfectcorp.perfectlib.ph.template.a) it11.next()).f41607a;
                                        AtomicInteger atomicInteger = com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j.f41498a;
                                        deleter2.d(sQLiteDatabase2, new File(DownloadFolderHelper.d(), str38).getAbsolutePath());
                                    }
                                    AbstractList abstractListC = Lists.c(deleter2.f39489b, new g7(12));
                                    com.perfectcorp.perfectlib.ph.database.ymk.pattern.a.c(sQLiteDatabase2, abstractListC, false);
                                    com.perfectcorp.perfectlib.ph.database.ymk.mask.a.c(sQLiteDatabase2, abstractListC);
                                    com.perfectcorp.perfectlib.ph.database.ymk.tattooMask.b.c(sQLiteDatabase2, abstractListC);
                                    com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.h(sQLiteDatabase2, abstractListC);
                                    Iterator it12 = deleter2.f39490c.values().iterator();
                                    while (true) {
                                        Iterator it13 = it12;
                                        if (!it12.hasNext()) {
                                            break;
                                        }
                                        com.perfectcorp.perfectlib.ph.template.m mVar = (com.perfectcorp.perfectlib.ph.template.m) it13.next();
                                        String str39 = str3;
                                        ContentValues contentValuesB = mVar.b();
                                        String str40 = str;
                                        String str41 = mVar.f41671a;
                                        try {
                                            String str42 = str5;
                                            String str43 = str28;
                                            String str44 = str20;
                                            String str45 = str21;
                                            long jUpdate2 = sQLiteDatabase2.update(YMKDatabase.a(sQLiteDatabase2, "PatternInfo"), contentValuesB, "GUID=?", new String[]{str41});
                                            if (jUpdate2 < 0) {
                                                Log.g(5, "PatternInfoDao", "db.update failed. id: " + jUpdate2);
                                            }
                                            Log.g(3, "CacheCleaner", fc.i("updateMaskInfoDb::patternId=", str41, ", folderPath=", str29));
                                            ArrayList arrayList7 = new ArrayList();
                                            ArrayList arrayListA = com.perfectcorp.perfectlib.ph.database.ymk.mask.a.a(sQLiteDatabase2, str41);
                                            Iterator it14 = arrayListA.iterator();
                                            while (it14.hasNext()) {
                                                com.perfectcorp.perfectlib.ph.template.c cVar = (com.perfectcorp.perfectlib.ph.template.c) it14.next();
                                                ArrayList arrayList8 = new ArrayList(cVar.f41612c);
                                                CacheCleaner.Deleter.e(str29, arrayList8);
                                                ArrayList arrayList9 = new ArrayList(cVar.f41613e);
                                                CacheCleaner.Deleter.e(str29, arrayList9);
                                                ArrayList arrayList10 = new ArrayList(cVar.g);
                                                CacheCleaner.Deleter.e(str29, arrayList10);
                                                Iterator it15 = it14;
                                                ArrayList arrayList11 = new ArrayList(cVar.f41615h);
                                                CacheCleaner.Deleter.e(str29, arrayList11);
                                                com.perfectcorp.perfectlib.ph.template.c.a aVar3 = new com.perfectcorp.perfectlib.ph.template.c.a(cVar);
                                                aVar3.f41619c = arrayList8;
                                                String str46 = str44;
                                                String str47 = str45;
                                                String str48 = str25;
                                                String str49 = cVar.d;
                                                try {
                                                    JSONObject jSONObject = new JSONObject(str49);
                                                    str19 = str49;
                                                    try {
                                                        deleter = deleter2;
                                                        try {
                                                            ArrayList arrayList12 = new ArrayList(TemplatePaths.e(jSONObject.optJSONArray("shapesrc3d")));
                                                            CacheCleaner.Deleter.e(str29, arrayList12);
                                                            jSONObject.put("shapesrc3d", new JSONArray((Collection) arrayList12));
                                                            ArrayList arrayList13 = new ArrayList(TemplatePaths.e(jSONObject.optJSONArray("imagesrc")));
                                                            CacheCleaner.Deleter.e(str29, arrayList13);
                                                            jSONObject.put("imagesrc", new JSONArray((Collection) arrayList13));
                                                            ArrayList arrayList14 = new ArrayList(TemplatePaths.e(jSONObject.optJSONArray("secondsrc")));
                                                            CacheCleaner.Deleter.e(str29, arrayList14);
                                                            jSONObject.put("secondsrc", new JSONArray((Collection) arrayList14));
                                                            string = jSONObject.toString();
                                                        } catch (Throwable th6) {
                                                            th = th6;
                                                            Log.e("CacheCleaner", "getUpdatedMaskInfoExtra failed", th);
                                                            string = str19;
                                                        }
                                                    } catch (Throwable th7) {
                                                        th = th7;
                                                        deleter = deleter2;
                                                        Log.e("CacheCleaner", "getUpdatedMaskInfoExtra failed", th);
                                                        string = str19;
                                                        aVar3.d = string;
                                                        aVar3.f41620e = arrayList9;
                                                        aVar3.g = arrayList10;
                                                        aVar3.f41622h = arrayList11;
                                                        arrayList7.add(aVar3.a());
                                                        it14 = it15;
                                                        str44 = str46;
                                                        str45 = str47;
                                                        str25 = str48;
                                                        deleter2 = deleter;
                                                    }
                                                } catch (Throwable th8) {
                                                    th = th8;
                                                    str19 = str49;
                                                }
                                                aVar3.d = string;
                                                aVar3.f41620e = arrayList9;
                                                aVar3.g = arrayList10;
                                                aVar3.f41622h = arrayList11;
                                                arrayList7.add(aVar3.a());
                                                it14 = it15;
                                                str44 = str46;
                                                str45 = str47;
                                                str25 = str48;
                                                deleter2 = deleter;
                                            }
                                            String str50 = str44;
                                            String str51 = str25;
                                            String str52 = str45;
                                            CacheCleaner.Deleter deleter3 = deleter2;
                                            com.perfectcorp.perfectlib.ph.database.ymk.mask.a.c(sQLiteDatabase2, ImmutableSet.t(Lists.c(arrayListA, new g7(13))).h());
                                            Iterator it16 = arrayList7.iterator();
                                            while (it16.hasNext()) {
                                                com.perfectcorp.perfectlib.ph.database.ymk.mask.a.b(sQLiteDatabase2, (com.perfectcorp.perfectlib.ph.template.c) it16.next());
                                            }
                                            ArrayList arrayList15 = new ArrayList();
                                            ArrayList<com.perfectcorp.perfectlib.ph.database.ymk.tattooMask.a> arrayListA2 = com.perfectcorp.perfectlib.ph.database.ymk.tattooMask.b.a(sQLiteDatabase2, str41);
                                            for (com.perfectcorp.perfectlib.ph.database.ymk.tattooMask.a aVar4 : arrayListA2) {
                                                ArrayList arrayList16 = new ArrayList(aVar4.f41351c);
                                                CacheCleaner.Deleter.e(str29, arrayList16);
                                                com.perfectcorp.perfectlib.ph.database.ymk.tattooMask.a.C0158a c0158a = new com.perfectcorp.perfectlib.ph.database.ymk.tattooMask.a.C0158a(aVar4);
                                                arrayList15.add(new com.perfectcorp.perfectlib.ph.database.ymk.tattooMask.a(c0158a.f41354a, c0158a.f41355b, arrayList16, c0158a.d, "", ""));
                                            }
                                            com.perfectcorp.perfectlib.ph.database.ymk.tattooMask.b.c(sQLiteDatabase2, ImmutableSet.t(Lists.c(arrayListA2, new g7(14))).h());
                                            Iterator it17 = arrayList15.iterator();
                                            while (it17.hasNext()) {
                                                com.perfectcorp.perfectlib.ph.database.ymk.tattooMask.b.b(sQLiteDatabase2, (com.perfectcorp.perfectlib.ph.database.ymk.tattooMask.a) it17.next());
                                            }
                                            it12 = it13;
                                            str20 = str50;
                                            str21 = str52;
                                            str3 = str39;
                                            str = str40;
                                            str5 = str42;
                                            str28 = str43;
                                            str25 = str51;
                                            deleter2 = deleter3;
                                        } catch (Throwable th9) {
                                            Log.e("PatternInfoDao", "db.update exception: ", th9);
                                            throw th9;
                                        }
                                    }
                                    String str53 = str20;
                                    String str54 = str21;
                                    String str55 = str5;
                                    String str56 = str25;
                                    String str57 = str;
                                    String str58 = str28;
                                    CacheCleaner.Deleter deleter4 = deleter2;
                                    String str59 = str3;
                                    ArrayList arrayList17 = deleter4.d;
                                    try {
                                        List list3 = Contract.TextureInfo.f40253a;
                                        String str60 = str53;
                                        str6 = str54;
                                        str8 = str56;
                                        try {
                                            try {
                                                str7 = str37;
                                                try {
                                                    try {
                                                        Cursor cursorQuery3 = sQLiteDatabase2.query("TextureInfo", new String[]{"_id", str8, str6, str60}, "Thumbnail LIKE ?", new String[]{str7 + str29 + str7}, null, null, null, null);
                                                        try {
                                                            if (DBUtility.f(cursorQuery3)) {
                                                                bz bzVar2 = ImmutableList.f42200c;
                                                                ImmutableList.Builder builder3 = new ImmutableList.Builder();
                                                                while (true) {
                                                                    str9 = str60;
                                                                    try {
                                                                        cursor2 = cursorQuery3;
                                                                        try {
                                                                            builder3.f(new com.perfectcorp.perfectlib.ph.template.u(cursorQuery3.getString(cursorQuery3.getColumnIndex(str8)), TemplatePaths.a(cursorQuery3.getString(cursorQuery3.getColumnIndex(str6))), cursorQuery3.getString(cursorQuery3.getColumnIndex(str60))));
                                                                            if (!cursor2.moveToNext()) {
                                                                                break;
                                                                            }
                                                                            cursorQuery3 = cursor2;
                                                                            str60 = str9;
                                                                        } catch (Throwable th10) {
                                                                            th = th10;
                                                                            try {
                                                                                Log.e("TextureInfoDao", "getByPossiblePath thumbnailPathPrefix=" + str29, th);
                                                                                listI2 = Collections.EMPTY_LIST;
                                                                            } catch (Throwable th11) {
                                                                                IO.b(cursor2);
                                                                                throw th11;
                                                                            }
                                                                        }
                                                                    } catch (Throwable th12) {
                                                                        th = th12;
                                                                        cursor2 = cursorQuery3;
                                                                        Log.e("TextureInfoDao", "getByPossiblePath thumbnailPathPrefix=" + str29, th);
                                                                        listI2 = Collections.EMPTY_LIST;
                                                                        IO.b(cursor2);
                                                                        it2 = listI2.iterator();
                                                                        while (it2.hasNext()) {
                                                                            com.perfectcorp.perfectlib.ph.template.u uVar = (com.perfectcorp.perfectlib.ph.template.u) it2.next();
                                                                            StringBuilder sb3 = new StringBuilder("scanTextureAndUpdate TextureInfo=");
                                                                            uVar.getClass();
                                                                            ImmutableList immutableList = uVar.f41716b;
                                                                            str16 = uVar.f41715a;
                                                                            Iterator it18 = it2;
                                                                            ContentValues contentValues = new ContentValues();
                                                                            contentValues.put(str8, str16);
                                                                            String str61 = str8;
                                                                            contentValues.put(str6, TemplatePaths.d(immutableList));
                                                                            sb3.append(contentValues);
                                                                            Log.g(3, "CacheCleaner", sb3.toString());
                                                                            str17 = "removePathFromTextureInfo::textureId=";
                                                                            Log.g(3, "CacheCleaner", "removePathFromTextureInfo::textureId=" + str16 + ", folderPath=" + str29);
                                                                            ArrayList arrayList18 = new ArrayList(immutableList);
                                                                            it5 = arrayList18.iterator();
                                                                            while (it5.hasNext()) {
                                                                                str18 = (String) it5.next();
                                                                                if (str18.startsWith(str29)) {
                                                                                    it5.remove();
                                                                                    Log.g(3, "CacheCleaner", str17 + str16 + ", deleted thumb path=" + str18);
                                                                                }
                                                                                it5 = it5;
                                                                                str17 = str17;
                                                                            }
                                                                            com.perfectcorp.perfectlib.ph.template.u.a aVar5 = new com.perfectcorp.perfectlib.ph.template.u.a(uVar);
                                                                            arrayList17.add(new com.perfectcorp.perfectlib.ph.template.u(aVar5.f41718a, arrayList18, aVar5.f41720c));
                                                                            it2 = it18;
                                                                            str8 = str61;
                                                                        }
                                                                        str10 = str8;
                                                                        it3 = arrayList17.iterator();
                                                                        while (it3.hasNext()) {
                                                                            com.perfectcorp.perfectlib.ph.database.ymk.texture.a.b(sQLiteDatabase2, (com.perfectcorp.perfectlib.ph.template.u) it3.next());
                                                                        }
                                                                        List list4 = Contract.ReferenceElementInfo.f40233a;
                                                                        str22 = str4;
                                                                        str23 = str36;
                                                                        try {
                                                                            String[] strArr = {str23, str22};
                                                                            try {
                                                                                StringBuilder sb4 = new StringBuilder(str7);
                                                                                str11 = str58;
                                                                                try {
                                                                                    sb4.append(str11);
                                                                                    sb4.append(str7);
                                                                                    sQLiteDatabase = sQLiteDatabase2;
                                                                                    try {
                                                                                        cursorQuery = sQLiteDatabase.query("ReferenceElementInfo", strArr, "ReferencedIds LIKE ?", new String[]{sb4.toString()}, null, null, null, null);
                                                                                        try {
                                                                                            if (DBUtility.f(cursorQuery)) {
                                                                                                bz bzVar3 = ImmutableList.f42200c;
                                                                                                builder = new ImmutableList.Builder();
                                                                                                do {
                                                                                                    builder.f(new com.perfectcorp.perfectlib.ph.template.n(cursorQuery.getString(cursorQuery.getColumnIndex(str23)), TemplatePaths.a(cursorQuery.getString(cursorQuery.getColumnIndex(str22)))));
                                                                                                } while (cursorQuery.moveToNext());
                                                                                                listI3 = builder.i();
                                                                                                IO.b(cursorQuery);
                                                                                            } else {
                                                                                                listI3 = Collections.EMPTY_LIST;
                                                                                                IO.b(cursorQuery);
                                                                                            }
                                                                                        } catch (Throwable th13) {
                                                                                            th = th13;
                                                                                            try {
                                                                                                Log.e("ReferenceElementInfoDao", str2 + str11, th);
                                                                                                listI3 = Collections.EMPTY_LIST;
                                                                                            } catch (Throwable th14) {
                                                                                                IO.b(cursorQuery);
                                                                                                throw th14;
                                                                                            }
                                                                                        }
                                                                                    } catch (Throwable th15) {
                                                                                        th = th15;
                                                                                        sQLiteDatabase2 = sQLiteDatabase;
                                                                                        cursorQuery = null;
                                                                                        Log.e("ReferenceElementInfoDao", str2 + str11, th);
                                                                                        listI3 = Collections.EMPTY_LIST;
                                                                                        IO.b(cursorQuery);
                                                                                        for (com.perfectcorp.perfectlib.ph.template.n nVar : listI3) {
                                                                                            StringBuilder sb5 = new StringBuilder("scanReferenceElementInfosAndUpdateDb referenceElementInfo=");
                                                                                            ContentValues contentValuesA = nVar.a();
                                                                                            String str62 = nVar.f41698a;
                                                                                            sb5.append(contentValuesA);
                                                                                            Log.g(3, "CacheCleaner", sb5.toString());
                                                                                            String str63 = str55;
                                                                                            Log.g(3, "CacheCleaner", d21.p(new StringBuilder("removeReferencedIdFromInfo::referenceElementInfoId="), str62, str63, str11));
                                                                                            ArrayList arrayList19 = new ArrayList(nVar.f41699b);
                                                                                            it4 = arrayList19.iterator();
                                                                                            while (it4.hasNext()) {
                                                                                                if (((String) it4.next()).equals(str11)) {
                                                                                                    it4.remove();
                                                                                                }
                                                                                            }
                                                                                            com.perfectcorp.perfectlib.ph.template.n nVar2 = new com.perfectcorp.perfectlib.ph.template.n(str62, arrayList19);
                                                                                            try {
                                                                                                jUpdate = sQLiteDatabase2.update(YMKDatabase.a(sQLiteDatabase2, "ReferenceElementInfo"), nVar2.a(), "Id=?", new String[]{nVar2.f41698a});
                                                                                                if (jUpdate < 0) {
                                                                                                    Log.g(5, "ReferenceElementInfoDao", "db.update failed. id: " + jUpdate);
                                                                                                }
                                                                                                str55 = str63;
                                                                                            } catch (Throwable th16) {
                                                                                                Log.e("ReferenceElementInfoDao", "db.update exception: ", th16);
                                                                                                throw th16;
                                                                                            }
                                                                                        }
                                                                                        DownloadImageDao downloadImageDao = DownloadImageDao.d;
                                                                                        List<DownloadImageInfo> listE = downloadImageDao.e(sQLiteDatabase2, "referenceId", str11);
                                                                                        downloadImageDao.d(sQLiteDatabase2, "referenceId", str11);
                                                                                        for (DownloadImageInfo downloadImageInfo : listE) {
                                                                                            StringBuilder sb6 = new StringBuilder("scanDownloadImagesAndUpdateDb DownloadImageInfo=");
                                                                                            downloadImageInfo.getClass();
                                                                                            sb6.append(DownloadImageDao.o(downloadImageInfo));
                                                                                            Log.g(3, "CacheCleaner", sb6.toString());
                                                                                            if (DownloadImageDao.d.e(sQLiteDatabase2, ConfigurationName.DOWNLOAD_PLUGIN_URL, downloadImageInfo.f40306a).isEmpty()) {
                                                                                                deleter4.g.add(downloadImageInfo);
                                                                                            }
                                                                                        }
                                                                                        if (type == IdUsageDao.Type.SKU) {
                                                                                            optionalA = SkuDao.a(sQLiteDatabase2, str11, false);
                                                                                            if (optionalA.d()) {
                                                                                                beautyModeC = SkuTemplateUtils.c(((Sku) optionalA.c()).f41263b);
                                                                                                if (SkuTemplateUtils.b(beautyModeC)) {
                                                                                                    Log.g(3, "CacheCleaner", "Skip pattern major sku. beautyMode=" + beautyModeC);
                                                                                                } else {
                                                                                                    List listSingletonList2 = Collections.singletonList(str11);
                                                                                                    try {
                                                                                                        StringBuilder sb7 = new StringBuilder("SELECT GUID FROM ");
                                                                                                        str13 = str32;
                                                                                                        try {
                                                                                                            sb7.append(YMKDatabase.a(sQLiteDatabase2, str13));
                                                                                                            sb7.append(" WHERE SkuGUID IN (");
                                                                                                            sb7.append(DBUtility.g(listSingletonList2));
                                                                                                            str15 = str57;
                                                                                                            try {
                                                                                                                try {
                                                                                                                    sb7.append(str15);
                                                                                                                    cursorRawQuery2 = sQLiteDatabase2.rawQuery(DBUtility.d(sb7.toString()), null);
                                                                                                                    try {
                                                                                                                        if (DBUtility.f(cursorRawQuery2)) {
                                                                                                                            arrayList2 = new ArrayList();
                                                                                                                            str14 = str10;
                                                                                                                            do {
                                                                                                                                try {
                                                                                                                                    arrayList2.add(cursorRawQuery2.getString(cursorRawQuery2.getColumnIndex(str14)));
                                                                                                                                } catch (Throwable th17) {
                                                                                                                                    th = th17;
                                                                                                                                    try {
                                                                                                                                        str12 = str30;
                                                                                                                                        Log.e(str12, "getIdsBySkuId", th);
                                                                                                                                        List list5 = Collections.EMPTY_LIST;
                                                                                                                                        IO.b(cursorRawQuery2);
                                                                                                                                        list = list5;
                                                                                                                                    } catch (Throwable th18) {
                                                                                                                                        IO.b(cursorRawQuery2);
                                                                                                                                        throw th18;
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            } while (cursorRawQuery2.moveToNext());
                                                                                                                            IO.b(cursorRawQuery2);
                                                                                                                            str12 = str30;
                                                                                                                            list = arrayList2;
                                                                                                                        } else {
                                                                                                                            List list6 = Collections.EMPTY_LIST;
                                                                                                                            IO.b(cursorRawQuery2);
                                                                                                                            str12 = str30;
                                                                                                                            str14 = str10;
                                                                                                                            list = list6;
                                                                                                                        }
                                                                                                                    } catch (Throwable th19) {
                                                                                                                        th = th19;
                                                                                                                        str14 = str10;
                                                                                                                    }
                                                                                                                } catch (Throwable th20) {
                                                                                                                    th = th20;
                                                                                                                    str14 = str10;
                                                                                                                    cursorRawQuery2 = null;
                                                                                                                    str12 = str30;
                                                                                                                    Log.e(str12, "getIdsBySkuId", th);
                                                                                                                    List list7 = Collections.EMPTY_LIST;
                                                                                                                    IO.b(cursorRawQuery2);
                                                                                                                    list = list7;
                                                                                                                    sQLiteDatabase2.execSQL(DBUtility.d(str59 + YMKDatabase.a(sQLiteDatabase2, "PatternPaletteInfo") + " WHERE PaletteGUID IN (" + DBUtility.g(FluentIterable.n(list).i(Predicates.e(Predicates.d(arrayList5))).p()) + str15));
                                                                                                                    com.perfectcorp.perfectlib.ph.database.ymk.background.b bVar = com.perfectcorp.perfectlib.ph.database.ymk.background.b.d;
                                                                                                                    listSingletonList = Collections.singletonList(str11);
                                                                                                                    bVar.getClass();
                                                                                                                    Threads.b();
                                                                                                                    Objects.requireNonNull(listSingletonList);
                                                                                                                    sQLiteDatabase2.delete(YMKDatabase.a(sQLiteDatabase2, bVar.f40266b), "guid".concat(DBUtility.b(listSingletonList)), null);
                                                                                                                    deleter4.c(sQLiteDatabase2);
                                                                                                                    Threads.b();
                                                                                                                    sQLiteDatabase2.beginTransaction();
                                                                                                                    sQLiteDatabase2.delete(YMKDatabase.a(sQLiteDatabase2, "IdUsage"), "KeyId=?", new String[]{str11});
                                                                                                                    sQLiteDatabase2.setTransactionSuccessful();
                                                                                                                    sQLiteDatabase2.endTransaction();
                                                                                                                    i2 = CacheCleaner.AnonymousClass1.f39487a[type.ordinal()];
                                                                                                                    if (i2 != 1) {
                                                                                                                        handlerStatusResetter = handlerStatusResetter3;
                                                                                                                        handlerStatusResetter.f39496c = true;
                                                                                                                    } else if (i2 != 2) {
                                                                                                                        handlerStatusResetter = handlerStatusResetter3;
                                                                                                                        handlerStatusResetter.d = true;
                                                                                                                    } else if (i2 != 3) {
                                                                                                                        handlerStatusResetter = handlerStatusResetter3;
                                                                                                                        handlerStatusResetter.f39497e = true;
                                                                                                                    } else if (i2 != 4) {
                                                                                                                        handlerStatusResetter = handlerStatusResetter3;
                                                                                                                    } else {
                                                                                                                        handlerStatusResetter = handlerStatusResetter3;
                                                                                                                        handlerStatusResetter.f39495b = true;
                                                                                                                    }
                                                                                                                    if (!handlerStatusResetter.f39494a) {
                                                                                                                        if (handlerStatusResetter.f39495b) {
                                                                                                                            SkuHandlerPreferences.f40330a.m();
                                                                                                                            handlerStatusResetter.f39498f = true;
                                                                                                                        }
                                                                                                                        if (handlerStatusResetter.f39496c) {
                                                                                                                            LookHandlerPreferences.f40326a.m();
                                                                                                                            handlerStatusResetter.g = true;
                                                                                                                        }
                                                                                                                        if (handlerStatusResetter.d) {
                                                                                                                            NailLookHandlerPreferences.f40328a.edit().remove("LOOK_LIST_MESSAGE_DIGEST").apply();
                                                                                                                            handlerStatusResetter.f39499h = true;
                                                                                                                        }
                                                                                                                        if (!handlerStatusResetter.f39497e) {
                                                                                                                        }
                                                                                                                    }
                                                                                                                    handlerStatusResetter2 = handlerStatusResetter;
                                                                                                                    str25 = str14;
                                                                                                                    str21 = str6;
                                                                                                                    str24 = str12;
                                                                                                                    str26 = str13;
                                                                                                                    it6 = it7;
                                                                                                                    arrayList3 = arrayList5;
                                                                                                                    str20 = str9;
                                                                                                                }
                                                                                                                sQLiteDatabase2.execSQL(DBUtility.d(str59 + YMKDatabase.a(sQLiteDatabase2, "PatternPaletteInfo") + " WHERE PaletteGUID IN (" + DBUtility.g(FluentIterable.n(list).i(Predicates.e(Predicates.d(arrayList5))).p()) + str15));
                                                                                                            } catch (Throwable th21) {
                                                                                                                Log.e("PatternPaletteInfoDao", "delete by palette ids", th21);
                                                                                                            }
                                                                                                        } catch (Throwable th22) {
                                                                                                            th = th22;
                                                                                                            str15 = str57;
                                                                                                            str14 = str10;
                                                                                                            cursorRawQuery2 = null;
                                                                                                            str12 = str30;
                                                                                                            Log.e(str12, "getIdsBySkuId", th);
                                                                                                            List list8 = Collections.EMPTY_LIST;
                                                                                                            IO.b(cursorRawQuery2);
                                                                                                            list = list8;
                                                                                                            sQLiteDatabase2.execSQL(DBUtility.d(str59 + YMKDatabase.a(sQLiteDatabase2, "PatternPaletteInfo") + " WHERE PaletteGUID IN (" + DBUtility.g(FluentIterable.n(list).i(Predicates.e(Predicates.d(arrayList5))).p()) + str15));
                                                                                                            com.perfectcorp.perfectlib.ph.database.ymk.background.b bVar2 = com.perfectcorp.perfectlib.ph.database.ymk.background.b.d;
                                                                                                            listSingletonList = Collections.singletonList(str11);
                                                                                                            bVar2.getClass();
                                                                                                            Threads.b();
                                                                                                            Objects.requireNonNull(listSingletonList);
                                                                                                            sQLiteDatabase2.delete(YMKDatabase.a(sQLiteDatabase2, bVar2.f40266b), "guid".concat(DBUtility.b(listSingletonList)), null);
                                                                                                            deleter4.c(sQLiteDatabase2);
                                                                                                            Threads.b();
                                                                                                            sQLiteDatabase2.beginTransaction();
                                                                                                            sQLiteDatabase2.delete(YMKDatabase.a(sQLiteDatabase2, "IdUsage"), "KeyId=?", new String[]{str11});
                                                                                                            sQLiteDatabase2.setTransactionSuccessful();
                                                                                                            sQLiteDatabase2.endTransaction();
                                                                                                            i2 = CacheCleaner.AnonymousClass1.f39487a[type.ordinal()];
                                                                                                            if (i2 != 1) {
                                                                                                                handlerStatusResetter = handlerStatusResetter3;
                                                                                                                handlerStatusResetter.f39496c = true;
                                                                                                            } else if (i2 != 2) {
                                                                                                                handlerStatusResetter = handlerStatusResetter3;
                                                                                                                handlerStatusResetter.d = true;
                                                                                                            } else if (i2 != 3) {
                                                                                                                handlerStatusResetter = handlerStatusResetter3;
                                                                                                                handlerStatusResetter.f39497e = true;
                                                                                                            } else if (i2 != 4) {
                                                                                                                handlerStatusResetter = handlerStatusResetter3;
                                                                                                            } else {
                                                                                                                handlerStatusResetter = handlerStatusResetter3;
                                                                                                                handlerStatusResetter.f39495b = true;
                                                                                                            }
                                                                                                            if (!handlerStatusResetter.f39494a) {
                                                                                                                if (handlerStatusResetter.f39495b) {
                                                                                                                    SkuHandlerPreferences.f40330a.m();
                                                                                                                    handlerStatusResetter.f39498f = true;
                                                                                                                }
                                                                                                                if (handlerStatusResetter.f39496c) {
                                                                                                                    LookHandlerPreferences.f40326a.m();
                                                                                                                    handlerStatusResetter.g = true;
                                                                                                                }
                                                                                                                if (handlerStatusResetter.d) {
                                                                                                                    NailLookHandlerPreferences.f40328a.edit().remove("LOOK_LIST_MESSAGE_DIGEST").apply();
                                                                                                                    handlerStatusResetter.f39499h = true;
                                                                                                                }
                                                                                                                if (!handlerStatusResetter.f39497e) {
                                                                                                                }
                                                                                                            }
                                                                                                            handlerStatusResetter2 = handlerStatusResetter;
                                                                                                            str25 = str14;
                                                                                                            str21 = str6;
                                                                                                            str24 = str12;
                                                                                                            str26 = str13;
                                                                                                            it6 = it7;
                                                                                                            arrayList3 = arrayList5;
                                                                                                            str20 = str9;
                                                                                                        }
                                                                                                    } catch (Throwable th23) {
                                                                                                        th = th23;
                                                                                                        str13 = str32;
                                                                                                    }
                                                                                                }
                                                                                            } else {
                                                                                                Log.g(5, "CacheCleaner", "Can't find sku.");
                                                                                            }
                                                                                            str12 = str30;
                                                                                            str13 = str32;
                                                                                            str14 = str10;
                                                                                        } else {
                                                                                            str12 = str30;
                                                                                            str13 = str32;
                                                                                            str14 = str10;
                                                                                        }
                                                                                        com.perfectcorp.perfectlib.ph.database.ymk.background.b bVar3 = com.perfectcorp.perfectlib.ph.database.ymk.background.b.d;
                                                                                        listSingletonList = Collections.singletonList(str11);
                                                                                        bVar3.getClass();
                                                                                        Threads.b();
                                                                                        Objects.requireNonNull(listSingletonList);
                                                                                        sQLiteDatabase2.delete(YMKDatabase.a(sQLiteDatabase2, bVar3.f40266b), "guid".concat(DBUtility.b(listSingletonList)), null);
                                                                                        deleter4.c(sQLiteDatabase2);
                                                                                        Threads.b();
                                                                                        sQLiteDatabase2.beginTransaction();
                                                                                        sQLiteDatabase2.delete(YMKDatabase.a(sQLiteDatabase2, "IdUsage"), "KeyId=?", new String[]{str11});
                                                                                        sQLiteDatabase2.setTransactionSuccessful();
                                                                                        sQLiteDatabase2.endTransaction();
                                                                                        i2 = CacheCleaner.AnonymousClass1.f39487a[type.ordinal()];
                                                                                        if (i2 != 1) {
                                                                                            handlerStatusResetter = handlerStatusResetter3;
                                                                                            handlerStatusResetter.f39496c = true;
                                                                                        } else if (i2 != 2) {
                                                                                            handlerStatusResetter = handlerStatusResetter3;
                                                                                            handlerStatusResetter.d = true;
                                                                                        } else if (i2 != 3) {
                                                                                            handlerStatusResetter = handlerStatusResetter3;
                                                                                            handlerStatusResetter.f39497e = true;
                                                                                        } else if (i2 != 4) {
                                                                                            handlerStatusResetter = handlerStatusResetter3;
                                                                                        } else {
                                                                                            handlerStatusResetter = handlerStatusResetter3;
                                                                                            handlerStatusResetter.f39495b = true;
                                                                                        }
                                                                                        if (!handlerStatusResetter.f39494a) {
                                                                                            if (handlerStatusResetter.f39495b) {
                                                                                                SkuHandlerPreferences.f40330a.m();
                                                                                                handlerStatusResetter.f39498f = true;
                                                                                            }
                                                                                            if (handlerStatusResetter.f39496c) {
                                                                                                LookHandlerPreferences.f40326a.m();
                                                                                                handlerStatusResetter.g = true;
                                                                                            }
                                                                                            if (handlerStatusResetter.d) {
                                                                                                NailLookHandlerPreferences.f40328a.edit().remove("LOOK_LIST_MESSAGE_DIGEST").apply();
                                                                                                handlerStatusResetter.f39499h = true;
                                                                                            }
                                                                                            if (!handlerStatusResetter.f39497e) {
                                                                                            }
                                                                                        }
                                                                                        handlerStatusResetter2 = handlerStatusResetter;
                                                                                        str25 = str14;
                                                                                        str21 = str6;
                                                                                        str24 = str12;
                                                                                        str26 = str13;
                                                                                        it6 = it7;
                                                                                        arrayList3 = arrayList5;
                                                                                        str20 = str9;
                                                                                    }
                                                                                } catch (Throwable th24) {
                                                                                    th = th24;
                                                                                }
                                                                            } catch (Throwable th25) {
                                                                                th = th25;
                                                                                str11 = str58;
                                                                                cursorQuery = null;
                                                                                Log.e("ReferenceElementInfoDao", str2 + str11, th);
                                                                                listI3 = Collections.EMPTY_LIST;
                                                                                IO.b(cursorQuery);
                                                                                while (r0.hasNext()) {
                                                                                    StringBuilder sb8 = new StringBuilder("scanReferenceElementInfosAndUpdateDb referenceElementInfo=");
                                                                                    ContentValues contentValuesA2 = nVar.a();
                                                                                    String str64 = nVar.f41698a;
                                                                                    sb8.append(contentValuesA2);
                                                                                    Log.g(3, "CacheCleaner", sb8.toString());
                                                                                    String str65 = str55;
                                                                                    Log.g(3, "CacheCleaner", d21.p(new StringBuilder("removeReferencedIdFromInfo::referenceElementInfoId="), str64, str65, str11));
                                                                                    ArrayList arrayList110 = new ArrayList(nVar.f41699b);
                                                                                    it4 = arrayList110.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (((String) it4.next()).equals(str11)) {
                                                                                            it4.remove();
                                                                                        }
                                                                                    }
                                                                                    com.perfectcorp.perfectlib.ph.template.n nVar3 = new com.perfectcorp.perfectlib.ph.template.n(str64, arrayList110);
                                                                                    jUpdate = sQLiteDatabase2.update(YMKDatabase.a(sQLiteDatabase2, "ReferenceElementInfo"), nVar3.a(), "Id=?", new String[]{nVar3.f41698a});
                                                                                    if (jUpdate < 0) {
                                                                                        Log.g(5, "ReferenceElementInfoDao", "db.update failed. id: " + jUpdate);
                                                                                    }
                                                                                    str55 = str65;
                                                                                }
                                                                                DownloadImageDao downloadImageDao2 = DownloadImageDao.d;
                                                                                List<DownloadImageInfo> listE2 = downloadImageDao2.e(sQLiteDatabase2, "referenceId", str11);
                                                                                downloadImageDao2.d(sQLiteDatabase2, "referenceId", str11);
                                                                                while (r0.hasNext()) {
                                                                                    StringBuilder sb9 = new StringBuilder("scanDownloadImagesAndUpdateDb DownloadImageInfo=");
                                                                                    downloadImageInfo.getClass();
                                                                                    sb9.append(DownloadImageDao.o(downloadImageInfo));
                                                                                    Log.g(3, "CacheCleaner", sb9.toString());
                                                                                    if (DownloadImageDao.d.e(sQLiteDatabase2, ConfigurationName.DOWNLOAD_PLUGIN_URL, downloadImageInfo.f40306a).isEmpty()) {
                                                                                        deleter4.g.add(downloadImageInfo);
                                                                                    }
                                                                                }
                                                                                if (type == IdUsageDao.Type.SKU) {
                                                                                    optionalA = SkuDao.a(sQLiteDatabase2, str11, false);
                                                                                    if (optionalA.d()) {
                                                                                        Log.g(5, "CacheCleaner", "Can't find sku.");
                                                                                    } else {
                                                                                        beautyModeC = SkuTemplateUtils.c(((Sku) optionalA.c()).f41263b);
                                                                                        if (SkuTemplateUtils.b(beautyModeC)) {
                                                                                            Log.g(3, "CacheCleaner", "Skip pattern major sku. beautyMode=" + beautyModeC);
                                                                                        } else {
                                                                                            List listSingletonList3 = Collections.singletonList(str11);
                                                                                            StringBuilder sb10 = new StringBuilder("SELECT GUID FROM ");
                                                                                            str13 = str32;
                                                                                            sb10.append(YMKDatabase.a(sQLiteDatabase2, str13));
                                                                                            sb10.append(" WHERE SkuGUID IN (");
                                                                                            sb10.append(DBUtility.g(listSingletonList3));
                                                                                            str15 = str57;
                                                                                            sb10.append(str15);
                                                                                            cursorRawQuery2 = sQLiteDatabase2.rawQuery(DBUtility.d(sb10.toString()), null);
                                                                                            if (DBUtility.f(cursorRawQuery2)) {
                                                                                                List list9 = Collections.EMPTY_LIST;
                                                                                                IO.b(cursorRawQuery2);
                                                                                                str12 = str30;
                                                                                                str14 = str10;
                                                                                                list = list9;
                                                                                            } else {
                                                                                                arrayList2 = new ArrayList();
                                                                                                str14 = str10;
                                                                                                do {
                                                                                                    arrayList2.add(cursorRawQuery2.getString(cursorRawQuery2.getColumnIndex(str14)));
                                                                                                } while (cursorRawQuery2.moveToNext());
                                                                                                IO.b(cursorRawQuery2);
                                                                                                str12 = str30;
                                                                                                list = arrayList2;
                                                                                            }
                                                                                            sQLiteDatabase2.execSQL(DBUtility.d(str59 + YMKDatabase.a(sQLiteDatabase2, "PatternPaletteInfo") + " WHERE PaletteGUID IN (" + DBUtility.g(FluentIterable.n(list).i(Predicates.e(Predicates.d(arrayList5))).p()) + str15));
                                                                                        }
                                                                                    }
                                                                                    str12 = str30;
                                                                                    str13 = str32;
                                                                                    str14 = str10;
                                                                                } else {
                                                                                    str12 = str30;
                                                                                    str13 = str32;
                                                                                    str14 = str10;
                                                                                }
                                                                                com.perfectcorp.perfectlib.ph.database.ymk.background.b bVar4 = com.perfectcorp.perfectlib.ph.database.ymk.background.b.d;
                                                                                listSingletonList = Collections.singletonList(str11);
                                                                                bVar4.getClass();
                                                                                Threads.b();
                                                                                Objects.requireNonNull(listSingletonList);
                                                                                sQLiteDatabase2.delete(YMKDatabase.a(sQLiteDatabase2, bVar4.f40266b), "guid".concat(DBUtility.b(listSingletonList)), null);
                                                                                deleter4.c(sQLiteDatabase2);
                                                                                Threads.b();
                                                                                sQLiteDatabase2.beginTransaction();
                                                                                sQLiteDatabase2.delete(YMKDatabase.a(sQLiteDatabase2, "IdUsage"), "KeyId=?", new String[]{str11});
                                                                                sQLiteDatabase2.setTransactionSuccessful();
                                                                                sQLiteDatabase2.endTransaction();
                                                                                i2 = CacheCleaner.AnonymousClass1.f39487a[type.ordinal()];
                                                                                if (i2 != 1) {
                                                                                    handlerStatusResetter = handlerStatusResetter3;
                                                                                    handlerStatusResetter.f39496c = true;
                                                                                } else if (i2 != 2) {
                                                                                    handlerStatusResetter = handlerStatusResetter3;
                                                                                    handlerStatusResetter.d = true;
                                                                                } else if (i2 != 3) {
                                                                                    handlerStatusResetter = handlerStatusResetter3;
                                                                                    handlerStatusResetter.f39497e = true;
                                                                                } else if (i2 != 4) {
                                                                                    handlerStatusResetter = handlerStatusResetter3;
                                                                                } else {
                                                                                    handlerStatusResetter = handlerStatusResetter3;
                                                                                    handlerStatusResetter.f39495b = true;
                                                                                }
                                                                                if (!handlerStatusResetter.f39494a) {
                                                                                    if (handlerStatusResetter.f39495b) {
                                                                                        SkuHandlerPreferences.f40330a.m();
                                                                                        handlerStatusResetter.f39498f = true;
                                                                                    }
                                                                                    if (handlerStatusResetter.f39496c) {
                                                                                        LookHandlerPreferences.f40326a.m();
                                                                                        handlerStatusResetter.g = true;
                                                                                    }
                                                                                    if (handlerStatusResetter.d) {
                                                                                        NailLookHandlerPreferences.f40328a.edit().remove("LOOK_LIST_MESSAGE_DIGEST").apply();
                                                                                        handlerStatusResetter.f39499h = true;
                                                                                    }
                                                                                    if (!handlerStatusResetter.f39497e) {
                                                                                    }
                                                                                }
                                                                                handlerStatusResetter2 = handlerStatusResetter;
                                                                                str25 = str14;
                                                                                str21 = str6;
                                                                                str24 = str12;
                                                                                str26 = str13;
                                                                                it6 = it7;
                                                                                arrayList3 = arrayList5;
                                                                                str20 = str9;
                                                                            }
                                                                        } catch (Throwable th26) {
                                                                            th = th26;
                                                                        }
                                                                        while (r0.hasNext()) {
                                                                            StringBuilder sb11 = new StringBuilder("scanReferenceElementInfosAndUpdateDb referenceElementInfo=");
                                                                            ContentValues contentValuesA3 = nVar.a();
                                                                            String str66 = nVar.f41698a;
                                                                            sb11.append(contentValuesA3);
                                                                            Log.g(3, "CacheCleaner", sb11.toString());
                                                                            String str67 = str55;
                                                                            Log.g(3, "CacheCleaner", d21.p(new StringBuilder("removeReferencedIdFromInfo::referenceElementInfoId="), str66, str67, str11));
                                                                            ArrayList arrayList111 = new ArrayList(nVar.f41699b);
                                                                            it4 = arrayList111.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (((String) it4.next()).equals(str11)) {
                                                                                    it4.remove();
                                                                                }
                                                                            }
                                                                            com.perfectcorp.perfectlib.ph.template.n nVar4 = new com.perfectcorp.perfectlib.ph.template.n(str66, arrayList111);
                                                                            jUpdate = sQLiteDatabase2.update(YMKDatabase.a(sQLiteDatabase2, "ReferenceElementInfo"), nVar4.a(), "Id=?", new String[]{nVar4.f41698a});
                                                                            if (jUpdate < 0) {
                                                                                Log.g(5, "ReferenceElementInfoDao", "db.update failed. id: " + jUpdate);
                                                                            }
                                                                            str55 = str67;
                                                                        }
                                                                        DownloadImageDao downloadImageDao3 = DownloadImageDao.d;
                                                                        List<DownloadImageInfo> listE3 = downloadImageDao3.e(sQLiteDatabase2, "referenceId", str11);
                                                                        downloadImageDao3.d(sQLiteDatabase2, "referenceId", str11);
                                                                        while (r0.hasNext()) {
                                                                            StringBuilder sb12 = new StringBuilder("scanDownloadImagesAndUpdateDb DownloadImageInfo=");
                                                                            downloadImageInfo.getClass();
                                                                            sb12.append(DownloadImageDao.o(downloadImageInfo));
                                                                            Log.g(3, "CacheCleaner", sb12.toString());
                                                                            if (DownloadImageDao.d.e(sQLiteDatabase2, ConfigurationName.DOWNLOAD_PLUGIN_URL, downloadImageInfo.f40306a).isEmpty()) {
                                                                                deleter4.g.add(downloadImageInfo);
                                                                            }
                                                                        }
                                                                        if (type == IdUsageDao.Type.SKU) {
                                                                            optionalA = SkuDao.a(sQLiteDatabase2, str11, false);
                                                                            if (optionalA.d()) {
                                                                                Log.g(5, "CacheCleaner", "Can't find sku.");
                                                                            } else {
                                                                                beautyModeC = SkuTemplateUtils.c(((Sku) optionalA.c()).f41263b);
                                                                                if (SkuTemplateUtils.b(beautyModeC)) {
                                                                                    Log.g(3, "CacheCleaner", "Skip pattern major sku. beautyMode=" + beautyModeC);
                                                                                } else {
                                                                                    List listSingletonList4 = Collections.singletonList(str11);
                                                                                    StringBuilder sb13 = new StringBuilder("SELECT GUID FROM ");
                                                                                    str13 = str32;
                                                                                    sb13.append(YMKDatabase.a(sQLiteDatabase2, str13));
                                                                                    sb13.append(" WHERE SkuGUID IN (");
                                                                                    sb13.append(DBUtility.g(listSingletonList4));
                                                                                    str15 = str57;
                                                                                    sb13.append(str15);
                                                                                    cursorRawQuery2 = sQLiteDatabase2.rawQuery(DBUtility.d(sb13.toString()), null);
                                                                                    if (DBUtility.f(cursorRawQuery2)) {
                                                                                        List list10 = Collections.EMPTY_LIST;
                                                                                        IO.b(cursorRawQuery2);
                                                                                        str12 = str30;
                                                                                        str14 = str10;
                                                                                        list = list10;
                                                                                    } else {
                                                                                        arrayList2 = new ArrayList();
                                                                                        str14 = str10;
                                                                                        do {
                                                                                            arrayList2.add(cursorRawQuery2.getString(cursorRawQuery2.getColumnIndex(str14)));
                                                                                        } while (cursorRawQuery2.moveToNext());
                                                                                        IO.b(cursorRawQuery2);
                                                                                        str12 = str30;
                                                                                        list = arrayList2;
                                                                                    }
                                                                                    sQLiteDatabase2.execSQL(DBUtility.d(str59 + YMKDatabase.a(sQLiteDatabase2, "PatternPaletteInfo") + " WHERE PaletteGUID IN (" + DBUtility.g(FluentIterable.n(list).i(Predicates.e(Predicates.d(arrayList5))).p()) + str15));
                                                                                }
                                                                            }
                                                                            str12 = str30;
                                                                            str13 = str32;
                                                                            str14 = str10;
                                                                        } else {
                                                                            str12 = str30;
                                                                            str13 = str32;
                                                                            str14 = str10;
                                                                        }
                                                                        com.perfectcorp.perfectlib.ph.database.ymk.background.b bVar5 = com.perfectcorp.perfectlib.ph.database.ymk.background.b.d;
                                                                        listSingletonList = Collections.singletonList(str11);
                                                                        bVar5.getClass();
                                                                        Threads.b();
                                                                        Objects.requireNonNull(listSingletonList);
                                                                        try {
                                                                            sQLiteDatabase2.delete(YMKDatabase.a(sQLiteDatabase2, bVar5.f40266b), "guid".concat(DBUtility.b(listSingletonList)), null);
                                                                        } catch (Throwable th27) {
                                                                            th = th27;
                                                                            Log.e("BackgroundInfoDao", "[deleteByGuids] failed. guids=" + listSingletonList, th);
                                                                        }
                                                                        deleter4.c(sQLiteDatabase2);
                                                                        Threads.b();
                                                                        sQLiteDatabase2.beginTransaction();
                                                                        sQLiteDatabase2.delete(YMKDatabase.a(sQLiteDatabase2, "IdUsage"), "KeyId=?", new String[]{str11});
                                                                        sQLiteDatabase2.setTransactionSuccessful();
                                                                        sQLiteDatabase2.endTransaction();
                                                                        i2 = CacheCleaner.AnonymousClass1.f39487a[type.ordinal()];
                                                                        if (i2 != 1) {
                                                                            handlerStatusResetter = handlerStatusResetter3;
                                                                            handlerStatusResetter.f39496c = true;
                                                                        } else if (i2 != 2) {
                                                                            handlerStatusResetter = handlerStatusResetter3;
                                                                            handlerStatusResetter.d = true;
                                                                        } else if (i2 != 3) {
                                                                            handlerStatusResetter = handlerStatusResetter3;
                                                                            handlerStatusResetter.f39497e = true;
                                                                        } else if (i2 != 4) {
                                                                            handlerStatusResetter = handlerStatusResetter3;
                                                                        } else {
                                                                            handlerStatusResetter = handlerStatusResetter3;
                                                                            handlerStatusResetter.f39495b = true;
                                                                        }
                                                                        if (!handlerStatusResetter.f39494a) {
                                                                            if (handlerStatusResetter.f39495b) {
                                                                                SkuHandlerPreferences.f40330a.m();
                                                                                handlerStatusResetter.f39498f = true;
                                                                            }
                                                                            if (handlerStatusResetter.f39496c) {
                                                                                LookHandlerPreferences.f40326a.m();
                                                                                handlerStatusResetter.g = true;
                                                                            }
                                                                            if (handlerStatusResetter.d) {
                                                                                NailLookHandlerPreferences.f40328a.edit().remove("LOOK_LIST_MESSAGE_DIGEST").apply();
                                                                                handlerStatusResetter.f39499h = true;
                                                                            }
                                                                            if (!handlerStatusResetter.f39497e) {
                                                                            }
                                                                        }
                                                                        handlerStatusResetter2 = handlerStatusResetter;
                                                                        str25 = str14;
                                                                        str21 = str6;
                                                                        str24 = str12;
                                                                        str26 = str13;
                                                                        it6 = it7;
                                                                        arrayList3 = arrayList5;
                                                                        str20 = str9;
                                                                    }
                                                                }
                                                                listI2 = builder3.i();
                                                                IO.b(cursor2);
                                                            } else {
                                                                listI2 = Collections.EMPTY_LIST;
                                                                IO.b(cursorQuery3);
                                                                str9 = str60;
                                                            }
                                                        } catch (Throwable th28) {
                                                            th = th28;
                                                            str9 = str60;
                                                        }
                                                    } catch (Throwable th29) {
                                                        th = th29;
                                                        str9 = str60;
                                                        sQLiteDatabase2 = sQLiteDatabase2;
                                                        cursor2 = null;
                                                        Log.e("TextureInfoDao", "getByPossiblePath thumbnailPathPrefix=" + str29, th);
                                                        listI2 = Collections.EMPTY_LIST;
                                                        IO.b(cursor2);
                                                        it2 = listI2.iterator();
                                                        while (it2.hasNext()) {
                                                            com.perfectcorp.perfectlib.ph.template.u uVar2 = (com.perfectcorp.perfectlib.ph.template.u) it2.next();
                                                            StringBuilder sb14 = new StringBuilder("scanTextureAndUpdate TextureInfo=");
                                                            uVar2.getClass();
                                                            ImmutableList immutableList2 = uVar2.f41716b;
                                                            str16 = uVar2.f41715a;
                                                            Iterator it19 = it2;
                                                            ContentValues contentValues2 = new ContentValues();
                                                            contentValues2.put(str8, str16);
                                                            String str68 = str8;
                                                            contentValues2.put(str6, TemplatePaths.d(immutableList2));
                                                            sb14.append(contentValues2);
                                                            Log.g(3, "CacheCleaner", sb14.toString());
                                                            str17 = "removePathFromTextureInfo::textureId=";
                                                            Log.g(3, "CacheCleaner", "removePathFromTextureInfo::textureId=" + str16 + ", folderPath=" + str29);
                                                            ArrayList arrayList112 = new ArrayList(immutableList2);
                                                            it5 = arrayList112.iterator();
                                                            while (it5.hasNext()) {
                                                                str18 = (String) it5.next();
                                                                if (str18.startsWith(str29)) {
                                                                    it5.remove();
                                                                    Log.g(3, "CacheCleaner", str17 + str16 + ", deleted thumb path=" + str18);
                                                                }
                                                                it5 = it5;
                                                                str17 = str17;
                                                            }
                                                            com.perfectcorp.perfectlib.ph.template.u.a aVar6 = new com.perfectcorp.perfectlib.ph.template.u.a(uVar2);
                                                            arrayList17.add(new com.perfectcorp.perfectlib.ph.template.u(aVar6.f41718a, arrayList112, aVar6.f41720c));
                                                            it2 = it19;
                                                            str8 = str68;
                                                        }
                                                        str10 = str8;
                                                        it3 = arrayList17.iterator();
                                                        while (it3.hasNext()) {
                                                            com.perfectcorp.perfectlib.ph.database.ymk.texture.a.b(sQLiteDatabase2, (com.perfectcorp.perfectlib.ph.template.u) it3.next());
                                                        }
                                                        List list11 = Contract.ReferenceElementInfo.f40233a;
                                                        str22 = str4;
                                                        str23 = str36;
                                                        String[] strArr2 = {str23, str22};
                                                        StringBuilder sb15 = new StringBuilder(str7);
                                                        str11 = str58;
                                                        sb15.append(str11);
                                                        sb15.append(str7);
                                                        sQLiteDatabase = sQLiteDatabase2;
                                                        cursorQuery = sQLiteDatabase.query("ReferenceElementInfo", strArr2, "ReferencedIds LIKE ?", new String[]{sb15.toString()}, null, null, null, null);
                                                        if (DBUtility.f(cursorQuery)) {
                                                            listI3 = Collections.EMPTY_LIST;
                                                            IO.b(cursorQuery);
                                                        } else {
                                                            bz bzVar4 = ImmutableList.f42200c;
                                                            builder = new ImmutableList.Builder();
                                                            do {
                                                                builder.f(new com.perfectcorp.perfectlib.ph.template.n(cursorQuery.getString(cursorQuery.getColumnIndex(str23)), TemplatePaths.a(cursorQuery.getString(cursorQuery.getColumnIndex(str22)))));
                                                            } while (cursorQuery.moveToNext());
                                                            listI3 = builder.i();
                                                            IO.b(cursorQuery);
                                                        }
                                                        while (r0.hasNext()) {
                                                            StringBuilder sb16 = new StringBuilder("scanReferenceElementInfosAndUpdateDb referenceElementInfo=");
                                                            ContentValues contentValuesA4 = nVar.a();
                                                            String str69 = nVar.f41698a;
                                                            sb16.append(contentValuesA4);
                                                            Log.g(3, "CacheCleaner", sb16.toString());
                                                            String str610 = str55;
                                                            Log.g(3, "CacheCleaner", d21.p(new StringBuilder("removeReferencedIdFromInfo::referenceElementInfoId="), str69, str610, str11));
                                                            ArrayList arrayList113 = new ArrayList(nVar.f41699b);
                                                            it4 = arrayList113.iterator();
                                                            while (it4.hasNext()) {
                                                                if (((String) it4.next()).equals(str11)) {
                                                                    it4.remove();
                                                                }
                                                            }
                                                            com.perfectcorp.perfectlib.ph.template.n nVar5 = new com.perfectcorp.perfectlib.ph.template.n(str69, arrayList113);
                                                            jUpdate = sQLiteDatabase2.update(YMKDatabase.a(sQLiteDatabase2, "ReferenceElementInfo"), nVar5.a(), "Id=?", new String[]{nVar5.f41698a});
                                                            if (jUpdate < 0) {
                                                                Log.g(5, "ReferenceElementInfoDao", "db.update failed. id: " + jUpdate);
                                                            }
                                                            str55 = str610;
                                                        }
                                                        DownloadImageDao downloadImageDao4 = DownloadImageDao.d;
                                                        List<DownloadImageInfo> listE4 = downloadImageDao4.e(sQLiteDatabase2, "referenceId", str11);
                                                        downloadImageDao4.d(sQLiteDatabase2, "referenceId", str11);
                                                        while (r0.hasNext()) {
                                                            StringBuilder sb17 = new StringBuilder("scanDownloadImagesAndUpdateDb DownloadImageInfo=");
                                                            downloadImageInfo.getClass();
                                                            sb17.append(DownloadImageDao.o(downloadImageInfo));
                                                            Log.g(3, "CacheCleaner", sb17.toString());
                                                            if (DownloadImageDao.d.e(sQLiteDatabase2, ConfigurationName.DOWNLOAD_PLUGIN_URL, downloadImageInfo.f40306a).isEmpty()) {
                                                                deleter4.g.add(downloadImageInfo);
                                                            }
                                                        }
                                                        if (type == IdUsageDao.Type.SKU) {
                                                            optionalA = SkuDao.a(sQLiteDatabase2, str11, false);
                                                            if (optionalA.d()) {
                                                                Log.g(5, "CacheCleaner", "Can't find sku.");
                                                            } else {
                                                                beautyModeC = SkuTemplateUtils.c(((Sku) optionalA.c()).f41263b);
                                                                if (SkuTemplateUtils.b(beautyModeC)) {
                                                                    Log.g(3, "CacheCleaner", "Skip pattern major sku. beautyMode=" + beautyModeC);
                                                                } else {
                                                                    List listSingletonList5 = Collections.singletonList(str11);
                                                                    StringBuilder sb18 = new StringBuilder("SELECT GUID FROM ");
                                                                    str13 = str32;
                                                                    sb18.append(YMKDatabase.a(sQLiteDatabase2, str13));
                                                                    sb18.append(" WHERE SkuGUID IN (");
                                                                    sb18.append(DBUtility.g(listSingletonList5));
                                                                    str15 = str57;
                                                                    sb18.append(str15);
                                                                    cursorRawQuery2 = sQLiteDatabase2.rawQuery(DBUtility.d(sb18.toString()), null);
                                                                    if (DBUtility.f(cursorRawQuery2)) {
                                                                        List list12 = Collections.EMPTY_LIST;
                                                                        IO.b(cursorRawQuery2);
                                                                        str12 = str30;
                                                                        str14 = str10;
                                                                        list = list12;
                                                                    } else {
                                                                        arrayList2 = new ArrayList();
                                                                        str14 = str10;
                                                                        do {
                                                                            arrayList2.add(cursorRawQuery2.getString(cursorRawQuery2.getColumnIndex(str14)));
                                                                        } while (cursorRawQuery2.moveToNext());
                                                                        IO.b(cursorRawQuery2);
                                                                        str12 = str30;
                                                                        list = arrayList2;
                                                                    }
                                                                    sQLiteDatabase2.execSQL(DBUtility.d(str59 + YMKDatabase.a(sQLiteDatabase2, "PatternPaletteInfo") + " WHERE PaletteGUID IN (" + DBUtility.g(FluentIterable.n(list).i(Predicates.e(Predicates.d(arrayList5))).p()) + str15));
                                                                }
                                                            }
                                                            str12 = str30;
                                                            str13 = str32;
                                                            str14 = str10;
                                                        } else {
                                                            str12 = str30;
                                                            str13 = str32;
                                                            str14 = str10;
                                                        }
                                                        com.perfectcorp.perfectlib.ph.database.ymk.background.b bVar6 = com.perfectcorp.perfectlib.ph.database.ymk.background.b.d;
                                                        listSingletonList = Collections.singletonList(str11);
                                                        bVar6.getClass();
                                                        Threads.b();
                                                        Objects.requireNonNull(listSingletonList);
                                                        sQLiteDatabase2.delete(YMKDatabase.a(sQLiteDatabase2, bVar6.f40266b), "guid".concat(DBUtility.b(listSingletonList)), null);
                                                        deleter4.c(sQLiteDatabase2);
                                                        Threads.b();
                                                        sQLiteDatabase2.beginTransaction();
                                                        sQLiteDatabase2.delete(YMKDatabase.a(sQLiteDatabase2, "IdUsage"), "KeyId=?", new String[]{str11});
                                                        sQLiteDatabase2.setTransactionSuccessful();
                                                        sQLiteDatabase2.endTransaction();
                                                        i2 = CacheCleaner.AnonymousClass1.f39487a[type.ordinal()];
                                                        if (i2 != 1) {
                                                            handlerStatusResetter = handlerStatusResetter3;
                                                            handlerStatusResetter.f39496c = true;
                                                        } else if (i2 != 2) {
                                                            handlerStatusResetter = handlerStatusResetter3;
                                                            handlerStatusResetter.d = true;
                                                        } else if (i2 != 3) {
                                                            handlerStatusResetter = handlerStatusResetter3;
                                                            handlerStatusResetter.f39497e = true;
                                                        } else if (i2 != 4) {
                                                            handlerStatusResetter = handlerStatusResetter3;
                                                        } else {
                                                            handlerStatusResetter = handlerStatusResetter3;
                                                            handlerStatusResetter.f39495b = true;
                                                        }
                                                        if (!handlerStatusResetter.f39494a) {
                                                            if (handlerStatusResetter.f39495b) {
                                                                SkuHandlerPreferences.f40330a.m();
                                                                handlerStatusResetter.f39498f = true;
                                                            }
                                                            if (handlerStatusResetter.f39496c) {
                                                                LookHandlerPreferences.f40326a.m();
                                                                handlerStatusResetter.g = true;
                                                            }
                                                            if (handlerStatusResetter.d) {
                                                                NailLookHandlerPreferences.f40328a.edit().remove("LOOK_LIST_MESSAGE_DIGEST").apply();
                                                                handlerStatusResetter.f39499h = true;
                                                            }
                                                            if (!handlerStatusResetter.f39497e) {
                                                            }
                                                        }
                                                        handlerStatusResetter2 = handlerStatusResetter;
                                                        str25 = str14;
                                                        str21 = str6;
                                                        str24 = str12;
                                                        str26 = str13;
                                                        it6 = it7;
                                                        arrayList3 = arrayList5;
                                                        str20 = str9;
                                                    }
                                                } catch (Throwable th30) {
                                                    th = th30;
                                                    str9 = str60;
                                                    cursor2 = null;
                                                    Log.e("TextureInfoDao", "getByPossiblePath thumbnailPathPrefix=" + str29, th);
                                                    listI2 = Collections.EMPTY_LIST;
                                                    IO.b(cursor2);
                                                    it2 = listI2.iterator();
                                                    while (it2.hasNext()) {
                                                        com.perfectcorp.perfectlib.ph.template.u uVar3 = (com.perfectcorp.perfectlib.ph.template.u) it2.next();
                                                        StringBuilder sb19 = new StringBuilder("scanTextureAndUpdate TextureInfo=");
                                                        uVar3.getClass();
                                                        ImmutableList immutableList3 = uVar3.f41716b;
                                                        str16 = uVar3.f41715a;
                                                        Iterator it110 = it2;
                                                        ContentValues contentValues3 = new ContentValues();
                                                        contentValues3.put(str8, str16);
                                                        String str611 = str8;
                                                        contentValues3.put(str6, TemplatePaths.d(immutableList3));
                                                        sb19.append(contentValues3);
                                                        Log.g(3, "CacheCleaner", sb19.toString());
                                                        str17 = "removePathFromTextureInfo::textureId=";
                                                        Log.g(3, "CacheCleaner", "removePathFromTextureInfo::textureId=" + str16 + ", folderPath=" + str29);
                                                        ArrayList arrayList114 = new ArrayList(immutableList3);
                                                        it5 = arrayList114.iterator();
                                                        while (it5.hasNext()) {
                                                            str18 = (String) it5.next();
                                                            if (str18.startsWith(str29)) {
                                                                it5.remove();
                                                                Log.g(3, "CacheCleaner", str17 + str16 + ", deleted thumb path=" + str18);
                                                            }
                                                            it5 = it5;
                                                            str17 = str17;
                                                        }
                                                        com.perfectcorp.perfectlib.ph.template.u.a aVar7 = new com.perfectcorp.perfectlib.ph.template.u.a(uVar3);
                                                        arrayList17.add(new com.perfectcorp.perfectlib.ph.template.u(aVar7.f41718a, arrayList114, aVar7.f41720c));
                                                        it2 = it110;
                                                        str8 = str611;
                                                    }
                                                    str10 = str8;
                                                    it3 = arrayList17.iterator();
                                                    while (it3.hasNext()) {
                                                        com.perfectcorp.perfectlib.ph.database.ymk.texture.a.b(sQLiteDatabase2, (com.perfectcorp.perfectlib.ph.template.u) it3.next());
                                                    }
                                                    List list13 = Contract.ReferenceElementInfo.f40233a;
                                                    str22 = str4;
                                                    str23 = str36;
                                                    String[] strArr3 = {str23, str22};
                                                    StringBuilder sb110 = new StringBuilder(str7);
                                                    str11 = str58;
                                                    sb110.append(str11);
                                                    sb110.append(str7);
                                                    sQLiteDatabase = sQLiteDatabase2;
                                                    cursorQuery = sQLiteDatabase.query("ReferenceElementInfo", strArr3, "ReferencedIds LIKE ?", new String[]{sb110.toString()}, null, null, null, null);
                                                    if (DBUtility.f(cursorQuery)) {
                                                        listI3 = Collections.EMPTY_LIST;
                                                        IO.b(cursorQuery);
                                                    } else {
                                                        bz bzVar5 = ImmutableList.f42200c;
                                                        builder = new ImmutableList.Builder();
                                                        do {
                                                            builder.f(new com.perfectcorp.perfectlib.ph.template.n(cursorQuery.getString(cursorQuery.getColumnIndex(str23)), TemplatePaths.a(cursorQuery.getString(cursorQuery.getColumnIndex(str22)))));
                                                        } while (cursorQuery.moveToNext());
                                                        listI3 = builder.i();
                                                        IO.b(cursorQuery);
                                                    }
                                                    while (r0.hasNext()) {
                                                        StringBuilder sb111 = new StringBuilder("scanReferenceElementInfosAndUpdateDb referenceElementInfo=");
                                                        ContentValues contentValuesA5 = nVar.a();
                                                        String str612 = nVar.f41698a;
                                                        sb111.append(contentValuesA5);
                                                        Log.g(3, "CacheCleaner", sb111.toString());
                                                        String str613 = str55;
                                                        Log.g(3, "CacheCleaner", d21.p(new StringBuilder("removeReferencedIdFromInfo::referenceElementInfoId="), str612, str613, str11));
                                                        ArrayList arrayList115 = new ArrayList(nVar.f41699b);
                                                        it4 = arrayList115.iterator();
                                                        while (it4.hasNext()) {
                                                            if (((String) it4.next()).equals(str11)) {
                                                                it4.remove();
                                                            }
                                                        }
                                                        com.perfectcorp.perfectlib.ph.template.n nVar6 = new com.perfectcorp.perfectlib.ph.template.n(str612, arrayList115);
                                                        jUpdate = sQLiteDatabase2.update(YMKDatabase.a(sQLiteDatabase2, "ReferenceElementInfo"), nVar6.a(), "Id=?", new String[]{nVar6.f41698a});
                                                        if (jUpdate < 0) {
                                                            Log.g(5, "ReferenceElementInfoDao", "db.update failed. id: " + jUpdate);
                                                        }
                                                        str55 = str613;
                                                    }
                                                    DownloadImageDao downloadImageDao5 = DownloadImageDao.d;
                                                    List<DownloadImageInfo> listE5 = downloadImageDao5.e(sQLiteDatabase2, "referenceId", str11);
                                                    downloadImageDao5.d(sQLiteDatabase2, "referenceId", str11);
                                                    while (r0.hasNext()) {
                                                        StringBuilder sb112 = new StringBuilder("scanDownloadImagesAndUpdateDb DownloadImageInfo=");
                                                        downloadImageInfo.getClass();
                                                        sb112.append(DownloadImageDao.o(downloadImageInfo));
                                                        Log.g(3, "CacheCleaner", sb112.toString());
                                                        if (DownloadImageDao.d.e(sQLiteDatabase2, ConfigurationName.DOWNLOAD_PLUGIN_URL, downloadImageInfo.f40306a).isEmpty()) {
                                                            deleter4.g.add(downloadImageInfo);
                                                        }
                                                    }
                                                    if (type == IdUsageDao.Type.SKU) {
                                                        optionalA = SkuDao.a(sQLiteDatabase2, str11, false);
                                                        if (optionalA.d()) {
                                                            Log.g(5, "CacheCleaner", "Can't find sku.");
                                                        } else {
                                                            beautyModeC = SkuTemplateUtils.c(((Sku) optionalA.c()).f41263b);
                                                            if (SkuTemplateUtils.b(beautyModeC)) {
                                                                Log.g(3, "CacheCleaner", "Skip pattern major sku. beautyMode=" + beautyModeC);
                                                            } else {
                                                                List listSingletonList6 = Collections.singletonList(str11);
                                                                StringBuilder sb113 = new StringBuilder("SELECT GUID FROM ");
                                                                str13 = str32;
                                                                sb113.append(YMKDatabase.a(sQLiteDatabase2, str13));
                                                                sb113.append(" WHERE SkuGUID IN (");
                                                                sb113.append(DBUtility.g(listSingletonList6));
                                                                str15 = str57;
                                                                sb113.append(str15);
                                                                cursorRawQuery2 = sQLiteDatabase2.rawQuery(DBUtility.d(sb113.toString()), null);
                                                                if (DBUtility.f(cursorRawQuery2)) {
                                                                    List list14 = Collections.EMPTY_LIST;
                                                                    IO.b(cursorRawQuery2);
                                                                    str12 = str30;
                                                                    str14 = str10;
                                                                    list = list14;
                                                                } else {
                                                                    arrayList2 = new ArrayList();
                                                                    str14 = str10;
                                                                    do {
                                                                        arrayList2.add(cursorRawQuery2.getString(cursorRawQuery2.getColumnIndex(str14)));
                                                                    } while (cursorRawQuery2.moveToNext());
                                                                    IO.b(cursorRawQuery2);
                                                                    str12 = str30;
                                                                    list = arrayList2;
                                                                }
                                                                sQLiteDatabase2.execSQL(DBUtility.d(str59 + YMKDatabase.a(sQLiteDatabase2, "PatternPaletteInfo") + " WHERE PaletteGUID IN (" + DBUtility.g(FluentIterable.n(list).i(Predicates.e(Predicates.d(arrayList5))).p()) + str15));
                                                            }
                                                        }
                                                        str12 = str30;
                                                        str13 = str32;
                                                        str14 = str10;
                                                    } else {
                                                        str12 = str30;
                                                        str13 = str32;
                                                        str14 = str10;
                                                    }
                                                    com.perfectcorp.perfectlib.ph.database.ymk.background.b bVar7 = com.perfectcorp.perfectlib.ph.database.ymk.background.b.d;
                                                    listSingletonList = Collections.singletonList(str11);
                                                    bVar7.getClass();
                                                    Threads.b();
                                                    Objects.requireNonNull(listSingletonList);
                                                    sQLiteDatabase2.delete(YMKDatabase.a(sQLiteDatabase2, bVar7.f40266b), "guid".concat(DBUtility.b(listSingletonList)), null);
                                                    deleter4.c(sQLiteDatabase2);
                                                    Threads.b();
                                                    sQLiteDatabase2.beginTransaction();
                                                    sQLiteDatabase2.delete(YMKDatabase.a(sQLiteDatabase2, "IdUsage"), "KeyId=?", new String[]{str11});
                                                    sQLiteDatabase2.setTransactionSuccessful();
                                                    sQLiteDatabase2.endTransaction();
                                                    i2 = CacheCleaner.AnonymousClass1.f39487a[type.ordinal()];
                                                    if (i2 != 1) {
                                                        handlerStatusResetter = handlerStatusResetter3;
                                                        handlerStatusResetter.f39496c = true;
                                                    } else if (i2 != 2) {
                                                        handlerStatusResetter = handlerStatusResetter3;
                                                        handlerStatusResetter.d = true;
                                                    } else if (i2 != 3) {
                                                        handlerStatusResetter = handlerStatusResetter3;
                                                        handlerStatusResetter.f39497e = true;
                                                    } else if (i2 != 4) {
                                                        handlerStatusResetter = handlerStatusResetter3;
                                                    } else {
                                                        handlerStatusResetter = handlerStatusResetter3;
                                                        handlerStatusResetter.f39495b = true;
                                                    }
                                                    if (!handlerStatusResetter.f39494a) {
                                                        if (handlerStatusResetter.f39495b) {
                                                            SkuHandlerPreferences.f40330a.m();
                                                            handlerStatusResetter.f39498f = true;
                                                        }
                                                        if (handlerStatusResetter.f39496c) {
                                                            LookHandlerPreferences.f40326a.m();
                                                            handlerStatusResetter.g = true;
                                                        }
                                                        if (handlerStatusResetter.d) {
                                                            NailLookHandlerPreferences.f40328a.edit().remove("LOOK_LIST_MESSAGE_DIGEST").apply();
                                                            handlerStatusResetter.f39499h = true;
                                                        }
                                                        if (!handlerStatusResetter.f39497e) {
                                                        }
                                                    }
                                                    handlerStatusResetter2 = handlerStatusResetter;
                                                    str25 = str14;
                                                    str21 = str6;
                                                    str24 = str12;
                                                    str26 = str13;
                                                    it6 = it7;
                                                    arrayList3 = arrayList5;
                                                    str20 = str9;
                                                }
                                            } catch (Throwable th31) {
                                                th = th31;
                                                str7 = str37;
                                            }
                                        } catch (Throwable th32) {
                                            th = th32;
                                            str7 = str37;
                                        }
                                    } catch (Throwable th33) {
                                        th = th33;
                                        str6 = str54;
                                        str7 = str37;
                                        str8 = str56;
                                        str9 = str53;
                                    }
                                    it2 = listI2.iterator();
                                    while (it2.hasNext()) {
                                        com.perfectcorp.perfectlib.ph.template.u uVar4 = (com.perfectcorp.perfectlib.ph.template.u) it2.next();
                                        StringBuilder sb114 = new StringBuilder("scanTextureAndUpdate TextureInfo=");
                                        uVar4.getClass();
                                        ImmutableList immutableList4 = uVar4.f41716b;
                                        str16 = uVar4.f41715a;
                                        Iterator it111 = it2;
                                        ContentValues contentValues4 = new ContentValues();
                                        contentValues4.put(str8, str16);
                                        String str614 = str8;
                                        contentValues4.put(str6, TemplatePaths.d(immutableList4));
                                        sb114.append(contentValues4);
                                        Log.g(3, "CacheCleaner", sb114.toString());
                                        str17 = "removePathFromTextureInfo::textureId=";
                                        Log.g(3, "CacheCleaner", "removePathFromTextureInfo::textureId=" + str16 + ", folderPath=" + str29);
                                        ArrayList arrayList116 = new ArrayList(immutableList4);
                                        it5 = arrayList116.iterator();
                                        while (it5.hasNext()) {
                                            str18 = (String) it5.next();
                                            if (str18.startsWith(str29)) {
                                                it5.remove();
                                                Log.g(3, "CacheCleaner", str17 + str16 + ", deleted thumb path=" + str18);
                                            }
                                            it5 = it5;
                                            str17 = str17;
                                        }
                                        com.perfectcorp.perfectlib.ph.template.u.a aVar8 = new com.perfectcorp.perfectlib.ph.template.u.a(uVar4);
                                        arrayList17.add(new com.perfectcorp.perfectlib.ph.template.u(aVar8.f41718a, arrayList116, aVar8.f41720c));
                                        it2 = it111;
                                        str8 = str614;
                                    }
                                    str10 = str8;
                                    it3 = arrayList17.iterator();
                                    while (it3.hasNext()) {
                                        com.perfectcorp.perfectlib.ph.database.ymk.texture.a.b(sQLiteDatabase2, (com.perfectcorp.perfectlib.ph.template.u) it3.next());
                                    }
                                    try {
                                        List list15 = Contract.ReferenceElementInfo.f40233a;
                                        str22 = str4;
                                        str23 = str36;
                                        String[] strArr4 = {str23, str22};
                                        StringBuilder sb115 = new StringBuilder(str7);
                                        str11 = str58;
                                        sb115.append(str11);
                                        sb115.append(str7);
                                        sQLiteDatabase = sQLiteDatabase2;
                                        cursorQuery = sQLiteDatabase.query("ReferenceElementInfo", strArr4, "ReferencedIds LIKE ?", new String[]{sb115.toString()}, null, null, null, null);
                                        if (DBUtility.f(cursorQuery)) {
                                            listI3 = Collections.EMPTY_LIST;
                                            IO.b(cursorQuery);
                                        } else {
                                            bz bzVar6 = ImmutableList.f42200c;
                                            builder = new ImmutableList.Builder();
                                            do {
                                                builder.f(new com.perfectcorp.perfectlib.ph.template.n(cursorQuery.getString(cursorQuery.getColumnIndex(str23)), TemplatePaths.a(cursorQuery.getString(cursorQuery.getColumnIndex(str22)))));
                                            } while (cursorQuery.moveToNext());
                                            listI3 = builder.i();
                                            IO.b(cursorQuery);
                                        }
                                    } catch (Throwable th34) {
                                        th = th34;
                                        str22 = str4;
                                        str23 = str36;
                                    }
                                    while (r0.hasNext()) {
                                        StringBuilder sb116 = new StringBuilder("scanReferenceElementInfosAndUpdateDb referenceElementInfo=");
                                        ContentValues contentValuesA6 = nVar.a();
                                        String str615 = nVar.f41698a;
                                        sb116.append(contentValuesA6);
                                        Log.g(3, "CacheCleaner", sb116.toString());
                                        String str616 = str55;
                                        Log.g(3, "CacheCleaner", d21.p(new StringBuilder("removeReferencedIdFromInfo::referenceElementInfoId="), str615, str616, str11));
                                        ArrayList arrayList117 = new ArrayList(nVar.f41699b);
                                        it4 = arrayList117.iterator();
                                        while (it4.hasNext()) {
                                            if (((String) it4.next()).equals(str11)) {
                                                it4.remove();
                                            }
                                        }
                                        com.perfectcorp.perfectlib.ph.template.n nVar7 = new com.perfectcorp.perfectlib.ph.template.n(str615, arrayList117);
                                        jUpdate = sQLiteDatabase2.update(YMKDatabase.a(sQLiteDatabase2, "ReferenceElementInfo"), nVar7.a(), "Id=?", new String[]{nVar7.f41698a});
                                        if (jUpdate < 0) {
                                            Log.g(5, "ReferenceElementInfoDao", "db.update failed. id: " + jUpdate);
                                        }
                                        str55 = str616;
                                    }
                                    DownloadImageDao downloadImageDao6 = DownloadImageDao.d;
                                    List<DownloadImageInfo> listE6 = downloadImageDao6.e(sQLiteDatabase2, "referenceId", str11);
                                    downloadImageDao6.d(sQLiteDatabase2, "referenceId", str11);
                                    while (r0.hasNext()) {
                                        StringBuilder sb117 = new StringBuilder("scanDownloadImagesAndUpdateDb DownloadImageInfo=");
                                        downloadImageInfo.getClass();
                                        sb117.append(DownloadImageDao.o(downloadImageInfo));
                                        Log.g(3, "CacheCleaner", sb117.toString());
                                        if (DownloadImageDao.d.e(sQLiteDatabase2, ConfigurationName.DOWNLOAD_PLUGIN_URL, downloadImageInfo.f40306a).isEmpty()) {
                                            deleter4.g.add(downloadImageInfo);
                                        }
                                    }
                                    if (type == IdUsageDao.Type.SKU) {
                                        optionalA = SkuDao.a(sQLiteDatabase2, str11, false);
                                        if (optionalA.d()) {
                                            Log.g(5, "CacheCleaner", "Can't find sku.");
                                        } else {
                                            beautyModeC = SkuTemplateUtils.c(((Sku) optionalA.c()).f41263b);
                                            if (SkuTemplateUtils.b(beautyModeC)) {
                                                Log.g(3, "CacheCleaner", "Skip pattern major sku. beautyMode=" + beautyModeC);
                                            } else {
                                                List listSingletonList7 = Collections.singletonList(str11);
                                                StringBuilder sb118 = new StringBuilder("SELECT GUID FROM ");
                                                str13 = str32;
                                                sb118.append(YMKDatabase.a(sQLiteDatabase2, str13));
                                                sb118.append(" WHERE SkuGUID IN (");
                                                sb118.append(DBUtility.g(listSingletonList7));
                                                str15 = str57;
                                                sb118.append(str15);
                                                cursorRawQuery2 = sQLiteDatabase2.rawQuery(DBUtility.d(sb118.toString()), null);
                                                if (DBUtility.f(cursorRawQuery2)) {
                                                    List list16 = Collections.EMPTY_LIST;
                                                    IO.b(cursorRawQuery2);
                                                    str12 = str30;
                                                    str14 = str10;
                                                    list = list16;
                                                } else {
                                                    arrayList2 = new ArrayList();
                                                    str14 = str10;
                                                    do {
                                                        arrayList2.add(cursorRawQuery2.getString(cursorRawQuery2.getColumnIndex(str14)));
                                                    } while (cursorRawQuery2.moveToNext());
                                                    IO.b(cursorRawQuery2);
                                                    str12 = str30;
                                                    list = arrayList2;
                                                }
                                                sQLiteDatabase2.execSQL(DBUtility.d(str59 + YMKDatabase.a(sQLiteDatabase2, "PatternPaletteInfo") + " WHERE PaletteGUID IN (" + DBUtility.g(FluentIterable.n(list).i(Predicates.e(Predicates.d(arrayList5))).p()) + str15));
                                            }
                                        }
                                        str12 = str30;
                                        str13 = str32;
                                        str14 = str10;
                                    } else {
                                        str12 = str30;
                                        str13 = str32;
                                        str14 = str10;
                                    }
                                    com.perfectcorp.perfectlib.ph.database.ymk.background.b bVar8 = com.perfectcorp.perfectlib.ph.database.ymk.background.b.d;
                                    listSingletonList = Collections.singletonList(str11);
                                    bVar8.getClass();
                                    Threads.b();
                                    Objects.requireNonNull(listSingletonList);
                                    try {
                                        sQLiteDatabase2.delete(YMKDatabase.a(sQLiteDatabase2, bVar8.f40266b), "guid".concat(DBUtility.b(listSingletonList)), null);
                                    } catch (Throwable th35) {
                                        th = th35;
                                    }
                                    deleter4.c(sQLiteDatabase2);
                                    Threads.b();
                                    sQLiteDatabase2.beginTransaction();
                                    try {
                                        sQLiteDatabase2.delete(YMKDatabase.a(sQLiteDatabase2, "IdUsage"), "KeyId=?", new String[]{str11});
                                        sQLiteDatabase2.setTransactionSuccessful();
                                        sQLiteDatabase2.endTransaction();
                                        i2 = CacheCleaner.AnonymousClass1.f39487a[type.ordinal()];
                                        if (i2 != 1) {
                                            handlerStatusResetter = handlerStatusResetter3;
                                            handlerStatusResetter.f39496c = true;
                                        } else if (i2 != 2) {
                                            handlerStatusResetter = handlerStatusResetter3;
                                            handlerStatusResetter.d = true;
                                        } else if (i2 != 3) {
                                            handlerStatusResetter = handlerStatusResetter3;
                                            handlerStatusResetter.f39497e = true;
                                        } else if (i2 != 4) {
                                            handlerStatusResetter = handlerStatusResetter3;
                                        } else {
                                            handlerStatusResetter = handlerStatusResetter3;
                                            handlerStatusResetter.f39495b = true;
                                        }
                                        if (!handlerStatusResetter.f39494a) {
                                            if (handlerStatusResetter.f39495b && !handlerStatusResetter.f39498f) {
                                                SkuHandlerPreferences.f40330a.m();
                                                handlerStatusResetter.f39498f = true;
                                            }
                                            if (handlerStatusResetter.f39496c && !handlerStatusResetter.g) {
                                                LookHandlerPreferences.f40326a.m();
                                                handlerStatusResetter.g = true;
                                            }
                                            if (handlerStatusResetter.d && !handlerStatusResetter.f39499h) {
                                                NailLookHandlerPreferences.f40328a.edit().remove("LOOK_LIST_MESSAGE_DIGEST").apply();
                                                handlerStatusResetter.f39499h = true;
                                            }
                                            if (!handlerStatusResetter.f39497e && !handlerStatusResetter.f39500i) {
                                                JewelryLookHandlerPreferences.f40324a.edit().remove("LOOK_LIST_MESSAGE_DIGEST").apply();
                                                handlerStatusResetter.f39500i = true;
                                            }
                                        }
                                        handlerStatusResetter2 = handlerStatusResetter;
                                        str25 = str14;
                                        str21 = str6;
                                        str24 = str12;
                                        str26 = str13;
                                        it6 = it7;
                                        arrayList3 = arrayList5;
                                        str20 = str9;
                                    } catch (Throwable th36) {
                                        try {
                                            Log.e("IdUsageDao", "remove id=".concat(str11), th36);
                                            throw th36;
                                        } catch (Throwable th37) {
                                            sQLiteDatabase2.endTransaction();
                                            throw th37;
                                        }
                                    }
                                } catch (Throwable th38) {
                                    th = th38;
                                    cursor = cursorQuery2;
                                    try {
                                        Log.e("IdSystemInfoDao", "getByContainedReferencedId referencedId=" + str28, th);
                                        throw th;
                                    } catch (Throwable th39) {
                                        IO.b(cursor);
                                        throw th39;
                                    }
                                }
                            } catch (Throwable th40) {
                                th = th40;
                                cursor = null;
                            }
                        }
                    }
                });
                for (Deleter deleter : arrayList) {
                    Log.g(3, "CacheCleaner", "delete row folder=" + deleter.f39488a);
                    deleter.b();
                    j2 += deleter.f39493h;
                }
                return j2;
            }
            IdUsageDao.Row row = (IdUsageDao.Row) it.next();
            IdUsageDao.Type type = row.f40316c;
            int i2 = AnonymousClass1.f39487a[type.ordinal()];
            if (i2 == 1 || i2 == 2 || i2 == 3) {
                lookDeleter = new Deleter.LookDeleter(row);
            } else if (i2 == 4) {
                lookDeleter = new Deleter.SkuDeleter(row);
            } else {
                if (i2 != 5) {
                    b21.p(type, "Unsupported type=");
                    return 0L;
                }
                lookDeleter = new Deleter.TutorialDeleter(row);
            }
            arrayList.add(lookDeleter);
        }
    }

    public static SQLiteDatabase b() {
        return DatabaseOpenHelper.Union.f40272j.f40274i.getWritableDatabase();
    }

    public static void c(Future future) {
        if (future.isCancelled()) {
            Log.g(3, "CacheCleaner", "cleanUp::canceled");
            throw new SkipCallbackException("Cancelable had been canceled.");
        }
    }

    public static Completable cleanUp(int i2, Future<Object> future) {
        NotAnError notAnError = new NotAnError();
        Log.c("CacheCleaner", "cleanUp", notAnError);
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j(new r(future, notAnError, i2)), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j(new s(future, 0))).i(Schedulers.f43170c);
    }

    public static void d(String str, boolean z) {
        String str2;
        Threads.b();
        Objects.requireNonNull(str);
        Log.c("CacheCleaner", "[deleteById] id=".concat(str), new NotAnError());
        SQLiteDatabase sQLiteDatabaseB = b();
        Threads.b();
        try {
            Cursor cursorQuery = sQLiteDatabaseB.query("IdUsage", null, "KeyId=?", new String[]{str}, null, null, null, null);
            try {
                Optional optionalA = !cursorQuery.moveToFirst() ? Optional.a() : Optional.e(IdUsageDao.a(cursorQuery));
                cursorQuery.close();
                if (optionalA.d()) {
                    Log.g(3, "CacheCleaner", "[deleteById] start::id=".concat(str));
                    a(Collections.singletonList((IdUsageDao.Row) optionalA.c()), z);
                    str2 = "[deleteById] end::id=";
                } else {
                    str2 = "[deleteById] no record::id=";
                }
                Log.g(3, "CacheCleaner", str2.concat(str));
            } catch (Throwable th) {
                if (cursorQuery == null) {
                    throw th;
                }
                try {
                    cursorQuery.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        } catch (Throwable th3) {
            Log.e("IdUsageDao", "get id=".concat(str), th3);
            throw th3;
        }
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.p e(IdUsageDao.Type type) {
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j(new s(type, 1)).i(Schedulers.f43170c);
    }
}
