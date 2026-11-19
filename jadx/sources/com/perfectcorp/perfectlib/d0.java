package com.perfectcorp.perfectlib;

import android.text.TextUtils;
import com.perfectcorp.perfectlib.makeupcam.camera.BackgroundPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.EarringsPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.FaceContourPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.HairDyePayload;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class d0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f40101a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f40102b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f40103c;

    public /* synthetic */ d0(Object obj, Object obj2, int i2) {
        this.f40101a = i2;
        this.f40102b = obj;
        this.f40103c = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v15, types: [com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a$i] */
    /* JADX WARN: Type inference failed for: r3v4, types: [com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a$j] */
    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        ?? jVar;
        Object bVar;
        Object objF;
        switch (this.f40101a) {
            case 0:
                ContentPreloader contentPreloader = (ContentPreloader) this.f40102b;
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar2 = (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b) this.f40103c;
                if (!"Look".equalsIgnoreCase(bVar2.d)) {
                    contentPreloader.f39541j.remove(bVar2.d);
                }
                break;
            default:
                MakeupCamInternal.Logger logger = (MakeupCamInternal.Logger) this.f40102b;
                LiveSettingCtrl liveSettingCtrl = (LiveSettingCtrl) this.f40103c;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                MakeupCamInternal.ConfigureData.EventData eventData = (MakeupCamInternal.ConfigureData.EventData) ((List) obj).get(0);
                logger.getClass();
                com.perfectcorp.perfectlib.ph.clflurry.b bVar3 = new com.perfectcorp.perfectlib.ph.clflurry.b(eventData.f39710a, com.perfectcorp.perfectlib.ph.clflurry.b.a.f41140a);
                bVar3.f41949c.put("look_guid", logger.f39713a);
                ArrayList arrayList = new ArrayList();
                BeautyMode beautyMode = eventData.f39711b;
                if (beautyMode == BeautyMode.FACE_CONTOUR) {
                    Iterator it = eventData.d.iterator();
                    while (it.hasNext()) {
                        arrayList.add(com.perfectcorp.perfectlib.ph.widgetpool.panel.livemakeup.a.c(liveSettingCtrl, (FaceContourPayload.Setting) it.next()));
                    }
                    if (arrayList.size() > 1) {
                        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.i iVar = (com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.i) arrayList.get(0);
                        jVar = (com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.i) arrayList.get(1);
                        int i2 = iVar.f41382j;
                        int i3 = jVar.f41382j;
                        if (i2 > i3) {
                            arrayList.clear();
                            objF = iVar;
                            arrayList.add(objF);
                        } else if (i2 < i3) {
                            arrayList.clear();
                            arrayList.add(jVar);
                        }
                    }
                } else {
                    if (beautyMode == BeautyMode.EYE_SHADOW) {
                        objF = com.perfectcorp.perfectlib.ph.widgetpool.panel.livemakeup.a.b(liveSettingCtrl);
                    } else if (beautyMode == BeautyMode.EYE_LINES) {
                        objF = com.perfectcorp.perfectlib.ph.widgetpool.panel.livemakeup.a.e(liveSettingCtrl);
                    } else if (beautyMode == BeautyMode.BLUSH) {
                        objF = com.perfectcorp.perfectlib.ph.widgetpool.panel.livemakeup.a.g(liveSettingCtrl);
                    } else if (beautyMode == BeautyMode.LIP_LINER) {
                        objF = com.perfectcorp.perfectlib.ph.widgetpool.panel.livemakeup.a.i(liveSettingCtrl);
                    } else {
                        BeautyMode beautyMode2 = BeautyMode.HAIR_DYE;
                        if (beautyMode == beautyMode2) {
                            com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l lVarD = com.perfectcorp.perfectlib.ph.widgetpool.panel.livemakeup.a.d(liveSettingCtrl, beautyMode2);
                            Object obj2 = liveSettingCtrl.l.get(beautyMode2);
                            bVar = obj2 instanceof HairDyePayload ? new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.m(lVarD, (HairDyePayload) obj2) : new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.m(lVarD);
                        } else {
                            BeautyMode beautyMode3 = BeautyMode.FACE_ART;
                            if (beautyMode == beautyMode3 || beautyMode == BeautyMode.FACE_ART_LAYER_2) {
                                HashMap map = com.perfectcorp.perfectlib.ph.widgetpool.panel.livemakeup.a.f41784a;
                                jVar = new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.j();
                                ArrayList<String> arrayList2 = new ArrayList();
                                Iterator it2 = Arrays.asList(beautyMode3, BeautyMode.FACE_ART_LAYER_2).iterator();
                                while (it2.hasNext()) {
                                    String strJ = liveSettingCtrl.j((BeautyMode) it2.next());
                                    if (!TextUtils.isEmpty(strJ)) {
                                        arrayList2.add(strJ);
                                    }
                                }
                                ArrayList arrayList3 = jVar.f41383i;
                                arrayList3.clear();
                                HashMap map2 = jVar.f41384j;
                                map2.clear();
                                for (String str : arrayList2) {
                                    arrayList3.add(str);
                                    map2.put(str, new YMKPrimitiveData.MakeupColor((YMKPrimitiveData.MakeupColor) null));
                                }
                                arrayList.add(jVar);
                            } else if (beautyMode == BeautyMode.CUBE_EYEWEAR || beautyMode == BeautyMode.REAL_3D_EYEWEAR) {
                                objF = com.perfectcorp.perfectlib.ph.widgetpool.panel.livemakeup.a.f(liveSettingCtrl, beautyMode);
                            } else {
                                BeautyMode beautyMode4 = BeautyMode.EARRINGS;
                                if (beautyMode == beautyMode4) {
                                    com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l lVarD2 = com.perfectcorp.perfectlib.ph.widgetpool.panel.livemakeup.a.d(liveSettingCtrl, beautyMode4);
                                    bVar = new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.d(lVarD2.d(), lVarD2.f41386b, (EarringsPayload) liveSettingCtrl.l.get(beautyMode4));
                                } else {
                                    BeautyMode beautyMode5 = BeautyMode.BACKGROUND;
                                    if (beautyMode == beautyMode5) {
                                        bVar = new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.b(com.perfectcorp.perfectlib.ph.widgetpool.panel.livemakeup.a.d(liveSettingCtrl, beautyMode5).d(), (BackgroundPayload) liveSettingCtrl.l.get(beautyMode5));
                                    } else {
                                        objF = beautyMode == BeautyMode.LIP_STICK ? com.perfectcorp.perfectlib.ph.widgetpool.panel.livemakeup.a.h(liveSettingCtrl) : com.perfectcorp.perfectlib.ph.widgetpool.panel.livemakeup.a.d(liveSettingCtrl, beautyMode);
                                    }
                                }
                            }
                        }
                        arrayList.add(bVar);
                    }
                    arrayList.add(objF);
                }
                com.perfectcorp.perfectlib.ph.clflurry.c.i(eventData.f39710a, arrayList, bVar3);
                bVar3.l(Collections.singletonList(eventData.f39711b), arrayList, Collections.singletonList(Boolean.valueOf(!TextUtils.isEmpty(liveSettingCtrl.n(eventData.f39711b)))));
                bVar3.c(bVar3.f41949c);
                bVar3.b();
                break;
        }
    }
}
