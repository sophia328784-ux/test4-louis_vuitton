package defpackage;

import android.text.TextUtils;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.logger.j;
import com.perfectcorp.common.utility.BasicPreferences;
import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.Functionality;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.PerfectLib;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.core.ApplyEffectParams;
import com.perfectcorp.perfectlib.exceptions.ModuleLoadFailedException;
import com.perfectcorp.perfectlib.internal.ModuleConfig;
import com.perfectcorp.perfectlib.internal.a;
import com.perfectcorp.perfectlib.internal.b;
import com.perfectcorp.perfectlib.ymk.kernelctrl.preference.QuickLaunchPreferenceHelper;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class n7 implements Action {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f76456a;

    public /* synthetic */ n7(int i2) {
        this.f76456a = i2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
    public final void run() throws IllegalAccessException, IOException, InvocationTargetException {
        String strE;
        switch (this.f76456a) {
            case 0:
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                Log.g(3, "ApplyEffectUtility", "[downloadSkuSets] end");
                return;
            case 1:
                ImmutableSet immutableSet2 = ApplyEffectUtility.f39471a;
                Log.g(3, "ApplyEffectUtility", "[transformToRelatedSkuGuidObservable] end");
                return;
            case 2:
                ImmutableSet immutableSet3 = ApplyEffectUtility.f39471a;
                Log.g(3, "ApplyEffectUtility", "[handleSkuSetCacheFirst] end");
                return;
            case 3:
                ImmutableSet immutableSet4 = ApplyEffectUtility.f39471a;
                Log.g(3, "ApplyEffectUtility", "[downloadSkuSets] queryForCacheFirstThenUpdate disposed");
                return;
            case 4:
                ImmutableSet immutableSet5 = ApplyEffectUtility.f39471a;
                Log.g(3, "ApplyEffectUtility", "[downloadSkuSets] queryForCacheFirstThenUpdate done");
                return;
            case 5:
                Log.g(3, "ContentPreloader", "[preloadSku] complete");
                return;
            case 6:
                Log.g(3, "ContentPreloader", "[preloadSkuSet] complete");
                return;
            case 7:
                Log.g(3, "ContentPreloader", "[preloadLook] complete");
                return;
            case 8:
                Log.g(3, "ContentPreloader", "[preloadIdSystemContent] done");
                return;
            case 9:
                Log.g(3, "ContentPreloader", "[preloadFunStickerContent] done");
                return;
            case 10:
                if (!PerfectLib.d.contains(Functionality.FACE_ATTRIBUTE)) {
                    mt.i("Doesn't have a valid license.");
                    return;
                } else {
                    if (!ModuleConfig.p) {
                        throw new ModuleLoadFailedException("Module 'PerfectLibFaceTracking' is missing.");
                    }
                    return;
                }
            case 11:
                Log.g(3, "JewelryLookHandler", "[clearAll] ended.");
                return;
            case 12:
                String strB = QuickLaunchPreferenceHelper.b();
                String strA = QuickLaunchPreferenceHelper.a();
                BasicPreferences basicPreferences = QuickLaunchPreferenceHelper.f42021a;
                basicPreferences.o("SETTING_LANGUAGE_LOCALE_CODE_FOR_JEWELRY_LOOK", strB);
                basicPreferences.o("SETTING_COUNTRY_CODE_FOR_JEWELRY_LOOK", strA);
                return;
            case 13:
                Log.g(3, "LookHandler", "[clearAll] ended.");
                return;
            case 14:
                Log.g(3, "LookHandler", "[deleteLooks] success");
                return;
            case 15:
                String strB2 = QuickLaunchPreferenceHelper.b();
                String strA2 = QuickLaunchPreferenceHelper.a();
                BasicPreferences basicPreferences2 = QuickLaunchPreferenceHelper.f42021a;
                basicPreferences2.o("SETTING_LANGUAGE_LOCALE_CODE_FOR_LOOK", strB2);
                basicPreferences2.o("SETTING_COUNTRY_CODE_FOR_LOOK", strA2);
                return;
            case 16:
                Log.g(3, "NailLookHandler", "[clearAll] ended.");
                return;
            case 17:
                String strB3 = QuickLaunchPreferenceHelper.b();
                String strA3 = QuickLaunchPreferenceHelper.a();
                BasicPreferences basicPreferences3 = QuickLaunchPreferenceHelper.f42021a;
                basicPreferences3.o("SETTING_LANGUAGE_LOCALE_CODE_FOR_NAIL_LOOK", strB3);
                basicPreferences3.o("SETTING_COUNTRY_CODE_FOR_NAIL_LOOK", strA3);
                return;
            case 18:
                ModuleConfig.b();
                return;
            case 19:
                ApplyEffectParams applyEffectParams = PerfectLib.f39738a;
                SkuHandler.class.getDeclaredMethod("release", null).invoke(null, null);
                return;
            case 20:
                ApplyEffectParams applyEffectParams2 = PerfectLib.f39738a;
                LookHandler.class.getDeclaredMethod("release", null).invoke(null, null);
                return;
            case 21:
                ApplyEffectParams applyEffectParams3 = PerfectLib.f39738a;
                Class.forName("com.perfectcorp.perfectlib.TutorialHandler").getDeclaredMethod("release", null).invoke(null, null);
                return;
            case 22:
                ApplyEffectParams applyEffectParams4 = PerfectLib.f39738a;
                a aVar = a.f40371a;
                try {
                    File file = new File(PfCommons.b().getExternalFilesDir(null), "pf.cfg");
                    if (file.exists()) {
                        try {
                            strE = FileUtils.e(new FileInputStream(file.getPath()));
                        } catch (Throwable th) {
                            Log.e("FileUtils", "[readText] failed.", th);
                            strE = "";
                        }
                        if (!TextUtils.isEmpty(strE)) {
                            a aVar2 = (a) GsonHelper.f39260a.i(strE, a.class);
                            if (aVar2 == null) {
                                throw new IllegalArgumentException("new config is null");
                            }
                            a.f40371a = aVar2;
                        }
                        break;
                    }
                } catch (Throwable unused) {
                }
                a aVar3 = a.f40371a;
                if (aVar3.logcat) {
                    j.c(true);
                    Log.f39427a = 2;
                }
                if (aVar3.file) {
                    j.a();
                    j.b(PfCommons.b().getExternalFilesDir(null));
                    com.perfectcorp.common.logger.a aVar4 = (com.perfectcorp.common.logger.a) j.f39297a.get();
                    if (aVar4 != null) {
                        aVar4.f39271b = 2;
                    }
                }
                b.a();
                return;
            case 23:
                if (!PerfectLib.d.contains(Functionality.SHADE_FINDER)) {
                    mt.i("Doesn't have a valid license.");
                    return;
                } else {
                    if (!ModuleConfig.p) {
                        throw new ModuleLoadFailedException("Module 'PerfectLibFaceTracking' is missing.");
                    }
                    return;
                }
            case 24:
                Log.g(3, "ShadeFinderRecommendationHandler", "[clearAll] success");
                return;
            case 25:
                Log.g(3, "SkinCare3RecommendationHandler", "[clearAll] success");
                return;
            case 26:
                Log.g(3, "SkuCacheStrategyHelper", "[queryForCacheFirstThenUpdate] end");
                return;
            case 27:
                Log.g(3, "SkuHandler", "[downloadProductsInternal] end");
                return;
            case 28:
                Log.g(3, "SkuHandler", "[syncServerInternal] end");
                return;
            default:
                String strB4 = QuickLaunchPreferenceHelper.b();
                String strA4 = QuickLaunchPreferenceHelper.a();
                BasicPreferences basicPreferences4 = QuickLaunchPreferenceHelper.f42021a;
                basicPreferences4.o("SETTING_LANGUAGE_LOCALE_CODE_FOR_SKU", strB4);
                basicPreferences4.o("SETTING_COUNTRY_CODE_FOR_SKU", strA4);
                return;
        }
    }
}
