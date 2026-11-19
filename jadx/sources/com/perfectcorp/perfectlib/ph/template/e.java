package com.perfectcorp.perfectlib.ph.template;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Pair;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveCubeEyewearFilter;
import com.linkplay.medialib.ContentTree;
import com.perfectcorp.common.concurrent.NamedThreadFactory;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.hc.database.ymk.BaseDao;
import com.perfectcorp.perfectlib.jniproxy.UIShimmer;
import com.perfectcorp.perfectlib.jniproxy.VN_Lipliner_Type;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.BackgroundPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.BlushPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.ConcealerPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.CubeEyewearPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.EarringsPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.EyeShadowLinerPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.EyebrowPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.FaceContourPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.FoundationPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.FunStickerTemplate;
import com.perfectcorp.perfectlib.makeupcam.camera.HairDyePayload;
import com.perfectcorp.perfectlib.makeupcam.camera.LipLinerPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.LipstickLayer;
import com.perfectcorp.perfectlib.makeupcam.camera.LipstickPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.LipstickShape;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.Real3DEyewearPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.makeupcam.template.LocalizedString;
import com.perfectcorp.perfectlib.makeupcam.template.TemplateConsts;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDbHelper;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuItemDao;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.DownloadFolderHelper;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.thirdparty.com.google.common.base.Function;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.Ordering;
import com.perfectcorp.thirdparty.com.google.common.collect.al;
import com.perfectcorp.thirdparty.com.google.common.collect.at;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.fc;
import defpackage.pq0;
import defpackage.r81;
import defpackage.u81;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import net.rtccloud.sdk.Call;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExecutorService f41633a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d f41634b;

    @Deprecated
    public static class a extends g {
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.template.e$b$a, reason: case insensitive filesystem */
    final class EnumC0368a implements Function<YMKPrimitiveData.Effect, String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final EnumC0368a f41635a = new EnumC0368a("INSTANCE", 0);

        @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
        public final Object apply(Object obj) {
            YMKPrimitiveData.Effect effect = (YMKPrimitiveData.Effect) obj;
            Objects.requireNonNull(effect);
            return effect.f40757a;
        }
    }

    public enum c {
        NATURAL("Natural"),
        COSTUME("Costume"),
        USERMADE("UserMade"),
        NONE("None");


        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f41640e;

        c(String str) {
            this.f41640e = str;
        }

        public static c a(String str) {
            for (c cVar : (c[]) values().clone()) {
                if (cVar.f41640e.equals(str)) {
                    return cVar;
                }
            }
            return NONE;
        }
    }

    @Deprecated
    public static class d extends g {
        public final JSONObject a() {
            return this.f41645a.c();
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.template.e$e, reason: collision with other inner class name */
    public static final class C0182e {
        public static List a(String str, boolean z) {
            List<com.perfectcorp.perfectlib.ph.database.ymk.skuset.i> listH;
            com.perfectcorp.perfectlib.ph.database.ymk.skuset.c cVar;
            Threads.b();
            String strI = com.perfectcorp.perfectlib.ph.unit.sku.a.i(str);
            Log.g(3, "PanelDataCenter", fc.i("[getSupportedPatternInfos] skuSetId=", str, ", actualSkuSetId=", strI));
            Cursor cursor = null;
            if (z) {
                Threads.b();
                SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
                Threads.b();
                Objects.requireNonNull(strI);
                try {
                    Cursor cursorF = BaseDao.f(sQLiteDatabaseB, "SkuSetListSupportedPattern", Contract.SkuSetListSupportedPattern.f40249a, new String[]{"SkuSetId"}, new String[]{strI});
                    try {
                        if (DBUtility.f(cursorF)) {
                            bz bzVar = ImmutableList.f42200c;
                            ImmutableList.Builder builder = new ImmutableList.Builder();
                            do {
                                String strG = BaseDao.g(cursorF, "SupportedPatternGuid");
                                String string = cursorF.getString(cursorF.getColumnIndex("Metadata"));
                                Gson gson = GsonHelper.f39261b;
                                JsonObject jsonObject = (JsonObject) gson.i(string, JsonObject.class);
                                jsonObject.p("skuSetGuid", strI);
                                jsonObject.p("supportedPatternGuid", strG);
                                builder.f((com.perfectcorp.perfectlib.ph.database.ymk.skuset.i) gson.h(jsonObject, com.perfectcorp.perfectlib.ph.database.ymk.skuset.i.class));
                            } while (cursorF.moveToNext());
                            listH = builder.i();
                            IO.b(cursorF);
                        } else {
                            listH = Collections.EMPTY_LIST;
                            IO.b(cursorF);
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorF;
                        try {
                            Log.e("SkuSetListSupportedPatternDao", "[getBySkuSetId] failed", th);
                            throw th;
                        } catch (Throwable th2) {
                            IO.b(cursor);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } else {
                listH = h(strI);
            }
            if (MoreCollections.a(listH)) {
                Log.d("PanelDataCenter", "[getSupportedPatternInfos] supportedPatterns is empty, skuSetId=" + str);
                return Collections.EMPTY_LIST;
            }
            List listJ = z ? j(strI) : g(strI);
            bz bzVar2 = ImmutableList.f42200c;
            ImmutableList.Builder builder2 = new ImmutableList.Builder();
            for (com.perfectcorp.perfectlib.ph.database.ymk.skuset.i iVar : listH) {
                ArrayList arrayList = new ArrayList(iVar.colorReferences.size());
                for (com.perfectcorp.perfectlib.ph.database.ymk.skuset.i.a aVar : iVar.colorReferences) {
                    Iterator it = listJ.iterator();
                    do {
                        if (!it.hasNext()) {
                            cVar = null;
                            break;
                        }
                        cVar = (com.perfectcorp.perfectlib.ph.database.ymk.skuset.c) it.next();
                        Objects.requireNonNull(aVar);
                    } while (!aVar.paletteGuid.equals(cVar.f41342c));
                    if (cVar == null) {
                        StringBuilder sbR = pq0.r("[getSupportedPatternInfos] skuSetId=", str, " without skuSetItem guid=");
                        sbR.append(aVar.paletteGuid);
                        sbR.append(" which in supportedPattern");
                        Log.d("PanelDataCenter", sbR.toString());
                    } else {
                        arrayList.add(Pair.create(cVar, aVar));
                    }
                }
                builder2.f(Pair.create(iVar.supportedPatternGuid, arrayList));
            }
            return builder2.i();
        }

        public static void b(SQLiteDatabase sQLiteDatabase, com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.c cVar) {
            com.perfectcorp.perfectlib.ph.database.ymk.skuset.a.C0157a c0157a = new com.perfectcorp.perfectlib.ph.database.ymk.skuset.a.C0157a(cVar.skuSetId);
            c0157a.f41335b = cVar.type;
            c0157a.f41336c = cVar.vendor;
            c0157a.d = cVar.customerId;
            c0157a.f41337e = cVar.lastModified;
            c0157a.f41338f = cVar.makeupVersion;
            com.perfectcorp.perfectlib.ph.database.ymk.skuset.a.b bVar = new com.perfectcorp.perfectlib.ph.database.ymk.skuset.a.b();
            bVar.name = cVar.name;
            bVar.thumbnail = cVar.thumbnail;
            bVar.shoppingUrl = cVar.shoppingUrl;
            c0157a.g = bVar;
            int i2 = 0;
            c0157a.f41339h = false;
            try {
                long jReplace = sQLiteDatabase.replace(YMKDatabase.a(sQLiteDatabase, "SkuSet"), null, new com.perfectcorp.perfectlib.ph.database.ymk.skuset.a(c0157a).a());
                if (jReplace < 0) {
                    Log.g(5, "SkuSetDao", "db.insert failed. id: " + jReplace);
                }
                for (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.a aVar : cVar.a()) {
                    com.perfectcorp.perfectlib.ph.database.ymk.skuset.c.a aVar2 = new com.perfectcorp.perfectlib.ph.database.ymk.skuset.c.a(cVar.skuSetId);
                    aVar2.f41344b = aVar.skuGuid;
                    aVar2.f41345c = aVar.itemGuid;
                    aVar2.d = GsonBaseResponse.f41999a.k(Collections.EMPTY_MAP);
                    try {
                        long jInsert = sQLiteDatabase.insert(YMKDatabase.a(sQLiteDatabase, "SkuSetItem"), null, new com.perfectcorp.perfectlib.ph.database.ymk.skuset.c(aVar2).a());
                        if (jInsert < 0) {
                            Log.g(5, "SkuSetItemDao", "db.insert failed. id: " + jInsert);
                        }
                    } catch (Throwable th) {
                        Log.e("SkuSetItemDao", "[insert]", th);
                        throw th;
                    }
                }
                int i3 = 0;
                while (i3 < cVar.supportedPatterns.size()) {
                    String str = cVar.skuSetId;
                    int i4 = i3 + 1;
                    String str2 = String.format(Locale.US, "%s_sp_%02d", str, Integer.valueOf(i4));
                    JsonObject jsonObject = cVar.supportedPatterns.get(i3);
                    Objects.requireNonNull(str);
                    Objects.requireNonNull(jsonObject);
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("SkuSetId", str);
                    contentValues.put("SupportedPatternGuid", str2);
                    contentValues.put("Metadata", GsonHelper.f39261b.k(jsonObject));
                    Threads.b();
                    try {
                        BaseDao.j(sQLiteDatabase, "SkuSetSupportedPattern", contentValues);
                        i3 = i4;
                    } catch (Throwable th2) {
                        Log.e("SkuSetSupportedPatternDao", "[insertOrReplace] failed", th2);
                        throw th2;
                    }
                }
                while (i2 < cVar.wearingStyle.size()) {
                    String str3 = cVar.skuSetId;
                    int i5 = i2 + 1;
                    String str4 = String.format(Locale.US, "%s_ws_%02d", str3, Integer.valueOf(i5));
                    JsonObject jsonObject2 = cVar.wearingStyle.get(i2);
                    Objects.requireNonNull(str3);
                    Objects.requireNonNull(jsonObject2);
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("SkuSetId", str3);
                    contentValues2.put("WearingStyleGuid", str4);
                    contentValues2.put("Metadata", GsonHelper.f39261b.k(jsonObject2));
                    Threads.b();
                    try {
                        BaseDao.j(sQLiteDatabase, "SkuSetWearingStyle", contentValues2);
                        i2 = i5;
                    } catch (Throwable th3) {
                        Log.e("SkuSetWearingStyleDao", "[insertOrReplace] failed", th3);
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                Log.e("SkuSetDao", "[insertOrReplace]", th4);
                throw th4;
            }
        }

        public static List c(String str, boolean z) {
            com.perfectcorp.perfectlib.ph.database.ymk.skuset.c cVar;
            Threads.b();
            String strI = com.perfectcorp.perfectlib.ph.unit.sku.a.i(str);
            Log.g(3, "PanelDataCenter", fc.i("[getWearingStyleColorReferenceInfos] skuSetId=", str, ", actualSkuSetId=", strI));
            List<com.perfectcorp.perfectlib.ph.database.ymk.skuset.k> listK = z ? k(strI) : i(strI);
            if (MoreCollections.a(listK)) {
                Log.d("PanelDataCenter", "[getWearingStyleColorReferenceInfos] wearingStyles is empty, skuSetId=" + str);
                return Collections.EMPTY_LIST;
            }
            List listJ = z ? j(strI) : g(strI);
            bz bzVar = ImmutableList.f42200c;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            for (com.perfectcorp.perfectlib.ph.database.ymk.skuset.k kVar : listK) {
                ArrayList arrayList = new ArrayList(kVar.colorReferences.size());
                for (com.perfectcorp.perfectlib.ph.database.ymk.skuset.k.a aVar : kVar.colorReferences) {
                    Iterator it = listJ.iterator();
                    do {
                        if (!it.hasNext()) {
                            cVar = null;
                            break;
                        }
                        cVar = (com.perfectcorp.perfectlib.ph.database.ymk.skuset.c) it.next();
                        Objects.requireNonNull(aVar);
                    } while (!aVar.paletteGuid.equals(cVar.f41342c));
                    if (cVar == null) {
                        StringBuilder sbR = pq0.r("[getWearingStyleColorReferenceInfos] skuSetId=", str, " without skuSetItem guid=");
                        sbR.append(aVar.paletteGuid);
                        sbR.append(" which in supportedPattern");
                        Log.d("PanelDataCenter", sbR.toString());
                    } else {
                        arrayList.add(Pair.create(cVar, aVar));
                    }
                }
                builder.f(Pair.create(kVar.wearingStyleGuid, arrayList));
            }
            return builder.i();
        }

        public static void d(SQLiteDatabase sQLiteDatabase, com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.c cVar) {
            com.perfectcorp.perfectlib.ph.database.ymk.skuset.a.C0157a c0157a = new com.perfectcorp.perfectlib.ph.database.ymk.skuset.a.C0157a(cVar.skuSetId);
            c0157a.f41335b = cVar.type;
            c0157a.f41336c = cVar.vendor;
            c0157a.d = cVar.customerId;
            c0157a.f41337e = cVar.lastModified;
            c0157a.f41338f = cVar.makeupVersion;
            com.perfectcorp.perfectlib.ph.database.ymk.skuset.a.b bVar = new com.perfectcorp.perfectlib.ph.database.ymk.skuset.a.b();
            bVar.name = cVar.name;
            bVar.thumbnail = cVar.thumbnail;
            bVar.shoppingUrl = cVar.shoppingUrl;
            c0157a.g = bVar;
            int i2 = 0;
            c0157a.f41339h = false;
            try {
                long jReplace = sQLiteDatabase.replace(YMKDatabase.a(sQLiteDatabase, "SkuSetList"), null, new com.perfectcorp.perfectlib.ph.database.ymk.skuset.a(c0157a).a());
                if (jReplace < 0) {
                    Log.g(5, "SkuSetListDao", "db.insert failed. id: " + jReplace);
                }
                for (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.a aVar : cVar.a()) {
                    com.perfectcorp.perfectlib.ph.database.ymk.skuset.c.a aVar2 = new com.perfectcorp.perfectlib.ph.database.ymk.skuset.c.a(cVar.skuSetId);
                    aVar2.f41344b = aVar.skuGuid;
                    aVar2.f41345c = aVar.itemGuid;
                    aVar2.d = GsonBaseResponse.f41999a.k(Collections.EMPTY_MAP);
                    try {
                        long jInsert = sQLiteDatabase.insert(YMKDatabase.a(sQLiteDatabase, "SkuSetListItem"), null, new com.perfectcorp.perfectlib.ph.database.ymk.skuset.c(aVar2).a());
                        if (jInsert < 0) {
                            Log.g(5, "SkuSetListItemDao", "db.insert failed. id: " + jInsert);
                        }
                    } catch (Throwable th) {
                        Log.e("SkuSetListItemDao", "[insert]", th);
                        throw th;
                    }
                }
                int i3 = 0;
                while (i3 < cVar.supportedPatterns.size()) {
                    String str = cVar.skuSetId;
                    int i4 = i3 + 1;
                    String str2 = String.format(Locale.US, "%s_sp_%02d", str, Integer.valueOf(i4));
                    JsonObject jsonObject = cVar.supportedPatterns.get(i3);
                    Objects.requireNonNull(str);
                    Objects.requireNonNull(jsonObject);
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("SkuSetId", str);
                    contentValues.put("SupportedPatternGuid", str2);
                    contentValues.put("Metadata", GsonHelper.f39261b.k(jsonObject));
                    Threads.b();
                    try {
                        BaseDao.j(sQLiteDatabase, "SkuSetListSupportedPattern", contentValues);
                        i3 = i4;
                    } catch (Throwable th2) {
                        Log.e("SkuSetListSupportedPatternDao", "[insertOrReplace] failed", th2);
                        throw th2;
                    }
                }
                while (i2 < cVar.wearingStyle.size()) {
                    String str3 = cVar.skuSetId;
                    int i5 = i2 + 1;
                    String str4 = String.format(Locale.US, "%s_ws_%02d", str3, Integer.valueOf(i5));
                    JsonObject jsonObject2 = cVar.wearingStyle.get(i2);
                    Objects.requireNonNull(str3);
                    Objects.requireNonNull(jsonObject2);
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("SkuSetId", str3);
                    contentValues2.put("WearingStyleGuid", str4);
                    contentValues2.put("Metadata", GsonHelper.f39261b.k(jsonObject2));
                    Threads.b();
                    try {
                        BaseDao.j(sQLiteDatabase, "SkuSetListWearingStyle", contentValues2);
                        i2 = i5;
                    } catch (Throwable th3) {
                        Log.e("SkuSetListWearingStyleDao", "[insertOrReplace] failed", th3);
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                Log.e("SkuSetListDao", "[insertOrReplace]", th4);
                throw th4;
            }
        }

        public static Optional e(String str) {
            Threads.b();
            List listA = com.perfectcorp.perfectlib.ph.database.ymk.skuset.b.a(YMKDatabase.b(), Collections.singletonList(str));
            return MoreCollections.a(listA) ? Optional.a() : Optional.e((com.perfectcorp.perfectlib.ph.database.ymk.skuset.a) listA.get(0));
        }

        public static List f(String str, boolean z) {
            com.perfectcorp.perfectlib.ph.database.ymk.skuset.c cVar;
            Threads.b();
            String strI = com.perfectcorp.perfectlib.ph.unit.sku.a.i(str);
            Log.g(3, "PanelDataCenter", fc.i("[getWearingStylePatternInfos] skuSetId=", str, ", actualSkuSetId=", strI));
            List<com.perfectcorp.perfectlib.ph.database.ymk.skuset.k> listK = z ? k(strI) : i(strI);
            if (MoreCollections.a(listK)) {
                Log.d("PanelDataCenter", "[getWearingStylePatternInfos] wearingStyles is empty, skuSetId=" + str);
                return Collections.EMPTY_LIST;
            }
            List listJ = z ? j(strI) : g(strI);
            bz bzVar = ImmutableList.f42200c;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            for (com.perfectcorp.perfectlib.ph.database.ymk.skuset.k kVar : listK) {
                ArrayList arrayList = new ArrayList(kVar.patterns.size());
                for (com.perfectcorp.perfectlib.ph.database.ymk.skuset.k.b bVar : kVar.patterns) {
                    Iterator it = listJ.iterator();
                    do {
                        if (!it.hasNext()) {
                            cVar = null;
                            break;
                        }
                        cVar = (com.perfectcorp.perfectlib.ph.database.ymk.skuset.c) it.next();
                        Objects.requireNonNull(bVar);
                    } while (!bVar.itemGuid.equals(cVar.f41342c));
                    if (cVar == null) {
                        StringBuilder sbR = pq0.r("[getWearingStylePatternInfos] skuSetId=", str, " without skuSetItem guid=");
                        sbR.append(bVar.itemGuid);
                        sbR.append(" which in supportedPattern");
                        Log.d("PanelDataCenter", sbR.toString());
                    } else {
                        arrayList.add(Pair.create(cVar, bVar));
                    }
                }
                builder.f(Pair.create(kVar.wearingStyleGuid, arrayList));
            }
            return builder.i();
        }

        public static List g(String str) {
            Threads.b();
            try {
                Cursor cursorQuery = YMKDatabase.b().query("SkuSetItem", new String[]{"SkuSetId", "SkuGuid", "ItemGuid", "Metadata"}, "SkuSetId=?", new String[]{str}, null, null, null, null);
                if (!DBUtility.f(cursorQuery)) {
                    List list = Collections.EMPTY_LIST;
                    IO.b(cursorQuery);
                    return list;
                }
                ArrayList arrayList = new ArrayList();
                do {
                    int columnIndex = cursorQuery.getColumnIndex("SkuSetId");
                    int columnIndex2 = cursorQuery.getColumnIndex("SkuGuid");
                    int columnIndex3 = cursorQuery.getColumnIndex("ItemGuid");
                    int columnIndex4 = cursorQuery.getColumnIndex("Metadata");
                    String string = cursorQuery.getString(columnIndex);
                    String string2 = cursorQuery.getString(columnIndex2);
                    String string3 = cursorQuery.getString(columnIndex3);
                    String string4 = cursorQuery.getString(columnIndex4);
                    com.perfectcorp.perfectlib.ph.database.ymk.skuset.c.a aVar = new com.perfectcorp.perfectlib.ph.database.ymk.skuset.c.a(string);
                    aVar.f41344b = string2;
                    aVar.f41345c = string3;
                    aVar.d = string4;
                    arrayList.add(new com.perfectcorp.perfectlib.ph.database.ymk.skuset.c(aVar));
                } while (cursorQuery.moveToNext());
                IO.b(cursorQuery);
                return arrayList;
            } catch (Throwable th) {
                try {
                    Log.e("SkuSetItemDao", "[getSkuSetItems]", th);
                    throw th;
                } catch (Throwable th2) {
                    IO.b(null);
                    throw th2;
                }
            }
        }

        public static List h(String str) {
            Threads.b();
            SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
            Threads.b();
            Objects.requireNonNull(str);
            try {
                Cursor cursorF = BaseDao.f(sQLiteDatabaseB, "SkuSetSupportedPattern", Contract.SkuSetSupportedPattern.f40251a, new String[]{"SkuSetId"}, new String[]{str});
                if (!DBUtility.f(cursorF)) {
                    List list = Collections.EMPTY_LIST;
                    IO.b(cursorF);
                    return list;
                }
                bz bzVar = ImmutableList.f42200c;
                ImmutableList.Builder builder = new ImmutableList.Builder();
                do {
                    String strG = BaseDao.g(cursorF, "SupportedPatternGuid");
                    String string = cursorF.getString(cursorF.getColumnIndex("Metadata"));
                    Gson gson = GsonHelper.f39261b;
                    JsonObject jsonObject = (JsonObject) gson.i(string, JsonObject.class);
                    jsonObject.p("skuSetGuid", str);
                    jsonObject.p("supportedPatternGuid", strG);
                    builder.f((com.perfectcorp.perfectlib.ph.database.ymk.skuset.i) gson.h(jsonObject, com.perfectcorp.perfectlib.ph.database.ymk.skuset.i.class));
                } while (cursorF.moveToNext());
                ImmutableList immutableListI = builder.i();
                IO.b(cursorF);
                return immutableListI;
            } catch (Throwable th) {
                try {
                    Log.e("SkuSetSupportedPatternDao", "[getBySkuSetId] failed", th);
                    throw th;
                } catch (Throwable th2) {
                    IO.b(null);
                    throw th2;
                }
            }
        }

        public static List i(String str) {
            Threads.b();
            SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
            Threads.b();
            Objects.requireNonNull(str);
            try {
                Cursor cursorF = BaseDao.f(sQLiteDatabaseB, "SkuSetWearingStyle", Contract.SkuSetWearingStyle.f40252a, new String[]{"SkuSetId"}, new String[]{str});
                if (!DBUtility.f(cursorF)) {
                    List list = Collections.EMPTY_LIST;
                    IO.b(cursorF);
                    return list;
                }
                bz bzVar = ImmutableList.f42200c;
                ImmutableList.Builder builder = new ImmutableList.Builder();
                do {
                    String strG = BaseDao.g(cursorF, "WearingStyleGuid");
                    String string = cursorF.getString(cursorF.getColumnIndex("Metadata"));
                    Gson gson = GsonHelper.f39261b;
                    JsonObject jsonObject = (JsonObject) gson.i(string, JsonObject.class);
                    jsonObject.p("skuSetGuid", str);
                    jsonObject.p("wearingStyleGuid", strG);
                    builder.f((com.perfectcorp.perfectlib.ph.database.ymk.skuset.k) gson.h(jsonObject, com.perfectcorp.perfectlib.ph.database.ymk.skuset.k.class));
                } while (cursorF.moveToNext());
                ImmutableList immutableListI = builder.i();
                IO.b(cursorF);
                return immutableListI;
            } catch (Throwable th) {
                try {
                    Log.e("SkuSetWearingStyleDao", "[getBySkuSetId] failed", th);
                    throw th;
                } catch (Throwable th2) {
                    IO.b(null);
                    throw th2;
                }
            }
        }

        public static List j(String str) {
            Threads.b();
            try {
                Cursor cursorQuery = YMKDatabase.b().query("SkuSetListItem", new String[]{"SkuSetId", "SkuGuid", "ItemGuid", "Metadata"}, "SkuSetId=?", new String[]{str}, null, null, null, null);
                if (!DBUtility.f(cursorQuery)) {
                    List list = Collections.EMPTY_LIST;
                    IO.b(cursorQuery);
                    return list;
                }
                ArrayList arrayList = new ArrayList();
                do {
                    int columnIndex = cursorQuery.getColumnIndex("SkuSetId");
                    int columnIndex2 = cursorQuery.getColumnIndex("SkuGuid");
                    int columnIndex3 = cursorQuery.getColumnIndex("ItemGuid");
                    int columnIndex4 = cursorQuery.getColumnIndex("Metadata");
                    String string = cursorQuery.getString(columnIndex);
                    String string2 = cursorQuery.getString(columnIndex2);
                    String string3 = cursorQuery.getString(columnIndex3);
                    String string4 = cursorQuery.getString(columnIndex4);
                    com.perfectcorp.perfectlib.ph.database.ymk.skuset.c.a aVar = new com.perfectcorp.perfectlib.ph.database.ymk.skuset.c.a(string);
                    aVar.f41344b = string2;
                    aVar.f41345c = string3;
                    aVar.d = string4;
                    arrayList.add(new com.perfectcorp.perfectlib.ph.database.ymk.skuset.c(aVar));
                } while (cursorQuery.moveToNext());
                IO.b(cursorQuery);
                return arrayList;
            } catch (Throwable th) {
                try {
                    Log.e("SkuSetListItemDao", "[getSkuSetItems]", th);
                    throw th;
                } catch (Throwable th2) {
                    IO.b(null);
                    throw th2;
                }
            }
        }

        public static List k(String str) {
            Threads.b();
            SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
            Threads.b();
            Objects.requireNonNull(str);
            try {
                Cursor cursorF = BaseDao.f(sQLiteDatabaseB, "SkuSetListWearingStyle", Contract.SkuSetListWearingStyle.f40250a, new String[]{"SkuSetId"}, new String[]{str});
                if (!DBUtility.f(cursorF)) {
                    List list = Collections.EMPTY_LIST;
                    IO.b(cursorF);
                    return list;
                }
                bz bzVar = ImmutableList.f42200c;
                ImmutableList.Builder builder = new ImmutableList.Builder();
                do {
                    String strG = BaseDao.g(cursorF, "WearingStyleGuid");
                    String string = cursorF.getString(cursorF.getColumnIndex("Metadata"));
                    Gson gson = GsonHelper.f39261b;
                    JsonObject jsonObject = (JsonObject) gson.i(string, JsonObject.class);
                    jsonObject.p("skuSetGuid", str);
                    jsonObject.p("wearingStyleGuid", strG);
                    builder.f((com.perfectcorp.perfectlib.ph.database.ymk.skuset.k) gson.h(jsonObject, com.perfectcorp.perfectlib.ph.database.ymk.skuset.k.class));
                } while (cursorF.moveToNext());
                ImmutableList immutableListI = builder.i();
                IO.b(cursorF);
                return immutableListI;
            } catch (Throwable th) {
                try {
                    Log.e("SkuSetListWearingStyleDao", "[getBySkuSetId] failed", th);
                    throw th;
                } catch (Throwable th2) {
                    IO.b(null);
                    throw th2;
                }
            }
        }
    }

    public enum f {
        EDIT("Edit"),
        LIVE("Live"),
        ALL("All");

        private final String d;

        f(String str) {
            this.d = str;
        }

        public static f a(String str) {
            for (f fVar : (f[]) values().clone()) {
                if (fVar.d.equalsIgnoreCase(str)) {
                    return fVar;
                }
            }
            return EDIT;
        }
    }

    @Deprecated
    public static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LocalizedString f41645a = new LocalizedString();
    }

    static {
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(Math.max(1, Runtime.getRuntime().availableProcessors() - 1), NamedThreadFactory.c("LOOK_DATA_QUERY_EXECUTOR"));
        f41633a = executorServiceNewFixedThreadPool;
        f41634b = Schedulers.a(executorServiceNewFixedThreadPool);
    }

    public static FunStickerTemplate a(String str, boolean z) {
        defpackage.a.v(3, "[queryFunStickerTemplateByGuid] funStickerGuid=", str, "PanelDataCenter");
        AtomicInteger atomicInteger = com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j.f41498a;
        File fileC = c(new File(DownloadFolderHelper.d(), str));
        if (fileC == null || !fileC.exists() || !fileC.isDirectory()) {
            Log.d("PanelDataCenter", "Invalid template folder. funStickerGuid=" + str);
            return FunStickerTemplate.f40650e;
        }
        try {
            return FunStickerTemplate.r(fileC.getAbsolutePath());
        } catch (Throwable th) {
            if (z) {
                return FunStickerTemplate.f40650e;
            }
            throw th;
        }
    }

    public static Real3DEyewearPayload b(com.perfectcorp.perfectlib.ph.template.idc.e.f fVar, com.perfectcorp.perfectlib.ph.template.idc.e.f fVar2) {
        CLMakeupLive3DFilter.Object3DEyewearGlassInfo object3DEyewearGlassInfo = new CLMakeupLive3DFilter.Object3DEyewearGlassInfo();
        object3DEyewearGlassInfo.f25525b = TemplateUtils.a(TextUtils.isEmpty(fVar2.a("frame_length")) ? fVar.a("frame_length") : fVar2.a("frame_length"), object3DEyewearGlassInfo.f25525b);
        object3DEyewearGlassInfo.f25526c = TemplateUtils.a(TextUtils.isEmpty(fVar2.a("bridge_length")) ? fVar.a("bridge_length") : fVar2.a("bridge_length"), object3DEyewearGlassInfo.f25526c);
        object3DEyewearGlassInfo.f25524a = TemplateUtils.a(TextUtils.isEmpty(fVar2.a("frame_total_width")) ? fVar.a("frame_total_width") : fVar2.a("frame_total_width"), object3DEyewearGlassInfo.f25524a);
        object3DEyewearGlassInfo.d = TemplateUtils.o(TextUtils.isEmpty(fVar2.a("left_anchor_position")) ? fVar.a("left_anchor_position") : fVar2.a("left_anchor_position"), 3, object3DEyewearGlassInfo.d);
        object3DEyewearGlassInfo.f25527e = TemplateUtils.o(TextUtils.isEmpty(fVar2.a("right_anchor_position")) ? fVar.a("right_anchor_position") : fVar2.a("right_anchor_position"), 3, object3DEyewearGlassInfo.f25527e);
        CLMakeupLive3DFilter.Object3DEyewearSetting object3DEyewearSetting = new CLMakeupLive3DFilter.Object3DEyewearSetting();
        object3DEyewearSetting.f25528a = TemplateUtils.q(TextUtils.isEmpty(fVar2.a("len_color_1")) ? fVar.a("len_color_1") : fVar2.a("len_color_1"), object3DEyewearSetting.f25528a);
        object3DEyewearSetting.f25529b = TemplateUtils.a(TextUtils.isEmpty(fVar2.a("len_density_1")) ? fVar.a("len_density_1") : fVar2.a("len_density_1"), object3DEyewearSetting.f25529b);
        object3DEyewearSetting.f25530c = TemplateUtils.q(TextUtils.isEmpty(fVar2.a("len_color_2")) ? fVar.a("len_color_2") : fVar2.a("len_color_2"), object3DEyewearSetting.f25530c);
        object3DEyewearSetting.d = TemplateUtils.a(TextUtils.isEmpty(fVar2.a("len_density_2")) ? fVar.a("len_density_2") : fVar2.a("len_density_2"), object3DEyewearSetting.d);
        object3DEyewearSetting.f25531e = TemplateUtils.q(TextUtils.isEmpty(fVar2.a("len_color_3")) ? fVar.a("len_color_3") : fVar2.a("len_color_3"), object3DEyewearSetting.f25531e);
        object3DEyewearSetting.f25532f = TemplateUtils.a(TextUtils.isEmpty(fVar2.a("len_density_3")) ? fVar.a("len_density_3") : fVar2.a("len_density_3"), object3DEyewearSetting.f25532f);
        object3DEyewearSetting.g = TemplateUtils.m(TextUtils.isEmpty(fVar2.a("len_gradient_1")) ? fVar.a("len_gradient_1") : fVar2.a("len_gradient_1"), object3DEyewearSetting.g);
        object3DEyewearSetting.f25533h = TemplateUtils.a(TextUtils.isEmpty(fVar2.a("len_gradient_1_position")) ? fVar.a("len_gradient_1_position") : fVar2.a("len_gradient_1_position"), object3DEyewearSetting.f25533h);
        object3DEyewearSetting.f25534i = TemplateUtils.a(TextUtils.isEmpty(fVar2.a("len_gradient_1_range")) ? fVar.a("len_gradient_1_range") : fVar2.a("len_gradient_1_range"), object3DEyewearSetting.f25534i);
        object3DEyewearSetting.f25535j = TemplateUtils.m(TextUtils.isEmpty(fVar2.a("len_gradient_2")) ? fVar.a("len_gradient_2") : fVar2.a("len_gradient_2"), object3DEyewearSetting.f25535j);
        object3DEyewearSetting.f25536k = TemplateUtils.a(TextUtils.isEmpty(fVar2.a("len_gradient_2_position")) ? fVar.a("len_gradient_2_position") : fVar2.a("len_gradient_2_position"), object3DEyewearSetting.f25536k);
        object3DEyewearSetting.l = TemplateUtils.a(TextUtils.isEmpty(fVar2.a("len_gradient_2_range")) ? fVar.a("len_gradient_2_range") : fVar2.a("len_gradient_2_range"), object3DEyewearSetting.l);
        boolean z = false;
        object3DEyewearSetting.m = object3DEyewearSetting.f25529b >= Call.Parameters.DEFAULT_CAMERA_ZOOM || object3DEyewearSetting.d >= Call.Parameters.DEFAULT_CAMERA_ZOOM || object3DEyewearSetting.f25532f >= Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fA = TemplateUtils.a(TextUtils.isEmpty(fVar2.a("frame_opacity")) ? fVar.a("frame_opacity") : fVar2.a("frame_opacity"), -1.0f);
        object3DEyewearSetting.n = fA;
        if (fA >= Call.Parameters.DEFAULT_CAMERA_ZOOM && fA <= 100.0f) {
            if (TemplateUtils.m(TextUtils.isEmpty(fVar2.a("enable_frame_opacity")) ? fVar.a("enable_frame_opacity") : fVar2.a("enable_frame_opacity"), true)) {
                z = true;
            }
        }
        object3DEyewearSetting.o = z;
        return new Real3DEyewearPayload(object3DEyewearSetting, object3DEyewearGlassInfo);
    }

    public static File c(File file) {
        File[] fileArrListFiles = file.listFiles();
        Set set = MoreCollections.f39434a;
        if (fileArrListFiles != null && fileArrListFiles.length > 0) {
            ArrayList arrayList = new ArrayList();
            for (File file2 : fileArrListFiles) {
                if (file2.isFile() && TextUtils.equals("sticker_template.json", file2.getName())) {
                    return file;
                }
                if (file2.isDirectory()) {
                    arrayList.add(file2);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                File fileC = c((File) it.next());
                if (fileC != null) {
                    return fileC;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:71:0x03a7  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.util.ArrayList] */
    public static Object d(ApplyEffectCtrl.PayloadCreatorParameters payloadCreatorParameters) {
        ?? arrayList;
        YMKPrimitiveData.LipstickStyle lipstickStyle;
        YMKPrimitiveData.LipstickStyle lipstickStyleY;
        int iV;
        int i2;
        int iA;
        int iV2;
        if (payloadCreatorParameters.f40554e != null) {
            int i3 = 0;
            switch (l.f41670b[payloadCreatorParameters.f40551a.ordinal()]) {
                case 1:
                    List listB = com.perfectcorp.perfectlib.ph.database.ymk.palette.g.b(YMKDatabase.b(), payloadCreatorParameters.f40554e);
                    EyebrowPayload.Builder builder = new EyebrowPayload.Builder();
                    builder.d = payloadCreatorParameters.p;
                    builder.f40628c = payloadCreatorParameters.o;
                    builder.f40626a = payloadCreatorParameters.m;
                    builder.f40627b = payloadCreatorParameters.n;
                    builder.f40629e = payloadCreatorParameters.q;
                    builder.f40630f = payloadCreatorParameters.r;
                    builder.g = payloadCreatorParameters.s;
                    if (listB != null && !listB.isEmpty()) {
                        com.perfectcorp.perfectlib.ph.database.ymk.palette.f.a aVar = ((com.perfectcorp.perfectlib.ph.database.ymk.palette.f) listB.get(0)).f41248c;
                        builder.f40631h = new UIShimmer(aVar.a(), GsonHelper.a(aVar.f41249a, "shimmer_intensity", 0), GsonHelper.a(aVar.f41249a, "shimmer_density", 0), GsonHelper.a(aVar.f41249a, "shimmer_granularity", 0));
                    }
                    return new EyebrowPayload(builder);
                case 3:
                    FaceContourPayload.Builder builder2 = new FaceContourPayload.Builder();
                    builder2.f40635a = payloadCreatorParameters.t;
                    builder2.f40636b = payloadCreatorParameters.u;
                    builder2.f40637c = payloadCreatorParameters.v;
                    return builder2.a();
                case 4:
                    List listUnmodifiableList = Collections.unmodifiableList(payloadCreatorParameters.w);
                    List listUnmodifiableList2 = Collections.unmodifiableList(payloadCreatorParameters.x);
                    List listUnmodifiableList3 = Collections.unmodifiableList(payloadCreatorParameters.y);
                    if (MoreCollections.a(listUnmodifiableList) || MoreCollections.a(listUnmodifiableList2) || MoreCollections.a(listUnmodifiableList3)) {
                        arrayList = Collections.EMPTY_LIST;
                    } else {
                        arrayList = new ArrayList();
                        int i4 = 0;
                        while (i4 < listUnmodifiableList2.size()) {
                            HairDyePayload.Color color = new HairDyePayload.Color();
                            color.f40675a = i4 < listUnmodifiableList.size() ? (String) listUnmodifiableList.get(i4) : (String) listUnmodifiableList.get(0);
                            color.f40676b = ((Integer) listUnmodifiableList2.get(i4)).intValue();
                            color.f40677c = ((Integer) (i4 < listUnmodifiableList3.size() ? listUnmodifiableList3.get(i4) : listUnmodifiableList3.get(0))).intValue();
                            arrayList.add(color);
                            i4++;
                        }
                    }
                    for (HairDyePayload.Color color2 : arrayList) {
                        color2.d = payloadCreatorParameters.f40553c;
                        color2.f40678e = payloadCreatorParameters.d;
                    }
                    HairDyePayload.Builder builder3 = new HairDyePayload.Builder();
                    builder3.f40671a = arrayList;
                    builder3.f40672b = payloadCreatorParameters.z;
                    builder3.f40673c = payloadCreatorParameters.A;
                    builder3.f40674e = payloadCreatorParameters.B;
                    builder3.d = !TextUtils.isEmpty(payloadCreatorParameters.C) && TextUtils.equals(payloadCreatorParameters.C, com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.a.f41258a.a());
                    return new HairDyePayload(builder3);
                case 5:
                    com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.C0149b c0149bJ = com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.j(YMKDatabase.b(), payloadCreatorParameters.g, payloadCreatorParameters.f40554e);
                    LipLinerPayload.Builder builder4 = new LipLinerPayload.Builder();
                    VN_Lipliner_Type vN_Lipliner_Type = payloadCreatorParameters.F;
                    Objects.requireNonNull(vN_Lipliner_Type);
                    builder4.f40684a = vN_Lipliner_Type;
                    int iA2 = payloadCreatorParameters.G;
                    if (iA2 == -1) {
                        iA2 = GsonHelper.a(c0149bJ.f41261a, "thickness", -1);
                    }
                    builder4.f40685b = iA2;
                    int iA3 = payloadCreatorParameters.H;
                    if (iA3 == -1) {
                        iA3 = GsonHelper.a(c0149bJ.f41261a, "smoothness", -1);
                    }
                    builder4.f40686c = iA3;
                    builder4.d = payloadCreatorParameters.I;
                    builder4.f40687e = payloadCreatorParameters.J;
                    builder4.f40688f = payloadCreatorParameters.K;
                    ImmutableList immutableList = payloadCreatorParameters.L;
                    Preconditions.f(!immutableList.isEmpty());
                    builder4.g = ImmutableList.u(immutableList);
                    return new LipLinerPayload(builder4);
                case 7:
                    YMKPrimitiveData.Effect.Position position = payloadCreatorParameters.R;
                    YMKPrimitiveData.Effect.Position position2 = YMKPrimitiveData.Effect.Position.LEFT;
                    if (position != position2 && position != YMKPrimitiveData.Effect.Position.RIGHT && position != YMKPrimitiveData.Effect.Position.BOTH) {
                        return null;
                    }
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    EarringsPayload.Pattern pattern = new EarringsPayload.Pattern(payloadCreatorParameters.f40553c, payloadCreatorParameters.d, payloadCreatorParameters.g, 0);
                    if (position == position2 || position == YMKPrimitiveData.Effect.Position.BOTH) {
                        arrayList2.add(pattern);
                    }
                    if (position == YMKPrimitiveData.Effect.Position.RIGHT || position == YMKPrimitiveData.Effect.Position.BOTH) {
                        arrayList3.add(pattern);
                    }
                    return new EarringsPayload(null, arrayList2, arrayList3);
                case 8:
                    if (TextUtils.isEmpty(payloadCreatorParameters.f40556h)) {
                        if (TextUtils.isEmpty(payloadCreatorParameters.f40555f)) {
                            lipstickStyle = null;
                        } else {
                            String str = payloadCreatorParameters.f40555f;
                            float f2 = TemplateUtils.f41580a;
                            com.perfectcorp.perfectlib.ph.database.ymk.style.a aVarA = com.perfectcorp.perfectlib.ph.database.ymk.style.b.a(YMKDatabase.b(), str);
                            if (aVarA != null) {
                                lipstickStyle = new YMKPrimitiveData.LipstickStyle(aVarA.f41346a, Integer.parseInt(aVarA.f41347b), Integer.parseInt(aVarA.f41348c));
                            } else {
                                lipstickStyle = null;
                            }
                        }
                        lipstickStyleY = TemplateUtils.y(payloadCreatorParameters.f40554e);
                        if (lipstickStyle != null && lipstickStyleY != null) {
                            lipstickStyleY = new YMKPrimitiveData.LipstickStyle(lipstickStyleY.f40772a, lipstickStyle.f40773b, lipstickStyle.f40774c);
                        }
                    } else {
                        lipstickStyleY = new YMKPrimitiveData.LipstickStyle(payloadCreatorParameters.f40556h, payloadCreatorParameters.f40557i, payloadCreatorParameters.f40558j);
                    }
                    List listA = com.perfectcorp.perfectlib.ph.database.ymk.palette.c.a(YMKDatabase.b(), payloadCreatorParameters.f40554e);
                    List list = payloadCreatorParameters.T;
                    if (list != null && !list.isEmpty() && !TextUtils.isEmpty(payloadCreatorParameters.S)) {
                        p pVarA = com.perfectcorp.perfectlib.ph.database.ymk.shape.a.a(YMKDatabase.b(), payloadCreatorParameters.S);
                        if (pVarA == null && !TextUtils.equals((CharSequence) listA.get(0), "shape_lipstick_original")) {
                            pVarA = com.perfectcorp.perfectlib.ph.database.ymk.shape.a.a(YMKDatabase.b(), (String) listA.get(0));
                        }
                        LipstickShape lipstickShapeB = pVarA != null ? LipstickShape.b(pVarA.f41704c) : null;
                        ArrayList arrayList4 = new ArrayList();
                        for (YMKPrimitiveData.MakeupColor makeupColor : payloadCreatorParameters.T) {
                            YMKPrimitiveData.LipstickType lipstickTypeA = YMKPrimitiveData.LipstickType.a(makeupColor.g.r);
                            YMKPrimitiveData.MakeupColor.ExtraData extraData = makeupColor.g;
                            int i5 = extraData.o;
                            int i6 = i5 == -1 ? 0 : i5;
                            int i7 = extraData.q;
                            int i8 = i7 == -1 ? 0 : i7;
                            int i9 = extraData.p;
                            int i10 = i9 == -1 ? 0 : i9;
                            int i11 = extraData.n;
                            int iL = makeupColor.l();
                            YMKPrimitiveData.MakeupColor.ExtraData extraData2 = makeupColor.g;
                            arrayList4.add(new LipstickLayer(lipstickTypeA, i6, i10, i8, new UIShimmer(i11, iL, extraData2.l, extraData2.m)));
                        }
                        if (lipstickStyleY == null) {
                            lipstickStyleY = YMKPrimitiveData.LipstickStyle.f40771e;
                        }
                        LipstickPayload lipstickPayload = new LipstickPayload(lipstickStyleY, 0, null, 0, 100, 100, arrayList4, lipstickShapeB);
                        int i12 = payloadCreatorParameters.f40559k;
                        int i13 = payloadCreatorParameters.l;
                        lipstickPayload.f40701e = i12;
                        lipstickPayload.f40702f = i13;
                        return lipstickPayload;
                    }
                    String str2 = "transparency";
                    if (listA.isEmpty()) {
                        YMKPrimitiveData.LipstickStyle lipstickStyle2 = lipstickStyleY;
                        com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.C0149b c0149bJ2 = com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.j(YMKDatabase.b(), payloadCreatorParameters.g, payloadCreatorParameters.f40554e);
                        int iA4 = GsonHelper.a(c0149bJ2.f41261a, "gloss", -1);
                        try {
                            iV = TemplateUtils.v(GsonHelper.b(c0149bJ2.f41261a, "shimmer_color"));
                            break;
                        } catch (Throwable unused) {
                            iV = -1;
                        }
                        LipstickPayload lipstickPayload2 = new LipstickPayload(lipstickStyle2 != null ? lipstickStyle2 : YMKPrimitiveData.LipstickStyle.f40771e, iA4, new UIShimmer(iV, GsonHelper.a(c0149bJ2.f41261a, "shimmer_intensity", -1), GsonHelper.a(c0149bJ2.f41261a, "shimmer_density", -1), GsonHelper.a(c0149bJ2.f41261a, "shimmer_granularity", -1)), GsonHelper.a(c0149bJ2.f41261a, "transparency", 0), GsonHelper.a(c0149bJ2.f41261a, "fullness", 0), GsonHelper.a(c0149bJ2.f41261a, "wrinkless", 0), null, null);
                        int i14 = payloadCreatorParameters.f40559k;
                        int i15 = payloadCreatorParameters.l;
                        lipstickPayload2.f40701e = i14;
                        lipstickPayload2.f40702f = i15;
                        return lipstickPayload2;
                    }
                    com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.C0149b c0149b = null;
                    p pVarA2 = com.perfectcorp.perfectlib.ph.database.ymk.shape.a.a(YMKDatabase.b(), payloadCreatorParameters.g);
                    if (pVarA2 == null && !TextUtils.equals((CharSequence) listA.get(0), "shape_lipstick_original")) {
                        pVarA2 = com.perfectcorp.perfectlib.ph.database.ymk.shape.a.a(YMKDatabase.b(), (String) listA.get(0));
                    }
                    LipstickShape lipstickShapeB2 = pVarA2 != null ? LipstickShape.b(pVarA2.f41704c) : null;
                    List listC = com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.c(YMKDatabase.b(), payloadCreatorParameters.f40554e, ContentTree.AUDIO_ID);
                    ArrayList arrayList5 = new ArrayList();
                    if (!listC.isEmpty()) {
                        Iterator it = listC.iterator();
                        while (it.hasNext()) {
                            com.perfectcorp.perfectlib.ph.database.ymk.pattern.b bVar = (com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) it.next();
                            YMKPrimitiveData.LipstickType lipstickTypeA2 = YMKPrimitiveData.LipstickType.a(bVar.f41251a);
                            com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.C0149b c0149b2 = bVar.f41257i;
                            int i16 = Integer.parseInt(bVar.f41255f);
                            int iA5 = GsonHelper.a(c0149b2.f41261a, str2, i3);
                            int iA6 = GsonHelper.a(c0149b2.f41261a, "gloss", -1);
                            try {
                                iV2 = TemplateUtils.v(GsonHelper.b(c0149b2.f41261a, "shimmer_color"));
                            } catch (Throwable unused2) {
                                iV2 = -1;
                            }
                            YMKPrimitiveData.LipstickStyle lipstickStyle3 = lipstickStyleY;
                            arrayList5.add(new LipstickLayer(lipstickTypeA2, i16, iA6, iA5, new UIShimmer(iV2, GsonHelper.a(c0149b2.f41261a, "shimmer_intensity", -1), GsonHelper.a(c0149b2.f41261a, "shimmer_density", -1), GsonHelper.a(c0149b2.f41261a, "shimmer_granularity", -1))));
                            c0149b = c0149b2;
                            lipstickStyleY = lipstickStyle3;
                            it = it;
                            str2 = str2;
                            i3 = 0;
                            break;
                        }
                    }
                    YMKPrimitiveData.LipstickStyle lipstickStyle4 = lipstickStyleY;
                    com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.C0149b c0149b3 = c0149b;
                    YMKPrimitiveData.LipstickStyle lipstickStyle5 = lipstickStyle4 != null ? lipstickStyle4 : YMKPrimitiveData.LipstickStyle.f40771e;
                    if (c0149b3 != null) {
                        i2 = 0;
                        iA = GsonHelper.a(c0149b3.f41261a, "fullness", 0);
                    } else {
                        i2 = 0;
                        iA = 0;
                    }
                    LipstickPayload lipstickPayload3 = new LipstickPayload(lipstickStyle5, 0, null, 0, iA, c0149b3 != null ? GsonHelper.a(c0149b3.f41261a, "wrinkless", i2) : 0, arrayList5, lipstickShapeB2);
                    int i17 = payloadCreatorParameters.f40559k;
                    int i18 = payloadCreatorParameters.l;
                    lipstickPayload3.f40701e = i17;
                    lipstickPayload3.f40702f = i18;
                    return lipstickPayload3;
                case 9:
                case 10:
                    new EyeShadowLinerPayload.Builder();
                    return new EyeShadowLinerPayload(payloadCreatorParameters.D);
                case 11:
                    new BlushPayload.Builder();
                    return new BlushPayload(payloadCreatorParameters.E);
                case 12:
                    return new FoundationPayload(payloadCreatorParameters.M, payloadCreatorParameters.N);
                case 13:
                    JSONObject jSONObject = new JSONObject(((com.perfectcorp.perfectlib.ph.template.c) com.perfectcorp.perfectlib.ph.database.ymk.mask.a.a(YMKDatabase.b(), payloadCreatorParameters.g).get(0)).d);
                    u81 u81Var = new u81(jSONObject, i3);
                    ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                    concurrentHashMap.put("front_texture", (Bitmap) u81Var.apply("front_src"));
                    concurrentHashMap.put("left_texture", (Bitmap) u81Var.apply("left_src"));
                    concurrentHashMap.put("right_texture", (Bitmap) u81Var.apply("right_src"));
                    concurrentHashMap.put("env_region_texture", (Bitmap) u81Var.apply("env_region_src"));
                    String strOptString = jSONObject.optString("env_map_src");
                    if (!TextUtils.isEmpty(strOptString)) {
                        concurrentHashMap.put("env_map_texture", BitmapFactory.decodeFile(strOptString));
                    }
                    String strOptString2 = jSONObject.optString("env_frame_src");
                    if (!TextUtils.isEmpty(strOptString2)) {
                        concurrentHashMap.put("env_frame_texture", BitmapFactory.decodeFile(strOptString2));
                    }
                    CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearInfo liveCubeEyewearInfo = new CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearInfo();
                    liveCubeEyewearInfo.f25605a = TemplateUtils.p("front_left_anchor", jSONObject, liveCubeEyewearInfo.f25605a);
                    liveCubeEyewearInfo.f25606b = TemplateUtils.p("front_right_anchor", jSONObject, liveCubeEyewearInfo.f25606b);
                    liveCubeEyewearInfo.f25607c = TemplateUtils.p("left_ear_anchor", jSONObject, liveCubeEyewearInfo.f25607c);
                    liveCubeEyewearInfo.d = TemplateUtils.p("left_front_anchor", jSONObject, liveCubeEyewearInfo.d);
                    liveCubeEyewearInfo.f25608e = TemplateUtils.p("right_ear_anchor", jSONObject, liveCubeEyewearInfo.f25608e);
                    liveCubeEyewearInfo.f25609f = TemplateUtils.p("right_front_anchor", jSONObject, liveCubeEyewearInfo.f25609f);
                    liveCubeEyewearInfo.g = TemplateUtils.b("eyewear_scale", jSONObject, liveCubeEyewearInfo.g);
                    liveCubeEyewearInfo.f25610h = TemplateUtils.b("left_side_degree", jSONObject, liveCubeEyewearInfo.f25610h);
                    liveCubeEyewearInfo.f25611i = TemplateUtils.b("right_side_degree", jSONObject, liveCubeEyewearInfo.f25611i);
                    liveCubeEyewearInfo.f25612j = TemplateUtils.b("front_scale", jSONObject, liveCubeEyewearInfo.f25612j);
                    liveCubeEyewearInfo.f25613k = TemplateUtils.b("left_scale", jSONObject, liveCubeEyewearInfo.f25613k);
                    liveCubeEyewearInfo.l = TemplateUtils.b("right_scale", jSONObject, liveCubeEyewearInfo.l);
                    liveCubeEyewearInfo.m = TemplateUtils.b("depth", jSONObject, liveCubeEyewearInfo.m);
                    liveCubeEyewearInfo.n = TemplateUtils.b("frame_length", jSONObject, liveCubeEyewearInfo.n);
                    liveCubeEyewearInfo.o = TemplateUtils.b("bridge_length", jSONObject, liveCubeEyewearInfo.o);
                    liveCubeEyewearInfo.p = TemplateUtils.b("temple_length", jSONObject, liveCubeEyewearInfo.p);
                    liveCubeEyewearInfo.q = TemplateUtils.b("frame_total_width", jSONObject, liveCubeEyewearInfo.q);
                    liveCubeEyewearInfo.r = TemplateUtils.b("env_mode", jSONObject, liveCubeEyewearInfo.r);
                    float[] fArrP = TemplateUtils.p("env_tile", jSONObject, new float[]{liveCubeEyewearInfo.s, liveCubeEyewearInfo.t});
                    liveCubeEyewearInfo.s = fArrP[0];
                    liveCubeEyewearInfo.t = fArrP[1];
                    liveCubeEyewearInfo.u = TemplateUtils.b("env_intensity", jSONObject, liveCubeEyewearInfo.u);
                    liveCubeEyewearInfo.v = TemplateUtils.b("env_frame_mode", jSONObject, liveCubeEyewearInfo.v);
                    float[] fArrP2 = TemplateUtils.p("env_frame_tile", jSONObject, new float[]{liveCubeEyewearInfo.w, liveCubeEyewearInfo.x});
                    liveCubeEyewearInfo.w = fArrP2[0];
                    liveCubeEyewearInfo.x = fArrP2[1];
                    liveCubeEyewearInfo.y = TemplateUtils.b("env_frame_intensity", jSONObject, liveCubeEyewearInfo.y);
                    liveCubeEyewearInfo.z = TemplateUtils.r("len_color_1", jSONObject, liveCubeEyewearInfo.z);
                    liveCubeEyewearInfo.A = TemplateUtils.b("len_density_1", jSONObject, liveCubeEyewearInfo.A);
                    liveCubeEyewearInfo.B = TemplateUtils.r("len_color_2", jSONObject, liveCubeEyewearInfo.B);
                    liveCubeEyewearInfo.C = TemplateUtils.b("len_density_2", jSONObject, liveCubeEyewearInfo.C);
                    liveCubeEyewearInfo.D = TemplateUtils.r("len_color_3", jSONObject, liveCubeEyewearInfo.D);
                    liveCubeEyewearInfo.E = TemplateUtils.b("len_density_3", jSONObject, liveCubeEyewearInfo.E);
                    liveCubeEyewearInfo.F = TemplateUtils.l("len_gradient_1", jSONObject, liveCubeEyewearInfo.F);
                    liveCubeEyewearInfo.G = TemplateUtils.b("len_gradient_1_position", jSONObject, liveCubeEyewearInfo.G);
                    liveCubeEyewearInfo.H = TemplateUtils.b("len_gradient_1_range", jSONObject, liveCubeEyewearInfo.H);
                    liveCubeEyewearInfo.I = TemplateUtils.l("len_gradient_2", jSONObject, liveCubeEyewearInfo.I);
                    liveCubeEyewearInfo.J = TemplateUtils.b("len_gradient_2_position", jSONObject, liveCubeEyewearInfo.J);
                    liveCubeEyewearInfo.K = TemplateUtils.b("len_gradient_2_range", jSONObject, liveCubeEyewearInfo.K);
                    liveCubeEyewearInfo.L = liveCubeEyewearInfo.A >= Call.Parameters.DEFAULT_CAMERA_ZOOM || liveCubeEyewearInfo.C >= Call.Parameters.DEFAULT_CAMERA_ZOOM || liveCubeEyewearInfo.E >= Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    float fB = TemplateUtils.b("frame_opacity", jSONObject, -1.0f);
                    liveCubeEyewearInfo.M = fB;
                    liveCubeEyewearInfo.N = fB >= Call.Parameters.DEFAULT_CAMERA_ZOOM && fB <= 100.0f && TemplateUtils.l("enable_frame_opacity", jSONObject, true);
                    return new CubeEyewearPayload(concurrentHashMap, liveCubeEyewearInfo);
                case 14:
                    String str3 = payloadCreatorParameters.d;
                    Optional optionalD = SkuItemDao.d(YMKDatabase.b(), str3);
                    if (!optionalD.d()) {
                        Log.g(3, "PanelDataCenter", "[createReal3DEyewearPayload] use the mask info from pattern '" + str3 + "'");
                        return b(o(str3), new com.perfectcorp.perfectlib.ph.template.idc.e.f(new JsonObject()));
                    }
                    Log.g(3, "PanelDataCenter", "[createReal3DEyewearPayload] use the mask info from SKU '" + str3 + "'");
                    com.perfectcorp.perfectlib.ph.database.ymk.sku.e.b bVarA = ((com.perfectcorp.perfectlib.ph.database.ymk.sku.e) optionalD.c()).a();
                    Objects.requireNonNull(bVarA, "extra data is null for SKU '" + str3 + "'");
                    return b(o(bVarA.pattern.guid), new com.perfectcorp.perfectlib.ph.template.idc.e.f(bVarA.pattern.mask));
                case 15:
                    List listO = com.perfectcorp.perfectlib.ph.database.ymk.background.b.d.o(YMKDatabase.b(), Collections.singletonList(payloadCreatorParameters.O));
                    com.perfectcorp.perfectlib.ph.database.ymk.background.a aVar2 = !MoreCollections.a(listO) ? (com.perfectcorp.perfectlib.ph.database.ymk.background.a) listO.get(0) : null;
                    if (aVar2 != null) {
                        new BackgroundPayload.Builder();
                        return new BackgroundPayload(new BackgroundPayload.BackgroundSetting(aVar2.guid, aVar2.rootFolder, aVar2.data, aVar2.version, aVar2.d(), aVar2.e()));
                    }
                    break;
                case 16:
                    ConcealerPayload.Builder builder5 = new ConcealerPayload.Builder();
                    int i19 = payloadCreatorParameters.P;
                    if (i19 < 0 || i19 > 100) {
                        i19 = 0;
                    }
                    builder5.f40598a = i19;
                    int i20 = payloadCreatorParameters.Q;
                    if (i20 >= 0 && i20 <= 100) {
                        i3 = i20;
                    }
                    builder5.f40599b = i3;
                    return new ConcealerPayload(builder5);
            }
        }
        return null;
    }

    public static ArrayList e(String str) {
        ArrayList arrayList = new ArrayList();
        for (com.perfectcorp.perfectlib.ph.template.c cVar : com.perfectcorp.perfectlib.ph.database.ymk.mask.a.a(YMKDatabase.b(), str)) {
            if (com.perfectcorp.perfectlib.ph.database.ymk.color.a.a(YMKDatabase.b(), cVar.f41614f).isEmpty()) {
                arrayList.add(cVar);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(TemplateUtils.c((com.perfectcorp.perfectlib.ph.template.c) it.next()));
        }
        return arrayList2;
    }

    public static List f(YMKPrimitiveData.Palette palette) {
        if (palette == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = palette.g;
        if (!MoreCollections.a(arrayList)) {
            return arrayList;
        }
        ArrayList arrayListA = TemplateUtils.A(palette.f40814b);
        palette.g = arrayListA;
        return arrayListA;
    }

    public static List g(List list) {
        if (list.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new YMKPrimitiveData.MakeupColor(TemplateUtils.v((String) it.next())));
        }
        return arrayList;
    }

    public static void h(LiveSettingCtrl liveSettingCtrl, BeautyMode beautyMode, ApplyEffectCtrl.Setting setting) {
        String str;
        m(liveSettingCtrl, setting.f40571a, beautyMode);
        if (beautyMode.isAccessory()) {
            str = setting.f40578j;
        } else {
            str = SkuTemplateUtils.b(beautyMode) ? setting.f40571a : setting.f40572b;
        }
        j(liveSettingCtrl, str, beautyMode);
    }

    public static void i(LiveSettingCtrl liveSettingCtrl, BeautyMode beautyMode, FaceContourPayload faceContourPayload) {
        FaceContourPayload.Setting setting = faceContourPayload.f40632a;
        FaceContourPayload.Setting setting2 = faceContourPayload.f40633b;
        if (setting != null) {
            m(liveSettingCtrl, setting.d, beautyMode);
            l(liveSettingCtrl, beautyMode, SkuTemplateUtils.b(beautyMode) ? setting.d : setting.f40642e, setting.f40644h);
        }
        if (setting2 != null) {
            String str = setting2.d;
            m(liveSettingCtrl, str, beautyMode);
            if (!SkuTemplateUtils.b(beautyMode)) {
                str = setting2.f40642e;
            }
            l(liveSettingCtrl, beautyMode, str, setting2.f40644h);
        }
    }

    public static void j(LiveSettingCtrl liveSettingCtrl, String str, BeautyMode beautyMode) {
        Optional optionalA = SkuDbHelper.a(str);
        Sku sku = optionalA.d() ? (Sku) optionalA.c() : Sku.q;
        HashMap map = com.perfectcorp.perfectlib.ph.widgetpool.panel.livemakeup.a.f41784a;
        ItemSubType itemSubType = ItemSubType.NONE;
        HashMap map2 = com.perfectcorp.perfectlib.ph.widgetpool.panel.livemakeup.a.f41784a;
        Map enumMap = (Map) map2.get(liveSettingCtrl);
        if (enumMap == null) {
            enumMap = new EnumMap(BeautyMode.class);
            map2.put(liveSettingCtrl, enumMap);
        }
        Map enumMap2 = (Map) enumMap.get(beautyMode);
        if (enumMap2 == null) {
            enumMap2 = new EnumMap(ItemSubType.class);
        }
        enumMap2.put(itemSubType, sku);
        enumMap.put(beautyMode, enumMap2);
    }

    public static void k(YMKPrimitiveData.Look look, LiveSettingCtrl liveSettingCtrl) {
        n(look);
        MoreFutures.b(Observable.fromIterable(look.a()).groupBy(new r81(17)).flatMapSingle(new r81(18)).flatMap(new j(liveSettingCtrl)).toList().k());
    }

    public static void l(LiveSettingCtrl liveSettingCtrl, BeautyMode beautyMode, String str, ItemSubType itemSubType) {
        Optional optionalA = SkuDbHelper.a(str);
        Sku sku = optionalA.d() ? (Sku) optionalA.c() : Sku.q;
        HashMap map = com.perfectcorp.perfectlib.ph.widgetpool.panel.livemakeup.a.f41784a;
        Map enumMap = (Map) map.get(liveSettingCtrl);
        if (enumMap == null) {
            enumMap = new EnumMap(BeautyMode.class);
            map.put(liveSettingCtrl, enumMap);
        }
        Map enumMap2 = (Map) enumMap.get(beautyMode);
        if (enumMap2 == null) {
            enumMap2 = new EnumMap(ItemSubType.class);
        }
        enumMap2.put(itemSubType, sku);
        enumMap.put(beautyMode, enumMap2);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x005d  */
    public static void m(LiveSettingCtrl liveSettingCtrl, String str, BeautyMode beautyMode) {
        ArrayList arrayListZ;
        if (str != null) {
            YMKPrimitiveData.Pattern patternW = TemplateUtils.w(str);
            if (patternW != null) {
                switch (l.f41670b[beautyMode.ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                        liveSettingCtrl.f40749j.put(str, patternW);
                        break;
                }
            }
            if (TextUtils.isEmpty(str) && (beautyMode == BeautyMode.EYE_CONTACT || beautyMode == BeautyMode.EYE_WEAR || beautyMode == BeautyMode.HAIR_BAND || beautyMode == BeautyMode.NECKLACE || beautyMode == BeautyMode.EARRINGS)) {
                YMKPrimitiveData.SourceType sourceType = YMKPrimitiveData.SourceType.DEFAULT;
                List listB = com.perfectcorp.perfectlib.ph.database.ymk.pattern.a.b(YMKDatabase.b(), TemplateConsts.c(beautyMode), sourceType != null ? sourceType.name() : null);
                if (MoreCollections.a(listB)) {
                    arrayListZ = TemplateUtils.z(str);
                } else {
                    arrayListZ = TemplateUtils.z((String) listB.get(0));
                }
            } else {
                arrayListZ = TemplateUtils.z(str);
            }
            if (MoreCollections.a(arrayListZ)) {
                return;
            }
            liveSettingCtrl.f40750k.put(str, arrayListZ);
        }
    }

    public static void n(YMKPrimitiveData.Look look) {
        List list;
        if (look.f40787i) {
            return;
        }
        YMKPrimitiveData.Effect effect = new YMKPrimitiveData.Effect("", BeautyMode.UNDEFINED, "", Collections.EMPTY_LIST, null, "", null);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(com.perfectcorp.perfectlib.ph.database.ymk.look.a.b(YMKDatabase.b(), look.f40781a));
        Observable observableFlatMap = Observable.fromIterable(arrayList).flatMap(new com.perfectcorp.perfectlib.ph.template.g(look, effect));
        com.perfectcorp.perfectlib.ph.template.f fVar = new com.perfectcorp.perfectlib.ph.template.f();
        fVar.f41646b = effect;
        List list2 = (List) MoreFutures.b(observableFlatMap.filter(fVar).toList().k());
        Ordering orderingB = Ordering.a(arrayList).b(EnumC0368a.f41635a);
        List list3 = list2;
        bz bzVar = ImmutableList.f42200c;
        if (list3 instanceof Collection) {
            list = list3;
        } else {
            Iterator it = list3.iterator();
            ArrayList arrayList2 = new ArrayList();
            at.b(arrayList2, it);
            list = arrayList2;
        }
        Object[] array = list.toArray();
        al.a.d(array.length, array);
        Arrays.sort(array, orderingB);
        ImmutableList immutableListS = ImmutableList.s(array.length, array);
        if (look.f40787i || MoreCollections.a(immutableListS)) {
            return;
        }
        look.f40786h.addAll(immutableListS);
        look.f40787i = true;
    }

    public static com.perfectcorp.perfectlib.ph.template.idc.e.f o(String str) {
        ArrayList arrayListA = com.perfectcorp.perfectlib.ph.database.ymk.mask.a.a(YMKDatabase.b(), str);
        return arrayListA.size() <= 0 ? new com.perfectcorp.perfectlib.ph.template.idc.e.f((JsonObject) GsonHelper.f39261b.i("", JsonObject.class)) : new com.perfectcorp.perfectlib.ph.template.idc.e.f((JsonObject) GsonHelper.f39261b.i(((com.perfectcorp.perfectlib.ph.template.c) arrayListA.get(0)).d, JsonObject.class));
    }
}
