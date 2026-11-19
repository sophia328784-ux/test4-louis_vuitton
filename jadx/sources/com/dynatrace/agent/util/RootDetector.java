package com.dynatrace.agent.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.util.Utility;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/util/RootDetector;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class RootDetector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f27201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f27202b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final List f27203c;
    public static final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile Boolean f27204e;

    static {
        boolean z = Global.f27307a;
        f27201a = CollectionsKt.P("com.noshufou.android.su", "com.noshufou.android.su.elite", "eu.chainfire.supersu", "com.koushikdutta.superuser", "com.thirdparty.superuser", "com.yellowes.su", "com.topjohnwu.magisk", "com.kingroot.kinguser", "com.kingo.root", "com.smedialink.oneclickroot", "com.zhiqupk.root.global", "com.alephzain.framaroot");
        f27202b = CollectionsKt.P("com.koushikdutta.rommanager", "com.koushikdutta.rommanager.license", "com.dimonvideo.luckypatcher", "com.chelpus.lackypatch", "com.ramdroid.appquarantine", "com.ramdroid.appquarantinepro", "com.android.vending.billing.InAppBillingService.COIN", "com.android.vending.billing.InAppBillingService.LUCK", "com.chelpus.luckypatcher", "com.blackmartalpha", "org.blackmart.market", "com.allinone.free", "com.repodroid.app", "org.creeplays.hack", "com.baseappfull.fwd", "com.zmapp", "com.dv.marketmod.installer", "org.mobilism.android", "com.android.wp.net.log", "com.android.camera.update", "cc.madkite.freedom", "com.solohsu.android.edxp.manager", "org.meowcat.edxposed.manager", "com.xmodgame", "com.cih.game_cih", "com.charles.lpoqasert", "catch_.me_.if_.you_.can_");
        f27203c = CollectionsKt.P("com.devadvance.rootcloak", "com.devadvance.rootcloakplus", "de.robv.android.xposed.installer", "com.saurik.substrate", "com.zachspong.temprootremovejb", "com.amphoras.hidemyroot", "com.amphoras.hidemyrootadfree", "com.formyhm.hiderootPremium", "com.formyhm.hideroot");
        d = CollectionsKt.P("/data/local/", "/data/local/bin/", "/data/local/xbin/", "/sbin/", "/su/bin/", "/system/bin/", "/system/bin/.ext/", "/system/bin/failsafe/", "/system/sd/xbin/", "/system/usr/we-need-root/", "/system/xbin/", "/cache/", "/data/", "/dev/");
    }

    public static boolean a(String str, ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            File file = new File((String) it.next(), str);
            if (file.exists()) {
                if (!Global.f27307a) {
                    return true;
                }
                Utility.n("file detected: " + file);
                return true;
            }
        }
        return false;
    }

    public static boolean b(Context context, List list) {
        PackageManager packageManager = context.getPackageManager();
        List<String> list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        for (String str : list2) {
            try {
                packageManager.getPackageInfo(str, 0);
                if (Global.f27307a) {
                    Utility.n("detected package: " + str);
                }
                return true;
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return false;
    }

    public static boolean c(Context context) throws Throwable {
        Process processExec;
        Throwable th;
        boolean z;
        context.getClass();
        if (f27204e == null) {
            String str = Build.TAGS;
            boolean zK = str != null ? StringsKt.k(str, "test-keys", false) : false;
            if (zK && Global.f27307a) {
                Utility.n("test-keys detected");
            }
            boolean z2 = true;
            if (!zK && !b(context, f27201a) && !b(context, f27203c) && !b(context, f27202b)) {
                ArrayList arrayListZ0 = CollectionsKt.z0(d);
                String str2 = System.getenv("PATH");
                if (str2 != null && str2.length() != 0) {
                    List listSplit$default = StringsKt__StringsKt.split$default(str2, new String[]{":"}, false, 0, 6, null);
                    ArrayList<String> arrayList = new ArrayList();
                    for (Object obj : listSplit$default) {
                        if (((String) obj).length() > 0) {
                            arrayList.add(obj);
                        }
                    }
                    for (String strConcat : arrayList) {
                        if (!StringsKt.p(strConcat, "/", false)) {
                            strConcat = strConcat.concat("/");
                        }
                        if (!arrayListZ0.contains(strConcat)) {
                            arrayListZ0.add(strConcat);
                        }
                    }
                }
                if (!a("su", arrayListZ0) && !a("busybox", arrayListZ0) && !a("magisk", arrayListZ0)) {
                    Process process = null;
                    try {
                        processExec = Runtime.getRuntime().exec(new String[]{"which", "su"});
                        processExec.getClass();
                        try {
                            z = new BufferedReader(new InputStreamReader(processExec.getInputStream())).readLine() != null;
                            processExec.destroy();
                        } catch (Exception unused) {
                            process = processExec;
                            if (process != null) {
                                process.destroy();
                            }
                            z = false;
                        } catch (Throwable th2) {
                            th = th2;
                            if (processExec != null) {
                                processExec.destroy();
                            }
                            throw th;
                        }
                    } catch (Exception unused2) {
                    } catch (Throwable th3) {
                        processExec = null;
                        th = th3;
                    }
                    if (!z) {
                        z2 = false;
                    } else if (Global.f27307a) {
                        Utility.n("su command detected");
                    }
                } else if (Global.f27307a) {
                    Utility.n("suspicious file detected");
                }
            }
            f27204e = Boolean.valueOf(z2);
        }
        Boolean bool = f27204e;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }
}
