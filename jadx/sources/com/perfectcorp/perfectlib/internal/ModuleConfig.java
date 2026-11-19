package com.perfectcorp.perfectlib.internal;

import android.text.TextUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.exceptions.VersionMismatchError;
import defpackage.pq0;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ModuleConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Provider f40362a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Provider f40363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Provider f40364c;
    public static final Provider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Provider f40365e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Provider f40366f;
    public static final Provider g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Provider f40367h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Provider f40368i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Provider f40369j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Provider f40370k;
    public static final Provider l;
    public static final Provider m;
    public static final Provider n;
    public static final Provider o;
    public static final boolean p;
    public static final boolean q;
    public static final boolean r;
    public static final boolean s;
    public static final boolean t;
    public static final boolean u;
    public static final boolean v;
    public static final boolean w;
    public static final boolean x;
    public static final boolean y;

    public interface Provider {
        String getModuleName();

        String getVersionName();
    }

    static {
        Provider providerA = a("com.perfectcorp.perfectlib.internal.ModuleFaceTracking");
        f40362a = providerA;
        Provider providerA2 = a("com.perfectcorp.perfectlib.internal.ModuleCosmetic");
        f40363b = providerA2;
        Provider providerA3 = a("com.perfectcorp.perfectlib.internal.ModuleEffectProfile");
        f40364c = providerA3;
        Provider providerA4 = a("com.perfectcorp.perfectlib.internal.ModuleHandlerCore");
        d = providerA4;
        Provider providerA5 = a("com.perfectcorp.perfectlib.internal.ModuleProductHandler");
        f40365e = providerA5;
        Provider providerA6 = a("com.perfectcorp.perfectlib.internal.ModuleRecommendationHandler");
        f40366f = providerA6;
        Provider providerA7 = a("com.perfectcorp.perfectlib.internal.ModuleShadeFinder");
        g = providerA7;
        Provider providerA8 = a("com.perfectcorp.perfectlib.internal.ModuleSkinCare");
        f40367h = providerA8;
        Provider providerA9 = a("com.perfectcorp.perfectlib.internal.ModuleFaceAttribute");
        f40368i = providerA9;
        Provider providerA10 = a("com.perfectcorp.perfectlib.internal.ModuleHand");
        f40369j = providerA10;
        Provider providerA11 = a("com.perfectcorp.perfectlib.internal.ModuleHandProfile");
        f40370k = providerA11;
        Provider providerA12 = a("com.perfectcorp.perfectlib.internal.ModuleTutorial");
        l = providerA12;
        Provider providerA13 = a("com.perfectcorp.perfectlib.internal.ModuleHairStylist");
        m = providerA13;
        Provider providerA14 = a("com.perfectcorp.perfectlib.internal.ModuleAccessory");
        n = providerA14;
        Provider providerA15 = a("com.perfectcorp.perfectlib.internal.ModuleAccessoryProfile");
        o = providerA15;
        boolean z = providerA != null;
        p = z;
        boolean z2 = providerA2 != null;
        q = z2;
        boolean z3 = providerA7 != null;
        r = z3;
        boolean z4 = providerA8 != null;
        s = z4;
        boolean z5 = providerA3 != null;
        boolean z6 = providerA4 != null;
        boolean z7 = providerA5 != null;
        t = z7;
        boolean z8 = providerA6 != null;
        boolean z9 = providerA9 != null;
        u = z9;
        boolean z10 = providerA10 != null;
        v = z10;
        boolean z11 = providerA11 != null;
        boolean z12 = providerA12 != null;
        w = z12;
        boolean z13 = providerA13 != null;
        x = z13;
        boolean z14 = providerA14 != null;
        y = z14;
        boolean z15 = providerA15 != null;
        Log.g(3, "ModuleConfig", "SUPPORT_FACE_TRACKING=" + z);
        Log.g(3, "ModuleConfig", "SUPPORT_MAKEUP=" + z2);
        Log.g(3, "ModuleConfig", "SUPPORT_SHADE_FINDER=" + z3);
        Log.g(3, "ModuleConfig", "SUPPORT_SKIN_CARE_3=" + z4);
        Log.g(3, "ModuleConfig", "SUPPORT_EFFECT_PROFILE=" + z5);
        Log.g(3, "ModuleConfig", "SUPPORT_HANDLER_CORE=" + z6);
        Log.g(3, "ModuleConfig", "SUPPORT_PRODUCT_HANDLER=" + z7);
        Log.g(3, "ModuleConfig", "SUPPORT_RECOMMENDATION_HANDLER=" + z8);
        Log.g(3, "ModuleConfig", "SUPPORT_FACE_ATTRIBUTE=" + z9);
        Log.g(3, "ModuleConfig", "SUPPORT_HAND=" + z10);
        Log.g(3, "ModuleConfig", "SUPPORT_HAND_PROFILE=" + z11);
        Log.g(3, "ModuleConfig", "SUPPORT_TUTORIAL=" + z12);
        Log.g(3, "ModuleConfig", "SUPPORT_HAIR_STYLIST=" + z13);
        Log.g(3, "ModuleConfig", "SUPPORT_ACCESSORY=" + z14);
        Log.g(3, "ModuleConfig", "SUPPORT_ACCESSORY_PROFILE=" + z15);
    }

    public static Provider a(String str) {
        String string;
        try {
            return (Provider) Class.forName(str).getDeclaredConstructor(null).newInstance(null);
        } catch (ClassNotFoundException unused) {
            Log.g(3, "ModuleConfig", "[getProvider] No " + str + " definition found");
            return null;
        } catch (NoSuchMethodException unused2) {
            string = "[getProvider] No default constructor for ".concat(str);
            Log.d("ModuleConfig", string);
            return null;
        } catch (Throwable th) {
            StringBuilder sbR = pq0.r("[getProvider] Failed to invoke default constructor of ", str, " because of ");
            sbR.append(th.getClass().getSimpleName());
            string = sbR.toString();
            Log.d("ModuleConfig", string);
            return null;
        }
    }

    public static void b() {
        Provider[] providerArr = {f40362a, f40363b, f40364c, d, f40365e, f40366f, g, f40367h, f40368i, f40369j, f40370k, l, m, n, o};
        for (int i2 = 0; i2 < 15; i2++) {
            Provider provider = providerArr[i2];
            if (provider != null && !TextUtils.equals("5.27.2.111031404", provider.getVersionName())) {
                throw new VersionMismatchError("Expected module version of '" + provider.getModuleName() + "' is 5.27.2.111031404 but " + provider.getVersionName());
            }
        }
    }
}
