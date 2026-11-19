package com.perfectcorp.perfectlib.ph.clflurry;

import android.text.TextUtils;
import com.cyberlink.clgpuimage.hand.CLHandARFilter;
import com.perfectcorp.common.utility.Lists;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.PerfectEffect;
import com.perfectcorp.perfectlib.makeupcam.camera.EarringsPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.k;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ph.template.e;
import com.perfectcorp.perfectlib.ymk.clflurry.BaseEvent;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.perfectlib.ymk.model.YMKFeatures$EventFeature;
import com.perfectcorp.thirdparty.com.google.common.base.Joiner;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import defpackage.a61;
import defpackage.n00;
import defpackage.pq0;
import defpackage.tr;
import defpackage.xx0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes3.dex */
public class c extends BaseEvent {
    public YMKFeatures$EventFeature d;

    public c(String str) {
        super(str);
    }

    public static String d(BeautyMode beautyMode, com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l lVar, boolean z) {
        switch (d.f41145c[beautyMode.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 8:
                return "reshape_face";
            case 4:
            case 5:
            case 6:
            case 7:
                return "reshape_chin";
            case 9:
                return "reshape_cheekbone";
            case 10:
                return "reshape_jaw";
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
                return "reshape_nose";
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                return "reshape_eye";
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
                return "reshape_lip";
            case 30:
            case 31:
                return "";
            default:
                String str = (lVar == null || lVar.d() == null) ? "" : lVar.d().f41264c;
                ItemSubType itemSubTypeD = ItemSubType.d(beautyMode, str);
                if (itemSubTypeD == ItemSubType.NONE || TextUtils.isEmpty(str)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(beautyMode.getEventFeature().a());
                    sb.append(z ? "_set" : "");
                    return sb.toString();
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(itemSubTypeD.a().a());
                sb2.append(z ? "_set" : "");
                return sb2.toString();
        }
    }

    public static String e(String str, String... strArr) {
        StringBuilder sb = new StringBuilder();
        for (String str2 : strArr) {
            if (str2 != null) {
                if (sb.length() > 0) {
                    sb.append(str);
                }
                sb.append(str2);
            }
        }
        return sb.toString();
    }

    public static void g(com.perfectcorp.perfectlib.ph.utility.b bVar, b bVar2) {
        int i2;
        if (bVar != null) {
            String str = bVar.d;
            PerfectEffect perfectEffect = bVar.f41735a;
            String str2 = bVar.f41737c;
            YMKFeatures$EventFeature yMKFeatures$EventFeature = (perfectEffect == null || !((i2 = d.f41144b[perfectEffect.ordinal()]) == 1 || i2 == 2 || i2 == 3)) ? null : perfectEffect.eventFeature;
            if (str2.contains("^")) {
                bVar2.p(yMKFeatures$EventFeature, str2);
            } else {
                bVar2.h(yMKFeatures$EventFeature, "_sku_guid", str2);
            }
            if (str2.contains("^")) {
                bVar2.r(yMKFeatures$EventFeature, str);
            } else {
                bVar2.h(yMKFeatures$EventFeature, "_item_guid", str);
            }
            if (str2.contains("^")) {
                bVar2.s(yMKFeatures$EventFeature, str);
            } else {
                bVar2.h(yMKFeatures$EventFeature, "_pattern_guid", str);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:234:0x0599  */
    public static void i(YMKFeatures$EventFeature yMKFeatures$EventFeature, List list, c cVar) {
        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l lVar;
        String string;
        YMKFeatures$EventFeature yMKFeatures$EventFeature2;
        CharSequence charSequence;
        YMKFeatures$EventFeature yMKFeatures$EventFeature3;
        int i2;
        String str;
        String str2;
        List listF;
        List listE;
        String str3;
        float f2;
        YMKFeatures$EventFeature yMKFeatures$EventFeature4;
        ArrayList arrayList;
        YMKPrimitiveData.LipstickStyle lipstickStyleY;
        String str4;
        YMKFeatures$EventFeature yMKFeatures$EventFeatureA = yMKFeatures$EventFeature;
        List list2 = list;
        if (MoreCollections.a(list2) || (lVar = (com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l) list2.get(0)) == null) {
            return;
        }
        String str5 = lVar.f41386b;
        int i3 = lVar.f41390h;
        String str6 = "_intensity_list";
        int i4 = 0;
        switch (d.f41143a[yMKFeatures$EventFeatureA.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                if (yMKFeatures$EventFeatureA == YMKFeatures$EventFeature.Eyelashes) {
                    ItemSubType itemSubTypeD = ItemSubType.d(BeautyMode.EYE_LASHES, lVar.d() != null ? lVar.d().f41264c : "");
                    if (itemSubTypeD != ItemSubType.NONE) {
                        yMKFeatures$EventFeatureA = itemSubTypeD.a();
                        cVar.d = yMKFeatures$EventFeatureA;
                    }
                } else if (yMKFeatures$EventFeatureA == YMKFeatures$EventFeature.Concealer || yMKFeatures$EventFeatureA == YMKFeatures$EventFeature.Bronzer) {
                    cVar.d = yMKFeatures$EventFeatureA;
                }
                String strB = lVar.b();
                YMKPrimitiveData.Palette paletteX = TemplateUtils.x(strB);
                if (paletteX != null) {
                    List listF2 = e.f(paletteX);
                    String[] strArr = new String[listF2.size()];
                    for (int i5 = 0; i5 < listF2.size(); i5++) {
                        strArr[i5] = ((YMKPrimitiveData.MakeupColor) listF2.get(i5)).c();
                    }
                    String strN = n(",", strArr);
                    String strA = lVar.a();
                    float f3 = i3;
                    String str7 = paletteX.f40816e;
                    if (str7 != null) {
                        String str8 = paletteX.f40813a;
                        cVar.t(str7);
                        cVar.u(str8);
                    }
                    cVar.h(null, "_palette_guid", strB);
                    cVar.h(null, "_color_code", strN);
                    cVar.x(strA);
                    cVar.h(null, "_intensity", String.valueOf(f3));
                    cVar.v(String.valueOf(listF2.size()));
                    String str9 = lVar.f41389f;
                    if (!TextUtils.isEmpty(str9)) {
                        cVar.q(str9);
                    }
                    break;
                }
                break;
            case 6:
            case 7:
                String strB2 = lVar.b();
                List listC = lVar.c();
                if (listC != null) {
                    String[] strArr2 = new String[listC.size()];
                    for (int i6 = 0; i6 < listC.size(); i6++) {
                        strArr2[i6] = ((YMKPrimitiveData.MakeupColor) listC.get(i6)).c();
                    }
                    String strN2 = n(",", strArr2);
                    String strA2 = lVar.a();
                    YMKPrimitiveData.Pattern patternW = TemplateUtils.w(strA2);
                    if (patternW != null) {
                        float f4 = yMKFeatures$EventFeatureA == YMKFeatures$EventFeature.Wig ? 100 - i3 : i3;
                        String str10 = patternW.f40825c;
                        if (str10 != null) {
                            String str11 = patternW.f40823a;
                            cVar.t(str10);
                            cVar.u(str11);
                        }
                        cVar.x(strA2);
                        cVar.h(null, "_palette_guid", strB2);
                        cVar.h(null, "_color_code", strN2);
                        cVar.h(null, "_intensity", String.valueOf(f4));
                        cVar.v(String.valueOf(listC.size()));
                        String str12 = lVar.f41389f;
                        if (!TextUtils.isEmpty(str12)) {
                            cVar.q(str12);
                        }
                        break;
                    }
                }
                break;
            case 8:
                String string2 = "";
                com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.m mVar = (com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.m) lVar;
                List<String> listUnmodifiableList = Collections.unmodifiableList(mVar.f41391i);
                ArrayList arrayList2 = new ArrayList();
                for (String str13 : listUnmodifiableList) {
                    ExecutorService executorService = e.f41633a;
                    YMKPrimitiveData.Palette paletteX2 = TemplateUtils.x(str13);
                    if (paletteX2 != null) {
                        arrayList2.add(paletteX2);
                    }
                }
                ArrayList arrayList3 = mVar.f41393k;
                ArrayList arrayList4 = mVar.g;
                boolean z = mVar.l;
                int size = arrayList4.size();
                String str14 = mVar.f41389f;
                ArrayList arrayList5 = new ArrayList();
                String str15 = string2;
                String string3 = str15;
                String string4 = string3;
                String string5 = string4;
                String string6 = string5;
                int i7 = 0;
                while (i7 < size) {
                    YMKPrimitiveData.MakeupColor makeupColor = (YMKPrimitiveData.MakeupColor) arrayList4.get(i7);
                    ArrayList arrayList6 = arrayList4;
                    if (size > 1) {
                        StringBuilder sbT = n00.t(str15);
                        boolean zIsEmpty = TextUtils.isEmpty(str15);
                        String strG = mVar.f41387c;
                        if (!zIsEmpty) {
                            strG = tr.g("^", strG);
                        }
                        sbT.append(strG);
                        string = sbT.toString();
                    } else {
                        string = str15;
                    }
                    int i8 = TextUtils.isEmpty(str14) ? z ? (size - 1) - i7 : i7 : 0;
                    StringBuilder sbT2 = n00.t(string4);
                    sbT2.append(TextUtils.isEmpty(string4) ? Integer.valueOf(i8) : pq0.k(i8, "^"));
                    string4 = sbT2.toString();
                    arrayList5.add(makeupColor.c());
                    String strValueOf = String.valueOf(i7 < arrayList3.size() ? ((Integer) arrayList3.get(i7)).intValue() : 0);
                    StringBuilder sbT3 = n00.t(string6);
                    if (!TextUtils.isEmpty(string6)) {
                        strValueOf = tr.g("^", strValueOf);
                    }
                    sbT3.append(strValueOf);
                    string6 = sbT3.toString();
                    int i9 = arrayList2.size() > 1 ? i7 : arrayList2.size() == 1 ? 0 : -1;
                    if (i9 != -1) {
                        YMKPrimitiveData.Palette palette = (YMKPrimitiveData.Palette) arrayList2.get(i9);
                        if (palette.f40816e != null) {
                            StringBuilder sbT4 = n00.t(string5);
                            boolean zIsEmpty2 = TextUtils.isEmpty(string5);
                            String strG2 = palette.f40816e;
                            if (!zIsEmpty2) {
                                strG2 = tr.g("^", strG2);
                            }
                            sbT4.append(strG2);
                            string5 = sbT4.toString();
                            StringBuilder sbT5 = n00.t(string2);
                            boolean zIsEmpty3 = TextUtils.isEmpty(string2);
                            String strG3 = palette.f40813a;
                            if (!zIsEmpty3) {
                                strG3 = tr.g("^", strG3);
                            }
                            sbT5.append(strG3);
                            string2 = sbT5.toString();
                        }
                        String strG4 = (String) listUnmodifiableList.get(i9);
                        StringBuilder sbT6 = n00.t(string3);
                        if (!TextUtils.isEmpty(string3)) {
                            strG4 = tr.g("^", strG4);
                        }
                        sbT6.append(strG4);
                        string3 = sbT6.toString();
                    } else {
                        arrayList3 = arrayList3;
                    }
                    i7++;
                    str15 = string;
                    arrayList2 = arrayList2;
                    arrayList4 = arrayList6;
                    mVar = mVar;
                    size = size;
                    arrayList3 = arrayList3;
                }
                String[] strArr3 = new String[arrayList5.size()];
                arrayList5.toArray(strArr3);
                cVar.d = yMKFeatures$EventFeatureA;
                cVar.w(string3);
                cVar.s(null, str15);
                cVar.h(null, "_palette_index_list", string4);
                cVar.h(null, "_palette_color_list", n("^", strArr3));
                cVar.r(null, string2);
                cVar.p(null, string5);
                cVar.h(null, "_intensity_list", string6);
                cVar.v(String.valueOf(size));
                if (!TextUtils.isEmpty(str14)) {
                    cVar.q(str14);
                }
                break;
            case 9:
                com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.c cVar2 = (com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.c) lVar;
                String strB3 = cVar2.b();
                ExecutorService executorService2 = e.f41633a;
                YMKPrimitiveData.Palette paletteX3 = TemplateUtils.x(strB3);
                if (paletteX3 != null) {
                    String str16 = paletteX3.f40816e;
                    List listUnmodifiableList2 = Collections.unmodifiableList(cVar2.f41367i);
                    ArrayList arrayList7 = new ArrayList();
                    String str17 = "";
                    String string7 = str17;
                    String str18 = string7;
                    String string8 = str18;
                    String strConcat = string8;
                    String string9 = strConcat;
                    String string10 = string9;
                    int i10 = 0;
                    while (i10 < listUnmodifiableList2.size()) {
                        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.c.C0160a c0160a = (com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.c.C0160a) listUnmodifiableList2.get(i10);
                        List list3 = listUnmodifiableList2;
                        List listUnmodifiableList3 = Collections.unmodifiableList(c0160a.f41372f);
                        if (TextUtils.isEmpty(str18)) {
                            str18 = c0160a.f41368a;
                        }
                        int i11 = c0160a.d;
                        int i12 = i10;
                        StringBuilder sbT7 = n00.t(str17);
                        String str19 = str18;
                        sbT7.append(TextUtils.isEmpty(str17) ? Integer.valueOf(i11) : pq0.k(i11, "^"));
                        String string11 = sbT7.toString();
                        arrayList7.add((i11 < 0 || i11 >= listUnmodifiableList3.size()) ? "" : ((YMKPrimitiveData.MakeupColor) listUnmodifiableList3.get(i11)).c());
                        String strValueOf2 = (i11 < 0 || i11 >= listUnmodifiableList3.size()) ? "" : String.valueOf(((YMKPrimitiveData.MakeupColor) listUnmodifiableList3.get(i11)).l());
                        str17 = string11;
                        StringBuilder sbT8 = n00.t(string10);
                        if (!TextUtils.isEmpty(string10)) {
                            strValueOf2 = tr.g("^", strValueOf2);
                        }
                        sbT8.append(strValueOf2);
                        string10 = sbT8.toString();
                        String strValueOf3 = (i11 < 0 || i11 >= listUnmodifiableList3.size()) ? "" : String.valueOf(((YMKPrimitiveData.MakeupColor) listUnmodifiableList3.get(i11)).f40791e);
                        StringBuilder sbT9 = n00.t(string9);
                        if (!TextUtils.isEmpty(string9)) {
                            strValueOf3 = tr.g("^", strValueOf3);
                        }
                        sbT9.append(strValueOf3);
                        string9 = sbT9.toString();
                        if (cVar2.e() || paletteX3.d == YMKPrimitiveData.SourceType.CUSTOM) {
                            strConcat = strConcat;
                        } else {
                            if (str16 != null) {
                                strConcat = strConcat.concat(TextUtils.isEmpty(strConcat) ? str16 : "^".concat(str16));
                                StringBuilder sbT10 = n00.t(string8);
                                boolean zIsEmpty4 = TextUtils.isEmpty(string8);
                                String strG5 = paletteX3.f40813a;
                                if (!zIsEmpty4) {
                                    strG5 = tr.g("^", strG5);
                                }
                                sbT10.append(strG5);
                                string8 = sbT10.toString();
                            }
                            StringBuilder sbT11 = n00.t(string7);
                            sbT11.append(TextUtils.isEmpty(string7) ? strB3 : tr.g("^", strB3));
                            string7 = sbT11.toString();
                        }
                        i10 = i12 + 1;
                        listUnmodifiableList2 = list3;
                        str18 = str19;
                    }
                    String[] strArr4 = new String[arrayList7.size()];
                    arrayList7.toArray(strArr4);
                    cVar.d = yMKFeatures$EventFeatureA;
                    cVar.w(string7);
                    cVar.x(str18);
                    cVar.h(null, "_palette_index_list", str17);
                    cVar.h(null, "_palette_color_list", n("^", strArr4));
                    cVar.r(null, string8);
                    cVar.p(null, strConcat);
                    cVar.h(null, "_intensity_list", string9);
                    cVar.h(null, "_shimmer_intensity_list", string10);
                    cVar.v(String.valueOf(listUnmodifiableList2.size()));
                    String str20 = cVar2.f41389f;
                    if (!TextUtils.isEmpty(str20)) {
                        cVar.q(str20);
                    }
                    break;
                }
                break;
            case 10:
            case 11:
                com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.g gVar = (com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.g) lVar;
                String strB4 = gVar.b();
                ExecutorService executorService3 = e.f41633a;
                YMKPrimitiveData.Palette paletteX4 = TemplateUtils.x(strB4);
                if (paletteX4 != null) {
                    String str21 = paletteX4.f40816e;
                    List listUnmodifiableList4 = Collections.unmodifiableList(gVar.f41375i);
                    ArrayList arrayList8 = new ArrayList();
                    String str22 = "";
                    String string12 = str22;
                    String string13 = string12;
                    String strConcat2 = string13;
                    String string14 = strConcat2;
                    String string15 = string14;
                    String string16 = string15;
                    int i13 = 0;
                    while (i13 < listUnmodifiableList4.size()) {
                        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.g.C0161a c0161a = (com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.g.C0161a) listUnmodifiableList4.get(i13);
                        int i14 = i13;
                        List listUnmodifiableList5 = Collections.unmodifiableList(c0161a.f41380f);
                        List list4 = listUnmodifiableList4;
                        StringBuilder sbT12 = n00.t(str22);
                        boolean zIsEmpty5 = TextUtils.isEmpty(str22);
                        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l lVar2 = lVar;
                        String strG6 = c0161a.f41376a;
                        if (!zIsEmpty5) {
                            strG6 = tr.g("^", strG6);
                        }
                        sbT12.append(strG6);
                        String string17 = sbT12.toString();
                        int i15 = c0161a.d;
                        StringBuilder sbT13 = n00.t(string14);
                        str22 = string17;
                        sbT13.append(TextUtils.isEmpty(string14) ? Integer.valueOf(i15) : pq0.k(i15, "^"));
                        string14 = sbT13.toString();
                        arrayList8.add((i15 < 0 || i15 >= listUnmodifiableList5.size()) ? string13 : ((YMKPrimitiveData.MakeupColor) listUnmodifiableList5.get(i15)).c());
                        String strValueOf4 = (i15 < 0 || i15 >= listUnmodifiableList5.size()) ? string13 : String.valueOf(((YMKPrimitiveData.MakeupColor) listUnmodifiableList5.get(i15)).l());
                        StringBuilder sbT14 = n00.t(string16);
                        if (!TextUtils.isEmpty(string16)) {
                            strValueOf4 = tr.g("^", strValueOf4);
                        }
                        sbT14.append(strValueOf4);
                        string16 = sbT14.toString();
                        String strValueOf5 = (i15 < 0 || i15 >= listUnmodifiableList5.size()) ? string13 : String.valueOf(((YMKPrimitiveData.MakeupColor) listUnmodifiableList5.get(i15)).f40791e);
                        StringBuilder sbT15 = n00.t(string15);
                        if (!TextUtils.isEmpty(string15)) {
                            strValueOf5 = tr.g("^", strValueOf5);
                        }
                        sbT15.append(strValueOf5);
                        string15 = sbT15.toString();
                        if (gVar.e() || paletteX4.d == YMKPrimitiveData.SourceType.CUSTOM) {
                            strConcat2 = strConcat2;
                        } else {
                            if (str21 != null) {
                                strConcat2 = strConcat2.concat(TextUtils.isEmpty(strConcat2) ? str21 : "^".concat(str21));
                                StringBuilder sbT16 = n00.t(string13);
                                boolean zIsEmpty6 = TextUtils.isEmpty(string13);
                                String strG7 = paletteX4.f40813a;
                                if (!zIsEmpty6) {
                                    strG7 = tr.g("^", strG7);
                                }
                                sbT16.append(strG7);
                                string13 = sbT16.toString();
                            }
                            StringBuilder sbT17 = n00.t(string12);
                            sbT17.append(TextUtils.isEmpty(string12) ? strB4 : tr.g("^", strB4));
                            string12 = sbT17.toString();
                        }
                        i13 = i14 + 1;
                        listUnmodifiableList4 = list4;
                        lVar = lVar2;
                    }
                    com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l lVar3 = lVar;
                    List list5 = listUnmodifiableList4;
                    String str23 = strConcat2;
                    String[] strArr5 = new String[arrayList8.size()];
                    arrayList8.toArray(strArr5);
                    cVar.d = yMKFeatures$EventFeatureA;
                    if (list5.size() == 1) {
                        yMKFeatures$EventFeature2 = null;
                        cVar.h(null, "_palette_guid", string12);
                        cVar.x(str22);
                        cVar.u(string13);
                        cVar.t(str23);
                    } else {
                        yMKFeatures$EventFeature2 = null;
                        cVar.w(string12);
                        cVar.s(null, str22);
                        cVar.r(null, string13);
                        cVar.p(null, str23);
                    }
                    cVar.h(yMKFeatures$EventFeature2, "_palette_index_list", string14);
                    cVar.h(yMKFeatures$EventFeature2, "_palette_color_list", n("^", strArr5));
                    cVar.h(yMKFeatures$EventFeature2, "_intensity_list", string15);
                    cVar.h(yMKFeatures$EventFeature2, "_shimmer_intensity_list", string16);
                    cVar.v(String.valueOf(list5.size()));
                    String str24 = lVar3.f41389f;
                    if (!TextUtils.isEmpty(str24)) {
                        cVar.q(str24);
                    }
                    break;
                }
                break;
            case 12:
            case 13:
            case 14:
            case 15:
                int i16 = 0;
                ArrayList arrayList9 = new ArrayList();
                String string18 = "";
                String string19 = string18;
                String string20 = string19;
                String string21 = string20;
                String string22 = string21;
                String string23 = string22;
                while (true) {
                    String str25 = string23;
                    if (i16 >= list2.size()) {
                        String str26 = string21;
                        String str27 = str6;
                        String[] strArr6 = new String[arrayList9.size()];
                        arrayList9.toArray(strArr6);
                        cVar.d = yMKFeatures$EventFeatureA;
                        cVar.w(string18);
                        cVar.s(null, string19);
                        cVar.h(null, "_palette_index_list", string20);
                        cVar.h(null, "_palette_color_list", n("^", strArr6));
                        if (TextUtils.isEmpty(str26)) {
                            charSequence = "Perfect";
                        } else {
                            charSequence = "Perfect";
                            String strReplace = str26.replace(charSequence, "");
                            if (!TextUtils.isEmpty(strReplace) && !Objects.equals(strReplace, "^")) {
                                cVar.r(null, strReplace);
                            }
                        }
                        if (TextUtils.isEmpty(string22)) {
                            yMKFeatures$EventFeature3 = null;
                        } else {
                            String strReplace2 = string22.replace(charSequence, "");
                            if (TextUtils.isEmpty(strReplace2) || Objects.equals(strReplace2, "^")) {
                                yMKFeatures$EventFeature3 = null;
                            } else {
                                yMKFeatures$EventFeature3 = null;
                                cVar.p(null, strReplace2);
                            }
                        }
                        cVar.h(yMKFeatures$EventFeature3, str27, str25);
                        cVar.v(String.valueOf(i4));
                    } else {
                        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.i iVar = (com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.i) list2.get(i16);
                        if (iVar != null) {
                            String strG8 = iVar.f41387c;
                            i2 = i16;
                            String strG9 = iVar.d;
                            str2 = str6;
                            ArrayList arrayList10 = iVar.g;
                            int i17 = iVar.f41381i;
                            if (TextUtils.isEmpty(strG9) || TextUtils.isEmpty(strG8)) {
                                str = string21;
                            } else {
                                ExecutorService executorService4 = e.f41633a;
                                str = string21;
                                YMKPrimitiveData.Palette paletteX5 = TemplateUtils.x(strG9);
                                if (paletteX5 != null) {
                                    String str28 = paletteX5.f40816e;
                                    StringBuilder sbT18 = n00.t(string18);
                                    if (!TextUtils.isEmpty(string18)) {
                                        strG9 = tr.g("^", strG9);
                                    }
                                    sbT18.append(strG9);
                                    string18 = sbT18.toString();
                                    StringBuilder sbT19 = n00.t(string19);
                                    if (!TextUtils.isEmpty(string19)) {
                                        strG8 = tr.g("^", strG8);
                                    }
                                    sbT19.append(strG8);
                                    string19 = sbT19.toString();
                                    StringBuilder sbT20 = n00.t(string20);
                                    sbT20.append(TextUtils.isEmpty(string20) ? Integer.valueOf(i17) : pq0.k(i17, "^"));
                                    string20 = sbT20.toString();
                                    arrayList9.add((i17 >= arrayList10.size() || i17 < 0) ? "" : ((YMKPrimitiveData.MakeupColor) arrayList10.get(i17)).c());
                                    String strConcat3 = TextUtils.isEmpty(str28) ? "Perfect" : paletteX5.f40813a;
                                    StringBuilder sbT21 = n00.t(str);
                                    if (!TextUtils.isEmpty(str) && !strConcat3.contains("^")) {
                                        strConcat3 = "^".concat(strConcat3);
                                    }
                                    sbT21.append(strConcat3);
                                    string21 = sbT21.toString();
                                    String strG10 = TextUtils.isEmpty(str28) ? "Perfect" : str28;
                                    StringBuilder sbT22 = n00.t(string22);
                                    if (!TextUtils.isEmpty(string22) && !string22.contains("^")) {
                                        strG10 = tr.g("^", strG10);
                                    }
                                    sbT22.append(strG10);
                                    string22 = sbT22.toString();
                                    String strValueOf6 = (i17 >= arrayList10.size() || i17 < 0) ? "" : String.valueOf(((YMKPrimitiveData.MakeupColor) arrayList10.get(i17)).f40791e);
                                    StringBuilder sbT23 = n00.t(str25);
                                    if (!TextUtils.isEmpty(str25)) {
                                        strValueOf6 = tr.g("^", strValueOf6);
                                    }
                                    sbT23.append(strValueOf6);
                                    string23 = sbT23.toString();
                                    i4++;
                                }
                                i16 = i2 + 1;
                                list2 = list;
                                str6 = str2;
                            }
                        } else {
                            i2 = i16;
                            str = string21;
                            str2 = str6;
                        }
                        string23 = str25;
                        string21 = str;
                        i16 = i2 + 1;
                        list2 = list;
                        str6 = str2;
                    }
                    break;
                }
                break;
            case 16:
                com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.o oVar = (com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.o) lVar;
                String str29 = oVar.d;
                ExecutorService executorService5 = e.f41633a;
                YMKPrimitiveData.Palette paletteX6 = TemplateUtils.x(str29);
                if (!TextUtils.isEmpty(lVar.f41389f)) {
                    listE = oVar.e();
                    listF = ApplyEffectUtility.r(BeautyMode.LIP_STICK, lVar.f41389f);
                } else if (paletteX6 != null) {
                    listF = e.f(paletteX6);
                    listE = null;
                }
                if (listF != null) {
                    String[] strArr7 = new String[listF.size()];
                    for (int i18 = 0; i18 < listF.size(); i18++) {
                        strArr7[i18] = ((YMKPrimitiveData.MakeupColor) listF.get(i18)).c();
                    }
                    String strN3 = n(",", strArr7);
                    String strA3 = lVar.a();
                    YMKPrimitiveData.Pattern patternW2 = TemplateUtils.w(strA3);
                    if (patternW2 != null) {
                        float f5 = i3;
                        YMKPrimitiveData.LipstickProfile lipstickProfile = patternW2.d;
                        String strB5 = lipstickProfile != null ? lipstickProfile.f40770a.b() : null;
                        if (paletteX6 != null && (str4 = paletteX6.f40816e) != null) {
                            String str30 = paletteX6.f40813a;
                            cVar.t(str4);
                            cVar.u(str30);
                            yMKFeatures$EventFeature4 = null;
                            cVar.h(null, "_palette_guid", str29);
                            str3 = str29;
                            f2 = f5;
                        } else if (listE != null) {
                            ArrayList arrayListF = oVar.f();
                            ArrayList arrayListF2 = oVar.f();
                            str3 = str29;
                            f2 = f5;
                            if (listE.size() == 1) {
                                cVar.t(arrayListF != null ? (String) arrayListF.get(0) : "");
                                cVar.u(arrayListF2 != null ? (String) arrayListF2.get(0) : "");
                                yMKFeatures$EventFeature4 = null;
                                cVar.h(null, "_palette_guid", (String) listE.get(0));
                            } else {
                                cVar.p(null, String.join("^", oVar.f()));
                                if (oVar.f41389f.isEmpty()) {
                                    arrayList = null;
                                } else {
                                    k kVarD = ApplyEffectUtility.D(oVar.f41389f);
                                    arrayList = new ArrayList();
                                    Iterator<k.a> it = kVarD.colorReferences.iterator();
                                    while (it.hasNext()) {
                                        arrayList.add(it.next().itemGuid);
                                    }
                                }
                                String strJoin = String.join("^", arrayList);
                                yMKFeatures$EventFeature4 = null;
                                cVar.r(null, strJoin);
                                cVar.w(String.join("^", oVar.e()));
                            }
                        } else {
                            str3 = str29;
                            f2 = f5;
                            yMKFeatures$EventFeature4 = null;
                        }
                        cVar.h(yMKFeatures$EventFeature4, "_color_code", strN3);
                        cVar.x(strA3);
                        cVar.h(yMKFeatures$EventFeature4, "_intensity", String.valueOf(f2));
                        cVar.h(yMKFeatures$EventFeature4, "_texture", strB5);
                        if (listF.size() == 2 && (lipstickStyleY = TemplateUtils.y(str3)) != null) {
                            String str31 = lipstickStyleY.f40772a;
                            if (!TextUtils.isEmpty(str31)) {
                                cVar.h(yMKFeatures$EventFeature4, "_style", str31);
                            }
                        }
                        cVar.v(String.valueOf(listF.size()));
                        String str32 = lVar.f41389f;
                        if (!TextUtils.isEmpty(str32)) {
                            cVar.q(str32);
                        }
                        break;
                    }
                }
                break;
            case 17:
                String strA4 = lVar.a();
                if (TemplateUtils.w(strA4) != null) {
                    cVar.x(strA4);
                    cVar.h(null, "_intensity", String.valueOf(i3));
                    break;
                }
                break;
            case 18:
                ArrayList arrayList11 = new ArrayList(((com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.j) lVar).f41383i);
                cVar.x(e(",", (String[]) arrayList11.toArray(new String[arrayList11.size()])));
                break;
            case 19:
            case 20:
                Sku skuD = lVar.d();
                if (skuD != null) {
                    cVar.t(skuD.f41266f);
                }
                cVar.u(str5);
                cVar.x(str5);
                break;
            case 21:
                EarringsPayload earringsPayload = ((com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.d) lVar).f41373i;
                if (earringsPayload != null) {
                    String str33 = earringsPayload.f40604a;
                    cVar.d = yMKFeatures$EventFeatureA;
                    List listA = Lists.a(earringsPayload.f40605b, earringsPayload.f40606c);
                    Joiner joinerC = new Joiner(String.valueOf('^')).c();
                    cVar.s(null, joinerC.b(FluentIterable.n(listA).r(new xx0(24))));
                    if (TextUtils.isEmpty(str33)) {
                        cVar.p(null, joinerC.b(FluentIterable.n(listA).r(new xx0(25))));
                        cVar.r(null, joinerC.b(FluentIterable.n(listA).r(new xx0(26))));
                    } else {
                        cVar.h(null, "_wearing_style_guid", str33);
                        EarringsPayload.Pattern pattern = (EarringsPayload.Pattern) FluentIterable.n(listA).m().c();
                        cVar.p(null, pattern.f40607a);
                        cVar.r(null, pattern.f40608b);
                    }
                }
                break;
            case 22:
                com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.n nVar = (com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.n) lVar;
                String strB6 = nVar.b();
                ExecutorService executorService6 = e.f41633a;
                YMKPrimitiveData.Palette paletteX7 = TemplateUtils.x(strB6);
                if (paletteX7 != null) {
                    String str34 = paletteX7.f40816e;
                    List listUnmodifiableList6 = Collections.unmodifiableList(nVar.f41394i);
                    String str35 = "";
                    String string24 = str35;
                    String str36 = string24;
                    String string25 = str36;
                    String strConcat4 = string25;
                    String string26 = strConcat4;
                    String string27 = string26;
                    int i19 = 0;
                    String strConcat5 = string27;
                    while (i19 < listUnmodifiableList6.size()) {
                        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.n.C0162a c0162a = (com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.n.C0162a) listUnmodifiableList6.get(i19);
                        List list6 = listUnmodifiableList6;
                        List listUnmodifiableList7 = Collections.unmodifiableList(c0162a.f41399f);
                        int i20 = i19;
                        StringBuilder sbT24 = n00.t(str36);
                        boolean zIsEmpty7 = TextUtils.isEmpty(str36);
                        String strG11 = c0162a.f41395a;
                        if (!zIsEmpty7) {
                            strG11 = tr.g("^", strG11);
                        }
                        sbT24.append(strG11);
                        String string28 = sbT24.toString();
                        int i21 = c0162a.d;
                        StringBuilder sbT25 = n00.t(str35);
                        sbT25.append(TextUtils.isEmpty(str35) ? Integer.valueOf(i21) : pq0.k(i21, "^"));
                        String string29 = sbT25.toString();
                        String strC = (i21 < 0 || i21 >= listUnmodifiableList7.size()) ? "" : ((YMKPrimitiveData.MakeupColor) listUnmodifiableList7.get(i21)).c();
                        if (!TextUtils.isEmpty(strConcat5)) {
                            strC = "^".concat(strC);
                        }
                        str35 = string29;
                        strConcat5 = strConcat5.concat(strC);
                        String strValueOf7 = (i21 < 0 || i21 >= listUnmodifiableList7.size()) ? "" : String.valueOf(((YMKPrimitiveData.MakeupColor) listUnmodifiableList7.get(i21)).l());
                        StringBuilder sbT26 = n00.t(string27);
                        if (!TextUtils.isEmpty(string27)) {
                            strValueOf7 = tr.g("^", strValueOf7);
                        }
                        sbT26.append(strValueOf7);
                        string27 = sbT26.toString();
                        String strValueOf8 = (i21 < 0 || i21 >= listUnmodifiableList7.size()) ? "" : String.valueOf(((YMKPrimitiveData.MakeupColor) listUnmodifiableList7.get(i21)).f40791e);
                        StringBuilder sbT27 = n00.t(string26);
                        if (!TextUtils.isEmpty(string26)) {
                            strValueOf8 = tr.g("^", strValueOf8);
                        }
                        sbT27.append(strValueOf8);
                        string26 = sbT27.toString();
                        if (nVar.e() || paletteX7.d == YMKPrimitiveData.SourceType.CUSTOM) {
                            strConcat4 = strConcat4;
                        } else {
                            if (str34 != null) {
                                strConcat4 = strConcat4.concat(TextUtils.isEmpty(strConcat4) ? str34 : "^".concat(str34));
                                StringBuilder sbT28 = n00.t(string25);
                                boolean zIsEmpty8 = TextUtils.isEmpty(string25);
                                String strG12 = paletteX7.f40813a;
                                if (!zIsEmpty8) {
                                    strG12 = tr.g("^", strG12);
                                }
                                sbT28.append(strG12);
                                string25 = sbT28.toString();
                            }
                            StringBuilder sbT29 = n00.t(string24);
                            sbT29.append(TextUtils.isEmpty(string24) ? strB6 : tr.g("^", strB6));
                            string24 = sbT29.toString();
                        }
                        i19 = i20 + 1;
                        listUnmodifiableList6 = list6;
                        str36 = string28;
                    }
                    cVar.d = yMKFeatures$EventFeatureA;
                    cVar.w(string24);
                    cVar.s(null, str36);
                    cVar.h(null, "_palette_index_list", str35);
                    cVar.h(null, "_palette_color_list", strConcat5);
                    cVar.r(null, string25);
                    cVar.p(null, strConcat4);
                    cVar.h(null, "_intensity_list", string26);
                    cVar.h(null, "_shimmer_intensity_list", string27);
                    break;
                }
                break;
            case 23:
                cVar.d = YMKFeatures$EventFeature.Background;
                cVar.t(str5);
                break;
        }
    }

    public static void j(ArrayList arrayList, b bVar) {
        BeautyMode beautyMode;
        YMKFeatures$EventFeature yMKFeatures$EventFeature;
        Boolean boolValueOf;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator it = arrayList.iterator();
        String str = null;
        while (it.hasNext()) {
            com.perfectcorp.perfectlib.ph.utility.b bVar2 = (com.perfectcorp.perfectlib.ph.utility.b) it.next();
            if (TextUtils.isEmpty(str) && !TextUtils.isEmpty(bVar2.f41738e)) {
                str = bVar2.f41738e;
            }
            PerfectEffect perfectEffect = bVar2.f41735a;
            String str2 = bVar2.f41736b;
            if (perfectEffect == PerfectEffect.WATCH) {
                beautyMode = BeautyMode.WATCH;
            } else {
                if (perfectEffect == PerfectEffect.BRACELET) {
                    arrayList2.add(BeautyMode.BRACELET);
                    if (!TextUtils.isEmpty(str2)) {
                        yMKFeatures$EventFeature = YMKFeatures$EventFeature.Bracelet;
                        bVar.h(yMKFeatures$EventFeature, "_skuset_guid", str2);
                    }
                } else if (perfectEffect == PerfectEffect.RING) {
                    arrayList2.add(BeautyMode.RING);
                    if (!TextUtils.isEmpty(str2)) {
                        yMKFeatures$EventFeature = YMKFeatures$EventFeature.Ring;
                        bVar.h(yMKFeatures$EventFeature, "_skuset_guid", str2);
                    }
                } else {
                    beautyMode = BeautyMode.NAIL;
                }
                boolValueOf = Boolean.valueOf(!TextUtils.isEmpty(str2));
                arrayList3.add(boolValueOf);
                g(bVar2, bVar);
            }
            arrayList2.add(beautyMode);
            boolValueOf = Boolean.FALSE;
            arrayList3.add(boolValueOf);
            g(bVar2, bVar);
        }
        if (!TextUtils.isEmpty(str)) {
            bVar.f41949c.put("jewelry_look_guid", str);
        }
        bVar.l(arrayList2, null, arrayList3);
    }

    public static void m(YMKFeatures$EventFeature yMKFeatures$EventFeature, com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l lVar, a aVar) {
        i(yMKFeatures$EventFeature, Collections.singletonList(lVar), aVar);
    }

    public static String n(String str, String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String strSubstring : strArr) {
            if (!TextUtils.isEmpty(strSubstring)) {
                if (strSubstring.length() > 6) {
                    strSubstring = strSubstring.substring(strSubstring.length() - 6);
                }
                arrayList.add(strSubstring);
            }
        }
        return e(str, (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    public static void o(CLHandARFilter.HandARParameters handARParameters, b bVar) {
        if (!TextUtils.isEmpty(handARParameters.lookGuid)) {
            bVar.f41949c.put("nail_look_guid", handARParameters.lookGuid);
        }
        ArrayList<String> arrayList = new ArrayList();
        ArrayList<String> arrayList2 = new ArrayList();
        String string = "";
        String str = "";
        for (CLHandARFilter.NailPbrFinish nailPbrFinish : handARParameters.nail_pbr_finish) {
            if (nailPbrFinish.is_enabled) {
                arrayList.add(nailPbrFinish.skuGuid);
                arrayList2.add(nailPbrFinish.skuItemGuid);
                if (TextUtils.isEmpty(str) && !TextUtils.isEmpty(nailPbrFinish.wearingStyleGuid)) {
                    str = nailPbrFinish.wearingStyleGuid;
                }
            }
        }
        String string2 = "";
        for (String strG : arrayList) {
            StringBuilder sbT = n00.t(string2);
            if (!TextUtils.isEmpty(string2)) {
                strG = tr.g("^", strG);
            }
            sbT.append(strG);
            string2 = sbT.toString();
        }
        for (String strG2 : arrayList2) {
            StringBuilder sbT2 = n00.t(string);
            if (!TextUtils.isEmpty(string)) {
                strG2 = tr.g("^", strG2);
            }
            sbT2.append(strG2);
            string = sbT2.toString();
        }
        if (!TextUtils.isEmpty(str)) {
            bVar.h(null, "_wearing_style_guid", str);
        }
        bVar.l(Collections.singletonList(BeautyMode.NAIL), null, Collections.singletonList(Boolean.FALSE));
        bVar.p(null, string2);
        bVar.r(null, string);
    }

    public final void f(LiveSettingCtrl liveSettingCtrl, List list) {
        if (MoreCollections.a(liveSettingCtrl.d())) {
            return;
        }
        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a aVarJ = com.perfectcorp.perfectlib.ph.widgetpool.panel.livemakeup.a.j(liveSettingCtrl);
        HashSet hashSet = new HashSet();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                YMKPrimitiveData.Effect effect = (YMKPrimitiveData.Effect) it.next();
                int i2 = d.f41145c[effect.f40758b.ordinal()];
                String strD = d(effect.f40758b, i2 != 32 ? i2 != 33 ? null : aVarJ.f41364j : aVarJ.f41361f, !effect.g.n.isEmpty());
                if (!strD.isEmpty()) {
                    hashSet.add(strD);
                }
            }
        } else {
            for (BeautyMode beautyMode : liveSettingCtrl.d()) {
                int i3 = d.f41145c[beautyMode.ordinal()];
                String strD2 = d(beautyMode, i3 != 32 ? i3 != 33 ? null : aVarJ.f41364j : aVarJ.f41361f, (beautyMode.isReshape() || TextUtils.isEmpty(liveSettingCtrl.n(beautyMode))) ? false : true);
                if (!TextUtils.isEmpty(strD2)) {
                    hashSet.add(strD2);
                }
            }
        }
        this.f41949c.put("user_select_feature", String.join("^", hashSet));
    }

    public final void h(YMKFeatures$EventFeature yMKFeatures$EventFeature, String str, String str2) {
        String str3;
        if (this.f41949c == null) {
            this.f41949c = new HashMap();
        }
        if (str2 == null || str2.isEmpty()) {
            return;
        }
        Map map = this.f41949c;
        if (yMKFeatures$EventFeature != null) {
            str3 = yMKFeatures$EventFeature.a() + str;
        } else {
            str3 = this.d.a() + str;
        }
        map.put(str3, str2);
    }

    public final void k(List list) {
        String str;
        if (MoreCollections.a(list)) {
            return;
        }
        l(list, null, Collections.singletonList(Boolean.FALSE));
        Map map = this.f41949c;
        HashSet hashSet = new HashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            BeautyMode beautyMode = (BeautyMode) it.next();
            switch (d.f41145c[beautyMode.ordinal()]) {
                case 1:
                    str = "faceshape_overall";
                    break;
                case 2:
                    str = "faceshape_left";
                    break;
                case 3:
                    str = "faceshape_right";
                    break;
                case 4:
                    str = "chinshape_overall";
                    break;
                case 5:
                    str = "chinshape_left";
                    break;
                case 6:
                    str = "chinshape_right";
                    break;
                case 7:
                    str = "chinlength";
                    break;
                case 8:
                    str = "facewidth";
                    break;
                case 9:
                    str = "cheekbone";
                    break;
                case 10:
                    str = "jaw";
                    break;
                case 11:
                    str = "nosesize";
                    break;
                case 12:
                    str = "noselift";
                    break;
                case 13:
                    str = "nosebridge";
                    break;
                case 14:
                    str = "nosetip";
                    break;
                case 15:
                    str = "nosewing";
                    break;
                case 16:
                    str = "nosewidth";
                    break;
                case 17:
                    str = "eyesize_overall";
                    break;
                case 18:
                    str = "eyesize_left";
                    break;
                case 19:
                    str = "eyesize_right";
                    break;
                case 20:
                    str = "eyewidth";
                    break;
                case 21:
                    str = "eyeheight";
                    break;
                case 22:
                    str = "eyedistance";
                    break;
                case 23:
                    str = "eyeangle";
                    break;
                case 24:
                    str = "lipsize";
                    break;
                case 25:
                    str = "lipwidth";
                    break;
                case 26:
                    str = "lipheight_overall";
                    break;
                case 27:
                    str = "lipheight_upper";
                    break;
                case 28:
                    str = "lipheight_lower";
                    break;
                case 29:
                    str = "lippeak";
                    break;
                default:
                    a61.q(beautyMode, "Unexpected value: ");
                    return;
            }
            hashSet.add(str);
        }
        map.put("reshape_use", String.join("^", new ArrayList(hashSet)));
    }

    public final void l(List list, ArrayList arrayList, List list2) {
        if (!MoreCollections.a(list) || list.size() == list2.size()) {
            HashSet hashSet = new HashSet();
            int i2 = 0;
            while (i2 < list.size()) {
                String strD = d((BeautyMode) list.get(i2), (arrayList == null || arrayList.size() <= i2 || list.get(i2) == BeautyMode.NAIL) ? null : (com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l) arrayList.get(i2), ((Boolean) list2.get(i2)).booleanValue());
                if (!TextUtils.isEmpty(strD)) {
                    hashSet.add(strD);
                }
                i2++;
            }
            this.f41949c.put("user_select_feature", String.join("^", hashSet));
        }
    }

    public final void p(YMKFeatures$EventFeature yMKFeatures$EventFeature, String str) {
        h(yMKFeatures$EventFeature, "_sku_guid_list", str);
    }

    public final void q(String str) {
        h(null, "_skuset_guid", str);
    }

    public final void r(YMKFeatures$EventFeature yMKFeatures$EventFeature, String str) {
        h(yMKFeatures$EventFeature, "_item_guid_list", str);
    }

    public final void s(YMKFeatures$EventFeature yMKFeatures$EventFeature, String str) {
        h(yMKFeatures$EventFeature, "_pattern_guid_list", str);
    }

    public final void t(String str) {
        h(null, "_sku_guid", str);
    }

    public final void u(String str) {
        h(null, "_item_guid", str);
    }

    public final void v(String str) {
        h(null, "_color_count", str);
    }

    public final void w(String str) {
        h(null, "_palette_guid_list", str);
    }

    public final void x(String str) {
        h(null, "_pattern_guid", str);
    }
}
