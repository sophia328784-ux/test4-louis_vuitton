package com.perfectcorp.perfectlib;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.text.TextUtils;
import com.linkplay.medialib.ContentTree;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.template.SkuTemplateUtils;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.utility.Nulls;
import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import defpackage.mt;
import defpackage.xx0;
import java.io.File;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class SubItemInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f39958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f39959b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f39960c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f39961e;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.SubItemInfo$1, reason: invalid class name */
    abstract /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f39962a;

        static {
            int[] iArr = new int[BeautyMode.values().length];
            f39962a = iArr;
            try {
                iArr[BeautyMode.SKIN_TONER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39962a[BeautyMode.EYE_CONTACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f39962a[BeautyMode.EYE_WEAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f39962a[BeautyMode.HAIR_BAND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f39962a[BeautyMode.HAIR_DYE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f39962a[BeautyMode.FACE_CONTOUR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f39962a[BeautyMode.LIP_LINER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f39962a[BeautyMode.EYE_SHADOW.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f39962a[BeautyMode.EYE_LINES.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f39962a[BeautyMode.BRONZER.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f39962a[BeautyMode.CONCEALER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f39962a[BeautyMode.BLUSH.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f39962a[BeautyMode.EYE_BROW.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f39962a[BeautyMode.NECKLACE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f39962a[BeautyMode.EARRINGS.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f39963a = "";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f39964b = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public List f39965c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List f39966e;

        public Builder() {
            List list = Collections.EMPTY_LIST;
            this.f39965c = list;
            this.d = "";
            this.f39966e = list;
        }

        public final void a(String str) {
            int i2 = Nulls.f42040a;
            this.f39963a = Strings.b(str);
        }
    }

    public SubItemInfo(Builder builder) {
        this.f39958a = builder.f39963a;
        this.f39959b = builder.f39964b;
        this.f39960c = builder.f39965c;
        this.d = c(builder.d);
        this.f39961e = builder.f39966e;
    }

    public static SubItemInfo a(YMKPrimitiveData.Pattern pattern) {
        Builder builder = new Builder();
        builder.a(pattern.f40823a);
        String strB = pattern.f40826e.b();
        int i2 = Nulls.f42040a;
        builder.f39964b = Strings.b(strB);
        builder.d = Strings.b(pattern.f40824b);
        return new SubItemInfo(builder);
    }

    public static SubItemInfo b(com.perfectcorp.perfectlib.ph.template.p pVar) {
        String str;
        Builder builder = new Builder();
        String str2 = pVar.f41702a;
        builder.a(str2);
        String str3 = "";
        if (!TextUtils.isEmpty(str2) && (str = (String) com.perfectcorp.perfectlib.ph.template.p.d.get(str2)) != null) {
            str3 = str;
        }
        int i2 = Nulls.f42040a;
        builder.f39964b = Strings.b(str3);
        builder.d = Strings.b(pVar.f41703b);
        return new SubItemInfo(builder);
    }

    public static String c(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Uri.fromFile(new File(str)).toString();
            } catch (Throwable th) {
                Log.e("SubItemInfo", "append file scheme failed with path=" + str, th);
            }
        }
        return str;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:57:0x0106  */
    /* JADX WARN: Code duplicated, block: B:59:0x0138 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:61:0x013c  */
    /* JADX WARN: Code duplicated, block: B:64:0x014c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:66:0x014f  */
    /* JADX WARN: Code duplicated, block: B:89:0x01c6  */
    /* JADX WARN: Instruction removed from duplicated block: B:89:0x01c6, please report this as an issue */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    public static List d(SkuInfo skuInfo) {
        LinkedList linkedList;
        Cursor cursor;
        Cursor cursorQuery;
        List<String> list;
        List listB;
        int i2;
        String str;
        BeautyMode beautyMode = skuInfo.f39942b;
        String str2 = skuInfo.f39943c;
        Threads.b();
        if (TextUtils.isEmpty(str2)) {
            return Collections.EMPTY_LIST;
        }
        int i3 = AnonymousClass1.f39962a[beautyMode.ordinal()];
        if (i3 == 1 || i3 == 2 || i3 == 3 || i3 == 4 || i3 == 5) {
            return Collections.EMPTY_LIST;
        }
        LinkedList linkedList2 = new LinkedList();
        if (f(beautyMode)) {
            SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
            YMKPrimitiveData.Palette paletteX = TemplateUtils.x(str2);
            LinkedList linkedList3 = new LinkedList();
            try {
                String[] strArr = {"PaletteColorIndex"};
                linkedList = linkedList3;
                cursor = null;
                try {
                    cursorQuery = sQLiteDatabaseB.query("PatternPaletteInfo", strArr, "PaletteGUID=? AND PatternPaletteInfo.isDeleted=0", new String[]{str2}, "PaletteColorIndex", null, "_id ASC", null);
                    try {
                        if (DBUtility.f(cursorQuery)) {
                            LinkedList linkedList4 = new LinkedList();
                            do {
                                linkedList4.add(cursorQuery.getString(cursorQuery.getColumnIndex(strArr[0])));
                                list = linkedList4;
                            } while (cursorQuery.moveToNext());
                        } else {
                            list = Collections.EMPTY_LIST;
                        }
                    } catch (Throwable th) {
                        th = th;
                        try {
                            Log.e("PatternPaletteInfoDao", "getPaletteColorIndexByPaletteID failed", th);
                            list = Collections.EMPTY_LIST;
                        } catch (Throwable th2) {
                            IO.b(cursorQuery);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    cursorQuery = cursor;
                    Log.e("PatternPaletteInfoDao", "getPaletteColorIndexByPaletteID failed", th);
                    list = Collections.EMPTY_LIST;
                    IO.b(cursorQuery);
                    if (paletteX != null) {
                        listB = com.perfectcorp.perfectlib.ph.database.ymk.sku.g.b(sQLiteDatabaseB, Collections.singletonList(str2));
                        if (!MoreCollections.a(listB)) {
                            ImmutableList immutableListU = ImmutableList.u(Lists.c(com.perfectcorp.perfectlib.ph.template.e.g(((com.perfectcorp.perfectlib.ph.database.ymk.sku.e) listB.get(0)).a().paletteColor), new xx0(10)));
                            Builder builder = new Builder();
                            int[] iArr = AnonymousClass1.f39962a;
                            i2 = iArr[beautyMode.ordinal()];
                            if (i2 != 6) {
                                str = ContentTree.ROOT_ID;
                            } else {
                                str = ContentTree.ROOT_ID;
                            }
                            builder.a(ApplyEffectUtility.C(str2, str));
                            int i4 = iArr[beautyMode.ordinal()];
                            builder.f39965c = Nulls.b(e(immutableListU, com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.a((i4 != 6 || i4 == 7) ? ContentTree.ROOT_ID : "")));
                            linkedList.add(new SubItemInfo(builder));
                        }
                    } else {
                        listB = com.perfectcorp.perfectlib.ph.database.ymk.sku.g.b(sQLiteDatabaseB, Collections.singletonList(str2));
                        if (!MoreCollections.a(listB)) {
                            ImmutableList immutableListU2 = ImmutableList.u(Lists.c(com.perfectcorp.perfectlib.ph.template.e.g(((com.perfectcorp.perfectlib.ph.database.ymk.sku.e) listB.get(0)).a().paletteColor), new xx0(10)));
                            Builder builder2 = new Builder();
                            int[] iArr2 = AnonymousClass1.f39962a;
                            i2 = iArr2[beautyMode.ordinal()];
                            if (i2 != 6) {
                                str = ContentTree.ROOT_ID;
                            } else {
                                str = ContentTree.ROOT_ID;
                            }
                            builder2.a(ApplyEffectUtility.C(str2, str));
                            int i5 = iArr2[beautyMode.ordinal()];
                            builder2.f39965c = Nulls.b(e(immutableListU2, com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.a((i5 != 6 || i5 == 7) ? ContentTree.ROOT_ID : "")));
                            linkedList.add(new SubItemInfo(builder2));
                        }
                    }
                    linkedList2 = linkedList;
                    if (linkedList2.isEmpty()) {
                        Log.d("SubItemInfo", "[getSubItems] beautyMode=" + beautyMode + " skuItem guid=" + str2 + " subItem size=" + linkedList2.size() + ", is it correct?");
                    }
                    return ImmutableList.u(linkedList2);
                }
            } catch (Throwable th4) {
                th = th4;
                linkedList = linkedList3;
                cursor = null;
            }
            IO.b(cursorQuery);
            if (paletteX != null || list.isEmpty()) {
                listB = com.perfectcorp.perfectlib.ph.database.ymk.sku.g.b(sQLiteDatabaseB, Collections.singletonList(str2));
                if (!MoreCollections.a(listB)) {
                    ImmutableList immutableListU3 = ImmutableList.u(Lists.c(com.perfectcorp.perfectlib.ph.template.e.g(((com.perfectcorp.perfectlib.ph.database.ymk.sku.e) listB.get(0)).a().paletteColor), new xx0(10)));
                    Builder builder3 = new Builder();
                    int[] iArr3 = AnonymousClass1.f39962a;
                    i2 = iArr3[beautyMode.ordinal()];
                    if (i2 != 6 || i2 == 7) {
                        str = ContentTree.ROOT_ID;
                    } else {
                        str = "";
                    }
                    builder3.a(ApplyEffectUtility.C(str2, str));
                    int i6 = iArr3[beautyMode.ordinal()];
                    builder3.f39965c = Nulls.b(e(immutableListU3, com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.a((i6 != 6 || i6 == 7) ? ContentTree.ROOT_ID : "")));
                    linkedList.add(new SubItemInfo(builder3));
                }
            } else {
                ImmutableList immutableListU4 = ImmutableList.u(Lists.c(com.perfectcorp.perfectlib.ph.template.e.f(paletteX), new xx0(11)));
                for (String str3 : list) {
                    Builder builder4 = new Builder();
                    builder4.a(ApplyEffectUtility.C(str2, str3));
                    builder4.f39965c = Nulls.b(e(immutableListU4, com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.a(str3)));
                    linkedList.add(new SubItemInfo(builder4));
                }
            }
            linkedList2 = linkedList;
        } else {
            if (SkuTemplateUtils.b(beautyMode)) {
                mt.i("Pattern major isn't supported.");
                return null;
            }
            for (String str4 : !TextUtils.isEmpty(str2) ? com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.d(YMKDatabase.b(), str2, "", false) : Collections.EMPTY_LIST) {
                YMKPrimitiveData.Pattern patternW = TemplateUtils.w(str4);
                if (patternW == null) {
                    Log.d("SubItemInfo", "[getSubItems] can not get pattern, ID=" + str4);
                } else if (!g(beautyMode, patternW.g)) {
                    linkedList2.add(a(patternW));
                }
            }
        }
        if (linkedList2.isEmpty()) {
            Log.d("SubItemInfo", "[getSubItems] beautyMode=" + beautyMode + " skuItem guid=" + str2 + " subItem size=" + linkedList2.size() + ", is it correct?");
        }
        return ImmutableList.u(linkedList2);
    }

    public static List e(ImmutableList immutableList, List list) {
        if (MoreCollections.a(list)) {
            return immutableList;
        }
        LinkedList linkedList = new LinkedList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            linkedList.add(immutableList.get(((Integer) it.next()).intValue()));
        }
        return linkedList;
    }

    public static boolean f(BeautyMode beautyMode) {
        switch (AnonymousClass1.f39962a[beautyMode.ordinal()]) {
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                return true;
            default:
                return false;
        }
    }

    public static boolean g(BeautyMode beautyMode, YMKPrimitiveData.TextureSupportedMode textureSupportedMode) {
        int i2 = AnonymousClass1.f39962a[beautyMode.ordinal()];
        if (i2 != 3 && i2 != 4 && i2 != 6) {
            switch (i2) {
                case 13:
                case 14:
                case 15:
                    break;
                default:
                    return false;
            }
        }
        return !textureSupportedMode.b();
    }
}
