package defpackage;

import android.text.TextUtils;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.opengl.GLInfo;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.Configuration;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.Path;
import com.perfectcorp.perfectlib.PerfectLib;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.core.ApplyEffectParams;
import com.perfectcorp.perfectlib.internal.ModuleConfig;
import com.perfectcorp.perfectlib.ymk.Globals;
import com.perfectcorp.perfectlib.ymk.kernelctrl.TestConfigHelper;
import com.perfectcorp.perfectlib.ymk.kernelctrl.preference.QuickLaunchPreferenceHelper;
import com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a;
import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class gn0 implements Action {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f69451a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Configuration f69452b;

    public /* synthetic */ gn0(Configuration configuration, int i2) {
        this.f69451a = i2;
        this.f69452b = configuration;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
    public final void run() throws IllegalAccessException, NoSuchMethodException, IOException, InvocationTargetException {
        String str;
        int i2 = this.f69451a;
        Configuration configuration = this.f69452b;
        switch (i2) {
            case 0:
                Configuration.ImageSource imageSource = configuration.d;
                ApplyEffectParams applyEffectParams = PerfectLib.f39738a;
                QuickLaunchPreferenceHelper.a();
                Globals.b();
                Log.g(3, "PerfectLib", "maxTextureSize=" + GLInfo.f39383a);
                if (TestConfigHelper.c().b()) {
                    Log.g(3, "PerfectLib", "enable test config");
                }
                if (ModuleConfig.t) {
                    SkuHandler.class.getDeclaredMethod("init", Configuration.ImageSource.class).invoke(null, imageSource);
                    LookHandler.class.getDeclaredMethod("init", Configuration.ImageSource.class).invoke(null, imageSource);
                    LookHandler.class.getDeclaredMethod("deleteLooksByServerResponse", null).invoke(null, null);
                    if (ModuleConfig.w) {
                        Class.forName("com.perfectcorp.perfectlib.TutorialHandler").getDeclaredMethod("init", null).invoke(null, null);
                    }
                }
                PerfectLib.o.b();
                break;
            case 1:
                ApplyEffectParams applyEffectParams2 = PerfectLib.f39738a;
                Configuration.FunStickerQuality funStickerQualityValueOf = Configuration.FunStickerQuality.valueOf(a.r().getString("FUN_STICKER_QUALITY", Configuration.FunStickerQuality.SD.name()));
                Configuration.FunStickerQuality funStickerQuality = configuration.f39517e;
                if (funStickerQualityValueOf != funStickerQuality) {
                    Log.g(3, "PerfectLib", "fun sticker quality changed");
                    LookHandler.class.getDeclaredMethod("deleteLooksForFunStickerQualityChanged", null).invoke(null, null);
                    a.r().o("FUN_STICKER_QUALITY", funStickerQuality.name());
                }
                break;
            default:
                ApplyEffectParams applyEffectParams3 = PerfectLib.f39738a;
                Path path = configuration.f39516c;
                if (path != null) {
                    com.perfectcorp.perfectlib.ymk.a.f41935a = com.perfectcorp.perfectlib.ymk.a.c(path.f39736b, path.f39735a);
                } else {
                    com.perfectcorp.perfectlib.ymk.a.f41935a = com.perfectcorp.perfectlib.ymk.a.c(null, false);
                }
                com.perfectcorp.perfectlib.ymk.a.C0195a c0195a = com.perfectcorp.perfectlib.ymk.a.f41935a;
                List list = c0195a.f41941h;
                if (c0195a.f41943j && !TextUtils.isEmpty(c0195a.f41936a) && !TextUtils.isEmpty(c0195a.f41937b) && !TextUtils.isEmpty(c0195a.f41938c) && !TextUtils.isEmpty(c0195a.d) && !TextUtils.isEmpty(c0195a.f41939e) && !TextUtils.isEmpty(c0195a.f41940f) && !TextUtils.isEmpty(c0195a.g) && !MoreCollections.a(list)) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        if (!TextUtils.isEmpty((String) it.next())) {
                        }
                    }
                    if (ModuleConfig.x) {
                        if (com.perfectcorp.perfectlib.ymk.a.f41935a.f41942i == null) {
                            str = "[setupHairStyleLicense] license is null";
                        } else {
                            Log.g(3, "SdkConfig", "[setupHairStyleLicense] setup");
                            Method declaredMethod = Class.forName("com.perfectcorp.perfectlib.HairStylist").getDeclaredMethod("setupServerLicenseSetting", String.class, String.class, String.class);
                            declaredMethod.setAccessible(true);
                            declaredMethod.invoke(null, com.perfectcorp.perfectlib.ymk.a.f41935a.f41942i.f41944a, com.perfectcorp.perfectlib.ymk.a.f41935a.f41942i.f41945b, com.perfectcorp.perfectlib.ymk.a.f41935a.f41942i.f41946c);
                        }
                        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("SDK configurations");
                        toStringHelper.b("VERSION", PerfectLib.getVersion());
                        toStringHelper.b("COUNTLY_ID", com.perfectcorp.perfectlib.ymk.a.f41935a.f41936a);
                        toStringHelper.b("COUNTLY_DOMAIN", com.perfectcorp.perfectlib.ymk.a.f41935a.f41937b);
                        toStringHelper.b("API_KEY", com.perfectcorp.perfectlib.ymk.a.f41935a.f41938c);
                        toStringHelper.b("PARAMETER_PLATFORM", com.perfectcorp.perfectlib.ymk.a.f41935a.d);
                        toStringHelper.b("PARAMETER_PRODUCT", com.perfectcorp.perfectlib.ymk.a.f41935a.f41939e);
                        toStringHelper.b("PARAMETER_VERSION", com.perfectcorp.perfectlib.ymk.a.f41935a.f41940f);
                        toStringHelper.b("PARAMETER_VERSION_TYPE", com.perfectcorp.perfectlib.ymk.a.f41935a.g);
                        toStringHelper.b("DOMAINS", com.perfectcorp.perfectlib.ymk.a.f41935a.f41941h);
                        Log.g(3, "PerfectLib", toStringHelper.toString());
                        Log.g(3, "PerfectLib", "localeCode=" + QuickLaunchPreferenceHelper.b());
                        Log.g(3, "PerfectLib", "countryCode=" + QuickLaunchPreferenceHelper.a());
                        com.perfectcorp.perfectlib.ymk.clflurry.a.a(PfCommons.b());
                    } else {
                        str = "[setupHairStyleLicense] no module";
                    }
                    Log.g(3, "SdkConfig", str);
                    MoreObjects.ToStringHelper toStringHelper2 = new MoreObjects.ToStringHelper("SDK configurations");
                    toStringHelper2.b("VERSION", PerfectLib.getVersion());
                    toStringHelper2.b("COUNTLY_ID", com.perfectcorp.perfectlib.ymk.a.f41935a.f41936a);
                    toStringHelper2.b("COUNTLY_DOMAIN", com.perfectcorp.perfectlib.ymk.a.f41935a.f41937b);
                    toStringHelper2.b("API_KEY", com.perfectcorp.perfectlib.ymk.a.f41935a.f41938c);
                    toStringHelper2.b("PARAMETER_PLATFORM", com.perfectcorp.perfectlib.ymk.a.f41935a.d);
                    toStringHelper2.b("PARAMETER_PRODUCT", com.perfectcorp.perfectlib.ymk.a.f41935a.f41939e);
                    toStringHelper2.b("PARAMETER_VERSION", com.perfectcorp.perfectlib.ymk.a.f41935a.f41940f);
                    toStringHelper2.b("PARAMETER_VERSION_TYPE", com.perfectcorp.perfectlib.ymk.a.f41935a.g);
                    toStringHelper2.b("DOMAINS", com.perfectcorp.perfectlib.ymk.a.f41935a.f41941h);
                    Log.g(3, "PerfectLib", toStringHelper2.toString());
                    Log.g(3, "PerfectLib", "localeCode=" + QuickLaunchPreferenceHelper.b());
                    Log.g(3, "PerfectLib", "countryCode=" + QuickLaunchPreferenceHelper.a());
                    com.perfectcorp.perfectlib.ymk.clflurry.a.a(PfCommons.b());
                }
                az.o("No valid configuration file.");
                break;
        }
    }
}
