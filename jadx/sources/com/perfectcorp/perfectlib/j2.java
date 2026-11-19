package com.perfectcorp.perfectlib;

import android.text.TextUtils;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.perfectlib.exceptions.LookNotFoundException;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import defpackage.md;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class j2 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40382b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f40383c;

    public /* synthetic */ j2(String str, int i2) {
        this.f40382b = i2;
        this.f40383c = str;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x010a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:45:0x010b  */
    /* JADX WARN: Code duplicated, block: B:86:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:88:0x01f8  */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f40382b;
        com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar = null;
        String str = this.f40383c;
        switch (i2) {
            case 0:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a aVarA = com.perfectcorp.perfectlib.ph.utility.networkcache.a.C0186a.f41754b.a();
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVarA = com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.a(YMKDatabase.b(), str);
                if (bVarA != null) {
                    return bVarA;
                }
                Iterator it = (aVarA != null ? FluentIterable.n(aVarA.b()).r(new c2(8)).p() : com.perfectcorp.perfectlib.ph.database.ymk.look.e.b(YMKDatabase.b(), com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.MAKEUP.d)).iterator();
                while (it.hasNext()) {
                    com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVarA2 = com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.a(YMKDatabase.b(), (String) it.next());
                    if (bVarA2 != null && TextUtils.equals(bVarA2.q, str)) {
                        bVar = bVarA2;
                        if (bVar != null) {
                            return bVar;
                        }
                        throw new LookNotFoundException("Can't find metadata for lookGuid=".concat(str));
                    }
                }
                if (bVar != null) {
                    return bVar;
                }
                throw new LookNotFoundException("Can't find metadata for lookGuid=".concat(str));
            case 1:
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                Optional optionalF = ApplyEffectUtility.F(str);
                if (optionalF.d()) {
                    return (YMKPrimitiveData.Look) optionalF.c();
                }
                throw new LookNotFoundException("Can't find look=".concat(str));
            case 2:
                ThreadPoolExecutor threadPoolExecutor3 = MakeupCamInternal.n;
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVarA3 = com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.a(YMKDatabase.b(), str);
                if (bVarA3 != null) {
                    return bVarA3;
                }
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a aVarA2 = com.perfectcorp.perfectlib.ph.utility.networkcache.a.C0186a.f41754b.a();
                Iterator it2 = (aVarA2 != null ? FluentIterable.n(aVarA2.b()).r(new c2(6)).p() : com.perfectcorp.perfectlib.ph.database.ymk.look.e.b(YMKDatabase.b(), com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.MAKEUP.d)).iterator();
                while (it2.hasNext()) {
                    com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVarA4 = com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.a(YMKDatabase.b(), (String) it2.next());
                    if (bVarA4 != null && TextUtils.equals(bVarA4.q, str)) {
                        return bVarA4;
                    }
                }
                throw new LookNotFoundException("No matching metadata for lookGuid=".concat(str));
            case 3:
                int i3 = PhotoMakeupInternal.n;
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a aVarA3 = com.perfectcorp.perfectlib.ph.utility.networkcache.a.C0186a.f41754b.a();
                Iterator it3 = (aVarA3 != null ? FluentIterable.n(aVarA3.b()).r(new c2(9)).p() : com.perfectcorp.perfectlib.ph.database.ymk.look.e.b(YMKDatabase.b(), com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.MAKEUP.d)).iterator();
                while (it3.hasNext()) {
                    com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVarA5 = com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.a(YMKDatabase.b(), (String) it3.next());
                    if (bVarA5 != null && TextUtils.equals(bVarA5.q, str)) {
                        bVar = bVarA5;
                        if (bVar != null) {
                            return bVar;
                        }
                        throw new LookNotFoundException("Can't find metadata for lookGuid=".concat(str));
                    }
                }
                if (bVar != null) {
                    return bVar;
                }
                throw new LookNotFoundException("Can't find metadata for lookGuid=".concat(str));
            case 4:
                int i4 = PhotoMakeupInternal.n;
                Optional optionalF2 = ApplyEffectUtility.F(str);
                if (optionalF2.d()) {
                    return (YMKPrimitiveData.Look) optionalF2.c();
                }
                throw new LookNotFoundException("Can't find look=".concat(str));
            case 5:
                int i5 = PhotoMakeupInternal.n;
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a aVarA4 = com.perfectcorp.perfectlib.ph.utility.networkcache.a.C0186a.f41754b.a();
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVarA6 = com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.a(YMKDatabase.b(), str);
                if (bVarA6 == null) {
                    Iterator it4 = (aVarA4 != null ? FluentIterable.n(aVarA4.b()).r(new c2(11)).p() : com.perfectcorp.perfectlib.ph.database.ymk.look.e.b(YMKDatabase.b(), com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.MAKEUP.d)).iterator();
                    while (it4.hasNext()) {
                        bVarA6 = com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.a(YMKDatabase.b(), (String) it4.next());
                        if (bVarA6 == null || !TextUtils.equals(bVarA6.q, str)) {
                        }
                    }
                    throw new LookNotFoundException("No matching metadata for lookGuid=".concat(str));
                }
                return bVarA6;
            default:
                String string = SkinCare3RecommendationHandler.Preferences.f39889a.getString("SURVEY_CONTENT", "");
                if (!TextUtils.isEmpty(string)) {
                    return new SkinCareSurveyForm((SkinCareSurveyForm.Page) GsonHelper.f39260a.i(string, SkinCareSurveyForm.Page.class), str);
                }
                md.k("There has no survey content.");
                return null;
        }
    }
}
