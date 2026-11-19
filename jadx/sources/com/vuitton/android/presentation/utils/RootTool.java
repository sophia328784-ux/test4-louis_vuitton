package com.vuitton.android.presentation.utils;

import android.os.Build;
import com.appsflyer.sdk_base.referrer.Payload;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.linkplay.medialib.ContentTree;
import com.vuitton.android.platform.security.RootConstants;
import com.vuitton.android.platform.security.RootDetector;
import com.vuitton.foundation.logger.Logger;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/utils/RootTool;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class RootTool {
    /* JADX WARN: Code duplicated, block: B:100:0x0205  */
    /* JADX WARN: Code duplicated, block: B:106:0x0219  */
    /* JADX WARN: Code duplicated, block: B:109:0x022c  */
    /* JADX WARN: Code duplicated, block: B:112:0x0248  */
    /* JADX WARN: Code duplicated, block: B:117:0x0263  */
    /* JADX WARN: Code duplicated, block: B:120:0x026a  */
    /* JADX WARN: Code duplicated, block: B:125:0x027c  */
    /* JADX WARN: Code duplicated, block: B:126:0x027e  */
    /* JADX WARN: Code duplicated, block: B:129:0x0283  */
    /* JADX WARN: Code duplicated, block: B:130:0x0285  */
    /* JADX WARN: Code duplicated, block: B:133:0x028a  */
    /* JADX WARN: Code duplicated, block: B:134:0x028c  */
    /* JADX WARN: Code duplicated, block: B:137:0x0291  */
    /* JADX WARN: Code duplicated, block: B:138:0x0293  */
    /* JADX WARN: Code duplicated, block: B:141:0x0298  */
    /* JADX WARN: Code duplicated, block: B:142:0x029a  */
    /* JADX WARN: Code duplicated, block: B:145:0x029f  */
    /* JADX WARN: Code duplicated, block: B:146:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:149:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:150:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:153:0x02af  */
    /* JADX WARN: Code duplicated, block: B:154:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:157:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:158:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:161:0x031f  */
    /* JADX WARN: Code duplicated, block: B:167:0x0339  */
    /* JADX WARN: Code duplicated, block: B:173:0x0351  */
    /* JADX WARN: Code duplicated, block: B:177:0x0363  */
    /* JADX WARN: Code duplicated, block: B:180:0x036b  */
    /* JADX WARN: Code duplicated, block: B:182:0x0375  */
    /* JADX WARN: Code duplicated, block: B:194:0x03a5  */
    /* JADX WARN: Code duplicated, block: B:250:0x0469  */
    /* JADX WARN: Code duplicated, block: B:253:0x0473  */
    /* JADX WARN: Code duplicated, block: B:256:0x047d  */
    /* JADX WARN: Code duplicated, block: B:261:0x0495  */
    /* JADX WARN: Code duplicated, block: B:264:0x049f  */
    /* JADX WARN: Code duplicated, block: B:267:0x04a9  */
    /* JADX WARN: Code duplicated, block: B:272:0x04c3  */
    /* JADX WARN: Code duplicated, block: B:275:0x04cd  */
    /* JADX WARN: Code duplicated, block: B:278:0x04d7  */
    /* JADX WARN: Code duplicated, block: B:280:0x04e7  */
    /* JADX WARN: Code duplicated, block: B:286:0x04fb  */
    /* JADX WARN: Code duplicated, block: B:288:0x0509  */
    /* JADX WARN: Code duplicated, block: B:294:0x051d  */
    /* JADX WARN: Code duplicated, block: B:299:0x0535  */
    /* JADX WARN: Code duplicated, block: B:302:0x053f  */
    /* JADX WARN: Code duplicated, block: B:305:0x0549  */
    /* JADX WARN: Code duplicated, block: B:307:0x0557  */
    /* JADX WARN: Code duplicated, block: B:314:0x0576  */
    /* JADX WARN: Code duplicated, block: B:317:0x0580  */
    /* JADX WARN: Code duplicated, block: B:320:0x058a  */
    /* JADX WARN: Code duplicated, block: B:322:0x0598  */
    /* JADX WARN: Code duplicated, block: B:333:0x0158 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:350:0x05af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:352:0x0154 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:353:? A[LOOP:2: B:58:0x013a->B:353:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:357:0x01c0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:358:0x01df A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:360:0x01f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:361:0x020f A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:363:0x0227 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:365:0x01a3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:370:? A[LOOP:5: B:94:0x01e3->B:370:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:371:? A[LOOP:6: B:104:0x0213->B:371:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:372:0x025e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:374:? A[LOOP:7: B:110:0x0242->B:374:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:375:0x05af A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:381:0x05af A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:386:0x04f1 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:388:0x05af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:393:0x0513 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:397:? A[LOOP:12: B:292:0x0517->B:397:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:399:0x05af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:400:? A[LOOP:13: B:265:0x04a3->B:400:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:401:0x05af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:403:? A[LOOP:14: B:254:0x0477->B:403:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:404:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x010e  */
    /* JADX WARN: Code duplicated, block: B:45:0x0110  */
    /* JADX WARN: Code duplicated, block: B:47:0x0113 A[Catch: all -> 0x011b, TRY_LEAVE, TryCatch #3 {all -> 0x011b, blocks: (B:42:0x00f3, B:47:0x0113), top: B:338:0x00f3 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0123  */
    /* JADX WARN: Code duplicated, block: B:57:0x0136  */
    /* JADX WARN: Code duplicated, block: B:60:0x0140  */
    /* JADX WARN: Code duplicated, block: B:62:0x0151  */
    /* JADX WARN: Code duplicated, block: B:69:0x017f A[Catch: all -> 0x018e, TRY_LEAVE, TryCatch #5 {all -> 0x018e, blocks: (B:66:0x0171, B:67:0x0179, B:69:0x017f), top: B:342:0x0171, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x019f  */
    /* JADX WARN: Code duplicated, block: B:86:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:90:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:96:0x01e9  */
    public static boolean a(RootDetector rootDetector) {
        List<String> listSplit$default;
        Process processExec;
        boolean z;
        ArrayList arrayListY;
        ArrayList arrayList;
        String lowerCase;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        String str17;
        String str18;
        String str19;
        EmulatorDetector$isDetected$1 emulatorDetector$isDetected$1;
        EmulatorDetector$isDetected$2 emulatorDetector$isDetected$2;
        EmulatorDetector.DeviceBuildInfo deviceBuildInfo;
        String str20;
        String str21;
        Set set;
        String str22;
        boolean zP;
        Set set2;
        String str23;
        Set set3;
        String str24;
        Set set4;
        Iterator it;
        List list;
        Iterator it2;
        List list2;
        Iterator it3;
        Iterable<String> iterable;
        Set set5;
        Iterator it4;
        Iterable<String> iterable2;
        List<String> list3;
        String lowerCase2;
        Iterator it5;
        List listSplit$default2;
        String str25;
        String str26;
        List list4;
        Iterator it6;
        List listSplit$default3;
        Iterator it7;
        BufferedReader bufferedReader;
        Iterator it8;
        boolean zExists;
        InputStream inputStream;
        rootDetector.getClass();
        Logger logger = rootDetector.f50466b;
        String str27 = Build.TAGS;
        boolean z2 = str27 != null && StringsKt.k(str27, "test-keys", false);
        if (z2) {
            logger.getClass();
        }
        if (!z2 && !rootDetector.b(RootConstants.f50458a) && !rootDetector.b(RootConstants.f50459b) && !rootDetector.b(RootConstants.f50460c) && !rootDetector.b(RootConstants.d) && !rootDetector.a("su") && !rootDetector.a("magisk")) {
            Map mapH = MapsKt.h(new Pair("ro.secure", ContentTree.ROOT_ID));
            Object obj = null;
            try {
                InputStream inputStream2 = Runtime.getRuntime().exec("getprop").getInputStream();
                if (inputStream2 == null) {
                    listSplit$default = null;
                } else {
                    String next = new Scanner(inputStream2).useDelimiter("\\A").next();
                    next.getClass();
                    listSplit$default = StringsKt__StringsKt.split$default(next, new String[]{"\n"}, false, 0, 6, null);
                }
            } catch (IOException | NoSuchElementException unused) {
            }
            if (listSplit$default == null) {
                try {
                    processExec = Runtime.getRuntime().exec(new String[]{"which", "su"});
                    try {
                        inputStream = processExec.getInputStream();
                        inputStream.getClass();
                        if (new BufferedReader(new InputStreamReader(inputStream, Charsets.UTF_8), 8192).readLine() != null) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z) {
                            logger.getClass();
                        }
                        processExec.destroy();
                    } catch (Throwable unused2) {
                        if (processExec != null) {
                            processExec.destroy();
                        }
                        z = false;
                    }
                } catch (Throwable unused3) {
                    processExec = null;
                }
                if (!z) {
                    arrayListY = CollectionsKt.Y(RootConstants.f50462f, RootConstants.g);
                    if (arrayListY.isEmpty()) {
                        try {
                            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(new File("/proc/mounts"))));
                            arrayList = new ArrayList();
                            try {
                                for (String str28 : TextStreamsKt.a(bufferedReader)) {
                                    str28.getClass();
                                    arrayList.add(str28);
                                }
                                bufferedReader.close();
                                if (arrayList == null) {
                                    String str29 = Build.FINGERPRINT;
                                    str29.getClass();
                                    lowerCase = str29.toLowerCase(Locale.ROOT);
                                    lowerCase.getClass();
                                    for (Object obj2 : RootConstants.f50464i) {
                                        lowerCase2 = ((String) obj2).toLowerCase(Locale.ROOT);
                                        lowerCase2.getClass();
                                        if (StringsKt.k(lowerCase, lowerCase2, false)) {
                                            obj = obj2;
                                            break;
                                        }
                                    }
                                    str = (String) obj;
                                    if (str != null) {
                                        logger.getClass();
                                    }
                                    if (str == null && !CommonUtils.h()) {
                                        EmulatorDetector emulatorDetector = EmulatorDetector.f65833a;
                                        str2 = Build.FINGERPRINT;
                                        if (str2 == null) {
                                            str3 = "";
                                        } else {
                                            str3 = str2;
                                        }
                                        str4 = Build.MODEL;
                                        if (str4 == null) {
                                            str5 = "";
                                        } else {
                                            str5 = str4;
                                        }
                                        str6 = Build.MANUFACTURER;
                                        if (str6 == null) {
                                            str7 = "";
                                        } else {
                                            str7 = str6;
                                        }
                                        str8 = Build.BRAND;
                                        if (str8 == null) {
                                            str9 = "";
                                        } else {
                                            str9 = str8;
                                        }
                                        str10 = Build.DEVICE;
                                        if (str10 == null) {
                                            str11 = "";
                                        } else {
                                            str11 = str10;
                                        }
                                        str12 = Build.BOARD;
                                        if (str12 == null) {
                                            str13 = "";
                                        } else {
                                            str13 = str12;
                                        }
                                        str14 = Build.BOOTLOADER;
                                        if (str14 == null) {
                                            str15 = "";
                                        } else {
                                            str15 = str14;
                                        }
                                        str16 = Build.PRODUCT;
                                        if (str16 == null) {
                                            str17 = "";
                                        } else {
                                            str17 = str16;
                                        }
                                        str18 = Build.HARDWARE;
                                        if (str18 == null) {
                                            str19 = "";
                                        } else {
                                            str19 = str18;
                                        }
                                        EmulatorDetector.DeviceBuildInfo deviceBuildInfo2 = new EmulatorDetector.DeviceBuildInfo(str3, str5, str7, str9, str11, str13, str15, str17, str19);
                                        emulatorDetector$isDetected$1 = new EmulatorDetector$isDetected$1(1, emulatorDetector, EmulatorDetector.class, "defaultFileExists", "defaultFileExists(Ljava/lang/String;)Z", 0);
                                        emulatorDetector$isDetected$2 = new EmulatorDetector$isDetected$2(1, emulatorDetector, EmulatorDetector.class, "defaultReadLines", "defaultReadLines(Ljava/lang/String;)Ljava/util/List;", 0);
                                        deviceBuildInfo = new EmulatorDetector.DeviceBuildInfo(EmulatorDetector.a(deviceBuildInfo2.f65841a), EmulatorDetector.a(deviceBuildInfo2.f65842b), EmulatorDetector.a(deviceBuildInfo2.f65843c), EmulatorDetector.a(deviceBuildInfo2.d), EmulatorDetector.a(deviceBuildInfo2.f65844e), EmulatorDetector.a(deviceBuildInfo2.f65845f), EmulatorDetector.a(deviceBuildInfo2.g), EmulatorDetector.a(deviceBuildInfo2.f65846h), EmulatorDetector.a(deviceBuildInfo2.f65847i));
                                        str20 = deviceBuildInfo.f65841a;
                                        if (!StringsKt.P(str20, "generic", false) && !StringsKt.P(str20, "unknown", false) && !StringsKt.k(str20, "emulator", false)) {
                                            str21 = deviceBuildInfo.f65842b;
                                            if (!StringsKt.k(str21, "android sdk built for", false) && !StringsKt.k(str21, "droid4x", false) && !StringsKt.k(str21, "emulator", false)) {
                                                set = EmulatorDetector.f65835c;
                                                str22 = deviceBuildInfo.f65843c;
                                                if (!set.contains(str22) && !StringsKt.k(str22, "genymotion", false)) {
                                                    String str30 = deviceBuildInfo.d;
                                                    zP = StringsKt.P(str30, "generic", false);
                                                    String str31 = deviceBuildInfo.f65844e;
                                                    if (zP || !StringsKt.P(str31, "generic", false)) {
                                                        set2 = EmulatorDetector.f65834b;
                                                        str23 = deviceBuildInfo.f65846h;
                                                        if (!set2.contains(str23) && !StringsKt.k(str23, "sdk_google", false) && !StringsKt.k(str23, "emulator", false) && !StringsKt.k(str23, "simulator", false) && !StringsKt.k(str23, "nox", false) && !EmulatorDetector.d.contains(str31)) {
                                                            set3 = EmulatorDetector.f65837f;
                                                            str24 = deviceBuildInfo.f65845f;
                                                            if (!set3.contains(str24) && !StringsKt.k(str24, "nox", false) && !EmulatorDetector.f65836e.contains(deviceBuildInfo.f65847i) && ((!str22.equals(Payload.SOURCE_GOOGLE) || !str30.equals(Payload.SOURCE_GOOGLE) || !StringsKt.P(str20, "google/sdk_gphone_", false) || !StringsKt.P(str23, "sdk_gphone_", false) || !StringsKt.P(str21, "sdk_gphone_", false)) && ((!str22.equals(Payload.SOURCE_GOOGLE) || !str30.equals(Payload.SOURCE_GOOGLE) || !StringsKt.P(str20, "google/sdk_gphone64_", false) || !StringsKt.P(str23, "sdk_gphone64_", false) || !StringsKt.P(str21, "sdk_gphone64_", false)) && ((!str22.equals(Payload.SOURCE_GOOGLE) || !str30.equals(Payload.SOURCE_GOOGLE) || !StringsKt.P(str20, "google/sdk_gphone16k_", false) || !StringsKt.P(str23, "sdk_gphone16k_", false) || !StringsKt.P(str21, "sdk_gphone16k_", false)) && ((!str21.equals("hpe device") || !StringsKt.P(str20, "google/kiwi_", false) || !StringsKt.p(str20, ":user/release-keys", false) || !str24.equals("kiwi") || !StringsKt.P(str23, "kiwi_", false)) && (!str24.equals("qc_reference_phone") || str22.equals(Payload.SOURCE_XIAOMI))))))) {
                                                                set4 = EmulatorDetector.g;
                                                                if ((set4 instanceof Collection) || !set4.isEmpty()) {
                                                                    it = set4.iterator();
                                                                    while (it.hasNext()) {
                                                                        if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                        }
                                                                    }
                                                                    list = EmulatorDetector.f65840j;
                                                                    if ((list instanceof Collection) || !list.isEmpty()) {
                                                                        it2 = list.iterator();
                                                                        while (it2.hasNext()) {
                                                                            if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                            }
                                                                        }
                                                                        list2 = EmulatorDetector.f65838h;
                                                                        if ((list2 instanceof Collection) || !list2.isEmpty()) {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if ((iterable instanceof Collection) || !((Collection) iterable).isEmpty()) {
                                                                                    for (String str32 : iterable) {
                                                                                        set5 = EmulatorDetector.f65839i;
                                                                                        if ((set5 instanceof Collection) || !set5.isEmpty()) {
                                                                                            it4 = set5.iterator();
                                                                                            while (it4.hasNext()) {
                                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if ((iterable2 instanceof Collection) || !((Collection) iterable2).isEmpty()) {
                                                                                for (String str33 : iterable2) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false) || StringsKt.k(str33, "bstsharedfolder", false) || StringsKt.k(str33, "sharedfolder", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if ((list3 instanceof Collection) || !list3.isEmpty()) {
                                                                                    for (String str34 : list3) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false) || StringsKt.k(str34, "virtualbox", false) || StringsKt.k(str34, "ttvm", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else if (!CommonUtils.g()) {
                                                                                    return true;
                                                                                }
                                                                            } else {
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    } else {
                                                                        list2 = EmulatorDetector.f65838h;
                                                                        if (list2 instanceof Collection) {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    list = EmulatorDetector.f65840j;
                                                                    if (list instanceof Collection) {
                                                                        it2 = list.iterator();
                                                                        while (it2.hasNext()) {
                                                                            if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                            }
                                                                        }
                                                                        list2 = EmulatorDetector.f65838h;
                                                                        if (list2 instanceof Collection) {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    } else {
                                                                        it2 = list.iterator();
                                                                        while (it2.hasNext()) {
                                                                            if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                            }
                                                                        }
                                                                        list2 = EmulatorDetector.f65838h;
                                                                        if (list2 instanceof Collection) {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    it5 = arrayList.iterator();
                                    while (it5.hasNext()) {
                                        listSplit$default2 = StringsKt__StringsKt.split$default((String) it5.next(), new String[]{" "}, false, 0, 6, null);
                                        if (listSplit$default2.size() >= 4) {
                                            str25 = (String) listSplit$default2.get(1);
                                            str26 = (String) listSplit$default2.get(3);
                                            list4 = RootConstants.f50463h;
                                            if ((list4 instanceof Collection) || !list4.isEmpty()) {
                                                it6 = list4.iterator();
                                                while (it6.hasNext()) {
                                                    if (Intrinsics.c((String) it6.next(), str25)) {
                                                        listSplit$default3 = StringsKt__StringsKt.split$default(str26, new String[]{","}, false, 0, 6, null);
                                                        if (!(listSplit$default3 instanceof Collection) && listSplit$default3.isEmpty()) {
                                                            break;
                                                        }
                                                        it7 = listSplit$default3.iterator();
                                                        while (it7.hasNext()) {
                                                            if (Intrinsics.c((String) it7.next(), "rw")) {
                                                                logger.getClass();
                                                            }
                                                        }
                                                        break;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    String str210 = Build.FINGERPRINT;
                                    str210.getClass();
                                    lowerCase = str210.toLowerCase(Locale.ROOT);
                                    lowerCase.getClass();
                                    while (r3.hasNext()) {
                                        lowerCase2 = ((String) obj2).toLowerCase(Locale.ROOT);
                                        lowerCase2.getClass();
                                        if (StringsKt.k(lowerCase, lowerCase2, false)) {
                                            obj = obj2;
                                            break;
                                        }
                                    }
                                    str = (String) obj;
                                    if (str != null) {
                                        logger.getClass();
                                    }
                                    if (str == null) {
                                        EmulatorDetector emulatorDetector2 = EmulatorDetector.f65833a;
                                        str2 = Build.FINGERPRINT;
                                        if (str2 == null) {
                                            str3 = "";
                                        } else {
                                            str3 = str2;
                                        }
                                        str4 = Build.MODEL;
                                        if (str4 == null) {
                                            str5 = "";
                                        } else {
                                            str5 = str4;
                                        }
                                        str6 = Build.MANUFACTURER;
                                        if (str6 == null) {
                                            str7 = "";
                                        } else {
                                            str7 = str6;
                                        }
                                        str8 = Build.BRAND;
                                        if (str8 == null) {
                                            str9 = "";
                                        } else {
                                            str9 = str8;
                                        }
                                        str10 = Build.DEVICE;
                                        if (str10 == null) {
                                            str11 = "";
                                        } else {
                                            str11 = str10;
                                        }
                                        str12 = Build.BOARD;
                                        if (str12 == null) {
                                            str13 = "";
                                        } else {
                                            str13 = str12;
                                        }
                                        str14 = Build.BOOTLOADER;
                                        if (str14 == null) {
                                            str15 = "";
                                        } else {
                                            str15 = str14;
                                        }
                                        str16 = Build.PRODUCT;
                                        if (str16 == null) {
                                            str17 = "";
                                        } else {
                                            str17 = str16;
                                        }
                                        str18 = Build.HARDWARE;
                                        if (str18 == null) {
                                            str19 = "";
                                        } else {
                                            str19 = str18;
                                        }
                                        EmulatorDetector.DeviceBuildInfo deviceBuildInfo3 = new EmulatorDetector.DeviceBuildInfo(str3, str5, str7, str9, str11, str13, str15, str17, str19);
                                        emulatorDetector$isDetected$1 = new EmulatorDetector$isDetected$1(1, emulatorDetector2, EmulatorDetector.class, "defaultFileExists", "defaultFileExists(Ljava/lang/String;)Z", 0);
                                        emulatorDetector$isDetected$2 = new EmulatorDetector$isDetected$2(1, emulatorDetector2, EmulatorDetector.class, "defaultReadLines", "defaultReadLines(Ljava/lang/String;)Ljava/util/List;", 0);
                                        deviceBuildInfo = new EmulatorDetector.DeviceBuildInfo(EmulatorDetector.a(deviceBuildInfo3.f65841a), EmulatorDetector.a(deviceBuildInfo3.f65842b), EmulatorDetector.a(deviceBuildInfo3.f65843c), EmulatorDetector.a(deviceBuildInfo3.d), EmulatorDetector.a(deviceBuildInfo3.f65844e), EmulatorDetector.a(deviceBuildInfo3.f65845f), EmulatorDetector.a(deviceBuildInfo3.g), EmulatorDetector.a(deviceBuildInfo3.f65846h), EmulatorDetector.a(deviceBuildInfo3.f65847i));
                                        str20 = deviceBuildInfo.f65841a;
                                        if (!StringsKt.P(str20, "generic", false)) {
                                            str21 = deviceBuildInfo.f65842b;
                                            if (!StringsKt.k(str21, "android sdk built for", false)) {
                                                set = EmulatorDetector.f65835c;
                                                str22 = deviceBuildInfo.f65843c;
                                                if (!set.contains(str22)) {
                                                    String str35 = deviceBuildInfo.d;
                                                    zP = StringsKt.P(str35, "generic", false);
                                                    String str36 = deviceBuildInfo.f65844e;
                                                    if (zP) {
                                                        set2 = EmulatorDetector.f65834b;
                                                        str23 = deviceBuildInfo.f65846h;
                                                        if (!set2.contains(str23)) {
                                                            set3 = EmulatorDetector.f65837f;
                                                            str24 = deviceBuildInfo.f65845f;
                                                            if (!set3.contains(str24)) {
                                                                set4 = EmulatorDetector.g;
                                                                if (set4 instanceof Collection) {
                                                                    it = set4.iterator();
                                                                    while (it.hasNext()) {
                                                                        if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                        }
                                                                    }
                                                                    list = EmulatorDetector.f65840j;
                                                                    if (list instanceof Collection) {
                                                                        it2 = list.iterator();
                                                                        while (it2.hasNext()) {
                                                                            if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                            }
                                                                        }
                                                                        list2 = EmulatorDetector.f65838h;
                                                                        if (list2 instanceof Collection) {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    } else {
                                                                        it2 = list.iterator();
                                                                        while (it2.hasNext()) {
                                                                            if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                            }
                                                                        }
                                                                        list2 = EmulatorDetector.f65838h;
                                                                        if (list2 instanceof Collection) {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it = set4.iterator();
                                                                    while (it.hasNext()) {
                                                                        if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                        }
                                                                    }
                                                                    list = EmulatorDetector.f65840j;
                                                                    if (list instanceof Collection) {
                                                                        it2 = list.iterator();
                                                                        while (it2.hasNext()) {
                                                                            if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                            }
                                                                        }
                                                                        list2 = EmulatorDetector.f65838h;
                                                                        if (list2 instanceof Collection) {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    } else {
                                                                        it2 = list.iterator();
                                                                        while (it2.hasNext()) {
                                                                            if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                            }
                                                                        }
                                                                        list2 = EmulatorDetector.f65838h;
                                                                        if (list2 instanceof Collection) {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        set2 = EmulatorDetector.f65834b;
                                                        str23 = deviceBuildInfo.f65846h;
                                                        if (!set2.contains(str23)) {
                                                            set3 = EmulatorDetector.f65837f;
                                                            str24 = deviceBuildInfo.f65845f;
                                                            if (!set3.contains(str24)) {
                                                                set4 = EmulatorDetector.g;
                                                                if (set4 instanceof Collection) {
                                                                    it = set4.iterator();
                                                                    while (it.hasNext()) {
                                                                        if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                        }
                                                                    }
                                                                    list = EmulatorDetector.f65840j;
                                                                    if (list instanceof Collection) {
                                                                        it2 = list.iterator();
                                                                        while (it2.hasNext()) {
                                                                            if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                            }
                                                                        }
                                                                        list2 = EmulatorDetector.f65838h;
                                                                        if (list2 instanceof Collection) {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    } else {
                                                                        it2 = list.iterator();
                                                                        while (it2.hasNext()) {
                                                                            if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                            }
                                                                        }
                                                                        list2 = EmulatorDetector.f65838h;
                                                                        if (list2 instanceof Collection) {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it = set4.iterator();
                                                                    while (it.hasNext()) {
                                                                        if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                        }
                                                                    }
                                                                    list = EmulatorDetector.f65840j;
                                                                    if (list instanceof Collection) {
                                                                        it2 = list.iterator();
                                                                        while (it2.hasNext()) {
                                                                            if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                            }
                                                                        }
                                                                        list2 = EmulatorDetector.f65838h;
                                                                        if (list2 instanceof Collection) {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    } else {
                                                                        it2 = list.iterator();
                                                                        while (it2.hasNext()) {
                                                                            if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                            }
                                                                        }
                                                                        list2 = EmulatorDetector.f65838h;
                                                                        if (list2 instanceof Collection) {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            it3 = list2.iterator();
                                                                            while (it3.hasNext()) {
                                                                                iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                                if (iterable instanceof Collection) {
                                                                                }
                                                                                while (r2.hasNext()) {
                                                                                    set5 = EmulatorDetector.f65839i;
                                                                                    if (set5 instanceof Collection) {
                                                                                    }
                                                                                    it4 = set5.iterator();
                                                                                    while (it4.hasNext()) {
                                                                                        if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                            if (iterable2 instanceof Collection) {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                while (r0.hasNext()) {
                                                                                    if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                                    }
                                                                                }
                                                                                list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                                if (list3 instanceof Collection) {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                } else {
                                                                                    while (r0.hasNext()) {
                                                                                        if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                        }
                                                                                    }
                                                                                    if (!CommonUtils.g()) {
                                                                                        return true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    CloseableKt.a(bufferedReader, th);
                                    throw th2;
                                }
                            }
                        } catch (IOException unused4) {
                            arrayList = null;
                        }
                    } else {
                        it8 = arrayListY.iterator();
                        while (it8.hasNext()) {
                            zExists = new File((String) it8.next()).exists();
                            if (zExists) {
                                logger.getClass();
                            }
                            if (zExists) {
                            }
                        }
                        bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(new File("/proc/mounts"))));
                        arrayList = new ArrayList();
                        while (r8.hasNext()) {
                            str28.getClass();
                            arrayList.add(str28);
                        }
                        bufferedReader.close();
                        if (arrayList == null) {
                            String str211 = Build.FINGERPRINT;
                            str211.getClass();
                            lowerCase = str211.toLowerCase(Locale.ROOT);
                            lowerCase.getClass();
                            while (r3.hasNext()) {
                                lowerCase2 = ((String) obj2).toLowerCase(Locale.ROOT);
                                lowerCase2.getClass();
                                if (StringsKt.k(lowerCase, lowerCase2, false)) {
                                    obj = obj2;
                                    break;
                                }
                            }
                            str = (String) obj;
                            if (str != null) {
                                logger.getClass();
                            }
                            if (str == null) {
                                EmulatorDetector emulatorDetector3 = EmulatorDetector.f65833a;
                                str2 = Build.FINGERPRINT;
                                if (str2 == null) {
                                    str3 = "";
                                } else {
                                    str3 = str2;
                                }
                                str4 = Build.MODEL;
                                if (str4 == null) {
                                    str5 = "";
                                } else {
                                    str5 = str4;
                                }
                                str6 = Build.MANUFACTURER;
                                if (str6 == null) {
                                    str7 = "";
                                } else {
                                    str7 = str6;
                                }
                                str8 = Build.BRAND;
                                if (str8 == null) {
                                    str9 = "";
                                } else {
                                    str9 = str8;
                                }
                                str10 = Build.DEVICE;
                                if (str10 == null) {
                                    str11 = "";
                                } else {
                                    str11 = str10;
                                }
                                str12 = Build.BOARD;
                                if (str12 == null) {
                                    str13 = "";
                                } else {
                                    str13 = str12;
                                }
                                str14 = Build.BOOTLOADER;
                                if (str14 == null) {
                                    str15 = "";
                                } else {
                                    str15 = str14;
                                }
                                str16 = Build.PRODUCT;
                                if (str16 == null) {
                                    str17 = "";
                                } else {
                                    str17 = str16;
                                }
                                str18 = Build.HARDWARE;
                                if (str18 == null) {
                                    str19 = "";
                                } else {
                                    str19 = str18;
                                }
                                EmulatorDetector.DeviceBuildInfo deviceBuildInfo4 = new EmulatorDetector.DeviceBuildInfo(str3, str5, str7, str9, str11, str13, str15, str17, str19);
                                emulatorDetector$isDetected$1 = new EmulatorDetector$isDetected$1(1, emulatorDetector3, EmulatorDetector.class, "defaultFileExists", "defaultFileExists(Ljava/lang/String;)Z", 0);
                                emulatorDetector$isDetected$2 = new EmulatorDetector$isDetected$2(1, emulatorDetector3, EmulatorDetector.class, "defaultReadLines", "defaultReadLines(Ljava/lang/String;)Ljava/util/List;", 0);
                                deviceBuildInfo = new EmulatorDetector.DeviceBuildInfo(EmulatorDetector.a(deviceBuildInfo4.f65841a), EmulatorDetector.a(deviceBuildInfo4.f65842b), EmulatorDetector.a(deviceBuildInfo4.f65843c), EmulatorDetector.a(deviceBuildInfo4.d), EmulatorDetector.a(deviceBuildInfo4.f65844e), EmulatorDetector.a(deviceBuildInfo4.f65845f), EmulatorDetector.a(deviceBuildInfo4.g), EmulatorDetector.a(deviceBuildInfo4.f65846h), EmulatorDetector.a(deviceBuildInfo4.f65847i));
                                str20 = deviceBuildInfo.f65841a;
                                if (!StringsKt.P(str20, "generic", false)) {
                                    str21 = deviceBuildInfo.f65842b;
                                    if (!StringsKt.k(str21, "android sdk built for", false)) {
                                        set = EmulatorDetector.f65835c;
                                        str22 = deviceBuildInfo.f65843c;
                                        if (!set.contains(str22)) {
                                            String str37 = deviceBuildInfo.d;
                                            zP = StringsKt.P(str37, "generic", false);
                                            String str38 = deviceBuildInfo.f65844e;
                                            if (zP) {
                                                set2 = EmulatorDetector.f65834b;
                                                str23 = deviceBuildInfo.f65846h;
                                                if (!set2.contains(str23)) {
                                                    set3 = EmulatorDetector.f65837f;
                                                    str24 = deviceBuildInfo.f65845f;
                                                    if (!set3.contains(str24)) {
                                                        set4 = EmulatorDetector.g;
                                                        if (set4 instanceof Collection) {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            } else {
                                                set2 = EmulatorDetector.f65834b;
                                                str23 = deviceBuildInfo.f65846h;
                                                if (!set2.contains(str23)) {
                                                    set3 = EmulatorDetector.f65837f;
                                                    str24 = deviceBuildInfo.f65845f;
                                                    if (!set3.contains(str24)) {
                                                        set4 = EmulatorDetector.g;
                                                        if (set4 instanceof Collection) {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            it5 = arrayList.iterator();
                            while (it5.hasNext()) {
                                listSplit$default2 = StringsKt__StringsKt.split$default((String) it5.next(), new String[]{" "}, false, 0, 6, null);
                                if (listSplit$default2.size() >= 4) {
                                    str25 = (String) listSplit$default2.get(1);
                                    str26 = (String) listSplit$default2.get(3);
                                    list4 = RootConstants.f50463h;
                                    if (list4 instanceof Collection) {
                                    }
                                    it6 = list4.iterator();
                                    while (it6.hasNext()) {
                                        if (Intrinsics.c((String) it6.next(), str25)) {
                                            listSplit$default3 = StringsKt__StringsKt.split$default(str26, new String[]{","}, false, 0, 6, null);
                                            if (!(listSplit$default3 instanceof Collection)) {
                                            }
                                            it7 = listSplit$default3.iterator();
                                            while (it7.hasNext()) {
                                                if (Intrinsics.c((String) it7.next(), "rw")) {
                                                    logger.getClass();
                                                }
                                            }
                                            break;
                                            break;
                                        }
                                    }
                                }
                            }
                            String str212 = Build.FINGERPRINT;
                            str212.getClass();
                            lowerCase = str212.toLowerCase(Locale.ROOT);
                            lowerCase.getClass();
                            while (r3.hasNext()) {
                                lowerCase2 = ((String) obj2).toLowerCase(Locale.ROOT);
                                lowerCase2.getClass();
                                if (StringsKt.k(lowerCase, lowerCase2, false)) {
                                    obj = obj2;
                                    break;
                                }
                            }
                            str = (String) obj;
                            if (str != null) {
                                logger.getClass();
                            }
                            if (str == null) {
                                EmulatorDetector emulatorDetector4 = EmulatorDetector.f65833a;
                                str2 = Build.FINGERPRINT;
                                if (str2 == null) {
                                    str3 = "";
                                } else {
                                    str3 = str2;
                                }
                                str4 = Build.MODEL;
                                if (str4 == null) {
                                    str5 = "";
                                } else {
                                    str5 = str4;
                                }
                                str6 = Build.MANUFACTURER;
                                if (str6 == null) {
                                    str7 = "";
                                } else {
                                    str7 = str6;
                                }
                                str8 = Build.BRAND;
                                if (str8 == null) {
                                    str9 = "";
                                } else {
                                    str9 = str8;
                                }
                                str10 = Build.DEVICE;
                                if (str10 == null) {
                                    str11 = "";
                                } else {
                                    str11 = str10;
                                }
                                str12 = Build.BOARD;
                                if (str12 == null) {
                                    str13 = "";
                                } else {
                                    str13 = str12;
                                }
                                str14 = Build.BOOTLOADER;
                                if (str14 == null) {
                                    str15 = "";
                                } else {
                                    str15 = str14;
                                }
                                str16 = Build.PRODUCT;
                                if (str16 == null) {
                                    str17 = "";
                                } else {
                                    str17 = str16;
                                }
                                str18 = Build.HARDWARE;
                                if (str18 == null) {
                                    str19 = "";
                                } else {
                                    str19 = str18;
                                }
                                EmulatorDetector.DeviceBuildInfo deviceBuildInfo5 = new EmulatorDetector.DeviceBuildInfo(str3, str5, str7, str9, str11, str13, str15, str17, str19);
                                emulatorDetector$isDetected$1 = new EmulatorDetector$isDetected$1(1, emulatorDetector4, EmulatorDetector.class, "defaultFileExists", "defaultFileExists(Ljava/lang/String;)Z", 0);
                                emulatorDetector$isDetected$2 = new EmulatorDetector$isDetected$2(1, emulatorDetector4, EmulatorDetector.class, "defaultReadLines", "defaultReadLines(Ljava/lang/String;)Ljava/util/List;", 0);
                                deviceBuildInfo = new EmulatorDetector.DeviceBuildInfo(EmulatorDetector.a(deviceBuildInfo5.f65841a), EmulatorDetector.a(deviceBuildInfo5.f65842b), EmulatorDetector.a(deviceBuildInfo5.f65843c), EmulatorDetector.a(deviceBuildInfo5.d), EmulatorDetector.a(deviceBuildInfo5.f65844e), EmulatorDetector.a(deviceBuildInfo5.f65845f), EmulatorDetector.a(deviceBuildInfo5.g), EmulatorDetector.a(deviceBuildInfo5.f65846h), EmulatorDetector.a(deviceBuildInfo5.f65847i));
                                str20 = deviceBuildInfo.f65841a;
                                if (!StringsKt.P(str20, "generic", false)) {
                                    str21 = deviceBuildInfo.f65842b;
                                    if (!StringsKt.k(str21, "android sdk built for", false)) {
                                        set = EmulatorDetector.f65835c;
                                        str22 = deviceBuildInfo.f65843c;
                                        if (!set.contains(str22)) {
                                            String str39 = deviceBuildInfo.d;
                                            zP = StringsKt.P(str39, "generic", false);
                                            String str310 = deviceBuildInfo.f65844e;
                                            if (zP) {
                                                set2 = EmulatorDetector.f65834b;
                                                str23 = deviceBuildInfo.f65846h;
                                                if (!set2.contains(str23)) {
                                                    set3 = EmulatorDetector.f65837f;
                                                    str24 = deviceBuildInfo.f65845f;
                                                    if (!set3.contains(str24)) {
                                                        set4 = EmulatorDetector.g;
                                                        if (set4 instanceof Collection) {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            } else {
                                                set2 = EmulatorDetector.f65834b;
                                                str23 = deviceBuildInfo.f65846h;
                                                if (!set2.contains(str23)) {
                                                    set3 = EmulatorDetector.f65837f;
                                                    str24 = deviceBuildInfo.f65845f;
                                                    if (!set3.contains(str24)) {
                                                        set4 = EmulatorDetector.g;
                                                        if (set4 instanceof Collection) {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } else {
                for (String str40 : listSplit$default) {
                    for (Map.Entry entry : mapH.entrySet()) {
                        String str41 = (String) entry.getKey();
                        String str42 = (String) entry.getValue();
                        if (StringsKt.k(str40, str41, false)) {
                            if (StringsKt.k(str40, "[" + str42 + "]", false)) {
                                logger.getClass();
                            }
                        }
                    }
                }
                processExec = Runtime.getRuntime().exec(new String[]{"which", "su"});
                inputStream = processExec.getInputStream();
                inputStream.getClass();
                if (new BufferedReader(new InputStreamReader(inputStream, Charsets.UTF_8), 8192).readLine() != null) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    logger.getClass();
                }
                processExec.destroy();
                if (!z) {
                    arrayListY = CollectionsKt.Y(RootConstants.f50462f, RootConstants.g);
                    if (arrayListY.isEmpty()) {
                        bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(new File("/proc/mounts"))));
                        arrayList = new ArrayList();
                        while (r8.hasNext()) {
                            str28.getClass();
                            arrayList.add(str28);
                        }
                        bufferedReader.close();
                        if (arrayList == null) {
                            String str213 = Build.FINGERPRINT;
                            str213.getClass();
                            lowerCase = str213.toLowerCase(Locale.ROOT);
                            lowerCase.getClass();
                            while (r3.hasNext()) {
                                lowerCase2 = ((String) obj2).toLowerCase(Locale.ROOT);
                                lowerCase2.getClass();
                                if (StringsKt.k(lowerCase, lowerCase2, false)) {
                                    obj = obj2;
                                    break;
                                }
                            }
                            str = (String) obj;
                            if (str != null) {
                                logger.getClass();
                            }
                            if (str == null) {
                                EmulatorDetector emulatorDetector5 = EmulatorDetector.f65833a;
                                str2 = Build.FINGERPRINT;
                                if (str2 == null) {
                                    str3 = "";
                                } else {
                                    str3 = str2;
                                }
                                str4 = Build.MODEL;
                                if (str4 == null) {
                                    str5 = "";
                                } else {
                                    str5 = str4;
                                }
                                str6 = Build.MANUFACTURER;
                                if (str6 == null) {
                                    str7 = "";
                                } else {
                                    str7 = str6;
                                }
                                str8 = Build.BRAND;
                                if (str8 == null) {
                                    str9 = "";
                                } else {
                                    str9 = str8;
                                }
                                str10 = Build.DEVICE;
                                if (str10 == null) {
                                    str11 = "";
                                } else {
                                    str11 = str10;
                                }
                                str12 = Build.BOARD;
                                if (str12 == null) {
                                    str13 = "";
                                } else {
                                    str13 = str12;
                                }
                                str14 = Build.BOOTLOADER;
                                if (str14 == null) {
                                    str15 = "";
                                } else {
                                    str15 = str14;
                                }
                                str16 = Build.PRODUCT;
                                if (str16 == null) {
                                    str17 = "";
                                } else {
                                    str17 = str16;
                                }
                                str18 = Build.HARDWARE;
                                if (str18 == null) {
                                    str19 = "";
                                } else {
                                    str19 = str18;
                                }
                                EmulatorDetector.DeviceBuildInfo deviceBuildInfo6 = new EmulatorDetector.DeviceBuildInfo(str3, str5, str7, str9, str11, str13, str15, str17, str19);
                                emulatorDetector$isDetected$1 = new EmulatorDetector$isDetected$1(1, emulatorDetector5, EmulatorDetector.class, "defaultFileExists", "defaultFileExists(Ljava/lang/String;)Z", 0);
                                emulatorDetector$isDetected$2 = new EmulatorDetector$isDetected$2(1, emulatorDetector5, EmulatorDetector.class, "defaultReadLines", "defaultReadLines(Ljava/lang/String;)Ljava/util/List;", 0);
                                deviceBuildInfo = new EmulatorDetector.DeviceBuildInfo(EmulatorDetector.a(deviceBuildInfo6.f65841a), EmulatorDetector.a(deviceBuildInfo6.f65842b), EmulatorDetector.a(deviceBuildInfo6.f65843c), EmulatorDetector.a(deviceBuildInfo6.d), EmulatorDetector.a(deviceBuildInfo6.f65844e), EmulatorDetector.a(deviceBuildInfo6.f65845f), EmulatorDetector.a(deviceBuildInfo6.g), EmulatorDetector.a(deviceBuildInfo6.f65846h), EmulatorDetector.a(deviceBuildInfo6.f65847i));
                                str20 = deviceBuildInfo.f65841a;
                                if (!StringsKt.P(str20, "generic", false)) {
                                    str21 = deviceBuildInfo.f65842b;
                                    if (!StringsKt.k(str21, "android sdk built for", false)) {
                                        set = EmulatorDetector.f65835c;
                                        str22 = deviceBuildInfo.f65843c;
                                        if (!set.contains(str22)) {
                                            String str311 = deviceBuildInfo.d;
                                            zP = StringsKt.P(str311, "generic", false);
                                            String str312 = deviceBuildInfo.f65844e;
                                            if (zP) {
                                                set2 = EmulatorDetector.f65834b;
                                                str23 = deviceBuildInfo.f65846h;
                                                if (!set2.contains(str23)) {
                                                    set3 = EmulatorDetector.f65837f;
                                                    str24 = deviceBuildInfo.f65845f;
                                                    if (!set3.contains(str24)) {
                                                        set4 = EmulatorDetector.g;
                                                        if (set4 instanceof Collection) {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            } else {
                                                set2 = EmulatorDetector.f65834b;
                                                str23 = deviceBuildInfo.f65846h;
                                                if (!set2.contains(str23)) {
                                                    set3 = EmulatorDetector.f65837f;
                                                    str24 = deviceBuildInfo.f65845f;
                                                    if (!set3.contains(str24)) {
                                                        set4 = EmulatorDetector.g;
                                                        if (set4 instanceof Collection) {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            it5 = arrayList.iterator();
                            while (it5.hasNext()) {
                                listSplit$default2 = StringsKt__StringsKt.split$default((String) it5.next(), new String[]{" "}, false, 0, 6, null);
                                if (listSplit$default2.size() >= 4) {
                                    str25 = (String) listSplit$default2.get(1);
                                    str26 = (String) listSplit$default2.get(3);
                                    list4 = RootConstants.f50463h;
                                    if (list4 instanceof Collection) {
                                    }
                                    it6 = list4.iterator();
                                    while (it6.hasNext()) {
                                        if (Intrinsics.c((String) it6.next(), str25)) {
                                            listSplit$default3 = StringsKt__StringsKt.split$default(str26, new String[]{","}, false, 0, 6, null);
                                            if (!(listSplit$default3 instanceof Collection)) {
                                            }
                                            it7 = listSplit$default3.iterator();
                                            while (it7.hasNext()) {
                                                if (Intrinsics.c((String) it7.next(), "rw")) {
                                                    logger.getClass();
                                                }
                                            }
                                            break;
                                            break;
                                        }
                                    }
                                }
                            }
                            String str214 = Build.FINGERPRINT;
                            str214.getClass();
                            lowerCase = str214.toLowerCase(Locale.ROOT);
                            lowerCase.getClass();
                            while (r3.hasNext()) {
                                lowerCase2 = ((String) obj2).toLowerCase(Locale.ROOT);
                                lowerCase2.getClass();
                                if (StringsKt.k(lowerCase, lowerCase2, false)) {
                                    obj = obj2;
                                    break;
                                }
                            }
                            str = (String) obj;
                            if (str != null) {
                                logger.getClass();
                            }
                            if (str == null) {
                                EmulatorDetector emulatorDetector6 = EmulatorDetector.f65833a;
                                str2 = Build.FINGERPRINT;
                                if (str2 == null) {
                                    str3 = "";
                                } else {
                                    str3 = str2;
                                }
                                str4 = Build.MODEL;
                                if (str4 == null) {
                                    str5 = "";
                                } else {
                                    str5 = str4;
                                }
                                str6 = Build.MANUFACTURER;
                                if (str6 == null) {
                                    str7 = "";
                                } else {
                                    str7 = str6;
                                }
                                str8 = Build.BRAND;
                                if (str8 == null) {
                                    str9 = "";
                                } else {
                                    str9 = str8;
                                }
                                str10 = Build.DEVICE;
                                if (str10 == null) {
                                    str11 = "";
                                } else {
                                    str11 = str10;
                                }
                                str12 = Build.BOARD;
                                if (str12 == null) {
                                    str13 = "";
                                } else {
                                    str13 = str12;
                                }
                                str14 = Build.BOOTLOADER;
                                if (str14 == null) {
                                    str15 = "";
                                } else {
                                    str15 = str14;
                                }
                                str16 = Build.PRODUCT;
                                if (str16 == null) {
                                    str17 = "";
                                } else {
                                    str17 = str16;
                                }
                                str18 = Build.HARDWARE;
                                if (str18 == null) {
                                    str19 = "";
                                } else {
                                    str19 = str18;
                                }
                                EmulatorDetector.DeviceBuildInfo deviceBuildInfo7 = new EmulatorDetector.DeviceBuildInfo(str3, str5, str7, str9, str11, str13, str15, str17, str19);
                                emulatorDetector$isDetected$1 = new EmulatorDetector$isDetected$1(1, emulatorDetector6, EmulatorDetector.class, "defaultFileExists", "defaultFileExists(Ljava/lang/String;)Z", 0);
                                emulatorDetector$isDetected$2 = new EmulatorDetector$isDetected$2(1, emulatorDetector6, EmulatorDetector.class, "defaultReadLines", "defaultReadLines(Ljava/lang/String;)Ljava/util/List;", 0);
                                deviceBuildInfo = new EmulatorDetector.DeviceBuildInfo(EmulatorDetector.a(deviceBuildInfo7.f65841a), EmulatorDetector.a(deviceBuildInfo7.f65842b), EmulatorDetector.a(deviceBuildInfo7.f65843c), EmulatorDetector.a(deviceBuildInfo7.d), EmulatorDetector.a(deviceBuildInfo7.f65844e), EmulatorDetector.a(deviceBuildInfo7.f65845f), EmulatorDetector.a(deviceBuildInfo7.g), EmulatorDetector.a(deviceBuildInfo7.f65846h), EmulatorDetector.a(deviceBuildInfo7.f65847i));
                                str20 = deviceBuildInfo.f65841a;
                                if (!StringsKt.P(str20, "generic", false)) {
                                    str21 = deviceBuildInfo.f65842b;
                                    if (!StringsKt.k(str21, "android sdk built for", false)) {
                                        set = EmulatorDetector.f65835c;
                                        str22 = deviceBuildInfo.f65843c;
                                        if (!set.contains(str22)) {
                                            String str313 = deviceBuildInfo.d;
                                            zP = StringsKt.P(str313, "generic", false);
                                            String str314 = deviceBuildInfo.f65844e;
                                            if (zP) {
                                                set2 = EmulatorDetector.f65834b;
                                                str23 = deviceBuildInfo.f65846h;
                                                if (!set2.contains(str23)) {
                                                    set3 = EmulatorDetector.f65837f;
                                                    str24 = deviceBuildInfo.f65845f;
                                                    if (!set3.contains(str24)) {
                                                        set4 = EmulatorDetector.g;
                                                        if (set4 instanceof Collection) {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            } else {
                                                set2 = EmulatorDetector.f65834b;
                                                str23 = deviceBuildInfo.f65846h;
                                                if (!set2.contains(str23)) {
                                                    set3 = EmulatorDetector.f65837f;
                                                    str24 = deviceBuildInfo.f65845f;
                                                    if (!set3.contains(str24)) {
                                                        set4 = EmulatorDetector.g;
                                                        if (set4 instanceof Collection) {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        it8 = arrayListY.iterator();
                        while (it8.hasNext()) {
                            zExists = new File((String) it8.next()).exists();
                            if (zExists) {
                                logger.getClass();
                            }
                            if (zExists) {
                            }
                        }
                        bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(new File("/proc/mounts"))));
                        arrayList = new ArrayList();
                        while (r8.hasNext()) {
                            str28.getClass();
                            arrayList.add(str28);
                        }
                        bufferedReader.close();
                        if (arrayList == null) {
                            String str215 = Build.FINGERPRINT;
                            str215.getClass();
                            lowerCase = str215.toLowerCase(Locale.ROOT);
                            lowerCase.getClass();
                            while (r3.hasNext()) {
                                lowerCase2 = ((String) obj2).toLowerCase(Locale.ROOT);
                                lowerCase2.getClass();
                                if (StringsKt.k(lowerCase, lowerCase2, false)) {
                                    obj = obj2;
                                    break;
                                }
                            }
                            str = (String) obj;
                            if (str != null) {
                                logger.getClass();
                            }
                            if (str == null) {
                                EmulatorDetector emulatorDetector7 = EmulatorDetector.f65833a;
                                str2 = Build.FINGERPRINT;
                                if (str2 == null) {
                                    str3 = "";
                                } else {
                                    str3 = str2;
                                }
                                str4 = Build.MODEL;
                                if (str4 == null) {
                                    str5 = "";
                                } else {
                                    str5 = str4;
                                }
                                str6 = Build.MANUFACTURER;
                                if (str6 == null) {
                                    str7 = "";
                                } else {
                                    str7 = str6;
                                }
                                str8 = Build.BRAND;
                                if (str8 == null) {
                                    str9 = "";
                                } else {
                                    str9 = str8;
                                }
                                str10 = Build.DEVICE;
                                if (str10 == null) {
                                    str11 = "";
                                } else {
                                    str11 = str10;
                                }
                                str12 = Build.BOARD;
                                if (str12 == null) {
                                    str13 = "";
                                } else {
                                    str13 = str12;
                                }
                                str14 = Build.BOOTLOADER;
                                if (str14 == null) {
                                    str15 = "";
                                } else {
                                    str15 = str14;
                                }
                                str16 = Build.PRODUCT;
                                if (str16 == null) {
                                    str17 = "";
                                } else {
                                    str17 = str16;
                                }
                                str18 = Build.HARDWARE;
                                if (str18 == null) {
                                    str19 = "";
                                } else {
                                    str19 = str18;
                                }
                                EmulatorDetector.DeviceBuildInfo deviceBuildInfo8 = new EmulatorDetector.DeviceBuildInfo(str3, str5, str7, str9, str11, str13, str15, str17, str19);
                                emulatorDetector$isDetected$1 = new EmulatorDetector$isDetected$1(1, emulatorDetector7, EmulatorDetector.class, "defaultFileExists", "defaultFileExists(Ljava/lang/String;)Z", 0);
                                emulatorDetector$isDetected$2 = new EmulatorDetector$isDetected$2(1, emulatorDetector7, EmulatorDetector.class, "defaultReadLines", "defaultReadLines(Ljava/lang/String;)Ljava/util/List;", 0);
                                deviceBuildInfo = new EmulatorDetector.DeviceBuildInfo(EmulatorDetector.a(deviceBuildInfo8.f65841a), EmulatorDetector.a(deviceBuildInfo8.f65842b), EmulatorDetector.a(deviceBuildInfo8.f65843c), EmulatorDetector.a(deviceBuildInfo8.d), EmulatorDetector.a(deviceBuildInfo8.f65844e), EmulatorDetector.a(deviceBuildInfo8.f65845f), EmulatorDetector.a(deviceBuildInfo8.g), EmulatorDetector.a(deviceBuildInfo8.f65846h), EmulatorDetector.a(deviceBuildInfo8.f65847i));
                                str20 = deviceBuildInfo.f65841a;
                                if (!StringsKt.P(str20, "generic", false)) {
                                    str21 = deviceBuildInfo.f65842b;
                                    if (!StringsKt.k(str21, "android sdk built for", false)) {
                                        set = EmulatorDetector.f65835c;
                                        str22 = deviceBuildInfo.f65843c;
                                        if (!set.contains(str22)) {
                                            String str315 = deviceBuildInfo.d;
                                            zP = StringsKt.P(str315, "generic", false);
                                            String str316 = deviceBuildInfo.f65844e;
                                            if (zP) {
                                                set2 = EmulatorDetector.f65834b;
                                                str23 = deviceBuildInfo.f65846h;
                                                if (!set2.contains(str23)) {
                                                    set3 = EmulatorDetector.f65837f;
                                                    str24 = deviceBuildInfo.f65845f;
                                                    if (!set3.contains(str24)) {
                                                        set4 = EmulatorDetector.g;
                                                        if (set4 instanceof Collection) {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            } else {
                                                set2 = EmulatorDetector.f65834b;
                                                str23 = deviceBuildInfo.f65846h;
                                                if (!set2.contains(str23)) {
                                                    set3 = EmulatorDetector.f65837f;
                                                    str24 = deviceBuildInfo.f65845f;
                                                    if (!set3.contains(str24)) {
                                                        set4 = EmulatorDetector.g;
                                                        if (set4 instanceof Collection) {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            it5 = arrayList.iterator();
                            while (it5.hasNext()) {
                                listSplit$default2 = StringsKt__StringsKt.split$default((String) it5.next(), new String[]{" "}, false, 0, 6, null);
                                if (listSplit$default2.size() >= 4) {
                                    str25 = (String) listSplit$default2.get(1);
                                    str26 = (String) listSplit$default2.get(3);
                                    list4 = RootConstants.f50463h;
                                    if (list4 instanceof Collection) {
                                    }
                                    it6 = list4.iterator();
                                    while (it6.hasNext()) {
                                        if (Intrinsics.c((String) it6.next(), str25)) {
                                            listSplit$default3 = StringsKt__StringsKt.split$default(str26, new String[]{","}, false, 0, 6, null);
                                            if (!(listSplit$default3 instanceof Collection)) {
                                            }
                                            it7 = listSplit$default3.iterator();
                                            while (it7.hasNext()) {
                                                if (Intrinsics.c((String) it7.next(), "rw")) {
                                                    logger.getClass();
                                                }
                                            }
                                            break;
                                            break;
                                        }
                                    }
                                }
                            }
                            String str216 = Build.FINGERPRINT;
                            str216.getClass();
                            lowerCase = str216.toLowerCase(Locale.ROOT);
                            lowerCase.getClass();
                            while (r3.hasNext()) {
                                lowerCase2 = ((String) obj2).toLowerCase(Locale.ROOT);
                                lowerCase2.getClass();
                                if (StringsKt.k(lowerCase, lowerCase2, false)) {
                                    obj = obj2;
                                    break;
                                }
                            }
                            str = (String) obj;
                            if (str != null) {
                                logger.getClass();
                            }
                            if (str == null) {
                                EmulatorDetector emulatorDetector8 = EmulatorDetector.f65833a;
                                str2 = Build.FINGERPRINT;
                                if (str2 == null) {
                                    str3 = "";
                                } else {
                                    str3 = str2;
                                }
                                str4 = Build.MODEL;
                                if (str4 == null) {
                                    str5 = "";
                                } else {
                                    str5 = str4;
                                }
                                str6 = Build.MANUFACTURER;
                                if (str6 == null) {
                                    str7 = "";
                                } else {
                                    str7 = str6;
                                }
                                str8 = Build.BRAND;
                                if (str8 == null) {
                                    str9 = "";
                                } else {
                                    str9 = str8;
                                }
                                str10 = Build.DEVICE;
                                if (str10 == null) {
                                    str11 = "";
                                } else {
                                    str11 = str10;
                                }
                                str12 = Build.BOARD;
                                if (str12 == null) {
                                    str13 = "";
                                } else {
                                    str13 = str12;
                                }
                                str14 = Build.BOOTLOADER;
                                if (str14 == null) {
                                    str15 = "";
                                } else {
                                    str15 = str14;
                                }
                                str16 = Build.PRODUCT;
                                if (str16 == null) {
                                    str17 = "";
                                } else {
                                    str17 = str16;
                                }
                                str18 = Build.HARDWARE;
                                if (str18 == null) {
                                    str19 = "";
                                } else {
                                    str19 = str18;
                                }
                                EmulatorDetector.DeviceBuildInfo deviceBuildInfo9 = new EmulatorDetector.DeviceBuildInfo(str3, str5, str7, str9, str11, str13, str15, str17, str19);
                                emulatorDetector$isDetected$1 = new EmulatorDetector$isDetected$1(1, emulatorDetector8, EmulatorDetector.class, "defaultFileExists", "defaultFileExists(Ljava/lang/String;)Z", 0);
                                emulatorDetector$isDetected$2 = new EmulatorDetector$isDetected$2(1, emulatorDetector8, EmulatorDetector.class, "defaultReadLines", "defaultReadLines(Ljava/lang/String;)Ljava/util/List;", 0);
                                deviceBuildInfo = new EmulatorDetector.DeviceBuildInfo(EmulatorDetector.a(deviceBuildInfo9.f65841a), EmulatorDetector.a(deviceBuildInfo9.f65842b), EmulatorDetector.a(deviceBuildInfo9.f65843c), EmulatorDetector.a(deviceBuildInfo9.d), EmulatorDetector.a(deviceBuildInfo9.f65844e), EmulatorDetector.a(deviceBuildInfo9.f65845f), EmulatorDetector.a(deviceBuildInfo9.g), EmulatorDetector.a(deviceBuildInfo9.f65846h), EmulatorDetector.a(deviceBuildInfo9.f65847i));
                                str20 = deviceBuildInfo.f65841a;
                                if (!StringsKt.P(str20, "generic", false)) {
                                    str21 = deviceBuildInfo.f65842b;
                                    if (!StringsKt.k(str21, "android sdk built for", false)) {
                                        set = EmulatorDetector.f65835c;
                                        str22 = deviceBuildInfo.f65843c;
                                        if (!set.contains(str22)) {
                                            String str317 = deviceBuildInfo.d;
                                            zP = StringsKt.P(str317, "generic", false);
                                            String str318 = deviceBuildInfo.f65844e;
                                            if (zP) {
                                                set2 = EmulatorDetector.f65834b;
                                                str23 = deviceBuildInfo.f65846h;
                                                if (!set2.contains(str23)) {
                                                    set3 = EmulatorDetector.f65837f;
                                                    str24 = deviceBuildInfo.f65845f;
                                                    if (!set3.contains(str24)) {
                                                        set4 = EmulatorDetector.g;
                                                        if (set4 instanceof Collection) {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            } else {
                                                set2 = EmulatorDetector.f65834b;
                                                str23 = deviceBuildInfo.f65846h;
                                                if (!set2.contains(str23)) {
                                                    set3 = EmulatorDetector.f65837f;
                                                    str24 = deviceBuildInfo.f65845f;
                                                    if (!set3.contains(str24)) {
                                                        set4 = EmulatorDetector.g;
                                                        if (set4 instanceof Collection) {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            it = set4.iterator();
                                                            while (it.hasNext()) {
                                                                if (StringsKt.k(deviceBuildInfo.g, (String) it.next(), false)) {
                                                                }
                                                            }
                                                            list = EmulatorDetector.f65840j;
                                                            if (list instanceof Collection) {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                it2 = list.iterator();
                                                                while (it2.hasNext()) {
                                                                    if (((Boolean) emulatorDetector$isDetected$1.invoke(it2.next())).booleanValue()) {
                                                                    }
                                                                }
                                                                list2 = EmulatorDetector.f65838h;
                                                                if (list2 instanceof Collection) {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it3 = list2.iterator();
                                                                    while (it3.hasNext()) {
                                                                        iterable = (Iterable) emulatorDetector$isDetected$2.invoke((String) it3.next());
                                                                        if (iterable instanceof Collection) {
                                                                        }
                                                                        while (r2.hasNext()) {
                                                                            set5 = EmulatorDetector.f65839i;
                                                                            if (set5 instanceof Collection) {
                                                                            }
                                                                            it4 = set5.iterator();
                                                                            while (it4.hasNext()) {
                                                                                if (StringsKt.k(str32, (String) it4.next(), false)) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    iterable2 = (Iterable) emulatorDetector$isDetected$2.invoke("/proc/mounts");
                                                                    if (iterable2 instanceof Collection) {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        while (r0.hasNext()) {
                                                                            if (!StringsKt.k(str33, "vboxsf", false)) {
                                                                            }
                                                                        }
                                                                        list3 = (List) emulatorDetector$isDetected$2.invoke("/proc/cpuinfo");
                                                                        if (list3 instanceof Collection) {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        } else {
                                                                            while (r0.hasNext()) {
                                                                                if (!StringsKt.k(str34, "hypervisor", false)) {
                                                                                }
                                                                            }
                                                                            if (!CommonUtils.g()) {
                                                                                return true;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }
}
