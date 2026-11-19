package com.perfectcorp.perfectlib;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.text.TextUtils;
import com.android.wiimu.model.WiimuPendingMask;
import com.cyberlink.clgpuimage.cosmetic.CLShowAlignFilter;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.PfCommonsJni;
import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.network.BaseDownloadHandle;
import com.perfectcorp.common.network.DownloadKey;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.rx.Singles;
import com.perfectcorp.common.utility.BasicPreferences;
import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.core.BaseVenus;
import com.perfectcorp.perfectlib.core.FrameProcessingThread;
import com.perfectcorp.perfectlib.core.ImageBufferBridge;
import com.perfectcorp.perfectlib.core.VenusModel$Assets;
import com.perfectcorp.perfectlib.core.VenusModel$Files;
import com.perfectcorp.perfectlib.exceptions.ContentIssueException;
import com.perfectcorp.perfectlib.exceptions.DetectFailedException;
import com.perfectcorp.perfectlib.exceptions.ModuleLoadFailedException;
import com.perfectcorp.perfectlib.exceptions.NoSurveySettingException;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.preferences.JewelryLookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.NailLookHandlerPreferences;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.jniproxy.CImageBuffer;
import com.perfectcorp.perfectlib.jniproxy.CUIEyebrowColor;
import com.perfectcorp.perfectlib.jniproxy.CUIFaceAttribute;
import com.perfectcorp.perfectlib.jniproxy.CUIHairTone;
import com.perfectcorp.perfectlib.jniproxy.CUIShadeFinder;
import com.perfectcorp.perfectlib.jniproxy.CUITracking;
import com.perfectcorp.perfectlib.jniproxy.CommonJNI;
import com.perfectcorp.perfectlib.jniproxy.SWIGTYPE_p_IVenusTrackingLive;
import com.perfectcorp.perfectlib.jniproxy.ShadeFinderMode;
import com.perfectcorp.perfectlib.jniproxy.UIEyebrowColorJNI;
import com.perfectcorp.perfectlib.jniproxy.UIFaceAttributeJNI;
import com.perfectcorp.perfectlib.jniproxy.UIHairToneJNI;
import com.perfectcorp.perfectlib.jniproxy.UIMakeupJNI;
import com.perfectcorp.perfectlib.jniproxy.UIMakeupLiveFaceAlignData;
import com.perfectcorp.perfectlib.jniproxy.UIShadeFinderJNI;
import com.perfectcorp.perfectlib.jniproxy.UITrackingJNI;
import com.perfectcorp.perfectlib.jniproxy.faceshape.AgeGenderPredictResult;
import com.perfectcorp.perfectlib.jniproxy.faceshape.FacePredictResult;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.FaceContourPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.FaceContourSettingHelper;
import com.perfectcorp.perfectlib.makeupcam.camera.LipstickLayer;
import com.perfectcorp.perfectlib.makeupcam.camera.LipstickPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.ShadeFinderReport;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.makeupcam.utility.CameraUtils$PictureTaken;
import com.perfectcorp.perfectlib.ph.template.SkuTemplateUtils;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$e;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$h;
import com.perfectcorp.perfectlib.ymk.clflurry.MCSDKDownloadLookEvent;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.DownloadFolderHelper;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadStateMonitors;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.thirdparty.com.getkeepsafe.relinker.ReLinker;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import com.perfectcorp.thirdparty.com.google.common.collect.ArrayListMultimap;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.al;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import defpackage.d20;
import defpackage.fc;
import defpackage.g7;
import defpackage.lc0;
import defpackage.md;
import defpackage.n00;
import defpackage.pq0;
import defpackage.px0;
import defpackage.tr;
import defpackage.zp;
import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeoutException;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class z implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f42054b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f42055c;
    public final /* synthetic */ Object d;

    public /* synthetic */ z(Object obj, Object obj2, int i2) {
        this.f42054b = i2;
        this.f42055c = obj;
        this.d = obj2;
    }

    private final Object a() throws Throwable {
        String str;
        int i2;
        int i3;
        String str2;
        int i4;
        int i5;
        FaceAttributeAnalyzer faceAttributeAnalyzer;
        SWIGTYPE_p_IVenusTrackingLive sWIGTYPE_p_IVenusTrackingLive;
        FaceAttributeAnalyzer.Condition condition;
        String str3;
        int i6;
        int i7;
        SWIGTYPE_p_IVenusTrackingLive sWIGTYPE_p_IVenusTrackingLive2;
        CImageBuffer cImageBuffer;
        long j2;
        String str4;
        int i8;
        CImageBuffer cImageBuffer2;
        long j3;
        FaceAttributeAnalyzer faceAttributeAnalyzer2 = (FaceAttributeAnalyzer) this.f42055c;
        Set set = (Set) this.d;
        SWIGTYPE_p_IVenusTrackingLive sWIGTYPE_p_IVenusTrackingLive3 = null;
        if (!faceAttributeAnalyzer2.f39599e.containsAll(set)) {
            md.n("Contains unsupported features.");
            return null;
        }
        if (faceAttributeAnalyzer2.f39600f == null) {
            md.k("Doesn't set an image.");
            return null;
        }
        FaceAttributeAnalyzer.PredictionCache predictionCache = faceAttributeAnalyzer2.f39602i;
        FaceAttributeAnalyzer.Condition condition2 = new FaceAttributeAnalyzer.Condition(set);
        predictionCache.getClass();
        boolean[] zArrA = condition2.a();
        if (Arrays.equals(zArrA, predictionCache.f39607c)) {
            str = "PFMNN";
            i2 = -1;
            i3 = 1;
            str2 = "FaceAttributeAnalyzer$PredictionCache";
            i4 = 3;
            Log.g(3, str2, "No need to run face attribute detection.");
        } else {
            String strA = FaceAttributeAnalyzer.PredictionCache.a(condition2);
            FacePredictResult facePredictResult = predictionCache.f39605a;
            Bitmap bitmap = faceAttributeAnalyzer2.f39600f;
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect((bitmap.getHeight() * bitmap.getWidth()) << 2);
            bitmap.copyPixelsToBuffer(byteBufferAllocateDirect);
            Context contextB = PfCommons.b();
            ReLinker.a(contextB, "PFMNN");
            ReLinker.a(contextB, "faceshape");
            CUIFaceAttribute cUIFaceAttribute = new CUIFaceAttribute(IO.d(PfCommonsJni.a()).concat("libfaceshape.so"), strA);
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            UIMakeupLiveFaceAlignData uIMakeupLiveFaceAlignData = faceAttributeAnalyzer2.g;
            str = "PFMNN";
            long j4 = cUIFaceAttribute.f40394a;
            if (uIMakeupLiveFaceAlignData == null) {
                j3 = 0;
            } else {
                j3 = uIMakeupLiveFaceAlignData.f40411a;
                width = width;
            }
            i2 = -1;
            i3 = 1;
            UIFaceAttributeJNI.CUIFaceAttribute_predictImage(j4, cUIFaceAttribute, byteBufferAllocateDirect, width, height, j3, uIMakeupLiveFaceAlignData, zArrA, facePredictResult);
            cUIFaceAttribute.a();
            for (int i9 = 0; i9 < 11; i9++) {
                boolean[] zArr = predictionCache.f39607c;
                zArr[i9] = zArr[i9] || zArrA[i9];
            }
            if (!FaceAttributeAnalyzer.Condition.d()) {
                AgeGenderPredictResult ageGenderPredictResult = predictionCache.f39605a.ageGender;
                ageGenderPredictResult.age = -1;
                ageGenderPredictResult.gender = null;
            }
            str2 = "FaceAttributeAnalyzer$PredictionCache";
            i4 = 3;
        }
        if (condition2.f39604a.contains("skinTone") && predictionCache.f39606b.f39593a == null) {
            Log.g(i4, str2, "Need to run skin tone detection.");
            FaceAnalysisData.Extra extra = predictionCache.f39606b;
            Context contextB2 = PfCommons.b();
            str3 = str;
            ReLinker.a(contextB2, str3);
            ReLinker.a(contextB2, "venus_tracking");
            ReLinker.a(contextB2, "venus_shadefinder");
            CUIShadeFinder cUIShadeFinder = new CUIShadeFinder(IO.d(PfCommonsJni.a()).concat("libvenus_shadefinder.so"));
            ShadeFinder.initShadeFinder(cUIShadeFinder, faceAttributeAnalyzer2.d ? ShadeFinderMode.SHADE_FINDER_LV_SHADE_DETECT : ShadeFinderMode.SHADE_FINDER_WITHOUT_CALIBRATION_V4_FACE_ATTRIBUTE);
            String str5 = faceAttributeAnalyzer2.f39598c;
            Bitmap bitmap2 = faceAttributeAnalyzer2.f39600f;
            boolean z = faceAttributeAnalyzer2.d;
            byte[] bArrA = CameraUtils$PictureTaken.a(bitmap2);
            Preconditions.h("ResetShadeFinder failed.", UIShadeFinderJNI.CUIShadeFinder_ResetShadeFinder(cUIShadeFinder.f40400a, cUIShadeFinder));
            ShadeFinderReport shadeFinderReport = new ShadeFinderReport();
            long jNanoTime = System.nanoTime();
            while (true) {
                if (System.nanoTime() - jNanoTime >= 15000000000L) {
                    throw new TimeoutException("Can't detect skin tone");
                }
                i5 = i2;
                faceAttributeAnalyzer = faceAttributeAnalyzer2;
                CUIShadeFinder cUIShadeFinder2 = cUIShadeFinder;
                UIShadeFinderJNI.CUIShadeFinder_TrackYUV420Biplanar(cUIShadeFinder.f40400a, cUIShadeFinder2, bArrA, bitmap2.getWidth(), bitmap2.getHeight(), 0, false, false);
                SWIGTYPE_p_IVenusTrackingLive sWIGTYPE_p_IVenusTrackingLive4 = sWIGTYPE_p_IVenusTrackingLive3;
                condition = condition2;
                sWIGTYPE_p_IVenusTrackingLive = sWIGTYPE_p_IVenusTrackingLive4;
                Preconditions.h("GetShadeFinderData failed. detectionMode=" + str5, UIShadeFinderJNI.CUIShadeFinder_GetShadeFinderData__SWIG_0(cUIShadeFinder2.f40400a, cUIShadeFinder2, shadeFinderReport, z));
                if (shadeFinderReport.report_id >= (z ? i3 : 5)) {
                    int iRgb = Color.rgb(shadeFinderReport.skin_color_rgb_r, shadeFinderReport.skin_color_rgb_g, shadeFinderReport.skin_color_rgb_b);
                    cUIShadeFinder2.a();
                    extra.f39593a = Integer.valueOf(iRgb);
                    break;
                }
                try {
                    Thread.sleep(66L);
                } catch (Exception unused) {
                }
                condition2 = condition;
                faceAttributeAnalyzer2 = faceAttributeAnalyzer;
                sWIGTYPE_p_IVenusTrackingLive3 = sWIGTYPE_p_IVenusTrackingLive;
                cUIShadeFinder = cUIShadeFinder2;
                i2 = i5;
            }
        } else {
            i5 = i2;
            faceAttributeAnalyzer = faceAttributeAnalyzer2;
            sWIGTYPE_p_IVenusTrackingLive = null;
            condition = condition2;
            str3 = str;
            Log.g(i4, str2, "No need to run skin tone detection.");
        }
        if (condition.f39604a.contains("eyebrowColor") && predictionCache.f39606b.f39594b == null) {
            Log.g(i4, str2, "Need to run eyebrow color detection.");
            FaceAttributeAnalyzer.PredictionCache.a(condition);
            FaceAnalysisData.Extra extra2 = predictionCache.f39606b;
            Context contextB3 = PfCommons.b();
            ReLinker.a(contextB3, str3);
            ReLinker.a(contextB3, "venus_tracking");
            ReLinker.a(contextB3, "venus_eyebrowcolor");
            CUIEyebrowColor cUIEyebrowColor = new CUIEyebrowColor(IO.d(PfCommonsJni.a()).concat("libvenus_eyebrowcolor.so"));
            int[] iArr = new int[i4];
            CImageBuffer cImageBufferA = ImageBufferBridge.a(faceAttributeAnalyzer.f39600f);
            try {
                UIMakeupLiveFaceAlignData uIMakeupLiveFaceAlignData2 = faceAttributeAnalyzer.g;
                try {
                    UIEyebrowColorJNI.CUIEyebrowColor_GetEyebrowColor(cUIEyebrowColor.f40392a, cUIEyebrowColor, cImageBufferA.f40390a, cImageBufferA, uIMakeupLiveFaceAlignData2 == null ? 0L : uIMakeupLiveFaceAlignData2.f40411a, uIMakeupLiveFaceAlignData2, iArr, faceAttributeAnalyzer.d);
                    cImageBuffer2 = cImageBufferA;
                    try {
                        StringBuilder sb = new StringBuilder("detectedEyebrowColor=(");
                        sb.append(iArr[0]);
                        sb.append(",");
                        sb.append(iArr[i3]);
                        sb.append(",");
                        i6 = 2;
                        sb.append(iArr[2]);
                        sb.append(")");
                        Log.g(3, "FaceAttributeAnalyzer", sb.toString());
                        if (!CommonJNI.CImageBuffer_SwapColorChannel__SWIG_0(cImageBuffer2.f40390a, cImageBuffer2)) {
                            md.k("SwapColorChannel() failed.");
                            return sWIGTYPE_p_IVenusTrackingLive;
                        }
                        CommonJNI.CImageBuffer_DetachAndroidBitmap(cImageBuffer2.f40390a, cImageBuffer2);
                        cImageBuffer2.a();
                        cUIEyebrowColor.a();
                        extra2.f39594b = Integer.valueOf(Color.rgb(iArr[0], iArr[i3], iArr[2]));
                        i7 = 3;
                    } catch (Throwable th) {
                        th = th;
                        if (!CommonJNI.CImageBuffer_SwapColorChannel__SWIG_0(cImageBuffer2.f40390a, cImageBuffer2)) {
                            md.k("SwapColorChannel() failed.");
                            return sWIGTYPE_p_IVenusTrackingLive;
                        }
                        CommonJNI.CImageBuffer_DetachAndroidBitmap(cImageBuffer2.f40390a, cImageBuffer2);
                        cImageBuffer2.a();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cImageBuffer2 = cImageBufferA;
                }
            } catch (Throwable th3) {
                th = th3;
                cImageBuffer2 = cImageBufferA;
            }
        } else {
            i6 = 2;
            i7 = 3;
            Log.g(3, str2, "No need to run eyebrow color detection.");
        }
        if (condition.f39604a.contains("hairColor") && predictionCache.f39606b.f39595c == null) {
            Log.g(i7, str2, "Need to run hair color detection.");
            FaceAttributeAnalyzer.PredictionCache.a(condition);
            Context contextB4 = PfCommons.b();
            PerfectLib.ModelPath modelPath = PerfectLib.g.f39514a;
            ReLinker.a(contextB4, str3);
            ReLinker.a(contextB4, "venus_tracking");
            ReLinker.a(contextB4, "venus_hairtone");
            CUIHairTone cUIHairTone = new CUIHairTone(IO.d(PfCommonsJni.a()).concat("libvenus_hairtone.so"));
            try {
                String[] strArr = new String[i6];
                CUITracking cUITracking = faceAttributeAnalyzer.f39601h;
                long jCUITracking_GetVenusTrackingLive = UITrackingJNI.CUITracking_GetVenusTrackingLive(cUITracking.f40402a, cUITracking);
                if (jCUITracking_GetVenusTrackingLive == 0) {
                    sWIGTYPE_p_IVenusTrackingLive2 = sWIGTYPE_p_IVenusTrackingLive;
                } else {
                    sWIGTYPE_p_IVenusTrackingLive2 = new SWIGTYPE_p_IVenusTrackingLive();
                    sWIGTYPE_p_IVenusTrackingLive2.f40407a = jCUITracking_GetVenusTrackingLive;
                }
                Preconditions.i(UIHairToneJNI.CUIHairTone_SetTrackingEngine(cUIHairTone.f40396a, cUIHairTone, sWIGTYPE_p_IVenusTrackingLive2 == null ? 0L : sWIGTYPE_p_IVenusTrackingLive2.f40407a));
                Preconditions.i(UIHairToneJNI.CUIHairTone_GetInternalModelVersion(cUIHairTone.f40396a, cUIHairTone, strArr));
                Log.g(3, "FaceAttributeAnalyzer", "internal model versions=" + Arrays.toString(strArr));
                boolean z2 = modelPath.f39755a;
                String str6 = modelPath.f39756b;
                String strD = z2 ? VenusModel$Assets.d(contextB4, str6, new VenusModel$Assets("seg_init_net_", "_android.mnn", strArr[0])) : VenusModel$Files.a(str6, new VenusModel$Files(strArr[0]));
                boolean z3 = modelPath.f39755a;
                String str7 = modelPath.f39756b;
                String strD2 = z3 ? VenusModel$Assets.d(contextB4, str7, new VenusModel$Assets("haitone_init_net_", "_cross1.mnn", strArr[i3])) : VenusModel$Files.a(str7, new VenusModel$Files(strArr[i3]));
                long jNanoTime2 = System.nanoTime();
                Preconditions.i(UIHairToneJNI.CUIHairTone_SetInternalModelPaths(cUIHairTone.f40396a, cUIHairTone, strD, strD2));
                Log.g(3, "FaceAttributeAnalyzer", "SetInternalModelPaths in " + ((System.nanoTime() - jNanoTime2) / 1000000) + " ms");
                int[] iArr2 = new int[3];
                String[] strArr2 = new String[i3];
                CImageBuffer cImageBufferA2 = ImageBufferBridge.a(faceAttributeAnalyzer.f39600f);
                try {
                    UIMakeupLiveFaceAlignData uIMakeupLiveFaceAlignData3 = faceAttributeAnalyzer.g;
                    boolean z4 = faceAttributeAnalyzer.d;
                    long j5 = cUIHairTone.f40396a;
                    long j6 = cImageBufferA2.f40390a;
                    if (uIMakeupLiveFaceAlignData3 == null) {
                        cImageBuffer = cImageBufferA2;
                        j2 = 0;
                    } else {
                        cImageBuffer = cImageBufferA2;
                        try {
                            j2 = uIMakeupLiveFaceAlignData3.f40411a;
                        } catch (Throwable th4) {
                            th = th4;
                            cImageBufferA2 = cImageBuffer;
                            if (!CommonJNI.CImageBuffer_SwapColorChannel__SWIG_0(cImageBufferA2.f40390a, cImageBufferA2)) {
                                md.k("SwapColorChannel() failed.");
                                return null;
                            }
                            CommonJNI.CImageBuffer_DetachAndroidBitmap(cImageBufferA2.f40390a, cImageBufferA2);
                            cImageBufferA2.a();
                            throw th;
                        }
                    }
                    UIHairToneJNI.CUIHairTone_GetHairTone(j5, cUIHairTone, j6, cImageBuffer, j2, uIMakeupLiveFaceAlignData3, iArr2, strArr2, z4);
                    cImageBufferA2 = cImageBuffer;
                    if (strArr2[0] == null) {
                        str4 = "detectedHairColor=(-1)";
                        i8 = 3;
                    } else {
                        str4 = "detectedHairColor=(" + iArr2[0] + "," + iArr2[1] + "," + iArr2[i6] + ")";
                        i8 = 3;
                    }
                    Log.g(i8, "FaceAttributeAnalyzer", str4);
                    Log.g(3, "FaceAttributeAnalyzer", "detectedHairColorName=(" + strArr2[0] + ")");
                    if (!CommonJNI.CImageBuffer_SwapColorChannel__SWIG_0(cImageBufferA2.f40390a, cImageBufferA2)) {
                        md.k("SwapColorChannel() failed.");
                        return null;
                    }
                    CommonJNI.CImageBuffer_DetachAndroidBitmap(cImageBufferA2.f40390a, cImageBufferA2);
                    cImageBufferA2.a();
                    cUIHairTone.a();
                    HashMap map = new HashMap();
                    String str8 = strArr2[0];
                    if (str8 == null) {
                        map.put(sWIGTYPE_p_IVenusTrackingLive, Integer.valueOf(i5));
                    } else {
                        map.put(str8, Integer.valueOf(Color.rgb(iArr2[0], iArr2[1], iArr2[i6])));
                    }
                    Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
                    predictionCache.f39606b.d = (String) entry.getKey();
                    predictionCache.f39606b.f39595c = (Integer) entry.getValue();
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (Throwable th6) {
                Log.e("FaceAttributeAnalyzer", "Module load failed", th6);
                throw new ModuleLoadFailedException(th6);
            }
        } else {
            Log.g(3, str2, "No need to run hair color detection.");
        }
        return new FaceAnalysisData(predictionCache.f39605a, predictionCache.f39606b, condition, faceAttributeAnalyzer.d);
    }

    private final Object b() {
        SkinCareRecommendationData skinCareRecommendationData = (SkinCareRecommendationData) this.f42055c;
        String str = (String) this.d;
        BasicPreferences basicPreferences = SkinCare3RecommendationHandler.Preferences.f39889a;
        String string = basicPreferences.getString("RECOMMENDATION_SETTING", null);
        String string2 = basicPreferences.getString("RECOMMENDATION_JS", null);
        if (string == null || TextUtils.isEmpty(string2)) {
            throw new NoSurveySettingException();
        }
        String strB = SkinCare3RecommendationHandler.b(skinCareRecommendationData);
        String string3 = basicPreferences.getString("RECOMMENDATION_EXTRA_INFO", null);
        return tr.h(string2, ";\n", TextUtils.isEmpty(string3) ? n00.r(str, ");", fc.s("recommend(", string, ", ", strB, ", ")) : tr.l(fc.s("recommend(", string, ", ", strB, ", "), str, ", ", string3, ");"));
    }

    private final Object c() {
        TagType tagType = (TagType) this.f42055c;
        return com.perfectcorp.perfectlib.ph.database.ymk.generictag.a.d.o(YMKDatabase.b(), tagType.f39993a, (String) this.d);
    }

    /* JADX WARN: Code duplicated, block: B:104:0x020b  */
    /* JADX WARN: Code duplicated, block: B:105:0x020e  */
    /* JADX WARN: Code duplicated, block: B:108:0x0218  */
    /* JADX WARN: Code duplicated, block: B:109:0x0222  */
    /* JADX WARN: Code duplicated, block: B:127:0x0290 A[PHI: r4
      0x0290: PHI (r4v37 com.perfectcorp.perfectlib.ymk.model.BeautyMode) = 
      (r4v36 com.perfectcorp.perfectlib.ymk.model.BeautyMode)
      (r4v45 com.perfectcorp.perfectlib.ymk.model.BeautyMode)
      (r4v46 com.perfectcorp.perfectlib.ymk.model.BeautyMode)
     binds: [B:135:0x02aa, B:131:0x029f, B:126:0x028e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:128:0x0295  */
    /* JADX WARN: Code duplicated, block: B:130:0x0299  */
    /* JADX WARN: Code duplicated, block: B:139:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:142:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:165:0x0440  */
    /* JADX WARN: Code duplicated, block: B:347:0x0225 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:351:0x0205 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:352:0x0205 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:358:0x02ee A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:359:0x02ee A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:362:0x02df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:363:0x02cb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:364:0x02d5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:365:0x02cb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:367:0x02b1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:85:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:87:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:89:0x01da  */
    /* JADX WARN: Code duplicated, block: B:91:0x01e4  */
    @Override // java.util.concurrent.Callable
    public final Object call() throws Exception {
        String strD;
        SkuDataForProtocol skuDataForProtocol;
        SkuDataForProtocol skuDataForProtocol2;
        String str;
        ContentIssueException contentIssueException;
        File file;
        String str2;
        FileInputStream fileInputStream;
        BeautyMode beautyMode;
        String str3;
        String str4;
        String str5;
        BeautyMode beautyMode2;
        BeautyMode beautyMode3;
        EffectId effectId;
        FaceContourPayload.Setting setting;
        List listB;
        int size;
        int[] iArr;
        int i2;
        PerfectEffect perfectEffect;
        BeautyMode beautyMode4;
        Object obj;
        List list;
        int i3 = this.f42054b;
        int i4 = 7;
        int i5 = 0;
        int i6 = 1;
        int i7 = 3;
        Object obj2 = this.d;
        Object obj3 = this.f42055c;
        switch (i3) {
            case 0:
                ContentPreloader contentPreloader = (ContentPreloader) obj3;
                com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.h) obj2;
                String str6 = contentPreloader.d;
                PerfectLib.InitialCallbackWrapper initialCallbackWrapper = contentPreloader.f39539h;
                Set set = contentPreloader.f39541j;
                defpackage.a.A(new StringBuilder("[preloadSkuByProtocolMethod] sku id="), hVar.skuGUID, 3, "ContentPreloader");
                Configuration.ImageSource imageSource = contentPreloader.f39540i;
                if (imageSource == Configuration.ImageSource.FILE) {
                    try {
                        String strConcat = IO.d(str6).concat(IO.d(hVar.skuGUID));
                        String strB = ContentPreloader.b(hVar.sku_images_room_zip);
                        String strA = DownloadFolderHelper.a(com.perfectcorp.perfectlib.ph.kernelctrl.sku.f.a(hVar, com.perfectcorp.perfectlib.ph.kernelctrl.sku.f.a.f41564b));
                        contentPreloader.d(strConcat, strB, strA);
                        if (new File(strA).exists()) {
                            com.perfectcorp.perfectlib.ph.kernelctrl.sku.e.d dVar = new com.perfectcorp.perfectlib.ph.kernelctrl.sku.e.d(hVar, true);
                            Preconditions.i(dVar.c());
                            dVar.b();
                            strD = dVar.d();
                        } else {
                            strD = null;
                        }
                    } catch (Throwable unused) {
                        defpackage.a.A(new StringBuilder("[getRoomFolder] failed. id="), hVar.skuGUID, 3, "ContentPreloader");
                    }
                    break;
                } else {
                    strD = null;
                }
                SkuDataForProtocol skuDataForProtocolI = SkuDataForProtocol.i(Collections.singleton(hVar), imageSource, strD, new x(contentPreloader, i4));
                if (strD != null) {
                    FileUtils.c(new File(strD));
                }
                String str7 = "";
                String str8 = "'";
                Set set2 = set;
                if (SkuTemplateUtils.a(hVar.type) == SkuBeautyMode$FeatureType.EYE_WEAR) {
                    if (TextUtils.isEmpty(hVar.subType)) {
                        str2 = "Skip empty sub type for eyewear SKU.";
                    } else {
                        if (ItemSubType.EYEWEAR_CUBE.b().equals(hVar.subType)) {
                            File fileA = contentPreloader.a(hVar, true, false);
                            HashMap map = new HashMap();
                            try {
                                FileInputStream fileInputStream2 = new FileInputStream(new File(fileA, "makeup_template.xml"));
                                try {
                                    Document document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(fileInputStream2);
                                    document.getDocumentElement().normalize();
                                    NodeList elementsByTagName = ((Element) ((Element) ((Element) document.getElementsByTagName("makeup").item(0)).getElementsByTagName("eye_wear").item(0)).getElementsByTagName("patterns").item(0)).getElementsByTagName("pattern");
                                    int i8 = 0;
                                    while (i8 < elementsByTagName.getLength()) {
                                        Element element = (Element) elementsByTagName.item(i8);
                                        NodeList nodeList = elementsByTagName;
                                        String attribute = element.getAttribute("guid");
                                        int i9 = i8;
                                        Element element2 = (Element) ((Element) element.getElementsByTagName("pattern_mask_cube_eyewear").item(0)).getElementsByTagName(WiimuPendingMask.Mask).item(0);
                                        HashMap map2 = new HashMap();
                                        SkuDataForProtocol.f(element2, map2, "front_src");
                                        SkuDataForProtocol.f(element2, map2, "left_src");
                                        SkuDataForProtocol.f(element2, map2, "right_src");
                                        SkuDataForProtocol.f(element2, map2, "env_region_src");
                                        SkuDataForProtocol.f(element2, map2, "env_map_src");
                                        SkuDataForProtocol.f(element2, map2, "env_frame_src");
                                        map.put(attribute, map2);
                                        i8 = i9 + 1;
                                        elementsByTagName = nodeList;
                                    }
                                    IO.b(fileInputStream2);
                                    Iterator<com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d> it = hVar.items.iterator();
                                    while (it.hasNext()) {
                                        List<com.perfectcorp.perfectlib.ph.template.idc.e> list2 = it.next().info.itemContent.patterns;
                                        Set set3 = MoreCollections.f39434a;
                                        if (list2 == null) {
                                            list2 = Collections.EMPTY_LIST;
                                        }
                                        Iterator<com.perfectcorp.perfectlib.ph.template.idc.e> it2 = list2.iterator();
                                        while (it2.hasNext()) {
                                            com.perfectcorp.perfectlib.ph.template.idc.e next = it2.next();
                                            String str9 = next.attr_guid;
                                            HashMap mapJ = SkuDataForProtocol.j(hVar, next);
                                            Map map3 = (Map) map.get(str9);
                                            Objects.requireNonNull(map3);
                                            Map map4 = map3;
                                            Iterator<com.perfectcorp.perfectlib.ph.template.idc.e> it3 = it2;
                                            com.perfectcorp.perfectlib.ph.template.idc.e.f fVar = new com.perfectcorp.perfectlib.ph.template.idc.e.f(next.pattern_mask_cube_eyewear.get(0).mask.get(0));
                                            SkuDataForProtocol.e(fileA, str9, fVar.a("front_src"), (String) map4.get("front_src"), mapJ);
                                            SkuDataForProtocol.e(fileA, str9, fVar.a("left_src"), (String) map4.get("left_src"), mapJ);
                                            SkuDataForProtocol.e(fileA, str9, fVar.a("right_src"), (String) map4.get("right_src"), mapJ);
                                            SkuDataForProtocol.e(fileA, str9, fVar.a("env_region_src"), (String) map4.get("env_region_src"), mapJ);
                                            SkuDataForProtocol.e(fileA, str9, fVar.a("env_map_src"), (String) map4.get("env_map_src"), mapJ);
                                            SkuDataForProtocol.e(fileA, str9, fVar.a("env_frame_src"), (String) map4.get("env_frame_src"), mapJ);
                                            SkuDataForProtocol.d(skuDataForProtocolI, hVar, next, mapJ);
                                            it = it;
                                            map = map;
                                            it2 = it3;
                                        }
                                    }
                                    FileUtils.c(fileA);
                                } catch (Throwable th) {
                                    th = th;
                                    fileInputStream = fileInputStream2;
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        IO.b(fileInputStream);
                                        throw th2;
                                    }
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                fileInputStream = null;
                            }
                        } else if (ItemSubType.EYEWEAR_3D.b().equals(hVar.subType)) {
                            for (com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d dVar2 : hVar.items) {
                                for (com.perfectcorp.perfectlib.ph.template.idc.e eVar : dVar2.info.itemContent.patterns) {
                                    if (TextUtils.isEmpty(eVar.attr_patternGuid)) {
                                        String strR = n00.r(dVar2.itemGUID, "'", new StringBuilder("No pattern GUID can be found in SKU '"));
                                        Log.d("ContentPreloader", "[preloadSkuByProtocolMethod] ".concat(strR));
                                        str = hVar.skuGUID;
                                        contentIssueException = new ContentIssueException(strR);
                                    } else {
                                        Set set4 = set2;
                                        if (set4.contains(eVar.attr_patternGuid)) {
                                            set2 = set4;
                                        } else {
                                            String str10 = "preload sku failed, lack of pattern=" + eVar.attr_patternGuid + ", id=" + hVar.skuGUID;
                                            Log.d("ContentPreloader", "[preloadSkuByProtocolMethod] ".concat(str10));
                                            str = hVar.skuGUID;
                                            contentIssueException = new ContentIssueException(str10);
                                        }
                                    }
                                    initialCallbackWrapper.a(str, contentIssueException);
                                }
                            }
                        } else {
                            str2 = "Skip unknown sub type '" + hVar.subType + "' for eyewear SKU.";
                        }
                        skuDataForProtocolI.k();
                    }
                    Log.d("ContentPreloader", str2);
                } else {
                    String str11 = ", id=";
                    String str12 = WiimuPendingMask.Mask;
                    String str13 = "guid";
                    SkuBeautyMode$FeatureType skuBeautyMode$FeatureType = SkuBeautyMode$FeatureType.RING;
                    SkuBeautyMode$FeatureType skuBeautyMode$FeatureType2 = SkuBeautyMode$FeatureType.BRACELET;
                    SkuBeautyMode$FeatureType skuBeautyMode$FeatureType3 = SkuBeautyMode$FeatureType.WATCH;
                    SkuBeautyMode$FeatureType skuBeautyMode$FeatureType4 = SkuBeautyMode$FeatureType.NECKLACE;
                    bz bzVar = ImmutableList.f42200c;
                    Object[] objArr = {skuBeautyMode$FeatureType, skuBeautyMode$FeatureType2, skuBeautyMode$FeatureType3, skuBeautyMode$FeatureType4};
                    al.a.d(4, objArr);
                    if (ImmutableList.s(4, objArr).contains(SkuTemplateUtils.a(hVar.type))) {
                        Iterator<com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d> it4 = hVar.items.iterator();
                        while (it4.hasNext()) {
                            com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d next2 = it4.next();
                            Iterator<com.perfectcorp.perfectlib.ph.template.idc.e> it5 = next2.info.itemContent.patterns.iterator();
                            while (it5.hasNext()) {
                                it4 = it4;
                                com.perfectcorp.perfectlib.ph.template.idc.e next3 = it5.next();
                                it5 = it5;
                                if (TextUtils.isEmpty(next3.attr_patternGuid)) {
                                    String strR2 = n00.r(next2.itemGUID, "'", new StringBuilder("No pattern GUID can be found in SKU '"));
                                    Log.d("ContentPreloader", "[preloadSkuByProtocolMethod] ".concat(strR2));
                                    str = hVar.skuGUID;
                                    contentIssueException = new ContentIssueException(strR2);
                                    initialCallbackWrapper.a(str, contentIssueException);
                                } else if (!set2.contains(next3.attr_patternGuid)) {
                                    StringBuilder sb = new StringBuilder("preload sku failed, lack of pattern=");
                                    com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d dVar3 = next2;
                                    sb.append(next3.attr_patternGuid);
                                    sb.append(str11);
                                    sb.append(hVar.skuGUID);
                                    String string = sb.toString();
                                    Log.d("ContentPreloader", "[preloadSkuByProtocolMethod] ".concat(string));
                                    SkuDataForProtocol skuDataForProtocol3 = skuDataForProtocolI;
                                    StringBuilder sb2 = new StringBuilder();
                                    String str14 = str11;
                                    sb2.append(IO.d(str6));
                                    sb2.append(hVar.content_zip);
                                    File file2 = new File(sb2.toString());
                                    String str15 = str7;
                                    new File(str15);
                                    Log.g(3, "ContentPreloader", "try to reload " + file2.getAbsolutePath());
                                    contentPreloader.g(next3.attr_patternGuid, hVar.content_zip);
                                    if (set2.contains(next3.attr_patternGuid)) {
                                        Log.g(3, "ContentPreloader", "Content zip of " + next3.attr_patternGuid + "reloaded.");
                                        str7 = str15;
                                        next2 = dVar3;
                                        skuDataForProtocolI = skuDataForProtocol3;
                                        str11 = str14;
                                    } else {
                                        initialCallbackWrapper.a(hVar.skuGUID, new ContentIssueException(string));
                                    }
                                }
                            }
                        }
                        skuDataForProtocol = skuDataForProtocolI;
                        skuDataForProtocol.k();
                    } else {
                        skuDataForProtocol = skuDataForProtocolI;
                        String str16 = str11;
                        if (SkuTemplateUtils.a(hVar.type) == SkuBeautyMode$FeatureType.EARRINGS) {
                            Iterator<com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d> it6 = hVar.items.iterator();
                            while (it6.hasNext()) {
                                com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d next4 = it6.next();
                                Iterator<String> it7 = next4.info.pattern.iterator();
                                while (it7.hasNext()) {
                                    String next5 = it7.next();
                                    if (TextUtils.isEmpty(next5)) {
                                        String strR3 = n00.r(next4.itemGUID, str8, new StringBuilder("No pattern GUID can be found in SKU '"));
                                        Log.d("ContentPreloader", "[preloadSkuByProtocolMethod] ".concat(strR3));
                                        str = hVar.skuGUID;
                                        contentIssueException = new ContentIssueException(strR3);
                                    } else if (!set2.contains(next5)) {
                                        Iterator<com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d> it8 = it6;
                                        String str17 = str16;
                                        StringBuilder sbR = pq0.r("preload sku failed, lack of pattern=", next5, str17);
                                        com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d dVar4 = next4;
                                        sbR.append(hVar.skuGUID);
                                        String string2 = sbR.toString();
                                        Log.d("ContentPreloader", "[preloadSkuByProtocolMethod] ".concat(string2));
                                        Iterator<String> it9 = it7;
                                        StringBuilder sb3 = new StringBuilder();
                                        String str18 = str8;
                                        sb3.append(IO.d(str6));
                                        sb3.append(hVar.content_zip);
                                        Log.g(3, "ContentPreloader", "try to reload " + new File(sb3.toString()).getAbsolutePath());
                                        contentPreloader.g(next5, hVar.content_zip);
                                        if (set2.contains(next5)) {
                                            Log.g(3, "ContentPreloader", "Content zip of " + next5 + " reloaded.");
                                            str16 = str17;
                                            it6 = it8;
                                            next4 = dVar4;
                                            it7 = it9;
                                            str8 = str18;
                                        } else {
                                            str = hVar.skuGUID;
                                            contentIssueException = new ContentIssueException(string2);
                                        }
                                    }
                                }
                            }
                            skuDataForProtocol.k();
                        } else {
                            if (SkuTemplateUtils.a(hVar.type) == SkuBeautyMode$FeatureType.NAIL) {
                                File fileA2 = contentPreloader.a(hVar, false, true);
                                if (fileA2 == null) {
                                    skuDataForProtocol2 = skuDataForProtocol;
                                } else {
                                    TemplateUtils.b bVar = TemplateUtils.d(IO.d(fileA2.getAbsolutePath()), YMKPrimitiveData.SourceType.SKU, null, null).f41602a;
                                    if (MoreCollections.a(ImmutableList.u(bVar.d))) {
                                        file = fileA2;
                                        skuDataForProtocol2 = skuDataForProtocol;
                                    } else {
                                        skuDataForProtocol2 = skuDataForProtocol;
                                        ArrayListMultimap arrayListMultimap = skuDataForProtocol2.d;
                                        Collection collection = arrayListMultimap.get((Object) hVar.skuGUID);
                                        ArrayList arrayList = new ArrayList();
                                        Iterator it10 = collection.iterator();
                                        while (it10.hasNext()) {
                                            TemplateUtils.b bVar2 = ((TemplateUtils.c) it10.next()).f41602a;
                                            float f2 = TemplateUtils.f41580a;
                                            TemplateUtils.b bVar3 = new TemplateUtils.b();
                                            bVar3.f41593a.putAll(bVar2.f41593a);
                                            bVar3.f41594b.putAll(bVar2.f41594b);
                                            bVar3.f41595c.putAll(bVar2.f41595c);
                                            ArrayList arrayList2 = bVar2.d;
                                            ArrayList arrayList3 = bVar3.d;
                                            arrayList3.addAll(arrayList2);
                                            bVar3.f41596e.addAll(bVar2.f41596e);
                                            bVar3.f41597f.addAll(bVar2.f41597f);
                                            bVar3.g.addAll(bVar2.g);
                                            ArrayList arrayList4 = bVar2.f41598h;
                                            ArrayList arrayList5 = bVar3.f41598h;
                                            arrayList5.addAll(arrayList4);
                                            bVar3.f41599i.addAll(bVar2.f41599i);
                                            bVar3.f41600j.addAll(bVar2.f41600j);
                                            bVar3.f41601k.addAll(bVar2.f41601k);
                                            bVar3.l.addAll(bVar2.l);
                                            bVar3.m.addAll(bVar2.m);
                                            bVar3.n.addAll(bVar2.n);
                                            bVar3.o.addAll(bVar2.o);
                                            bVar3.p.addAll(bVar2.p);
                                            bVar3.q.addAll(bVar2.q);
                                            bVar3.r.addAll(bVar2.r);
                                            bVar3.s.addAll(bVar2.s);
                                            bVar3.t.putAll(bVar2.t);
                                            bVar3.u.putAll(bVar2.u);
                                            bVar3.v.addAll(bVar2.v);
                                            bVar3.w = bVar2.w;
                                            arrayList3.clear();
                                            arrayList3.addAll(bVar.d);
                                            arrayList5.clear();
                                            arrayList5.addAll(bVar.f41598h);
                                            arrayList.add(new TemplateUtils.c(bVar3));
                                            fileA2 = fileA2;
                                        }
                                        file = fileA2;
                                        arrayListMultimap.a(hVar.skuGUID);
                                        arrayListMultimap.n(arrayList, hVar.skuGUID);
                                    }
                                    Iterator<E> it11 = ImmutableList.u(bVar.d).iterator();
                                    boolean z = false;
                                    while (it11.hasNext()) {
                                        set2.add(((com.perfectcorp.perfectlib.ph.template.m) it11.next()).f41671a);
                                        z = true;
                                    }
                                    if (!z) {
                                        FileUtils.c(file);
                                    }
                                }
                            } else {
                                skuDataForProtocol2 = skuDataForProtocol;
                                if (SkuTemplateUtils.a(hVar.type) == SkuBeautyMode$FeatureType.EYE_CONTACT) {
                                    File fileA3 = contentPreloader.a(hVar, true, false);
                                    HashMap map5 = new HashMap();
                                    HashMap map6 = new HashMap();
                                    FileInputStream fileInputStream3 = new FileInputStream(new File(fileA3, "makeup_template.xml"));
                                    try {
                                        Document document2 = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(fileInputStream3);
                                        document2.getDocumentElement().normalize();
                                        NodeList elementsByTagName2 = ((Element) ((Element) ((Element) document2.getElementsByTagName("makeup").item(0)).getElementsByTagName("eye_contact").item(0)).getElementsByTagName("patterns").item(0)).getElementsByTagName("pattern");
                                        int i10 = 0;
                                        while (i10 < elementsByTagName2.getLength()) {
                                            Element element3 = (Element) elementsByTagName2.item(i10);
                                            NodeList nodeList2 = elementsByTagName2;
                                            String str19 = str13;
                                            String attribute2 = element3.getAttribute(str19);
                                            str13 = str19;
                                            map5.put(attribute2, element3.getAttribute("thumbnail"));
                                            Element element4 = (Element) element3.getElementsByTagName("pattern_mask").item(0);
                                            String str20 = str12;
                                            int i11 = i10;
                                            Element element5 = (Element) element4.getElementsByTagName(str20).item(0);
                                            HashMap map7 = new HashMap();
                                            SkuDataForProtocol.f(element5, map7, "src");
                                            SkuDataForProtocol.f(element5, map7, "imagesrc");
                                            map6.put(attribute2, map7);
                                            i10 = i11 + 1;
                                            elementsByTagName2 = nodeList2;
                                            str12 = str20;
                                        }
                                        fileInputStream3.close();
                                        Iterator<com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d> it12 = hVar.items.iterator();
                                        while (it12.hasNext()) {
                                            List<com.perfectcorp.perfectlib.ph.template.idc.e> list3 = it12.next().info.itemContent.patterns;
                                            Set set5 = MoreCollections.f39434a;
                                            if (list3 == null) {
                                                list3 = Collections.EMPTY_LIST;
                                            }
                                            for (Iterator<com.perfectcorp.perfectlib.ph.template.idc.e> it13 = list3.iterator(); it13.hasNext(); it13 = it13) {
                                                com.perfectcorp.perfectlib.ph.template.idc.e next6 = it13.next();
                                                String str21 = next6.attr_guid;
                                                HashMap mapJ2 = SkuDataForProtocol.j(hVar, next6);
                                                Iterator<com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d> it14 = it12;
                                                HashMap map8 = map5;
                                                SkuDataForProtocol.e(fileA3, str21, next6.attr_thumbnail, (String) map5.get(str21), mapJ2);
                                                Map map9 = (Map) map6.get(str21);
                                                Objects.requireNonNull(map9);
                                                Map map10 = map9;
                                                com.perfectcorp.perfectlib.ph.template.idc.e.C0184e c0184e = next6.pattern_mask.get(0).mask.get(0);
                                                SkuDataForProtocol.e(fileA3, str21, c0184e.attr_src, (String) map10.get("src"), mapJ2);
                                                SkuDataForProtocol.e(fileA3, str21, c0184e.attr_imagesrc, (String) map10.get("imagesrc"), mapJ2);
                                                SkuDataForProtocol.d(skuDataForProtocol2, hVar, next6, mapJ2);
                                                it12 = it14;
                                                map6 = map6;
                                                map5 = map8;
                                            }
                                        }
                                        Iterator<com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d> it15 = hVar.items.iterator();
                                        while (it15.hasNext()) {
                                            List<com.perfectcorp.perfectlib.ph.template.idc.e> list4 = it15.next().info.itemContent.patterns;
                                            Set set6 = MoreCollections.f39434a;
                                            if (list4 == null) {
                                                list4 = Collections.EMPTY_LIST;
                                            }
                                            Iterator<com.perfectcorp.perfectlib.ph.template.idc.e> it16 = list4.iterator();
                                            while (it16.hasNext()) {
                                                set2.add(it16.next().attr_guid);
                                            }
                                        }
                                        FileUtils.c(fileA3);
                                    } catch (Throwable th4) {
                                        try {
                                            fileInputStream3.close();
                                            throw th4;
                                        } catch (Throwable th5) {
                                            th4.addSuppressed(th5);
                                            throw th4;
                                        }
                                    }
                                }
                            }
                            ImmutableList<String> immutableListP = FluentIterable.n(skuDataForProtocol2.f39919j).i(new zp(0)).r(new g7(16)).p();
                            Log.g(3, "ContentPreloader", "[isDownloadComponentsIntact] check component available");
                            boolean z2 = true;
                            for (String str22 : immutableListP) {
                                if (!set2.contains(str22)) {
                                    Log.d("ContentPreloader", "[isDownloadComponentsIntact] lack of component id=" + str22);
                                    z2 = false;
                                }
                            }
                            if (z2) {
                                skuDataForProtocol2.k();
                            } else {
                                String str23 = "preload sku failed, lack of download component, id=" + hVar.skuGUID;
                                Log.d("ContentPreloader", "[preloadSkuByProtocolMethod] ".concat(str23));
                                str = hVar.skuGUID;
                                contentIssueException = new ContentIssueException(str23);
                            }
                        }
                        initialCallbackWrapper.a(str, contentIssueException);
                    }
                }
                return hVar;
            case 1:
                ContentPreloader contentPreloader2 = (ContentPreloader) obj3;
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar4 = (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b) obj2;
                defpackage.a.A(new StringBuilder("[preloadLook] id="), bVar4.d, 3, "ContentPreloader");
                String strB2 = ContentPreloader.b(bVar4.f41230h);
                String str24 = DownloadFolderHelper.c(bVar4) + "/" + strB2;
                StringBuilder sb4 = new StringBuilder();
                sb4.append(contentPreloader2.f39538f);
                String str25 = bVar4.d;
                contentPreloader2.d(n00.r(str25, "/", sb4), strB2, str24);
                File file3 = new File(str24);
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.c.C0166c c0166cA = com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.c.C0166c.a(bVar4);
                c0166cA.p = file3;
                c0166cA.f41462b = "Look".equalsIgnoreCase(bVar4.f41227c);
                c0166cA.f41461a = new DownloadKey.Guid(str25);
                c0166cA.f41464e = DownloadStateMonitors.a(bVar4.f41232j, MCSDKDownloadLookEvent.Source.CAM, str25);
                c0166cA.m = contentPreloader2.f39541j;
                Single singleD = ((BaseDownloadHandle) c0166cA.b()).d(null, null);
                defpackage.p3 p3Var = new defpackage.p3(bVar4, file3, i4);
                singleD.getClass();
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(singleD, p3Var), new d0(contentPreloader2, bVar4, i5));
            case 2:
                ContentPreloader contentPreloader3 = (ContentPreloader) obj3;
                String str26 = (String) obj2;
                contentPreloader3.c(str26, IO.d(contentPreloader3.f39535b) + IO.d(str26) + "content.zip");
                return str26;
            case 3:
                return a();
            case 4:
                ((JewelryLookHandler) obj3).getClass();
                ((DownloadTaskCancelable) obj2).c();
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new c$e(JewelryLookHandlerPreferences.f40324a.getString("LOOK_LIST_MESSAGE_DIGEST", "")).c(), new d20(9));
            case 5:
                Set set7 = (Set) obj3;
                LiveSettingCtrl liveSettingCtrl = (LiveSettingCtrl) obj2;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                bz bzVar2 = ImmutableList.f42200c;
                ImmutableList.Builder builder = new ImmutableList.Builder();
                PerfectEffect[] perfectEffectArrValues = PerfectEffect.values();
                int length = perfectEffectArrValues.length;
                while (i5 < length) {
                    PerfectEffect perfectEffect2 = perfectEffectArrValues[i5];
                    if (set7.contains(perfectEffect2.beautyMode) && !ApplyEffectUtility.f39471a.contains(perfectEffect2.beautyMode)) {
                        BeautyMode beautyMode5 = perfectEffect2.beautyMode;
                        if (beautyMode5 == BeautyMode.EYE_WEAR) {
                            if (perfectEffect2 == PerfectEffect.EYEWEAR) {
                                beautyMode = BeautyMode.CUBE_EYEWEAR;
                                if (liveSettingCtrl.o(beautyMode)) {
                                    for (EffectId effectId2 : MakeupCamInternal.v(liveSettingCtrl, perfectEffect2, beautyMode)) {
                                        str3 = effectId2.f39556b;
                                        str4 = effectId2.d;
                                        str5 = effectId2.f39557c;
                                        if (EffectId.INVALID_ID.equals(str3)) {
                                            if (EffectId.INVALID_ID.equals(str5)) {
                                                if (!SkuHandler.m(str5).contains(str4)) {
                                                    Log.g(3, "MakeupCamInternal", fc.i("[getProductIds] Filter out SKU by product mask. productGuid=", str5, ", skuGuid=", str4));
                                                }
                                            }
                                        }
                                        builder.f(effectId2);
                                    }
                                } else if (perfectEffect2 == PerfectEffect.EYEWEAR_3D) {
                                    beautyMode = BeautyMode.REAL_3D_EYEWEAR;
                                    if (liveSettingCtrl.o(beautyMode)) {
                                        while (r3.hasNext()) {
                                            str3 = effectId2.f39556b;
                                            str4 = effectId2.d;
                                            str5 = effectId2.f39557c;
                                            if (EffectId.INVALID_ID.equals(str3)) {
                                                if (EffectId.INVALID_ID.equals(str5)) {
                                                    if (!SkuHandler.m(str5).contains(str4)) {
                                                        Log.g(3, "MakeupCamInternal", fc.i("[getProductIds] Filter out SKU by product mask. productGuid=", str5, ", skuGuid=", str4));
                                                    }
                                                }
                                            }
                                            builder.f(effectId2);
                                        }
                                    }
                                }
                            } else if (perfectEffect2 == PerfectEffect.EYEWEAR_3D) {
                                beautyMode = BeautyMode.REAL_3D_EYEWEAR;
                                if (liveSettingCtrl.o(beautyMode)) {
                                    while (r3.hasNext()) {
                                        str3 = effectId2.f39556b;
                                        str4 = effectId2.d;
                                        str5 = effectId2.f39557c;
                                        if (EffectId.INVALID_ID.equals(str3)) {
                                            if (EffectId.INVALID_ID.equals(str5)) {
                                                if (!SkuHandler.m(str5).contains(str4)) {
                                                    Log.g(3, "MakeupCamInternal", fc.i("[getProductIds] Filter out SKU by product mask. productGuid=", str5, ", skuGuid=", str4));
                                                }
                                            }
                                        }
                                        builder.f(effectId2);
                                    }
                                }
                            }
                        } else if (liveSettingCtrl.p(beautyMode5, perfectEffect2.itemSubType)) {
                            beautyMode = perfectEffect2.beautyMode;
                            while (r3.hasNext()) {
                                str3 = effectId2.f39556b;
                                str4 = effectId2.d;
                                str5 = effectId2.f39557c;
                                if (EffectId.INVALID_ID.equals(str3)) {
                                    if (EffectId.INVALID_ID.equals(str5)) {
                                        if (!SkuHandler.m(str5).contains(str4)) {
                                            Log.g(3, "MakeupCamInternal", fc.i("[getProductIds] Filter out SKU by product mask. productGuid=", str5, ", skuGuid=", str4));
                                        }
                                    }
                                }
                                builder.f(effectId2);
                            }
                        }
                    }
                    i5++;
                }
                return builder.i();
            case 6:
                LiveSettingCtrl liveSettingCtrl2 = (LiveSettingCtrl) obj3;
                LiveMakeupCtrlInterface liveMakeupCtrlInterface = (LiveMakeupCtrlInterface) obj2;
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                EnumMap enumMap = new EnumMap(PerfectEffect.class);
                PerfectEffect[] perfectEffectArrValues2 = PerfectEffect.values();
                int length2 = perfectEffectArrValues2.length;
                int i12 = 0;
                boolean z3 = false;
                while (i12 < length2) {
                    PerfectEffect perfectEffect3 = perfectEffectArrValues2[i12];
                    if (liveSettingCtrl2.o(perfectEffect3.beautyMode) && ((beautyMode2 = perfectEffect3.beautyMode) != (beautyMode3 = BeautyMode.EYE_LASHES) || !z3)) {
                        if (beautyMode2 == beautyMode3) {
                            List listV = MakeupCamInternal.v(liveSettingCtrl2, perfectEffect3, beautyMode2);
                            if (!listV.isEmpty()) {
                                effectId = (EffectId) listV.get(0);
                            }
                        } else {
                            effectId = null;
                        }
                        int i13 = MakeupCamInternal.AnonymousClass3.f39706b[perfectEffect3.itemSubType.ordinal()];
                        if (i13 == i6) {
                            FaceContourPayload faceContourPayloadA = FaceContourSettingHelper.a(liveSettingCtrl2);
                            if (faceContourPayloadA == null) {
                                setting = null;
                            } else {
                                setting = faceContourPayloadA.f40632a;
                            }
                            listB = FaceContourSettingHelper.b(setting);
                            if (!MoreCollections.a(listB)) {
                                size = listB.size();
                                iArr = new int[size];
                                i2 = 0;
                                while (i2 < size) {
                                    iArr[i2] = ((YMKPrimitiveData.MakeupColor) listB.get(i2)).f40791e;
                                    beautyMode4 = perfectEffect3.beautyMode;
                                    if (beautyMode4 == BeautyMode.LIP_STICK) {
                                        obj = liveSettingCtrl2.l.get(beautyMode4);
                                        if (!(obj instanceof LipstickPayload)) {
                                        }
                                    }
                                    i2++;
                                }
                                if (effectId != null) {
                                    perfectEffect = effectId.f39555a;
                                } else {
                                    perfectEffect = perfectEffect3;
                                }
                                enumMap.put(perfectEffect, iArr);
                                if (perfectEffect3.beautyMode == BeautyMode.EYE_LASHES) {
                                    Objects.requireNonNull(effectId);
                                    enumMap.put(effectId.f39555a, iArr);
                                    z3 = true;
                                } else {
                                    enumMap.put(perfectEffect3, iArr);
                                }
                            }
                        } else if (i13 == 2) {
                            FaceContourPayload faceContourPayloadA2 = FaceContourSettingHelper.a(liveSettingCtrl2);
                            if (faceContourPayloadA2 == null) {
                                setting = null;
                            } else {
                                setting = faceContourPayloadA2.f40633b;
                            }
                            listB = FaceContourSettingHelper.b(setting);
                            if (!MoreCollections.a(listB)) {
                                size = listB.size();
                                iArr = new int[size];
                                i2 = 0;
                                while (i2 < size) {
                                    iArr[i2] = ((YMKPrimitiveData.MakeupColor) listB.get(i2)).f40791e;
                                    beautyMode4 = perfectEffect3.beautyMode;
                                    if (beautyMode4 == BeautyMode.LIP_STICK) {
                                        obj = liveSettingCtrl2.l.get(beautyMode4);
                                        if (!(obj instanceof LipstickPayload)) {
                                        }
                                    }
                                    i2++;
                                }
                                if (effectId != null) {
                                    perfectEffect = effectId.f39555a;
                                } else {
                                    perfectEffect = perfectEffect3;
                                }
                                enumMap.put(perfectEffect, iArr);
                                if (perfectEffect3.beautyMode == BeautyMode.EYE_LASHES) {
                                    Objects.requireNonNull(effectId);
                                    enumMap.put(effectId.f39555a, iArr);
                                    z3 = true;
                                } else {
                                    enumMap.put(perfectEffect3, iArr);
                                }
                            }
                        } else if (i13 != i7) {
                            listB = liveSettingCtrl2.e(perfectEffect3.beautyMode);
                            if (!MoreCollections.a(listB)) {
                                size = listB.size();
                                iArr = new int[size];
                                i2 = 0;
                                while (i2 < size) {
                                    iArr[i2] = ((YMKPrimitiveData.MakeupColor) listB.get(i2)).f40791e;
                                    beautyMode4 = perfectEffect3.beautyMode;
                                    if (beautyMode4 == BeautyMode.LIP_STICK) {
                                        obj = liveSettingCtrl2.l.get(beautyMode4);
                                        if (!(obj instanceof LipstickPayload) && (list = ((LipstickPayload) obj).f40704i) != null && i2 < list.size()) {
                                            iArr[i2] = (i2 < 0 || i2 >= list.size()) ? 0 : ((LipstickLayer) list.get(i2)).f40695b;
                                        }
                                    }
                                    i2++;
                                }
                                if (effectId != null) {
                                    perfectEffect = effectId.f39555a;
                                } else {
                                    perfectEffect = perfectEffect3;
                                }
                                enumMap.put(perfectEffect, iArr);
                                if (perfectEffect3.beautyMode == BeautyMode.EYE_LASHES) {
                                    Objects.requireNonNull(effectId);
                                    enumMap.put(effectId.f39555a, iArr);
                                    z3 = true;
                                } else {
                                    enumMap.put(perfectEffect3, iArr);
                                }
                            }
                        }
                    }
                    i12++;
                    i6 = 1;
                    i7 = 3;
                }
                enumMap.put(PerfectEffect.SKIN_SMOOTH, new int[]{Math.max(liveMakeupCtrlInterface.k(), 0)});
                Integer num = (Integer) liveSettingCtrl2.l.get(BeautyMode.TEETH_WHITENER);
                if (num != null) {
                    enumMap.put(PerfectEffect.TEETH_WHITENING, new int[]{num.intValue()});
                }
                return enumMap;
            case 7:
                ((NailLookHandler) obj3).getClass();
                ((DownloadTaskCancelable) obj2).c();
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new c$h(NailLookHandlerPreferences.f40328a.getString("LOOK_LIST_MESSAGE_DIGEST", "")).c(), new lc0(15));
            case 8:
                PhotoMakeup photoMakeup = (PhotoMakeup) obj3;
                FrameProcessingThread.Frame frame = (FrameProcessingThread.Frame) obj2;
                Threads.b();
                if (!photoMakeup.f39758a) {
                    return Collections.EMPTY_LIST;
                }
                PhotoMakeup.LiveMakeupCtrl liveMakeupCtrl = photoMakeup.d;
                com.perfectcorp.perfectlib.makeupcam.camera.l lVar = liveMakeupCtrl.g;
                boolean[] zArr = liveMakeupCtrl.f39772i;
                Rect[] rectArr = liveMakeupCtrl.f39774k;
                BaseVenus baseVenus = liveMakeupCtrl.f39767b;
                ApplyEffectCtrl.L.lock();
                try {
                    Preconditions.h("Analyze face failed", UIMakeupJNI.CUIMakeupLive_AnalyzeFrameYUV420Biplanar(baseVenus.f40398a, baseVenus, frame.d, frame.f40082b, frame.f40083c, 0, false));
                    if (!UIMakeupJNI.CUIMakeupLive_GetFaceRectangle(baseVenus.f40398a, baseVenus, rectArr, zArr)) {
                        throw new DetectFailedException("No face detected.");
                    }
                    if (!lVar.b(frame.f40082b, frame.f40083c)) {
                        throw new DetectFailedException("No face detected.");
                    }
                    CLShowAlignFilter.ShowAlignData[] showAlignDataArr = lVar.G;
                    List[] listArr = lVar.H;
                    ImmutableList.Builder builder2 = new ImmutableList.Builder();
                    while (i5 < zArr.length) {
                        if (zArr[i5]) {
                            Rect rect = new Rect(rectArr[i5]);
                            CLShowAlignFilter.ShowAlignData showAlignData = showAlignDataArr[i5];
                            List list5 = listArr[i5];
                            builder2.f(new FaceData(rect, (showAlignData == null || !showAlignData.m_is_data_valid || list5 == null) ? FaceAlignmentData.f39583a : new FaceAlignmentData.Impl(showAlignData, list5), i5));
                        }
                        i5++;
                    }
                    ImmutableList immutableListI = builder2.i();
                    ApplyEffectCtrl.L.unlock();
                    return immutableListI;
                } catch (Throwable th6) {
                    ApplyEffectCtrl.L.unlock();
                    throw th6;
                }
            case 9:
                return ((PhotoMakeup.PhotoMakeupFrameProcessingThread) obj3).a((ApplyEffectCtrl.Configuration) obj2);
            case 10:
                PhotoMakeupInternal photoMakeupInternal = (PhotoMakeupInternal) obj3;
                return Singles.a(photoMakeupInternal.f39788i.applyConfiguration(MakeupCamInternal.l(photoMakeupInternal.f39787h, photoMakeupInternal.f39789j, (List) obj2)), CallingThread.ANY);
            case 11:
                return b();
            case 12:
                ((DownloadTaskCancelable) obj3).c();
                Log.g(3, "SkinCare3RecommendationHandler", "[downloadProducts] start");
                return SkinCare3RecommendationHandler.a(1, (List) obj2);
            case 13:
                PfCommons.c(new px0((ProgressCallback) obj3, 1));
                return ProductMappingUtility.a((List) obj2);
            case 14:
                return c();
            default:
                TagHandler.Type type = (TagHandler.Type) obj2;
                PfCommons.c(new px0((ProgressCallback) obj3, 9));
                if (type != TagHandler.Type.f39989a) {
                    return com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
                }
                Log.g(3, "ProductMaskHelper", "[syncServer] start");
                return ProductMaskHelper.b(com.perfectcorp.perfectlib.ph.kernelctrl.sku.h.f41570b);
        }
    }
}
