package com.perfectcorp.perfectlib.ph.widgetpool.panel.livemakeup;

import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.makeupcam.camera.BackgroundPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.BlushPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.EarringsPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.EyeShadowLinerPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.FaceContourPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.FaceContourSettingHelper;
import com.perfectcorp.perfectlib.makeupcam.camera.HairDyePayload;
import com.perfectcorp.perfectlib.makeupcam.camera.LipLinerPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.perfectlib.ymk.utility.Nulls;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import defpackage.az;
import defpackage.xx0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashMap f41784a = new HashMap();

    public static Sku a(LiveSettingCtrl liveSettingCtrl, BeautyMode beautyMode, ItemSubType itemSubType) {
        HashMap map = f41784a;
        Map enumMap = (Map) map.get(liveSettingCtrl);
        if (enumMap == null) {
            enumMap = new EnumMap(BeautyMode.class);
            map.put(liveSettingCtrl, enumMap);
        }
        Map map2 = (Map) enumMap.get(beautyMode);
        if (map2 == null) {
            return null;
        }
        return (Sku) map2.get(itemSubType);
    }

    public static com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.g b(LiveSettingCtrl liveSettingCtrl) {
        BeautyMode beautyMode = BeautyMode.EYE_SHADOW;
        List listE = liveSettingCtrl.e(beautyMode);
        ConcurrentHashMap concurrentHashMap = liveSettingCtrl.l;
        if (listE == null || !(concurrentHashMap.get(beautyMode) instanceof EyeShadowLinerPayload)) {
            return null;
        }
        return new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.g(a(liveSettingCtrl, beautyMode, ItemSubType.NONE), Lists.c(((EyeShadowLinerPayload) concurrentHashMap.get(beautyMode)).f40613a, new xx0(19)), liveSettingCtrl.n(beautyMode));
    }

    public static com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.i c(LiveSettingCtrl liveSettingCtrl, FaceContourPayload.Setting setting) {
        BeautyMode beautyMode = BeautyMode.FACE_CONTOUR;
        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l lVarD = d(liveSettingCtrl, beautyMode);
        if (setting == null) {
            return new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.i(lVarD.d(), "", "", "", Collections.EMPTY_LIST, 0, 0, -1, -1);
        }
        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.i iVar = new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.i(a(liveSettingCtrl, beautyMode, setting.f40644h), setting.d, setting.f40642e, setting.f40640b, setting.g, lVarD.f41390h, 0, setting.f40645i, setting.f40646j);
        iVar.f41382j = setting.f40639a;
        return iVar;
    }

    public static com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l d(LiveSettingCtrl liveSettingCtrl, BeautyMode beautyMode) {
        YMKPrimitiveData.LipstickStyle lipstickStyleY;
        ArrayList arrayList = new ArrayList();
        List listB = Nulls.b(liveSettingCtrl.e(beautyMode));
        arrayList.addAll(listB);
        int iC = !listB.isEmpty() ? ((YMKPrimitiveData.MakeupColor) listB.get(0)).f40791e : LiveSettingCtrl.c(beautyMode);
        Sku skuA = a(liveSettingCtrl, beautyMode, ItemSubType.NONE);
        int i2 = iC;
        String strM = liveSettingCtrl.m(beautyMode);
        String strJ = liveSettingCtrl.j(beautyMode);
        String strH = liveSettingCtrl.h(beautyMode);
        String strN = liveSettingCtrl.n(beautyMode);
        String strH2 = liveSettingCtrl.h(beautyMode);
        String str = null;
        if (beautyMode == BeautyMode.LIP_STICK && (lipstickStyleY = TemplateUtils.y(strH2)) != null) {
            str = lipstickStyleY.f40772a;
        }
        return new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l(skuA, strM, strJ, strH, strN, str, arrayList, i2 <= 0 ? LiveSettingCtrl.c(beautyMode) : i2);
    }

    public static com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.g e(LiveSettingCtrl liveSettingCtrl) {
        BeautyMode beautyMode = BeautyMode.EYE_LINES;
        List listE = liveSettingCtrl.e(beautyMode);
        ConcurrentHashMap concurrentHashMap = liveSettingCtrl.l;
        if (listE == null || !(concurrentHashMap.get(beautyMode) instanceof EyeShadowLinerPayload)) {
            return null;
        }
        return new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.g(a(liveSettingCtrl, beautyMode, ItemSubType.NONE), Lists.c(((EyeShadowLinerPayload) concurrentHashMap.get(beautyMode)).f40613a, new xx0(19)), liveSettingCtrl.n(beautyMode));
    }

    public static com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.h f(LiveSettingCtrl liveSettingCtrl, BeautyMode beautyMode) {
        if (beautyMode == BeautyMode.CUBE_EYEWEAR || beautyMode == BeautyMode.REAL_3D_EYEWEAR) {
            com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l lVarD = d(liveSettingCtrl, beautyMode);
            return new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.h(lVarD.d(), lVarD.f41386b, lVarD.f41387c);
        }
        az.m(beautyMode, "Unsupported mode ");
        return null;
    }

    public static com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.c g(LiveSettingCtrl liveSettingCtrl) {
        BeautyMode beautyMode = BeautyMode.BLUSH;
        List listE = liveSettingCtrl.e(beautyMode);
        ConcurrentHashMap concurrentHashMap = liveSettingCtrl.l;
        if (listE == null || !(concurrentHashMap.get(beautyMode) instanceof BlushPayload)) {
            return null;
        }
        return new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.c(a(liveSettingCtrl, beautyMode, ItemSubType.NONE), Lists.c(((BlushPayload) concurrentHashMap.get(beautyMode)).f40586a, new xx0(18)));
    }

    public static com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.o h(LiveSettingCtrl liveSettingCtrl) {
        ArrayList arrayList = new ArrayList();
        BeautyMode beautyMode = BeautyMode.LIP_STICK;
        List listE = liveSettingCtrl.e(beautyMode);
        if (listE != null) {
            arrayList.addAll(listE);
        }
        int iC = !MoreCollections.a(listE) ? ((YMKPrimitiveData.MakeupColor) listE.get(0)).f40791e : LiveSettingCtrl.c(beautyMode);
        String strN = liveSettingCtrl.n(beautyMode);
        String strJ = liveSettingCtrl.j(beautyMode);
        String strH = liveSettingCtrl.h(beautyMode);
        Sku skuA = a(liveSettingCtrl, beautyMode, ItemSubType.NONE);
        YMKPrimitiveData.LipstickStyle lipstickStyleY = TemplateUtils.y(liveSettingCtrl.h(beautyMode));
        String str = lipstickStyleY != null ? lipstickStyleY.f40772a : null;
        if (iC == -1) {
            iC = LiveSettingCtrl.c(beautyMode);
        }
        return new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.o(skuA, strJ, strH, strN, str, arrayList, iC, 0, new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.p(0, 0, 0, 0), 0);
    }

    public static com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.n i(LiveSettingCtrl liveSettingCtrl) {
        BeautyMode beautyMode = BeautyMode.LIP_LINER;
        List listE = liveSettingCtrl.e(beautyMode);
        ConcurrentHashMap concurrentHashMap = liveSettingCtrl.l;
        if (listE == null || !(concurrentHashMap.get(beautyMode) instanceof LipLinerPayload)) {
            return null;
        }
        return new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.n(a(liveSettingCtrl, beautyMode, ItemSubType.NONE), Lists.c(((LipLinerPayload) concurrentHashMap.get(beautyMode)).g, new xx0(17)));
    }

    public static com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a j(LiveSettingCtrl liveSettingCtrl) {
        int[] iArr;
        int i2;
        BeautyMode beautyMode;
        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a aVar = new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a();
        aVar.l = 70;
        ArrayList arrayList = new ArrayList();
        for (BeautyMode beautyMode2 : BeautyMode.values()) {
            if (liveSettingCtrl.o(beautyMode2) && ((i2 = (iArr = b.f41785a)[beautyMode2.ordinal()]) == 1 || i2 == 2 || i2 == 3 || i2 == 4 || liveSettingCtrl.j(beautyMode2) != null || beautyMode2 == BeautyMode.FACE_CONTOUR || beautyMode2 == BeautyMode.EARRINGS || beautyMode2 == BeautyMode.BACKGROUND)) {
                com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.g gVar = null;
                gVar = null;
                switch (iArr[beautyMode2.ordinal()]) {
                    case 3:
                        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l lVarD = d(liveSettingCtrl, BeautyMode.SKIN_TONER);
                        aVar.f41362h = new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.k(new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.k(lVarD.d(), lVarD.d, lVarD.f41389f, lVarD.g, lVarD.f41390h));
                        break;
                    case 4:
                        BeautyMode beautyMode3 = BeautyMode.HAIR_DYE;
                        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l lVarD2 = d(liveSettingCtrl, beautyMode3);
                        Object obj = liveSettingCtrl.l.get(beautyMode3);
                        aVar.m = obj instanceof HairDyePayload ? new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.m(lVarD2, (HairDyePayload) obj) : new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.m(lVarD2);
                        break;
                    case 5:
                        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.g gVarB = b(liveSettingCtrl);
                        if (gVarB != null) {
                            gVar = new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.g(gVarB);
                        }
                        aVar.f41357a = gVar;
                        break;
                    case 6:
                        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.g gVarE = e(liveSettingCtrl);
                        if (gVarE != null) {
                            gVar = new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.g(gVarE);
                        }
                        aVar.f41357a = gVar;
                        break;
                    case 7:
                        aVar.f41361f = new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l(d(liveSettingCtrl, BeautyMode.EYE_LASHES));
                        break;
                    case 8:
                        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.c cVarG = g(liveSettingCtrl);
                        aVar.g = cVarG != null ? new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.c(cVarG) : null;
                        break;
                    case 9:
                        aVar.f41363i = new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.o(h(liveSettingCtrl));
                        break;
                    case 10:
                        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l lVarD3 = d(liveSettingCtrl, BeautyMode.EYE_BROW);
                        aVar.f41358b = new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.e(new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.e(lVarD3.d(), lVarD3.f41387c, lVarD3.d, lVarD3.f41389f, lVarD3.g, lVarD3.f41390h, liveSettingCtrl.n));
                        break;
                    case 11:
                        BeautyMode beautyMode4 = BeautyMode.EYE_CONTACT;
                        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l lVarD4 = d(liveSettingCtrl, beautyMode4);
                        aVar.f41359c = new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.f(new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.f(lVarD4.d(), lVarD4.f41387c, lVarD4.d, lVarD4.f41389f, new ArrayList(liveSettingCtrl.e(beautyMode4)), lVarD4.f41390h, liveSettingCtrl.o));
                        break;
                    case 12:
                        beautyMode = BeautyMode.EYE_WEAR;
                        aVar.d = f(liveSettingCtrl, beautyMode);
                        break;
                    case 13:
                        beautyMode = BeautyMode.CUBE_EYEWEAR;
                        aVar.d = f(liveSettingCtrl, beautyMode);
                        break;
                    case 14:
                        BeautyMode beautyMode5 = BeautyMode.EARRINGS;
                        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l lVarD5 = d(liveSettingCtrl, beautyMode5);
                        aVar.f41360e = new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.d(lVarD5.d(), lVarD5.f41386b, (EarringsPayload) liveSettingCtrl.l.get(beautyMode5));
                        break;
                    case 15:
                        FaceContourPayload faceContourPayloadA = FaceContourSettingHelper.a(liveSettingCtrl);
                        aVar.f41365k = c(liveSettingCtrl, faceContourPayloadA == null ? null : faceContourPayloadA.f40632a);
                        FaceContourPayload faceContourPayloadA2 = FaceContourSettingHelper.a(liveSettingCtrl);
                        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.i iVarC = c(liveSettingCtrl, faceContourPayloadA2 != null ? faceContourPayloadA2.f40633b : null);
                        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.i iVar = new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.i(iVarC);
                        iVar.f41381i = -1;
                        iVar.f41382j = -1;
                        iVar.f41381i = iVarC.f41381i;
                        aVar.f41364j = iVar;
                        break;
                    case 16:
                        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.n nVarI = i(liveSettingCtrl);
                        aVar.n = nVarI != null ? new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.n(nVarI) : null;
                        break;
                    case 17:
                        aVar.o = new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l(d(liveSettingCtrl, BeautyMode.CONCEALER));
                        break;
                    case 18:
                        aVar.p = new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l(d(liveSettingCtrl, BeautyMode.BRONZER));
                        break;
                    case 19:
                        BeautyMode beautyMode6 = BeautyMode.BACKGROUND;
                        aVar.q = new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.b(new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.b(d(liveSettingCtrl, beautyMode6).d(), (BackgroundPayload) liveSettingCtrl.l.get(beautyMode6)));
                        break;
                }
                if (beautyMode2.isReshape()) {
                    arrayList.add(beautyMode2);
                }
            }
        }
        if (!arrayList.isEmpty()) {
            aVar.a(arrayList);
        }
        return aVar;
    }
}
