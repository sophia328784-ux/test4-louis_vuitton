package com.perfectcorp.perfectlib;

import android.content.SharedPreferences;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.preferences.JewelryLookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.LookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.NailLookHandlerPreferences;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class g1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f40163c;
    public final /* synthetic */ Object d;

    public /* synthetic */ g1(Object obj, Object obj2, int i2) {
        this.f40162b = i2;
        this.f40163c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f40162b;
        Object obj = this.d;
        Object obj2 = this.f40163c;
        switch (i2) {
            case 0:
                LookHandler lookHandler = (LookHandler) obj2;
                List<String> list = (List) obj;
                SharedPreferences.Editor editorEdit = LookHandlerPreferences.f40327b.edit();
                for (String str : list) {
                    CacheCleaner.d(str, true);
                    lookHandler.f39666c.remove(str);
                    editorEdit.remove(str);
                }
                editorEdit.commit();
                NailLookHandler nailLookHandler = lookHandler.f39667e;
                nailLookHandler.getClass();
                SharedPreferences.Editor editorEdit2 = NailLookHandlerPreferences.f40329b.edit();
                for (String str2 : list) {
                    CacheCleaner.d(str2, true);
                    nailLookHandler.f39718c.remove(str2);
                    editorEdit2.remove(str2);
                }
                editorEdit2.commit();
                JewelryLookHandler jewelryLookHandler = lookHandler.f39668f;
                jewelryLookHandler.getClass();
                SharedPreferences.Editor editorEdit3 = JewelryLookHandlerPreferences.f40325b.edit();
                for (String str3 : list) {
                    CacheCleaner.d(str3, true);
                    jewelryLookHandler.f39644c.remove(str3);
                    editorEdit3.remove(str3);
                }
                editorEdit3.commit();
                break;
            case 1:
                Throwable th = (Throwable) obj2;
                int i3 = PhotoMakeupInternal.n;
                Log.e("PhotoMakeupInternal", "[getIntensities] failed", th);
                ((VtoApplier.IntensitiesCallback) obj).onFailure(th);
                break;
            case 2:
                Throwable th2 = (Throwable) obj2;
                int i4 = PhotoMakeupInternal.n;
                Log.e("PhotoMakeupInternal", "[getProductIds] failed", th2);
                ((VtoApplier.ProductIdCallback) obj).onFailure(th2);
                break;
            case 3:
                Throwable th3 = (Throwable) obj2;
                int i5 = PhotoMakeupInternal.n;
                Log.e("PhotoMakeupInternal", "[getEffectIds] failed", th3);
                ((VtoApplier.EffectIdCallback) obj).onFailure(th3);
                break;
            case 4:
                Throwable th4 = (Throwable) obj2;
                int i6 = PhotoMakeupInternal.n;
                Log.e("PhotoMakeupInternal", "[getReshapeIntensities] failed", th4);
                ((VtoApplier.ReshapeIntensitiesCallback) obj).onFailure(th4);
                break;
            case 5:
                VtoDetail.PatternMajor patternMajor = (VtoDetail.PatternMajor) obj2;
                Log.g(3, "VtoDetailPatternMajor", "[getPatterns] singleton list");
                ((VtoObject.Callback) obj).onSuccess(Collections.singletonList(new VtoPattern.PatternMajor(patternMajor.f40004a, patternMajor.f40005b)));
                break;
            default:
                VtoPalette.PatternMajor patternMajor2 = (VtoPalette.PatternMajor) obj2;
                Log.g(3, "VtoPalette$PatternMajor", "[getPatterns] singleton list");
                ((VtoObject.Callback) obj).onSuccess(Collections.singletonList(new VtoPattern.PatternMajor(patternMajor2.d, patternMajor2.f40011f)));
                break;
        }
    }
}
