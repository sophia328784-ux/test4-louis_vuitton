package com.perfectcorp.perfectlib;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.guava.predicate.StringPredicates;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.network.BaseDownloadHandle;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.exceptions.LookNotFoundException;
import com.perfectcorp.perfectlib.exceptions.LookNotSupportedException;
import com.perfectcorp.perfectlib.exceptions.SkuNotFoundException;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.FaceContourPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.FaceContourSettingHelper;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.makeupcam.template.EffectInfo;
import com.perfectcorp.perfectlib.makeupcam.template.TemplateConsts;
import com.perfectcorp.perfectlib.makeupcam.template.TemplateWorkarounds;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDao;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuItemDao;
import com.perfectcorp.perfectlib.ph.template.SkuTemplateUtils;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ph.unit.sku.c$a;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$g;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.thirdparty.com.google.common.base.Joiner;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.base.Predicates;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Uninterruptibles;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.az;
import defpackage.b8;
import defpackage.bm;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.g7;
import defpackage.h7;
import defpackage.i8;
import defpackage.l7;
import defpackage.m7;
import defpackage.md;
import defpackage.n7;
import defpackage.p7;
import defpackage.pq0;
import defpackage.q7;
import defpackage.s7;
import defpackage.tr;
import defpackage.v7;
import defpackage.w7;
import defpackage.x5;
import defpackage.x7;
import defpackage.xx0;
import defpackage.y7;
import defpackage.y81;
import defpackage.z7;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ApplyEffectUtility {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ImmutableSet f39471a = ImmutableSet.u(new BeautyMode[]{BeautyMode.SKIN_SMOOTHER, BeautyMode.TEETH_WHITENER});

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ApplyEffectUtility$1, reason: invalid class name */
    abstract /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f39472a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f39473b;

        static {
            int[] iArr = new int[DownloadCacheStrategy.values().length];
            f39473b = iArr;
            try {
                iArr[DownloadCacheStrategy.CACHE_FIRST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39473b[DownloadCacheStrategy.UPDATE_FIRST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f39473b[DownloadCacheStrategy.CACHE_FIRST_THEN_UPDATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[BeautyMode.values().length];
            f39472a = iArr2;
            try {
                iArr2[BeautyMode.SKIN_TONER.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f39472a[BeautyMode.HAIR_DYE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f39472a[BeautyMode.EYE_WEAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f39472a[BeautyMode.HAIR_BAND.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f39472a[BeautyMode.NECKLACE.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f39472a[BeautyMode.EARRINGS.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f39472a[BeautyMode.LIP_STICK.ordinal()] = 7;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public static final class LookCacheFirstThenUpdateStrategy {
        public static void a(com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.C0136a c0136a, Configuration.ImageSource imageSource) {
            String str = c0136a.f41165a;
            try {
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar = new com.perfectcorp.perfectlib.ph.database.ymk.makeup.b(new JSONObject(c0136a.f41167c));
                Log.g(3, "LookCacheFirstThenUpdateStrategy", "[updateDownloadedLook] MakeupItemMetadata parsed.");
                try {
                    CacheCleaner.d(str, true);
                    Log.g(3, "LookCacheFirstThenUpdateStrategy", "[updateDownloadedLook] Old look deleted.");
                    com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.c.C0166c c0166cA = com.perfectcorp.perfectlib.ph.camera.panel.a.a(bVar);
                    c0166cA.o = true;
                    Objects.requireNonNull(imageSource);
                    c0166cA.f41469k = imageSource;
                    Uninterruptibles.a(((BaseDownloadHandle) c0166cA.b()).b());
                    Log.g(3, "LookCacheFirstThenUpdateStrategy", "[updateDownloadedLook] Look updated.");
                    LookHandler.d(bVar);
                    Log.g(3, "LookCacheFirstThenUpdateStrategy", "[updateDownloadedLook] Modified date updated.");
                    com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.b(YMKDatabase.c(), bVar.f41226b, bVar);
                    Log.g(3, "LookCacheFirstThenUpdateStrategy", "[updateDownloadedLook] MakeupItemMetadata updated.");
                    com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.d(str);
                    Log.g(3, "LookCacheFirstThenUpdateStrategy", "[updateDownloadedLook] Record deleted.");
                } catch (Throwable th) {
                    try {
                        Log.e("LookCacheFirstThenUpdateStrategy", "[updateDownloadedLook] updateDownloadedLook failed.", th);
                    } finally {
                        com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.d(str);
                        Log.g(3, "LookCacheFirstThenUpdateStrategy", "[updateDownloadedLook] Record deleted.");
                    }
                }
            } catch (ParseException | JSONException e2) {
                Log.e("LookCacheFirstThenUpdateStrategy", "[updateDownloadedLook] Parse JSON failed. row=" + c0136a, e2);
                com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.d(str);
            }
        }
    }

    public static final class ProgressCallbackMainThreadWrapper implements ProgressCallback {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final i8 f39482b = new i8();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ProgressCallback f39483a;

        public ProgressCallbackMainThreadWrapper(ProgressCallback progressCallback) {
            this.f39483a = progressCallback;
        }

        @Override // com.perfectcorp.common.network.ProgressCallback
        public final void a(double d) {
            PfCommons.c(new p(this, d, 0));
        }
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m A(ProgressCallback progressCallback, Configuration.ImageSource imageSource, DownloadCacheStrategy downloadCacheStrategy, DownloadTaskCancelable downloadTaskCancelable, String str) {
        downloadTaskCancelable.c();
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(!TextUtils.isEmpty(str) ? new c$g(Collections.singletonList(str)).c() : Single.g(new IllegalArgumentException("Empty look guid.")), new q7(downloadTaskCancelable, str, 0)), new m7(downloadTaskCancelable, progressCallback, downloadCacheStrategy, imageSource));
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o B(int i2, Collection collection) {
        com.perfectcorp.perfectlib.ph.kernelctrl.sku.h.a.C0179a c0179a = new com.perfectcorp.perfectlib.ph.kernelctrl.sku.h.a.C0179a();
        c0179a.d = NetworkTaskManager.TaskPriority.NORMAL;
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o(com.perfectcorp.perfectlib.ph.kernelctrl.sku.h.a(collection, i2, new com.perfectcorp.perfectlib.ph.kernelctrl.sku.h.a(c0179a)), new defpackage.x1(27));
    }

    public static String C(String str, String str2) {
        return p(str, Lists.c(Arrays.asList(str2.split(",")), new g7(9)));
    }

    public static com.perfectcorp.perfectlib.ph.database.ymk.skuset.k D(String str) {
        String str2;
        List<com.perfectcorp.perfectlib.ph.database.ymk.skuset.k> listI = com.perfectcorp.perfectlib.ph.template.e.C0182e.i(com.perfectcorp.perfectlib.ph.unit.sku.a.i(str));
        if (MoreCollections.a(listI)) {
            str2 = "[getMatchedSkuSetWearingStyle] supportedPatterns is empty!";
        } else {
            com.perfectcorp.perfectlib.ph.database.ymk.skuset.k kVar = (com.perfectcorp.perfectlib.ph.database.ymk.skuset.k) listI.get(0);
            for (com.perfectcorp.perfectlib.ph.database.ymk.skuset.k kVar2 : listI) {
                if (Objects.equals(kVar2.wearingStyleGuid, str)) {
                    kVar = kVar2;
                    break;
                }
            }
            if (!MoreCollections.a(kVar.colorReferences) || !MoreCollections.a(kVar.patterns)) {
                return kVar;
            }
            str2 = "[getMatchedSkuSetWearingStyle] colorReferences and patterns are empty!";
        }
        md.n(str2);
        return null;
    }

    public static com.perfectcorp.perfectlib.ph.database.ymk.skuset.i E(String str) {
        String str2;
        List<com.perfectcorp.perfectlib.ph.database.ymk.skuset.i> listH = com.perfectcorp.perfectlib.ph.template.e.C0182e.h(com.perfectcorp.perfectlib.ph.unit.sku.a.i(str));
        if (MoreCollections.a(listH)) {
            str2 = "[getMatchedSkuSetSupportedPattern] supportedPatterns is empty!";
        } else {
            com.perfectcorp.perfectlib.ph.database.ymk.skuset.i iVar = (com.perfectcorp.perfectlib.ph.database.ymk.skuset.i) listH.get(0);
            for (com.perfectcorp.perfectlib.ph.database.ymk.skuset.i iVar2 : listH) {
                if (Objects.equals(iVar2.supportedPatternGuid, str)) {
                    iVar = iVar2;
                    break;
                }
            }
            if (!MoreCollections.a(iVar.colorReferences)) {
                return iVar;
            }
            str2 = "[getMatchedSkuSetSupportedPattern] colorReferences is empty!";
        }
        md.n(str2);
        return null;
    }

    public static Optional F(String str) {
        YMKPrimitiveData.Look lookB;
        YMKPrimitiveData.Look look = null;
        if (!TextUtils.isEmpty(str) && (lookB = TemplateUtils.B(str)) != null && str.equals(lookB.f40781a)) {
            look = lookB;
        }
        return Optional.b(look);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x02a4  */
    /* JADX WARN: Code duplicated, block: B:52:0x01b2 A[Catch: all -> 0x01b8, TRY_LEAVE, TryCatch #10 {all -> 0x01b8, blocks: (B:50:0x01ac, B:52:0x01b2, B:56:0x01ba), top: B:298:0x01ac }] */
    public static ApplySkuInfo a(VtoSetting vtoSetting, Sku sku) {
        String strB;
        String str;
        String str2;
        Cursor cursorQuery;
        String str3;
        String string;
        List list;
        int i2;
        int iIntValue;
        Cursor cursorQuery2;
        String string2;
        List listSingletonList;
        Cursor cursorQuery3;
        String str4;
        com.perfectcorp.perfectlib.ph.database.ymk.sku.e.b.c cVar;
        String str5;
        String str6;
        List listC;
        String str7;
        Cursor cursorQuery4;
        String str8 = vtoSetting.f40014a;
        String str9 = vtoSetting.f40017e;
        String strC = vtoSetting.d;
        String str10 = vtoSetting.f40015b;
        String str11 = vtoSetting.f40016c;
        String str12 = sku.f41263b;
        BeautyMode beautyModeValueOfSkuFeatureType = BeautyMode.valueOfSkuFeatureType(str12);
        if (!SkuTemplateUtils.b(beautyModeValueOfSkuFeatureType) && !SubItemInfo.f(beautyModeValueOfSkuFeatureType)) {
            strC = str9;
        }
        BeautyMode beautyModeValueOfSkuFeatureType2 = BeautyMode.valueOfSkuFeatureType(str12);
        if (SkuTemplateUtils.b(beautyModeValueOfSkuFeatureType2) || !SubItemInfo.f(beautyModeValueOfSkuFeatureType2)) {
            str9 = "";
        }
        List list2 = Collections.EMPTY_LIST;
        Threads.b();
        BeautyMode beautyModeC = SkuTemplateUtils.c(str12);
        ItemSubType itemSubTypeD = ItemSubType.d(beautyModeC, sku.f41264c);
        if (com.perfectcorp.perfectlib.ph.unit.sku.a.f(str8)) {
            Log.g(3, "ApplyEffectUtility", "[generateApplySkuInfoForSkuSetInternal] Use sku set. beautyMode=" + beautyModeC + ", skuSetGuid=" + str8);
            List listR = r(beautyModeC, str8);
            TemplateWorkarounds.b(LiveSettingCtrl.c(beautyModeC), listR, list2);
            return new ApplySkuInfo(beautyModeC, str8, "", "", "", "", "", listR, 0);
        }
        int iC = LiveSettingCtrl.c(beautyModeC);
        if (SubItemInfo.f(beautyModeC)) {
            StringBuilder sb = new StringBuilder("[generateSubPaletteApplySkuInfo] Input sku parameters. Try to find first item. beautyMode=");
            sb.append(beautyModeC);
            sb.append(", skuGuid=");
            sb.append(str10);
            sb.append(", skuItemGuid=");
            cj.C(sb, str11, ", subItemGuid=", strC, ", subSubItemGuid=");
            cj.C(sb, str9, ", patternGuid=", str9, ", paletteGuid=");
            sb.append(str11);
            sb.append(", intensities");
            sb.append(list2);
            Log.g(3, "ApplyEffectUtility", sb.toString());
            String strO = TextUtils.isEmpty(str11) ? o(sku) : str11;
            if (TextUtils.isEmpty(strO)) {
                str5 = str10;
            } else {
                if (!TextUtils.isEmpty(strC)) {
                    listC = null;
                } else if (TextUtils.isEmpty(str9)) {
                    listC = com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.c(YMKDatabase.b(), strO, "1");
                    if (!MoreCollections.a(listC)) {
                        strC = C(strO, ((com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) listC.get(0)).f41253c);
                    }
                } else {
                    com.perfectcorp.perfectlib.ph.database.ymk.pattern.b bVar = (com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.i(YMKDatabase.b(), strO, str9).g();
                    if (bVar != null) {
                        strC = C(strO, bVar.f41253c);
                    }
                    listC = null;
                }
                if (TextUtils.isEmpty(str9) && !TextUtils.isEmpty(strC)) {
                    if (listC == null) {
                        str5 = str10;
                        String[] strArrSplit = strC.replace(strO + "_", "").split("_");
                        str7 = strC;
                        StringBuilder sb2 = new StringBuilder(strArrSplit.length * 3);
                        int length = strArrSplit.length;
                        int i3 = 0;
                        while (i3 < length) {
                            int i4 = i3;
                            sb2.append(strArrSplit[i4]);
                            sb2.append(", ");
                            i3 = i4 + 1;
                        }
                        sb2.setLength(sb2.length() - 2);
                        String string3 = sb2.toString();
                        SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
                        if ("-1".equals(string3)) {
                            string3 = "";
                        }
                        try {
                            cursorQuery4 = sQLiteDatabaseB.query("PatternPaletteInfo", Contract.PatternPaletteInfo.a(), "PaletteGUID=? AND PaletteColorIndex=?", new String[]{strO, string3}, null, null, null, "1");
                            try {
                                if (DBUtility.f(cursorQuery4)) {
                                    listC = com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.a(cursorQuery4);
                                    if (MoreCollections.a(listC)) {
                                        listC = Collections.EMPTY_LIST;
                                    }
                                } else {
                                    listC = Collections.EMPTY_LIST;
                                }
                                IO.b(cursorQuery4);
                            } catch (Throwable th) {
                                th = th;
                                try {
                                    int i5 = Log.f39427a;
                                    Log.j("PatternPaletteInfoDao", th.getMessage(), th);
                                    listC = Collections.EMPTY_LIST;
                                    IO.b(cursorQuery4);
                                } catch (Throwable th2) {
                                    IO.b(cursorQuery4);
                                    throw th2;
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            cursorQuery4 = null;
                        }
                        if (listC.isEmpty()) {
                            listC = com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.c(YMKDatabase.b(), strO, "1");
                        }
                    } else {
                        str7 = strC;
                        str5 = str10;
                    }
                    if (!MoreCollections.a(listC)) {
                        str6 = ((com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) listC.get(0)).f41251a;
                        strC = str7;
                    }
                    if (TextUtils.isEmpty(strO) && !TextUtils.isEmpty(strC) && !TextUtils.isEmpty(str6)) {
                        return new ApplySkuInfo(beautyModeC, str5, strO, str6, strO, strC, t(str6, strO, strC, list2, iC), 0);
                    }
                    StringBuilder sb3 = new StringBuilder("[generateSubPaletteApplySkuInfo] Fallback sku parameters. No item can be applied. beautyMode=");
                    sb3.append(beautyModeC);
                    sb3.append(", skuGuid=");
                    sb3.append(str5);
                    sb3.append(", skuItemGuid=");
                    cj.C(sb3, str11, ", subItemGuid=", strC, ", subSubItemGuid=");
                    cj.C(sb3, str9, ", patternGuid=", str6, ", paletteGuid=");
                    bm.e(strO, sb3);
                    return null;
                }
                str7 = strC;
                str5 = str10;
                strC = str7;
            }
            str6 = str9;
            if (TextUtils.isEmpty(strO)) {
            }
            StringBuilder sb4 = new StringBuilder("[generateSubPaletteApplySkuInfo] Fallback sku parameters. No item can be applied. beautyMode=");
            sb4.append(beautyModeC);
            sb4.append(", skuGuid=");
            sb4.append(str5);
            sb4.append(", skuItemGuid=");
            cj.C(sb4, str11, ", subItemGuid=", strC, ", subSubItemGuid=");
            cj.C(sb4, str9, ", patternGuid=", str6, ", paletteGuid=");
            bm.e(strO, sb4);
            return null;
        }
        String str13 = "";
        String strO2 = SkuTemplateUtils.b(SkuTemplateUtils.c(str12)) ? strC : str11;
        String str14 = SkuTemplateUtils.b(SkuTemplateUtils.c(str12)) ? str11 : strC;
        boolean zB = SkuTemplateUtils.b(beautyModeC);
        if (itemSubTypeD == ItemSubType.EYEWEAR_3D) {
            strB = ((com.perfectcorp.perfectlib.ph.database.ymk.sku.e) SkuItemDao.d(YMKDatabase.b(), str11).c()).b();
            if (TextUtils.isEmpty(strB)) {
                strB = null;
            }
        } else {
            strB = null;
        }
        if (beautyModeC == BeautyMode.NECKLACE) {
            com.perfectcorp.perfectlib.ph.database.ymk.sku.e eVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.e) SkuItemDao.d(YMKDatabase.b(), str11).c();
            com.perfectcorp.perfectlib.ph.database.ymk.sku.e.b bVarA = eVar.a();
            str14 = (bVarA == null || (cVar = bVarA.patternGeneral) == null) ? eVar.f41292a : cVar.guid;
        }
        String str15 = str14;
        if (y(beautyModeC, strB != 0 ? strB : str15, strO2)) {
            StringBuilder sb5 = new StringBuilder("[generateApplySkuInfo] Invalid sku parameter. Try to find first item. beautyMode=");
            sb5.append(beautyModeC);
            sb5.append(", skuGuid=");
            sb5.append(str10);
            sb5.append(", skuItemGuid=");
            cj.C(sb5, str11, ", subItemGuid=", strC, ", subSubItemGuid=");
            cj.C(sb5, str9, ", patternGuid=", str15, ", paletteGuid=");
            defpackage.a.A(sb5, strO2, 3, "ApplyEffectUtility");
            if (zB) {
                if (!TextUtils.isEmpty(str15)) {
                    str13 = str13;
                } else {
                    if (sku == Sku.q) {
                        md.n("Invalid product");
                        return null;
                    }
                    str13 = str13;
                    str15 = (String) e(beautyModeC, FluentIterable.n(SkuItemDao.b(YMKDatabase.b(), sku.f41266f)).i(Predicates.f()).r(new g7(8)).p()).f(str13);
                }
                if (beautyModeC == BeautyMode.EYE_CONTACT) {
                    if (TextUtils.isEmpty(strC)) {
                        str4 = str15;
                        List listE = com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.e(YMKDatabase.b(), Collections.singletonList(str15), true);
                        strO2 = !listE.isEmpty() ? (String) listE.get(0) : str13;
                    } else {
                        strO2 = strC;
                        str4 = str15;
                    }
                    str15 = str4;
                    str = "ApplyEffectUtility";
                    str2 = "PatternPaletteInfoDao";
                } else {
                    String str16 = str15;
                    if (beautyModeC.isAccessory()) {
                        str = "ApplyEffectUtility";
                        str2 = "PatternPaletteInfoDao";
                    } else if (TextUtils.isEmpty(strC)) {
                        SQLiteDatabase sQLiteDatabaseB2 = YMKDatabase.b();
                        ArrayList arrayList = new ArrayList();
                        try {
                            cursorQuery3 = sQLiteDatabaseB2.query(true, "PatternPaletteInfo, PaletteInfo", new String[]{"PaletteGUID"}, "PatternPaletteInfo.PatternGUID=? AND PaletteInfo.GUID = PaletteGUID", new String[]{str16}, "PatternPaletteInfo.PaletteGUID", null, "MIN(PatternPaletteInfo._id)", null);
                            try {
                                if (DBUtility.f(cursorQuery3)) {
                                    str = "ApplyEffectUtility";
                                    do {
                                        try {
                                            arrayList.add(cursorQuery3.getString(cursorQuery3.getColumnIndex("PaletteGUID")));
                                        } catch (Throwable th4) {
                                            th = th4;
                                            str2 = "PatternPaletteInfoDao";
                                            try {
                                                Log.e(str2, str13, th);
                                                IO.b(cursorQuery3);
                                            } catch (Throwable th5) {
                                                IO.b(cursorQuery3);
                                                throw th5;
                                            }
                                        }
                                    } while (cursorQuery3.moveToNext());
                                    IO.b(cursorQuery3);
                                } else {
                                    IO.b(cursorQuery3);
                                    str = "ApplyEffectUtility";
                                }
                                str2 = "PatternPaletteInfoDao";
                            } catch (Throwable th6) {
                                th = th6;
                                str = "ApplyEffectUtility";
                            }
                        } catch (Throwable th7) {
                            th = th7;
                            str = "ApplyEffectUtility";
                            cursorQuery3 = null;
                        }
                        strO2 = !arrayList.isEmpty() ? (String) arrayList.get(0) : str13;
                    } else {
                        strO2 = strC;
                        str = "ApplyEffectUtility";
                        str2 = "PatternPaletteInfoDao";
                    }
                    str15 = str16;
                }
            } else {
                str = "ApplyEffectUtility";
                str2 = "PatternPaletteInfoDao";
                if (TextUtils.isEmpty(strO2)) {
                    str13 = str13;
                    strO2 = o(sku);
                }
                str13 = str13;
                str15 = !TextUtils.isEmpty(strC) ? strC : (String) e(beautyModeC, com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.d(YMKDatabase.b(), strO2, str13, true)).f(str13);
                if (beautyModeC == BeautyMode.EYE_BROW && TextUtils.isEmpty(str15)) {
                    str15 = ((com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.c(YMKDatabase.b(), strO2, "1").get(0)).f41251a;
                }
            }
            if (y(beautyModeC, str15, strO2)) {
                StringBuilder sb6 = new StringBuilder("[generateApplySkuInfo] Invalid sku parameter. No item can be applied. beautyMode=");
                sb6.append(beautyModeC);
                sb6.append(", skuGuid=");
                sb6.append(str10);
                sb6.append(", skuItemGuid=");
                cj.C(sb6, str11, ", subItemGuid=", strC, ", subSubItemGuid=");
                cj.C(sb6, str9, ", patternGuid=", str15, ", paletteGuid=");
                bm.e(strO2, sb6);
                return null;
            }
        } else {
            str = "ApplyEffectUtility";
            str2 = "PatternPaletteInfoDao";
        }
        String str17 = strO2;
        String str18 = zB ? str15 : str17;
        String str19 = zB ? str17 : str15;
        if (strB != 0) {
            str15 = strB;
        }
        String str20 = str2;
        StringBuilder sb7 = new StringBuilder("[generateApplySkuInfo] Usable IDs : beautyMode=");
        sb7.append(beautyModeC);
        sb7.append(", skuGuid=");
        sb7.append(str10);
        sb7.append(", skuItemGuid=");
        cj.C(sb7, str11, ", subItemGuid=", strC, ", subSubItemGuid=");
        cj.C(sb7, str9, ", finalSkuItemGuid=", str18, ", finalSubItemGuid=");
        sb7.append(str19);
        String str21 = str;
        Log.g(3, str21, sb7.toString());
        List listF = com.perfectcorp.perfectlib.ph.template.e.f(TemplateUtils.x(str17));
        c$a.a aVar = new c$a.a();
        ImmutableList immutableListU = ImmutableList.u(Collections.singleton(Integer.valueOf(iC)));
        aVar.f41726a = immutableListU;
        c$a c_a = new c$a();
        ImmutableList.u(immutableListU);
        c_a.f41724a = aVar.f41727b;
        c_a.f41725b = aVar.f41728c;
        try {
            cursorQuery = YMKDatabase.b().query("PatternPaletteInfo", new String[]{"ColorIntensities"}, "PatternGUID=? AND PaletteGUID=? AND PaletteColorIndex=?", new String[]{str15, str17, str13}, null, null, null, null);
            try {
                if (DBUtility.f(cursorQuery)) {
                    string = cursorQuery.getString(cursorQuery.getColumnIndex("ColorIntensities"));
                    IO.b(cursorQuery);
                } else {
                    IO.b(cursorQuery);
                    string = null;
                }
                str3 = str20;
            } catch (Throwable th8) {
                th = th8;
                str3 = str20;
                try {
                    Log.e(str3, str13, th);
                    IO.b(cursorQuery);
                    string = str13;
                } catch (Throwable th9) {
                    IO.b(cursorQuery);
                    throw th9;
                }
            }
        } catch (Throwable th10) {
            th = th10;
            cursorQuery = null;
        }
        if (TextUtils.isEmpty(string)) {
            list = Collections.EMPTY_LIST;
        } else {
            try {
                ArrayList arrayList2 = new ArrayList();
                String[] strArrSplit2 = string.split(",");
                int length2 = strArrSplit2.length;
                int i6 = 0;
                while (i6 < length2) {
                    int i7 = i6;
                    arrayList2.add(Integer.valueOf(Integer.parseInt(strArrSplit2[i6].trim())));
                    i6 = i7 + 1;
                }
                list = arrayList2;
            } catch (Throwable th11) {
                Log.j("TemplateUtils", "getPatternPaletteIntensities", th11);
                list = Collections.EMPTY_LIST;
            }
        }
        if (list.isEmpty()) {
            i2 = 0;
            iIntValue = -1;
        } else {
            i2 = 0;
            iIntValue = ((Integer) list.get(0)).intValue();
        }
        YMKPrimitiveData.Palette paletteX = TemplateUtils.x(str17);
        if (iIntValue == -1) {
            List listF2 = com.perfectcorp.perfectlib.ph.template.e.f(paletteX);
            iIntValue = !MoreCollections.a(listF2) ? ((YMKPrimitiveData.MakeupColor) listF2.get(i2)).f40791e : -1;
        }
        int i8 = iIntValue;
        try {
            cursorQuery2 = YMKDatabase.b().query("PatternPaletteInfo", new String[]{"HiddenIntensity"}, "PatternGUID=? AND PaletteGUID=?", new String[]{str15, str17}, null, null, null, null);
            try {
                if (DBUtility.f(cursorQuery2)) {
                    string2 = cursorQuery2.getString(cursorQuery2.getColumnIndex("HiddenIntensity"));
                    IO.b(cursorQuery2);
                } else {
                    IO.b(cursorQuery2);
                    string2 = null;
                }
            } catch (Throwable th12) {
                th = th12;
                try {
                    int i9 = Log.f39427a;
                    Log.j(str3, th.getMessage(), th);
                    IO.b(cursorQuery2);
                    string2 = str13;
                } catch (Throwable th13) {
                    IO.b(cursorQuery2);
                    throw th13;
                }
            }
        } catch (Throwable th14) {
            th = th14;
            cursorQuery2 = null;
        }
        int i10 = (string2 == null || string2.isEmpty()) ? -1 : Integer.parseInt(string2);
        if (i10 == -1) {
            i10 = c_a.f41724a;
        }
        int iS = TemplateUtils.s(str15, str17);
        if (iS == -1) {
            iS = c_a.f41725b;
        }
        c$a.a aVar2 = new c$a.a();
        ImmutableList immutableListU2 = ImmutableList.u(Collections.singleton(Integer.valueOf(i8)));
        aVar2.f41726a = immutableListU2;
        aVar2.f41727b = i10;
        aVar2.f41728c = iS;
        ImmutableList immutableListU3 = ImmutableList.u(immutableListU2);
        int i11 = aVar2.f41728c;
        if (beautyModeC == BeautyMode.EYE_CONTACT && listF.isEmpty()) {
            listSingletonList = Collections.singletonList(new YMKPrimitiveData.MakeupColor(0));
            TemplateWorkarounds.c(listSingletonList, immutableListU3);
        } else {
            listSingletonList = listF;
        }
        TemplateWorkarounds.b(iC, listSingletonList, immutableListU3);
        TemplateWorkarounds.c(listSingletonList, list2);
        StringBuilder sb8 = new StringBuilder("[generateApplySkuInfo] Start apply. beautyMode:");
        sb8.append(beautyModeC);
        sb8.append(", skuSetGuid:");
        sb8.append(str8);
        sb8.append(", skuGuid:");
        cj.C(sb8, str10, ", patternGuid:", str15, ", paletteGuid:");
        sb8.append(str17);
        sb8.append(", intensity:");
        sb8.append(MoreCollections.a(listSingletonList) ? EffectId.INVALID_ID : Integer.valueOf(((YMKPrimitiveData.MakeupColor) listSingletonList.get(0)).f40791e));
        sb8.append(",radiusIntensity:");
        sb8.append(i11);
        Log.g(3, str21, sb8.toString());
        if (SkuHandler.m(str10).contains(str11)) {
            return new ApplySkuInfo(beautyModeC, str10, str17, str15, str18, str19, listSingletonList, i11);
        }
        String strI = fc.i("The SKU isn't presented in publish list. productGuid=", str10, ", skuGuid=", str11);
        Log.d(str21, "[generateApplySkuInfoInternal] ".concat(strI));
        md.n(strI);
        return null;
    }

    public static YMKPrimitiveData.MakeupColor b(int i2, String str, String str2) {
        List listF = com.perfectcorp.perfectlib.ph.template.e.f(TemplateUtils.x(str2));
        if (i2 >= 0 && i2 < listF.size()) {
            return (YMKPrimitiveData.MakeupColor) listF.get(i2);
        }
        StringBuilder sbS = fc.s("color index out of bounds, skuSetGuid=", str, ", paletteGuid=", str2, ", colors.size()=");
        sbS.append(listF.size());
        sbS.append(", paletteColorIndex=");
        sbS.append(i2);
        throw new IllegalArgumentException(sbS.toString());
    }

    public static com.perfectcorp.perfectlib.ph.database.ymk.pattern.b c(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3) {
        Throwable th;
        Cursor cursorQuery;
        String strReplace = str3.replace(str2 + "_", "");
        try {
            try {
                cursorQuery = sQLiteDatabase.query("PatternPaletteInfo", Contract.PatternPaletteInfo.a(), "PaletteGUID=? AND PatternGUID=? AND PaletteColorIndex=?", new String[]{str2, str, new Joiner(", ").b(FluentIterable.n(Arrays.asList(("-1".equals(strReplace.trim()) ? "" : strReplace).split("_"))).i(StringPredicates.a()).r(new g7(6)))}, null, null, null, null);
                try {
                    com.perfectcorp.perfectlib.ph.database.ymk.pattern.b bVar = (com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.a(cursorQuery).get(0);
                    IO.b(cursorQuery);
                    return bVar;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        int i2 = Log.f39427a;
                        Log.j("PatternPaletteInfoDao", th.getMessage(), th);
                        return null;
                    } finally {
                        IO.b(cursorQuery);
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                cursorQuery = null;
            }
        } catch (Throwable th4) {
            Log.e("ApplyEffectUtility", "[getPatternPaletteInfo] failed.", th4);
            return null;
        }
    }

    public static void cacheCleanerDeleteById(String str, boolean z) {
        CacheCleaner.d(str, z);
    }

    public static Sku d(VtoSetting vtoSetting) {
        Threads.b();
        String strI = com.perfectcorp.perfectlib.ph.unit.sku.a.i(vtoSetting.f40014a);
        if (!com.perfectcorp.perfectlib.ph.unit.sku.a.f(strI)) {
            String str = vtoSetting.f40015b;
            if (TextUtils.isEmpty(str) || EffectId.INVALID_ID.equalsIgnoreCase(str)) {
                throw new SkuNotFoundException(tr.g("Can't find sku=", str));
            }
            Optional optionalA = SkuDao.a(YMKDatabase.b(), str, false);
            if (optionalA.d()) {
                return (Sku) optionalA.c();
            }
            throw new SkuNotFoundException(tr.g("Can't find sku=", str));
        }
        Optional optionalE = com.perfectcorp.perfectlib.ph.template.e.C0182e.e(strI);
        if (!optionalE.d()) {
            md.n(tr.g("Can't find skuSet, id=", strI));
            return null;
        }
        com.perfectcorp.perfectlib.ph.database.ymk.skuset.a aVar = (com.perfectcorp.perfectlib.ph.database.ymk.skuset.a) optionalE.c();
        Sku.a aVarB = Sku.b();
        aVarB.f41275f = "SKU_SET_SKU_ID";
        aVarB.f41272b = aVar.f41329b;
        aVarB.f41278j = aVar.f41331e;
        aVarB.g = aVar.f41330c;
        return new Sku(aVarB);
    }

    public static Optional e(BeautyMode beautyMode, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            com.perfectcorp.perfectlib.ph.template.m mVarD = com.perfectcorp.perfectlib.ph.database.ymk.pattern.a.d(YMKDatabase.b(), str);
            if (mVarD != null && !SubItemInfo.g(beautyMode, YMKPrimitiveData.TextureSupportedMode.a(mVarD.m))) {
                return Optional.e(str);
            }
        }
        return Optional.a();
    }

    public static Observable f(com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.f fVar) {
        Log.g(3, "ApplyEffectUtility", "[transformToRelatedSkuGuidObservable] start");
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o(fVar, Functions.f42605a).flatMap(new v7(2)).map(new v7(3)).doFinally(new n7(1));
    }

    public static Observable g(Collection collection) {
        if (!MoreCollections.a(collection)) {
            return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.perfectlib.ph.utility.networkcache.c$a(collection).c(), new v7(4)), new v7(7));
        }
        Log.g(3, "ApplyEffectUtility", "queryBackgroundMetadataObservable guids is empty");
        return Observable.empty();
    }

    public static Single h(String str, DownloadCacheStrategy downloadCacheStrategy, Configuration.ImageSource imageSource, DownloadTaskCancelable downloadTaskCancelable, NetworkTaskManager.TaskPriority taskPriority, boolean z, ProgressCallback progressCallback) {
        Threads.b();
        Optional optionalA = SkuDao.a(YMKDatabase.b(), str, false);
        if (!optionalA.d()) {
            defpackage.a.v(3, "[useSkuByCacheStrategy] Start download. skuGuid=", str, "ApplyEffectUtility");
            return n(str, downloadTaskCancelable, taskPriority, imageSource, z, progressCallback);
        }
        Log.g(3, "ApplyEffectUtility", "[useSkuByCacheStrategy] Check sku download state. skuGuid=" + str + ", shouldGetSkuByShadeId=" + z);
        Sku sku = (Sku) optionalA.c();
        StringBuilder sb = new StringBuilder("[useSkuByCacheStrategy] Sku downloaded. skuGuid=");
        sb.append(str);
        Log.g(3, "ApplyEffectUtility", sb.toString());
        Log.g(3, "ApplyEffectUtility", "[useSkuByCacheStrategy] CacheStrategy is " + downloadCacheStrategy);
        int i2 = AnonymousClass1.f39473b[downloadCacheStrategy.ordinal()];
        int i3 = 1;
        if (i2 == 1) {
            return Single.h(sku);
        }
        if (i2 == 2) {
            Log.g(3, "ApplyEffectUtility", "downloadIfSkuUpdated start.");
            return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j.d(downloadTaskCancelable, sku.f41263b, new ArrayList(com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a.e(YMKDatabase.b(), sku.f41266f))), new p7(z, sku)), new y81(downloadTaskCancelable, imageSource, progressCallback, i3));
        }
        if (i2 == 3) {
            z(new h7(sku, imageSource, downloadTaskCancelable, i3));
            return Single.h(sku);
        }
        az.m(downloadCacheStrategy, "Unknown strategy=");
        return null;
    }

    public static Single i(List list, DownloadCacheStrategy downloadCacheStrategy, Configuration.ImageSource imageSource, DownloadTaskCancelable downloadTaskCancelable, NetworkTaskManager.TaskPriority taskPriority) {
        Observable observableK;
        Log.g(3, "ApplyEffectUtility", "[downloadSkuSets] start");
        int i2 = AnonymousClass1.f39473b[downloadCacheStrategy.ordinal()];
        int i3 = 0;
        if (i2 == 1) {
            Log.g(3, "ApplyEffectUtility", "[downloadSkuSets] CACHE_FIRST");
            observableK = k(list, false, downloadTaskCancelable);
        } else if (i2 == 2) {
            Log.g(3, "ApplyEffectUtility", "[downloadSkuSets] UPDATE_FIRST");
            observableK = f(com.perfectcorp.perfectlib.ph.unit.sku.a.d(list, false, downloadTaskCancelable, false));
        } else {
            if (i2 != 3) {
                az.m(downloadCacheStrategy, "[downloadSkuSets] Unsupported strategy=");
                return null;
            }
            Log.g(3, "ApplyEffectUtility", "[downloadSkuSets] CACHE_FIRST_THEN_UPDATE");
            observableK = k(list, true, downloadTaskCancelable);
        }
        return observableK.flatMapSingle(new m7(downloadCacheStrategy, imageSource, downloadTaskCancelable, taskPriority, 0)).doFinally(new n7(i3)).observeOn(Schedulers.f43170c).toList();
    }

    public static Single j(List list, boolean z, Scheduler scheduler) {
        Log.g(3, "ApplyEffectUtility", "[handleNoSkuGuidSettings] withNetworkQuery=" + z);
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c cVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new s7(list, z, 0));
        return scheduler != null ? cVar.j(scheduler) : cVar;
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed.d k(List list, boolean z, DownloadTaskCancelable downloadTaskCancelable) {
        Log.g(3, "ApplyEffectUtility", "[handleSkuSetCacheFirst] start, skuSetIds=" + list + " thenUpdate=" + z);
        Single list2 = Observable.fromIterable(list).subscribeOn(Schedulers.f43170c).map(new v7(8)).toList();
        v7 v7Var = new v7(9);
        list2.getClass();
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed.d(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(list2, v7Var), new w7(downloadTaskCancelable, z, 0));
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c l(ProgressCallback progressCallback, Configuration.ImageSource imageSource, DownloadCacheStrategy downloadCacheStrategy, DownloadTaskCancelable downloadTaskCancelable, String str) {
        Log.g(3, "ApplyEffectUtility", "[getDownloadAndApplyLookSingle] cacheStrategy=" + downloadCacheStrategy);
        int i2 = AnonymousClass1.f39473b[downloadCacheStrategy.ordinal()];
        if (i2 == 1) {
            return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new l7(str, progressCallback, imageSource, downloadTaskCancelable, 1));
        }
        if (i2 == 2) {
            return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new l7(str, progressCallback, imageSource, downloadTaskCancelable, 0));
        }
        if (i2 == 3) {
            return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new l7(str, imageSource, downloadTaskCancelable, progressCallback));
        }
        az.m(downloadCacheStrategy, "[getDownloadAndApplyLookSingle] Unknown strategy=");
        return null;
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t m(com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar, ProgressCallback progressCallback, DownloadCacheStrategy downloadCacheStrategy, Configuration.ImageSource imageSource, DownloadTaskCancelable downloadTaskCancelable) {
        downloadTaskCancelable.c();
        com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.c.C0166c c0166cA = com.perfectcorp.perfectlib.ph.camera.panel.a.a(bVar);
        Objects.requireNonNull(downloadCacheStrategy);
        c0166cA.f41468j = downloadCacheStrategy;
        Objects.requireNonNull(imageSource);
        c0166cA.f41469k = imageSource;
        c0166cA.l = downloadTaskCancelable;
        Single singleD = ((BaseDownloadHandle) c0166cA.b()).d(new defpackage.o2(progressCallback, 1), null);
        defpackage.x1 x1Var = new defpackage.x1(28);
        singleD.getClass();
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.w(singleD, x1Var).f(new defpackage.o2(bVar, 2)), new b8(bVar, 0));
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.w n(String str, DownloadTaskCancelable downloadTaskCancelable, NetworkTaskManager.TaskPriority taskPriority, Configuration.ImageSource imageSource, boolean z, ProgressCallback progressCallback) {
        ProgressCallback progressCallback2;
        SingleSource tVar;
        if (TextUtils.isEmpty(str)) {
            tVar = Single.g(new IllegalArgumentException("Empty sku guid."));
        } else {
            defpackage.a.v(3, "[downloadSkuByProtocolMethod] id=", str, "ApplyEffectUtility");
            ProgressCallback progressCallbackMainThreadWrapper = ProgressCallbackMainThreadWrapper.f39482b;
            if (progressCallback == null) {
                progressCallback2 = progressCallbackMainThreadWrapper;
            } else if (progressCallback == progressCallbackMainThreadWrapper || (progressCallback instanceof ProgressCallbackMainThreadWrapper)) {
                progressCallback2 = progressCallback;
            } else {
                progressCallbackMainThreadWrapper = new ProgressCallbackMainThreadWrapper(progressCallback);
                progressCallback2 = progressCallbackMainThreadWrapper;
            }
            int i2 = 0;
            SingleSource list = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed.d(SkuHandler.e(), new x7(progressCallback2, z, str, i2)).toList();
            y7 y7Var = new y7(str, imageSource, taskPriority, downloadTaskCancelable, progressCallback2);
            list.getClass();
            tVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(list, y7Var), new z7(i2, str, z));
        }
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.w(tVar, new defpackage.x1(28));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String o(Sku sku) {
        if (sku == null || sku == Sku.q) {
            md.n("Invalid product");
            return null;
        }
        ImmutableList immutableListP = FluentIterable.n(SkuItemDao.b(YMKDatabase.b(), sku.f41266f)).i(Predicates.f()).r(new g7(7)).p();
        return !immutableListP.isEmpty() ? (String) immutableListP.get(0) : "";
    }

    public static String p(String str, List list) {
        StringBuilder sb = new StringBuilder(list.size() << 1);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            sb.append((Integer) it.next());
            sb.append("_");
        }
        if (!list.isEmpty()) {
            sb.setLength(sb.length() - 1);
        }
        return str + "_" + ((Object) sb);
    }

    public static ArrayList q(PerfectEffect perfectEffect, String str) {
        com.perfectcorp.perfectlib.ph.utility.b bVar;
        ArrayList arrayList = new ArrayList();
        for (com.perfectcorp.perfectlib.ph.database.ymk.skuset.k.b bVar2 : D(str).patterns) {
            String str2 = bVar2.skuGuid;
            String str3 = bVar2.itemGuid;
            Optional optionalD = SkuItemDao.d(YMKDatabase.b(), str3);
            if (optionalD.d()) {
                YMKPrimitiveData.Mask mask = (YMKPrimitiveData.Mask) com.perfectcorp.perfectlib.ph.template.e.e(((com.perfectcorp.perfectlib.ph.database.ymk.sku.e) optionalD.c()).a().patternGeneral.guid).get(0);
                if (PerfectEffect.RING == perfectEffect) {
                    com.perfectcorp.perfectlib.ph.utility.b.a aVar = new com.perfectcorp.perfectlib.ph.utility.b.a(perfectEffect, str2, str3);
                    Objects.requireNonNull(str, "skuSetId can't be null");
                    aVar.f41745b = str;
                    aVar.a(mask.E);
                    aVar.f41750i = bVar2.objectDistanceRatioBack;
                    aVar.f41751j = bVar2.objectDistanceRatioPalm;
                    aVar.f41752k = mask.i0;
                    aVar.l = RingPosition.of(bVar2.position);
                    bVar = new com.perfectcorp.perfectlib.ph.utility.b(aVar);
                } else {
                    PerfectEffect perfectEffect2 = PerfectEffect.BRACELET;
                    if (perfectEffect2 == perfectEffect || PerfectEffect.WATCH == perfectEffect) {
                        com.perfectcorp.perfectlib.ph.utility.b.a aVar2 = new com.perfectcorp.perfectlib.ph.utility.b.a(perfectEffect2, str2, str3);
                        Objects.requireNonNull(str, "skuSetId can't be null");
                        aVar2.f41745b = str;
                        aVar2.a(mask.E);
                        aVar2.g = bVar2.objectDistanceRatio;
                        aVar2.f41749h = mask.f0;
                        bVar = new com.perfectcorp.perfectlib.ph.utility.b(aVar2);
                    }
                }
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    public static List r(BeautyMode beautyMode, String str) {
        if (com.perfectcorp.perfectlib.ph.unit.sku.a.e(beautyMode)) {
            com.perfectcorp.perfectlib.ph.database.ymk.skuset.i iVarE = E(str);
            ImmutableList.Builder builder = new ImmutableList.Builder();
            ArrayList arrayList = new ArrayList();
            for (com.perfectcorp.perfectlib.ph.database.ymk.skuset.i.a aVar : iVarE.colorReferences) {
                YMKPrimitiveData.MakeupColor makeupColorB = b(aVar.paletteColorIndex, str, aVar.paletteGuid);
                int i2 = aVar.shineIntensity;
                YMKPrimitiveData.MakeupColor.ExtraData extraData = makeupColorB.g;
                extraData.g = i2;
                extraData.d = aVar.shimmerIntensity;
                extraData.f40796e = aVar.metallicIntensity;
                builder.f(makeupColorB);
                arrayList.add(Integer.valueOf(aVar.colorIntensity));
            }
            ImmutableList immutableListI = builder.i();
            TemplateWorkarounds.b(LiveSettingCtrl.c(beautyMode), immutableListI, arrayList);
            return immutableListI;
        }
        if (!com.perfectcorp.perfectlib.ph.unit.sku.a.h(beautyMode)) {
            if (com.perfectcorp.perfectlib.ph.unit.sku.a.j(beautyMode)) {
                throw new UnsupportedOperationException("no color info available for " + beautyMode.getFeatureType().toString());
            }
            throw new UnsupportedOperationException("unsupported SKU set type " + beautyMode.getFeatureType().toString());
        }
        com.perfectcorp.perfectlib.ph.database.ymk.skuset.k kVarD = D(str);
        ImmutableList.Builder builder2 = new ImmutableList.Builder();
        ArrayList arrayList2 = new ArrayList();
        for (com.perfectcorp.perfectlib.ph.database.ymk.skuset.k.a aVar2 : kVarD.colorReferences) {
            builder2.f(b(aVar2.paletteColorIndex, str, aVar2.paletteGuid));
            arrayList2.add(Integer.valueOf(aVar2.colorIntensity));
        }
        ImmutableList immutableListI2 = builder2.i();
        TemplateWorkarounds.b(LiveSettingCtrl.c(beautyMode), immutableListI2, arrayList2);
        return immutableListI2;
    }

    public static List s(String str, String str2) {
        try {
            return FluentIterable.n(Arrays.asList(str2.replace(str + "_", "").split("_"))).r(new g7(2)).p();
        } catch (Throwable th) {
            Log.e("ApplyEffectUtility", "[extractPaletteColorIndexes] failed", th);
            return Collections.EMPTY_LIST;
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00a3  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.util.ArrayList] */
    public static List t(String str, String str2, String str3, List list, int i2) {
        ?? arrayList;
        List listC;
        int iIntValue;
        Object obj;
        int iIntValue2;
        Object obj2;
        List listF = com.perfectcorp.perfectlib.ph.template.e.f(TemplateUtils.x(str2));
        int size = listF.size();
        com.perfectcorp.perfectlib.ph.database.ymk.pattern.b bVarC = c(YMKDatabase.b(), str, str2, str3);
        if (bVarC != null) {
            String str4 = bVarC.f41255f;
            String str5 = bVarC.f41253c;
            arrayList = new ArrayList(size);
            Log.g(3, "ApplyEffectUtility", d21.l("[getSubPaletteIntensities] colorIndex=[", str5, "] colorIntensities=[", str4, "]"));
            List listA = com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.a(str5);
            try {
                listC = Lists.c(Arrays.asList(str4.split(",")), new xx0(20));
            } catch (Throwable unused) {
                listC = Collections.EMPTY_LIST;
            }
            int i3 = 0;
            if (listA.isEmpty()) {
                while (i3 < size) {
                    if (i3 < list.size()) {
                        obj2 = list.get(i3);
                    } else {
                        if (i3 < listC.size()) {
                            obj2 = listC.get(i3);
                        } else {
                            iIntValue2 = i2;
                        }
                        arrayList.add(Integer.valueOf(iIntValue2));
                        i3++;
                    }
                    iIntValue2 = ((Integer) obj2).intValue();
                    arrayList.add(Integer.valueOf(iIntValue2));
                    i3++;
                }
            } else {
                while (i3 < size) {
                    int iIndexOf = listA.indexOf(Integer.valueOf(i3));
                    if (iIndexOf < 0) {
                        iIntValue = i2;
                    } else {
                        if (iIndexOf < list.size()) {
                            obj = list.get(iIndexOf);
                        } else if (iIndexOf < listC.size()) {
                            obj = listC.get(iIndexOf);
                        } else {
                            iIntValue = i2;
                        }
                        iIntValue = ((Integer) obj).intValue();
                    }
                    arrayList.add(Integer.valueOf(iIntValue));
                    i3++;
                }
            }
        } else {
            arrayList = Collections.EMPTY_LIST;
        }
        TemplateWorkarounds.b(i2, listF, arrayList);
        return listF;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x014f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0155  */
    /* JADX WARN: Code duplicated, block: B:50:0x01a3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:51:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:52:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:54:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:57:0x01ed  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.Object, java.util.List] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v21, types: [java.util.LinkedList] */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.lang.StringBuilder] */
    public static void u(ApplyEffectCtrl.PayloadCreatorParameters.Builder builder, String str, String str2, String str3, String str4, String str5, List list, ItemSubType itemSubType, boolean z, List list2, LiveSettingCtrl liveSettingCtrl) {
        ?? linkedList;
        LiveSettingCtrl liveSettingCtrl2;
        boolean z2;
        FaceContourPayload.Setting setting;
        FaceContourPayload.Setting setting2;
        FaceContourPayload.Setting setting3;
        FaceContourPayload faceContourPayloadA;
        StringBuilder sbS = fc.s("[fillFaceContourParameters] skuGuid=", str2, " patternGuid=", str3, " paletteGuid");
        cj.C(sbS, str4, " subPaletteGuid=", str5, " itemSubType=");
        sbS.append(itemSubType.b());
        sbS.append(" colorSize=");
        sbS.append(list.size());
        Log.g(3, "ApplyEffectUtility", sbS.toString());
        if (MoreCollections.a(list)) {
            md.n("[fillFaceContourParameters] color is empty");
            return;
        }
        SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
        com.perfectcorp.perfectlib.ph.template.m mVarD = com.perfectcorp.perfectlib.ph.database.ymk.pattern.a.d(sQLiteDatabaseB, str3);
        if (mVarD == null) {
            md.n(tr.g("[fillFaceContourParameters] pattern is not in database, guid=", str3));
            return;
        }
        int i2 = mVarD.o;
        com.perfectcorp.perfectlib.ph.database.ymk.pattern.b bVarC = c(sQLiteDatabaseB, str3, str4, str5);
        List list3 = Collections.EMPTY_LIST;
        if (bVarC != null) {
            linkedList = list3;
            linkedList = com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.a(bVarC.f41253c);
        }
        linkedList = list3;
        boolean zB = TemplateConsts.PatternPosition.HIGHLIGHT.b(i2);
        boolean zB2 = TemplateConsts.PatternPosition.CONTOUR.b(i2);
        if (linkedList.isEmpty()) {
            Log.g(3, "ApplyEffectUtility", "[fillFaceContourParameters] colorIndexList is empty");
            linkedList = new LinkedList();
            if (zB) {
                linkedList.add(Integer.valueOf(linkedList.size()));
            }
            if (zB2) {
                linkedList.add(Integer.valueOf(linkedList.size()));
            }
        }
        ?? r11 = linkedList;
        Log.g(3, "ApplyEffectUtility", "[fillFaceContourParameters] colors.size()=" + list.size() + ", intensities.size()=" + list2.size() + ", colorIndexList=" + r11);
        for (int i3 = 0; i3 < r11.size(); i3++) {
            int iIntValue = ((Integer) r11.get(i3)).intValue();
            if (iIntValue < 0 || iIntValue >= list.size() || i3 >= list2.size()) {
                StringBuilder sbQ = fc.q(iIntValue, "[fillFaceContourParameters] colorIndex=", ", colors.size()=");
                sbQ.append(list.size());
                sbQ.append(", intensityIndex=");
                sbQ.append(i3);
                sbQ.append(", intensities.size()=");
                sbQ.append(list2.size());
                Log.d("ApplyEffectUtility", sbQ.toString());
            } else {
                ((YMKPrimitiveData.MakeupColor) list.get(iIntValue)).f40791e = ((Integer) list2.get(i3)).intValue();
            }
        }
        Log.g(3, "ApplyEffectUtility", "[fillFaceContourParameters] pattern withHighlight=" + zB + " withContour=" + zB2);
        if (!z) {
            liveSettingCtrl2 = liveSettingCtrl;
            z2 = liveSettingCtrl2.o(BeautyMode.FACE_CONTOUR);
            setting = null;
            if (z2) {
                setting2 = FaceContourSettingHelper.c(liveSettingCtrl2);
            } else {
                setting2 = null;
            }
            if (z2 && (faceContourPayloadA = FaceContourSettingHelper.a(liveSettingCtrl2)) != null) {
                setting = faceContourPayloadA.f40633b;
            }
            FaceContourPayload.Setting setting4 = setting;
            if (r11.size() >= 2 || !zB || !zB2) {
                if (zB) {
                    setting2 = new FaceContourPayload.Setting(str, str2, str3, str4, str5, list, itemSubType, 0, ((Integer) r11.get(0)).intValue());
                } else {
                    if (!zB2) {
                        az.r("[fillFaceContourParameters] itemSubType=", itemSubType.b(), " is not supported");
                        return;
                    }
                    setting3 = new FaceContourPayload.Setting(str, str2, str3, str4, str5, list, itemSubType, 0, ((Integer) r11.get(0)).intValue());
                }
                builder.u = setting2;
                builder.v = setting4;
            }
            setting2 = new FaceContourPayload.Setting(str, str2, str3, str4, str5, list, itemSubType, 0, ((Integer) r11.get(0)).intValue());
            setting3 = new FaceContourPayload.Setting(str, str2, str3, str4, str5, list, itemSubType, 1, ((Integer) r11.get(1)).intValue());
            setting4 = setting3;
            builder.u = setting2;
            builder.v = setting4;
        }
        liveSettingCtrl2 = liveSettingCtrl;
        setting = null;
        if (z2) {
            setting2 = FaceContourSettingHelper.c(liveSettingCtrl2);
        } else {
            setting2 = null;
        }
        if (z2) {
            setting = faceContourPayloadA.f40633b;
        }
        FaceContourPayload.Setting setting5 = setting;
        if (r11.size() >= 2) {
            if (zB) {
                setting2 = new FaceContourPayload.Setting(str, str2, str3, str4, str5, list, itemSubType, 0, ((Integer) r11.get(0)).intValue());
            } else if (!zB2) {
                az.r("[fillFaceContourParameters] itemSubType=", itemSubType.b(), " is not supported");
                return;
            } else {
                setting3 = new FaceContourPayload.Setting(str, str2, str3, str4, str5, list, itemSubType, 0, ((Integer) r11.get(0)).intValue());
                setting5 = setting3;
            }
        } else if (zB) {
            setting2 = new FaceContourPayload.Setting(str, str2, str3, str4, str5, list, itemSubType, 0, ((Integer) r11.get(0)).intValue());
        } else if (!zB2) {
            az.r("[fillFaceContourParameters] itemSubType=", itemSubType.b(), " is not supported");
            return;
        } else {
            setting3 = new FaceContourPayload.Setting(str, str2, str3, str4, str5, list, itemSubType, 0, ((Integer) r11.get(0)).intValue());
            setting5 = setting3;
        }
        builder.u = setting2;
        builder.v = setting5;
    }

    public static void v(com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar) {
        int i2 = bVar.f41231i;
        String str = bVar.d;
        if (i2 == 1) {
            throw new LookNotFoundException(tr.g("lookGuid=", str));
        }
        if (i2 == 2) {
            throw new LookNotSupportedException(tr.g("lookGuid=", str));
        }
        if (TextUtils.isEmpty(bVar.f41230h)) {
            StringBuilder sbR = pq0.r("Empty URI. lookGuid=", str, ", statusCode=");
            sbR.append(bVar.f41231i);
            throw new LookNotFoundException(sbR.toString());
        }
    }

    public static void w(ConsumerSingleObserver consumerSingleObserver) {
        z(new defpackage.n2(consumerSingleObserver, 2));
    }

    public static void x(HashMap map, ArrayList arrayList) {
        if (arrayList.size() == 1) {
            YMKPrimitiveData.Effect effect = (YMKPrimitiveData.Effect) arrayList.get(0);
            String str = effect.f40757a;
            EffectInfo.Extras extras = effect.g;
            map.put(str, p(extras.f40951a, Collections.singletonList(Integer.valueOf(extras.m))));
            return;
        }
        if (arrayList.size() >= 2) {
            Iterator it = arrayList.iterator();
            YMKPrimitiveData.Effect effect2 = (YMKPrimitiveData.Effect) it.next();
            while (it.hasNext()) {
                YMKPrimitiveData.Effect effect3 = (YMKPrimitiveData.Effect) it.next();
                if (!effect2.f40759c.equals(effect3.f40759c) || !effect2.g.f40951a.equals(effect3.g.f40951a)) {
                    return;
                }
            }
            Collections.sort(arrayList, new x5(1));
            StringBuilder sb = new StringBuilder();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                sb.append(((YMKPrimitiveData.Effect) it2.next()).g.m);
                sb.append(",");
            }
            sb.setLength(sb.length() - 1);
            String strC = C(effect2.g.f40951a, sb.toString());
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                map.put(((YMKPrimitiveData.Effect) it3.next()).f40757a, strC);
            }
        }
    }

    public static boolean y(BeautyMode beautyMode, String str, String str2) {
        SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
        switch (AnonymousClass1.f39472a[beautyMode.ordinal()]) {
            case 1:
            case 2:
                return TextUtils.isEmpty(str2) || com.perfectcorp.perfectlib.ph.database.ymk.palette.a.a(sQLiteDatabaseB, str2) == null;
            case 3:
            case 4:
            case 5:
            case 6:
                return TextUtils.isEmpty(str) || com.perfectcorp.perfectlib.ph.database.ymk.pattern.a.d(sQLiteDatabaseB, str) == null;
            case 7:
                if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
                    return true;
                }
                return com.perfectcorp.perfectlib.ph.database.ymk.palette.c.a(sQLiteDatabaseB, str2).isEmpty() && !com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.i(sQLiteDatabaseB, str2, str).d();
            default:
                return TextUtils.isEmpty(str2) || TextUtils.isEmpty(str) || !com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.i(sQLiteDatabaseB, str2, str).d();
        }
    }

    public static void z(Callable callable) {
        SkuHandler skuHandler = SkuHandler.getInstance();
        if (skuHandler == null) {
            md.k("SkuHandler is null. SDK might be released.");
        } else {
            skuHandler.f39934a.b((Disposable) callable.call());
        }
    }

    public static class ApplySkuInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BeautyMode f39474a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f39475b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f39476c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f39477e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f39478f;
        public final String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final List f39479h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f39480i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final List f39481j;

        public ApplySkuInfo(BeautyMode beautyMode, String str, String str2, String str3, String str4, String str5, String str6, List list, int i2) {
            this.f39481j = pq0.v();
            this.f39474a = beautyMode;
            this.f39475b = str;
            this.f39476c = str2;
            this.d = str3;
            this.f39477e = str4;
            this.f39478f = str5;
            this.g = str6;
            this.f39479h = list;
            this.f39480i = i2;
        }

        public ApplySkuInfo(BeautyMode beautyMode, String str, String str2, String str3, String str4, String str5, List list, int i2) {
            this(beautyMode, "", str, str2, str3, str4, str5, list, i2);
        }
    }
}
