package com.perfectcorp.perfectlib;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.text.TextUtils;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.PfCommonsJni;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.ImageUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.core.VenusModel$Assets;
import com.perfectcorp.perfectlib.core.VenusModel$Files;
import com.perfectcorp.perfectlib.exceptions.DetectFailedException;
import com.perfectcorp.perfectlib.exceptions.FaceRectOutOfBoundaryException;
import com.perfectcorp.perfectlib.exceptions.ModuleLoadFailedException;
import com.perfectcorp.perfectlib.exceptions.MultiFaceNotSupportedException;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.jniproxy.CUITracking;
import com.perfectcorp.perfectlib.jniproxy.UIMakeupLiveFaceAlignData;
import com.perfectcorp.perfectlib.jniproxy.UITrackingJNI;
import com.perfectcorp.perfectlib.jniproxy.faceshape.FacePredictResult;
import com.perfectcorp.perfectlib.makeupcam.utility.CameraUtils$PictureTaken;
import com.perfectcorp.thirdparty.com.getkeepsafe.relinker.ReLinker;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class e0 implements Action {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f40120a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f40121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f40122c;

    public /* synthetic */ e0(Object obj, Object obj2, int i2) {
        this.f40120a = i2;
        this.f40121b = obj;
        this.f40122c = obj2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
    public final void run() throws Throwable {
        int i2;
        String str;
        List listI;
        String str2;
        String strE;
        switch (this.f40120a) {
            case 0:
                FaceAttributeAnalyzer faceAttributeAnalyzer = (FaceAttributeAnalyzer) this.f40121b;
                Bitmap bitmap = (Bitmap) this.f40122c;
                int width = bitmap.getWidth() & (-4);
                int height = bitmap.getHeight() & (-2);
                Bitmap bitmapCopy = (bitmap.getWidth() == width && bitmap.getHeight() == height) ? bitmap.copy(Bitmap.Config.ARGB_8888, true) : Bitmap.createScaledBitmap(bitmap, width, height, true);
                Context contextB = PfCommons.b();
                ReLinker.a(contextB, "PFMNN");
                ReLinker.a(contextB, "venus_tracking");
                CUITracking cUITracking = faceAttributeAnalyzer.f39601h;
                if (cUITracking != null) {
                    cUITracking.a();
                    faceAttributeAnalyzer.f39601h = null;
                }
                CUITracking cUITracking2 = new CUITracking(IO.d(PfCommonsJni.a()).concat("libvenus_tracking.so"));
                faceAttributeAnalyzer.f39601h = cUITracking2;
                boolean z = faceAttributeAnalyzer.d;
                Context contextB2 = PfCommons.b();
                PerfectLib.ModelPath modelPath = PerfectLib.g.f39514a;
                if (z) {
                    try {
                        String[] strArr = new String[4];
                        Preconditions.i(UITrackingJNI.CUITracking_GetInternalModelVersionLV(cUITracking2.f40402a, cUITracking2, strArr));
                        Log.g(3, "FaceAttributeAnalyzer", "internal LV model versions=" + Arrays.toString(strArr));
                        boolean z2 = modelPath.f39755a;
                        String str3 = modelPath.f39756b;
                        if (z2) {
                            try {
                                strE = VenusModel$Assets.e(contextB2, str3, new VenusModel$Assets(strArr[0]));
                            } catch (Throwable th) {
                                th = th;
                                str = "FaceAttributeAnalyzer";
                            }
                        } else {
                            strE = VenusModel$Files.b(str3, new VenusModel$Files(strArr[0]));
                        }
                        boolean z3 = modelPath.f39755a;
                        String str4 = modelPath.f39756b;
                        String strE2 = z3 ? VenusModel$Assets.e(contextB2, str4, new VenusModel$Assets(strArr[1])) : VenusModel$Files.b(str4, new VenusModel$Files(strArr[1]));
                        boolean z4 = modelPath.f39755a;
                        String str5 = modelPath.f39756b;
                        String strE3 = z4 ? VenusModel$Assets.e(contextB2, str5, new VenusModel$Assets(strArr[2])) : VenusModel$Files.b(str5, new VenusModel$Files(strArr[2]));
                        boolean z5 = modelPath.f39755a;
                        str2 = modelPath.f39756b;
                        String strE4 = z5 ? VenusModel$Assets.e(contextB2, str2, new VenusModel$Assets(strArr[r9])) : VenusModel$Files.b(str2, new VenusModel$Files(strArr[r9]));
                        try {
                            if (TextUtils.isEmpty(strE) || TextUtils.isEmpty(strE2) || TextUtils.isEmpty(strE4)) {
                                Log.d("FaceAttributeAnalyzer", "No face tracking model(s) found.");
                                Log.d("FaceAttributeAnalyzer", "Please take the models from CSM : " + strE + ", " + strE2 + ", " + strE3);
                                throw new ModuleLoadFailedException("Makeup module load failed. Please take the models from CSM.");
                            }
                            if (TextUtils.isEmpty(strE3)) {
                                Log.g(5, "FaceAttributeAnalyzer", "No second step eye model found.");
                            }
                            long jNanoTime = System.nanoTime();
                            try {
                                Preconditions.i(UITrackingJNI.CUITracking_SetInternalModelPathsLV(cUITracking2.f40402a, cUITracking2, strE, strE2, strE3, strE4));
                                Log.g(3, "FaceAttributeAnalyzer", "SetInternalLVModelPaths in " + ((System.nanoTime() - jNanoTime) / 1000000) + " ms");
                                Preconditions.i(UITrackingJNI.CUITracking_IsModelLoaded(cUITracking2.f40402a, cUITracking2));
                                str = "FaceAttributeAnalyzer";
                                i2 = 0;
                            } catch (Throwable th2) {
                                th = th2;
                                str2 = "FaceAttributeAnalyzer";
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                        break;
                    } catch (Throwable th4) {
                        th = th4;
                        str2 = "FaceAttributeAnalyzer";
                    }
                    str = str2;
                    Log.e(str, "Module load failed", th);
                    throw new ModuleLoadFailedException(th);
                }
                i2 = 0;
                str = "FaceAttributeAnalyzer";
                try {
                    String[] strArr2 = new String[2];
                    Preconditions.i(UITrackingJNI.CUITracking_GetInternalModelVersion(cUITracking2.f40402a, cUITracking2, strArr2));
                    Log.g(3, str, "internal model versions=" + Arrays.toString(strArr2));
                    boolean z6 = modelPath.f39755a;
                    String str6 = modelPath.f39756b;
                    String strD = z6 ? VenusModel$Assets.d(contextB2, str6, new VenusModel$Assets("YMK_Davinci_", ".mnn", strArr2[0])) : VenusModel$Files.a(str6, new VenusModel$Files(strArr2[0]));
                    boolean z7 = modelPath.f39755a;
                    String str7 = modelPath.f39756b;
                    String strD2 = z7 ? VenusModel$Assets.d(contextB2, str7, new VenusModel$Assets("YMK_Venus_", ".mnn", strArr2[1])) : VenusModel$Files.a(str7, new VenusModel$Files(strArr2[1]));
                    long jNanoTime2 = System.nanoTime();
                    Preconditions.i(UITrackingJNI.CUITracking_SetInternalModelPaths(cUITracking2.f40402a, cUITracking2, strD, strD2));
                    Log.g(3, str, "SetInternalModelPaths in " + ((System.nanoTime() - jNanoTime2) / 1000000) + " ms");
                    Preconditions.i(UITrackingJNI.CUITracking_IsModelLoaded(cUITracking2.f40402a, cUITracking2));
                } catch (Throwable th5) {
                    th = th5;
                }
                Preconditions.i(UITrackingJNI.CUITracking_SetMaxDetectedFaceNumber(cUITracking2.f40402a, cUITracking2, UITrackingJNI.CUITracking_GetMaxDetectedFaceCount()));
                CUITracking cUITracking3 = faceAttributeAnalyzer.f39601h;
                byte[] bArrA = CameraUtils$PictureTaken.a(bitmapCopy);
                int iCUITracking_GetMaxDetectedFaceCount = UITrackingJNI.CUITracking_GetMaxDetectedFaceCount();
                boolean[] zArr = new boolean[iCUITracking_GetMaxDetectedFaceCount];
                boolean[] zArr2 = new boolean[iCUITracking_GetMaxDetectedFaceCount];
                Rect[] rectArr = new Rect[iCUITracking_GetMaxDetectedFaceCount];
                UIMakeupLiveFaceAlignData[] uIMakeupLiveFaceAlignDataArr = new UIMakeupLiveFaceAlignData[iCUITracking_GetMaxDetectedFaceCount];
                for (int i3 = i2; i3 < iCUITracking_GetMaxDetectedFaceCount; i3++) {
                    rectArr[i3] = new Rect();
                    uIMakeupLiveFaceAlignDataArr[i3] = new UIMakeupLiveFaceAlignData(bitmapCopy.getWidth(), bitmapCopy.getHeight());
                }
                long jNanoTime3 = System.nanoTime();
                while (true) {
                    if (System.nanoTime() - jNanoTime3 < 1500000000) {
                        UITrackingJNI.CUITracking_AnalyzeFrameYUV420Biplanar(cUITracking3.f40402a, cUITracking3, bArrA, bitmapCopy.getWidth(), bitmapCopy.getHeight(), 0, false);
                        if (UITrackingJNI.CUITracking_GetFaceRectangle(cUITracking3.f40402a, cUITracking3, rectArr, zArr)) {
                            long[] jArr = new long[iCUITracking_GetMaxDetectedFaceCount];
                            for (int i4 = i2; i4 < iCUITracking_GetMaxDetectedFaceCount; i4++) {
                                UIMakeupLiveFaceAlignData uIMakeupLiveFaceAlignData = uIMakeupLiveFaceAlignDataArr[i4];
                                jArr[i4] = uIMakeupLiveFaceAlignData == null ? 0L : uIMakeupLiveFaceAlignData.f40411a;
                            }
                            UITrackingJNI.CUITracking_GetMakeupMetadata(cUITracking3.f40402a, cUITracking3, jArr, zArr2);
                            bz bzVar = ImmutableList.f42200c;
                            ImmutableList.Builder builder = new ImmutableList.Builder();
                            for (int i5 = i2; i5 < iCUITracking_GetMaxDetectedFaceCount; i5++) {
                                if (zArr[i5] && zArr2[i5]) {
                                    builder.f(uIMakeupLiveFaceAlignDataArr[i5]);
                                }
                            }
                            listI = builder.i();
                        } else {
                            try {
                                Thread.sleep(66L);
                            } catch (Exception unused) {
                            }
                        }
                    } else {
                        listI = Collections.EMPTY_LIST;
                    }
                }
                if (listI.isEmpty()) {
                    throw new DetectFailedException("No face detected.");
                }
                if (listI.size() > 1) {
                    throw new MultiFaceNotSupportedException();
                }
                UIMakeupLiveFaceAlignData uIMakeupLiveFaceAlignData2 = (UIMakeupLiveFaceAlignData) listI.get(i2);
                if (UITrackingJNI.UIMakeupLiveFaceAlignData_isFaceRectOutOfBoundary(uIMakeupLiveFaceAlignData2.f40411a, uIMakeupLiveFaceAlignData2)) {
                    throw new FaceRectOutOfBoundaryException();
                }
                faceAttributeAnalyzer.g = (UIMakeupLiveFaceAlignData) listI.get(i2);
                ImageUtils.b(faceAttributeAnalyzer.f39600f);
                faceAttributeAnalyzer.f39600f = bitmapCopy;
                FaceAttributeAnalyzer.PredictionCache predictionCache = new FaceAttributeAnalyzer.PredictionCache();
                predictionCache.f39605a = new FacePredictResult();
                predictionCache.f39606b = new FaceAnalysisData.Extra();
                predictionCache.f39607c = new FaceAttributeAnalyzer.Condition(Collections.EMPTY_SET).a();
                faceAttributeAnalyzer.f39602i = predictionCache;
                return;
            case 1:
                JewelryLookHandler jewelryLookHandler = (JewelryLookHandler) this.f40121b;
                DownloadTaskCancelable downloadTaskCancelable = (DownloadTaskCancelable) this.f40122c;
                AtomicReference atomicReference = jewelryLookHandler.d;
                while (!atomicReference.compareAndSet(downloadTaskCancelable, null) && atomicReference.get() == downloadTaskCancelable) {
                }
                return;
            default:
                NailLookHandler nailLookHandler = (NailLookHandler) this.f40121b;
                DownloadTaskCancelable downloadTaskCancelable2 = (DownloadTaskCancelable) this.f40122c;
                AtomicReference atomicReference2 = nailLookHandler.d;
                while (!atomicReference2.compareAndSet(downloadTaskCancelable2, null) && atomicReference2.get() == downloadTaskCancelable2) {
                }
                return;
        }
    }
}
