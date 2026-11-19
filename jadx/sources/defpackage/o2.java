package defpackage;

import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Pair;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.network.DownloadReport;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.AccessoryVtoApplier;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.BraceletVtoApplier;
import com.perfectcorp.perfectlib.CameraView;
import com.perfectcorp.perfectlib.FaceAttributeAnalyzer;
import com.perfectcorp.perfectlib.JewelryVtoApplier;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.NailVtoApplier;
import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.RingVtoApplier;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.TagHandler;
import com.perfectcorp.perfectlib.VtoApplier;
import com.perfectcorp.perfectlib.WatchVtoApplier;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageDao;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageInfo;
import com.perfectcorp.perfectlib.hc.kernelctrl.networktaskmanager.DownloadImageHelper;
import com.perfectcorp.perfectlib.internal.FramebufferRendererImpl;
import com.perfectcorp.perfectlib.internal.InternalErrorRetriever;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.perfectlib.makeupcam.camera.MakeupCam;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.b;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.d;
import com.perfectcorp.perfectlib.ymk.clflurry.MCSDKFaceAttributeDetectCompleteEvent;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.task.InitResponse;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.primitives.Longs;
import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class o2 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f76669a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f76670b;

    public /* synthetic */ o2(Object obj, int i2) {
        this.f76669a = i2;
        this.f76670b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        int i2;
        boolean z17;
        int i3;
        boolean z18;
        boolean z19;
        boolean z20;
        int i4;
        boolean z21;
        boolean z22;
        boolean z23;
        boolean z24;
        boolean z25;
        boolean z26;
        boolean z27;
        boolean z28;
        boolean z29;
        int i5;
        boolean z30;
        boolean z31;
        boolean z32;
        boolean z33;
        boolean z34;
        boolean z35;
        boolean z36;
        int i6;
        boolean z37;
        boolean z38;
        boolean z39;
        int i7;
        boolean z40;
        boolean z41;
        boolean z42;
        int i8;
        boolean z43;
        boolean z44;
        int i9;
        boolean z45;
        boolean z46;
        boolean z47;
        boolean z48;
        boolean z49;
        boolean z50;
        boolean z51;
        boolean z52;
        JSONArray jSONArrayOptJSONArray;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        int i10 = this.f76669a;
        Object obj2 = this.f76670b;
        switch (i10) {
            case 0:
                ((AccessoryVtoApplier.CreateCallback) obj2).onFailure((Throwable) obj);
                break;
            case 1:
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                PfCommons.c(new r6((ProgressCallback) obj2, (DownloadReport.ProgressReport) obj, 1));
                break;
            case 2:
                ImmutableSet immutableSet2 = ApplyEffectUtility.f39471a;
                LookHandler.d((b) obj2);
                break;
            case 3:
                ((BraceletVtoApplier.CreateCallback) obj2).onFailure((Throwable) obj);
                break;
            case 4:
                new MCSDKFaceAttributeDetectCompleteEvent((Set) obj2).b();
                break;
            case 5:
                Throwable th = (Throwable) obj;
                Log.e("FaceAttributeAnalyzer", "[setImage] failed", th);
                ((FaceAttributeAnalyzer.SetImageCallback) obj2).onFailure(th);
                break;
            case 6:
                ((JewelryVtoApplier.CreateCallback) obj2).onFailure((Throwable) obj);
                break;
            case 7:
                Throwable th2 = (Throwable) obj;
                Log.e("LookHandler", "[checkNeedToUpdateWithGuids] failed", th2);
                ((LookHandler.CheckNeedToUpdateWithGuidsCallback) obj2).onFailure(th2);
                break;
            case 8:
                ((CameraView) obj2).queueEvent((Runnable) obj);
                break;
            case 9:
                ((FramebufferRendererImpl) obj2).f40360h.add((Runnable) obj);
                break;
            case 10:
                ((VtoApplier.FunStickerActionHintCallback) obj2).onTrigger((List) obj);
                break;
            case 11:
                ((MakeupCam) obj2).d((Runnable) obj);
                break;
            case 12:
                ((NailVtoApplier.CreateCallback) obj2).onFailure((Throwable) obj);
                break;
            case 13:
                a aVar = (a) obj2;
                JSONObject jSONObject = ((InitResponse) obj).f41994b;
                String strOptString = jSONObject.optString("expiredDate");
                JSONArray jSONArray = null;
                Long lA = !TextUtils.isEmpty(strOptString) ? Longs.a(strOptString) : null;
                JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("sdkSetting");
                InitResponse.b bVar = (jSONObjectOptJSONObject3 == null || (jSONObjectOptJSONObject2 = jSONObjectOptJSONObject3.optJSONObject("period")) == null) ? null : (InitResponse.b) GsonBaseResponse.f41999a.i(jSONObjectOptJSONObject2.toString(), InitResponse.b.class);
                long jLongValue = lA != null ? lA.longValue() : -1L;
                JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("sdkSetting");
                InitResponse.a aVar2 = (jSONObjectOptJSONObject4 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject4.optJSONObject("advSetting")) == null) ? null : (InitResponse.a) GsonBaseResponse.f41999a.i(jSONObjectOptJSONObject.toString(), InitResponse.a.class);
                JSONObject jSONObjectOptJSONObject5 = jSONObject.optJSONObject("sdkSetting");
                if (jSONObjectOptJSONObject5 != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject5.optJSONArray("serviceList")) != null) {
                    jSONArray = jSONArrayOptJSONArray;
                }
                SharedPreferences.Editor editorEdit = aVar.edit();
                editorEdit.putString("5bdcc368-b717-409c-8dd9-9fb82a334c67", a.p(Long.toString(jLongValue)));
                Gson gson = GsonBaseResponse.f41999a;
                editorEdit.putString("2b1dd7b5-41ce-401a-a3d9-d594271817cf", a.p(gson.k(bVar)));
                editorEdit.putString("8831e33f-707f-414a-b7f8-e1024c0b332b", a.p(gson.k(aVar2)));
                editorEdit.putString("1ca08893-9d9a-49f8-b149-fb85b947ba00", a.p(jSONArray == null ? "" : jSONArray.toString()));
                editorEdit.putInt("45619df4-1ce2-41cf-bc62-64d8c0fc00dc", 200);
                editorEdit.apply();
                boolean z53 = bVar == null;
                HashSet hashSet = new HashSet();
                HashSet hashSet2 = new HashSet();
                HashSet hashSet3 = new HashSet();
                JSONObject jSONObjectOptJSONObject6 = jSONObject.optJSONObject("sdkSetting");
                if (jSONObjectOptJSONObject6 != null) {
                    JSONObject jSONObjectOptJSONObject7 = jSONObjectOptJSONObject6.optJSONObject("generalSetting");
                    if (jSONObjectOptJSONObject7 != null) {
                        boolean zOptBoolean = jSONObjectOptJSONObject7.optBoolean("isEnableSharpenface", false);
                        boolean zOptBoolean2 = jSONObjectOptJSONObject7.optBoolean("isEnableEnlargeEye", false);
                        boolean zOptBoolean3 = jSONObjectOptJSONObject7.optBoolean("isEnableTeethWhitening", false);
                        JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject7.optJSONArray("makeup");
                        z27 = z53;
                        z28 = z27;
                        if (jSONArrayOptJSONArray2 != null) {
                            for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                                if ("live".equalsIgnoreCase(jSONArrayOptJSONArray2.optString(i11))) {
                                    z27 = true;
                                } else if ("photo".equalsIgnoreCase(jSONArrayOptJSONArray2.optString(i11))) {
                                    z28 = true;
                                }
                            }
                        }
                        JSONArray jSONArrayOptJSONArray3 = jSONObjectOptJSONObject7.optJSONArray("hairColor");
                        if (jSONArrayOptJSONArray3 != null) {
                            boolean z54 = z53;
                            int i12 = 0;
                            while (i12 < jSONArrayOptJSONArray3.length()) {
                                if ("live".equalsIgnoreCase(jSONArrayOptJSONArray3.optString(i12))) {
                                    z52 = z54;
                                    z53 = true;
                                } else {
                                    z52 = "photo".equalsIgnoreCase(jSONArrayOptJSONArray3.optString(i12)) ? true : z54;
                                }
                                i12++;
                                z54 = z52;
                            }
                            z46 = z54;
                        } else {
                            z46 = z53;
                        }
                        JSONArray jSONArrayOptJSONArray4 = jSONObjectOptJSONObject7.optJSONArray("funSticker");
                        z26 = z46;
                        z29 = z53;
                        if (jSONArrayOptJSONArray4 != null) {
                            z13 = false;
                            for (int i13 = 0; i13 < jSONArrayOptJSONArray4.length(); i13++) {
                                if ("live".equalsIgnoreCase(jSONArrayOptJSONArray4.optString(i13))) {
                                    z13 = true;
                                }
                            }
                        } else {
                            z13 = false;
                        }
                        JSONArray jSONArrayOptJSONArray5 = jSONObjectOptJSONObject7.optJSONArray("reshape");
                        int i14 = 0;
                        if (jSONArrayOptJSONArray5 != null) {
                            int i15 = 0;
                            boolean z55 = false;
                            while (i14 < jSONArrayOptJSONArray5.length()) {
                                if ("live".equalsIgnoreCase(jSONArrayOptJSONArray5.optString(i14))) {
                                    i15 = 1;
                                }
                                if ("photo".equalsIgnoreCase(jSONArrayOptJSONArray5.optString(i14))) {
                                    z55 = true;
                                }
                                i14++;
                            }
                            i14 = i15;
                            z47 = z55;
                        } else {
                            z47 = false;
                        }
                        JSONArray jSONArrayOptJSONArray6 = jSONObjectOptJSONObject7.optJSONArray("eyewear");
                        i5 = i14;
                        boolean z56 = z47;
                        if (jSONArrayOptJSONArray6 != null) {
                            z33 = false;
                            z34 = false;
                            for (int i16 = 0; i16 < jSONArrayOptJSONArray6.length(); i16++) {
                                if ("live".equalsIgnoreCase(jSONArrayOptJSONArray6.optString(i16))) {
                                    z33 = true;
                                }
                                if ("photo".equalsIgnoreCase(jSONArrayOptJSONArray6.optString(i16))) {
                                    z34 = true;
                                }
                            }
                        } else {
                            z33 = false;
                            z34 = false;
                        }
                        JSONArray jSONArrayOptJSONArray7 = jSONObjectOptJSONObject7.optJSONArray("eyewear3D");
                        int i17 = 0;
                        if (jSONArrayOptJSONArray7 != null) {
                            int i18 = 0;
                            boolean z57 = false;
                            while (i17 < jSONArrayOptJSONArray7.length()) {
                                if ("live".equalsIgnoreCase(jSONArrayOptJSONArray7.optString(i17))) {
                                    i18 = 1;
                                }
                                if ("photo".equalsIgnoreCase(jSONArrayOptJSONArray7.optString(i17))) {
                                    z57 = true;
                                }
                                i17++;
                            }
                            i17 = i18;
                            z48 = z57;
                        } else {
                            z48 = false;
                        }
                        JSONArray jSONArrayOptJSONArray8 = jSONObjectOptJSONObject7.optJSONArray("earring");
                        i6 = i17;
                        z37 = z48;
                        if (jSONArrayOptJSONArray8 != null) {
                            z35 = false;
                            z36 = false;
                            for (int i19 = 0; i19 < jSONArrayOptJSONArray8.length(); i19++) {
                                if ("live".equalsIgnoreCase(jSONArrayOptJSONArray8.optString(i19))) {
                                    z35 = true;
                                }
                                if ("photo".equalsIgnoreCase(jSONArrayOptJSONArray8.optString(i19))) {
                                    z36 = true;
                                }
                            }
                        } else {
                            z35 = false;
                            z36 = false;
                        }
                        JSONArray jSONArrayOptJSONArray9 = jSONObjectOptJSONObject7.optJSONArray("aiFaceCondition");
                        if (jSONArrayOptJSONArray9 != null) {
                            for (int i20 = 0; i20 < jSONArrayOptJSONArray9.length(); i20++) {
                                String strOptString2 = jSONArrayOptJSONArray9.optString(i20);
                                if (!TextUtils.isEmpty(strOptString2)) {
                                    hashSet.add(strOptString2);
                                }
                            }
                        }
                        JSONArray jSONArrayOptJSONArray10 = jSONObjectOptJSONObject7.optJSONArray("nail");
                        int i21 = 0;
                        if (jSONArrayOptJSONArray10 != null) {
                            int i22 = 0;
                            boolean z58 = false;
                            while (i21 < jSONArrayOptJSONArray10.length()) {
                                if ("live".equalsIgnoreCase(jSONArrayOptJSONArray10.optString(i21))) {
                                    i22 = 1;
                                } else if ("photo".equalsIgnoreCase(jSONArrayOptJSONArray10.optString(i21))) {
                                    z58 = true;
                                }
                                i21++;
                            }
                            i21 = i22;
                            z49 = z58;
                        } else {
                            z49 = false;
                        }
                        JSONArray jSONArrayOptJSONArray11 = jSONObjectOptJSONObject7.optJSONArray("watch");
                        i7 = i21;
                        z40 = z49;
                        if (jSONArrayOptJSONArray11 != null) {
                            z38 = false;
                            z39 = false;
                            for (int i23 = 0; i23 < jSONArrayOptJSONArray11.length(); i23++) {
                                if ("live".equalsIgnoreCase(jSONArrayOptJSONArray11.optString(i23))) {
                                    z38 = true;
                                } else if ("photo".equalsIgnoreCase(jSONArrayOptJSONArray11.optString(i23))) {
                                    z39 = true;
                                }
                            }
                        } else {
                            z38 = false;
                            z39 = false;
                        }
                        JSONArray jSONArrayOptJSONArray12 = jSONObjectOptJSONObject7.optJSONArray("bracelet");
                        int i24 = 0;
                        if (jSONArrayOptJSONArray12 != null) {
                            int i25 = 0;
                            boolean z59 = false;
                            while (i24 < jSONArrayOptJSONArray12.length()) {
                                if ("live".equalsIgnoreCase(jSONArrayOptJSONArray12.optString(i24))) {
                                    i25 = 1;
                                } else if ("photo".equalsIgnoreCase(jSONArrayOptJSONArray12.optString(i24))) {
                                    z59 = true;
                                }
                                i24++;
                            }
                            i24 = i25;
                            z50 = z59;
                        } else {
                            z50 = false;
                        }
                        JSONArray jSONArrayOptJSONArray13 = jSONObjectOptJSONObject7.optJSONArray("ring");
                        i8 = i24;
                        z43 = z50;
                        if (jSONArrayOptJSONArray13 != null) {
                            z41 = false;
                            z42 = false;
                            for (int i26 = 0; i26 < jSONArrayOptJSONArray13.length(); i26++) {
                                if ("live".equalsIgnoreCase(jSONArrayOptJSONArray13.optString(i26))) {
                                    z41 = true;
                                } else if ("photo".equalsIgnoreCase(jSONArrayOptJSONArray13.optString(i26))) {
                                    z42 = true;
                                }
                            }
                        } else {
                            z41 = false;
                            z42 = false;
                        }
                        JSONArray jSONArrayOptJSONArray14 = jSONObjectOptJSONObject7.optJSONArray("stacking");
                        int i27 = 0;
                        if (jSONArrayOptJSONArray14 != null) {
                            int i28 = 0;
                            boolean z60 = false;
                            while (i27 < jSONArrayOptJSONArray14.length()) {
                                if ("live".equalsIgnoreCase(jSONArrayOptJSONArray14.optString(i27))) {
                                    i28 = 1;
                                } else if ("photo".equalsIgnoreCase(jSONArrayOptJSONArray14.optString(i27))) {
                                    z60 = true;
                                }
                                i27++;
                            }
                            i27 = i28;
                            z51 = z60;
                        } else {
                            z51 = false;
                        }
                        JSONArray jSONArrayOptJSONArray15 = jSONObjectOptJSONObject7.optJSONArray("background");
                        i9 = i27;
                        if (jSONArrayOptJSONArray15 != null) {
                            z44 = false;
                            boolean z61 = false;
                            for (int i29 = 0; i29 < jSONArrayOptJSONArray15.length(); i29++) {
                                if ("live".equalsIgnoreCase(jSONArrayOptJSONArray15.optString(i29))) {
                                    z61 = true;
                                } else if ("photo".equalsIgnoreCase(jSONArrayOptJSONArray15.optString(i29))) {
                                    z44 = true;
                                }
                            }
                            z30 = z61;
                        } else {
                            z30 = false;
                            z44 = false;
                        }
                        z12 = zOptBoolean3;
                        z11 = zOptBoolean2;
                        z32 = zOptBoolean;
                        z31 = z51;
                        z25 = z56;
                    } else {
                        z26 = z53;
                        z27 = z26;
                        z28 = z27;
                        z29 = z28;
                        i5 = 0;
                        z30 = false;
                        z25 = false;
                        z31 = false;
                        z32 = false;
                        z11 = false;
                        z12 = false;
                        z13 = false;
                        z33 = false;
                        z34 = false;
                        z35 = false;
                        z36 = false;
                        i6 = 0;
                        z37 = false;
                        z38 = false;
                        z39 = false;
                        i7 = 0;
                        z40 = false;
                        z41 = false;
                        z42 = false;
                        i8 = 0;
                        z43 = false;
                        z44 = false;
                        i9 = 0;
                    }
                    JSONArray jSONArrayOptJSONArray16 = jSONObjectOptJSONObject6.optJSONArray("serviceList");
                    if (jSONArrayOptJSONArray16 != null) {
                        int i30 = 0;
                        while (i30 < jSONArrayOptJSONArray16.length()) {
                            JSONObject jSONObjectOptJSONObject8 = jSONArrayOptJSONArray16.optJSONObject(i30);
                            JSONArray jSONArray2 = jSONArrayOptJSONArray16;
                            if (jSONObjectOptJSONObject8 != null) {
                                String strOptString3 = jSONObjectOptJSONObject8.optString("serviceName");
                                z45 = z26;
                                if ("skincare".equals(strOptString3) || "skincareHD".equals(strOptString3)) {
                                    a.q(jSONObjectOptJSONObject8, hashSet2, hashSet3);
                                }
                            } else {
                                z45 = z26;
                            }
                            i30++;
                            jSONArrayOptJSONArray16 = jSONArray2;
                            z26 = z45;
                        }
                    }
                    boolean z62 = z26;
                    z = z27;
                    z4 = i5;
                    z22 = z30;
                    z21 = z31;
                    z6 = z32;
                    z24 = z28;
                    z3 = z29;
                    z5 = z33;
                    z7 = z34;
                    z2 = z62;
                    z10 = z35;
                    z17 = z36;
                    z8 = i6;
                    z9 = z37;
                    z15 = z38;
                    z14 = z39;
                    i2 = i7;
                    z16 = z40;
                    z19 = z41;
                    z20 = z42;
                    i3 = i8;
                    z18 = z43;
                    z23 = z44;
                    i4 = i9;
                } else {
                    z = z53;
                    z2 = z;
                    z3 = z2;
                    z4 = 0;
                    z5 = false;
                    z6 = false;
                    z7 = false;
                    z8 = 0;
                    z9 = false;
                    z10 = false;
                    z11 = false;
                    z12 = false;
                    z13 = false;
                    z14 = false;
                    z15 = false;
                    z16 = false;
                    i2 = 0;
                    z17 = false;
                    i3 = 0;
                    z18 = false;
                    z19 = false;
                    z20 = false;
                    i4 = 0;
                    z21 = false;
                    z22 = false;
                    z23 = false;
                    z24 = z3;
                    z25 = false;
                }
                aVar.edit().putBoolean("6f59ea6b-0af4-4c36-948c-965dc8a7c80e", z6).putBoolean("8a277eed-7bf6-49bb-943a-77c55b7f92b2", z11).putBoolean("c9d75858-7ec4-4e98-8fd6-088acae7658c", z12).putBoolean("8c533e4d-8dee-472b-88ae-23958087a236", z).putBoolean("a04adc79-a0ab-4726-bee8-4dc857a8672e", z24).putBoolean("5392ce5e-fb36-4c65-864a-45e27399802f", z3).putBoolean("089d2498-8bf1-411d-bc73-66cd9262897d", z2).putBoolean("770cb509-08c2-4004-ad1c-fe00050c5155", z13).putBoolean("a5d92b49-599e-4647-94bb-0cb5c4b39b54", z4).putBoolean("8db48cd5-5537-44a2-9280-347994063ac1", z25).putBoolean("db6c20d6-9772-440a-83b5-7c7cd45c22d6", z5).putBoolean("0e409f66-17cd-4bcd-99f9-f0faaf885790", z7).putBoolean("b354a7ba-9828-44bb-b6b8-e529b1b1a2da", z8).putBoolean("f3162186-d3c4-465b-af95-4da31cb1851a", z9).putBoolean("05982a41-e607-43af-a1da-9c9ac30681f8", z10).putBoolean("5d60e3a7-a146-4cef-bab8-6a00860c29de", z17).putBoolean("4dc308f1-eada-4e49-aa1e-0b3bfd3d509e", i2).putBoolean("25f91c6e-7522-4294-8a86-c2349ecfa982", z16).putBoolean("9fb8b2f9-c36b-4bdf-ae05-ba0ac6a4eeea", z15).putBoolean("05b09271-4b74-40f1-8281-752cee3036c2", z14).putBoolean("6e526351-5032-48d2-8f3e-961c82d8af39", i3).putBoolean("8a4482f9-6238-4c9d-a238-14fca3e7abab", z18).putBoolean("adbd8b48-5bcb-465b-9079-c0ad816007b5", z19).putBoolean("ca796e8e-5512-43a9-baa7-8cfafb16051c", z20).putBoolean("46b597e9-62f2-4b6b-9503-f8166528db97", i4).putBoolean("772a8c80-37ad-4fec-81d0-30da76c322e2", z21).putBoolean("5ba67514-b41e-44ad-9f1b-ef4d16a4bef2", aVar.getBoolean("5ba67514-b41e-44ad-9f1b-ef4d16a4bef2", true)).putBoolean("fccc5881-4bd9-41cf-b821-42a70a38c352", aVar.getBoolean("fccc5881-4bd9-41cf-b821-42a70a38c352", true)).putStringSet("f0a4e420-6682-45ec-abf2-79604f725e66", hashSet).putBoolean("163a3804-45c7-49fa-8fb4-e12c2fe1f99f", z22).putBoolean("93b923b7-81da-4336-a0fb-3d5a1b7a00ba", z23).commit();
                break;
            case 14:
                ConcurrentLinkedQueue concurrentLinkedQueue = (ConcurrentLinkedQueue) obj2;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                Iterator it = concurrentLinkedQueue.iterator();
                while (it.hasNext()) {
                    d.d.d(sQLiteDatabase, "productGuid", (String) it.next());
                }
                Iterator it2 = concurrentLinkedQueue.iterator();
                while (it2.hasNext()) {
                    com.perfectcorp.perfectlib.ph.database.ymk.sku.b.d.d(sQLiteDatabase, "productGuid", (String) it2.next());
                }
                break;
            case 15:
                Throwable th3 = (Throwable) obj;
                Log.e("RecommendationHandler", "[clearAll] failed", th3);
                ((RecommendationHandler.ClearAllCallback) obj2).onFailure(th3);
                break;
            case 16:
                ((RingVtoApplier.CreateCallback) obj2).onFailure((Throwable) obj);
                break;
            case 17:
                for (DownloadImageInfo.Builder builder : ((SkuDataForProtocol) obj2).f39920k.values()) {
                    DownloadImageDao downloadImageDao = DownloadImageDao.d;
                    SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
                    builder.getClass();
                    downloadImageDao.i(sQLiteDatabaseC, new DownloadImageInfo(builder));
                }
                break;
            case 18:
                a.A(new StringBuilder("[syncServerByProtocol] Download failed url="), ((DownloadImageHelper.DownloadComponent) obj2).f40322b, 3, "SkuHandler");
                break;
            case 19:
                Throwable th4 = (Throwable) obj;
                Log.e("SkuHandler", "product mapping update failed.", th4);
                ((SkuHandler.UpdateMappingFromServerCallback) obj2).onFailure(InternalErrorRetriever.a(th4));
                break;
            case 20:
                Pair pair = (Pair) obj;
                Log.g(3, "SkuHandler", "[downloadProducts] onSuccess");
                ((SkuHandler.DownloadProductsCallback) obj2).onComplete((Map) pair.first, (Map) pair.second);
                break;
            case 21:
                Throwable th5 = (Throwable) obj;
                Log.e("SkuHandler", "[getListByEffect] failed.", th5);
                ((SkuHandler.GetListCallback) obj2).onFailure(th5);
                break;
            case 22:
                TagHandler.SyncServerCallback syncServerCallback = (TagHandler.SyncServerCallback) obj2;
                Throwable th6 = (Throwable) obj;
                if (th6 instanceof SkipCallbackException) {
                    Log.c("TagHandler", "[syncServer] canceled.", th6);
                } else {
                    Log.e("TagHandler", "[syncServer] failed.", th6);
                    syncServerCallback.onFailure(InternalErrorRetriever.a(th6));
                }
                break;
            case 23:
                Throwable th7 = (Throwable) obj;
                Log.e("TagHandler", "[clearAll] failed", th7);
                ((TagHandler.ClearAllCallback) obj2).onFailure(th7);
                break;
            case 24:
                ((WatchVtoApplier.CreateCallback) obj2).onFailure((Throwable) obj);
                break;
            default:
                Log.e("BackgroundDownloader", "[insertToDb] failed. guid=" + ((com.perfectcorp.perfectlib.ph.database.ymk.background.a) obj2).guid, (Throwable) obj);
                break;
        }
    }
}
