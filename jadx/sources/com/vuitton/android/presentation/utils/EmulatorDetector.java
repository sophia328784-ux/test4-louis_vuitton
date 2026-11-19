package com.vuitton.android.presentation.utils;

import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/utils/EmulatorDetector;", "", "DeviceBuildInfo", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class EmulatorDetector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EmulatorDetector f65833a = new EmulatorDetector();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Set f65834b = ArraysKt.Z(new String[]{"sdk", "google_sdk", "sdk_x86", "vbox86p", "emu64x", "nox", "droid4x"});

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Set f65835c = ArraysKt.Z(new String[]{"sdk", "google_sdk", "genymotion", "andy", "nox"});
    public static final Set d = ArraysKt.Z(new String[]{"generic", "generic_x86", "generic_x86_64", "vbox86p", "emu64x", "nox", "droid4x"});

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Set f65836e = ArraysKt.Z(new String[]{"goldfish", "ranchu", "vbox86", "nox", "vm_x86"});

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Set f65837f = SetsKt.h("nox");
    public static final Set g = ArraysKt.Z(new String[]{"nox", "qemu", "vbox"});

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final List f65838h = CollectionsKt.P("/system/build.prop", "/vendor/build.prop", "/product/build.prop", "/system/vendor/build.prop");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Set f65839i = ArraysKt.Z(new String[]{"ro.kernel.qemu=1", "ro.boot.qemu=1", "ro.kernel.android.qemud=1", "ro.product.device=generic", "ro.product.device=generic_x86", "ro.product.device=vbox86p", "ro.product.name=sdk", "ro.product.name=sdk_x86", "ro.product.name=google_sdk", "ro.hardware=goldfish", "ro.hardware=ranchu", "ro.hardware=vbox86", "ro.board.platform=nox"});

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final List f65840j = CollectionsKt.P("/dev/socket/genyd", "/dev/socket/baseband_genyd", "/dev/socket/qemud", "/dev/qemu_pipe", "/ueventd.android_x86.rc", "/x86.prop", "/ueventd.ttVM_x86.rc", "/init.ttVM_x86.rc", "/fstab.ttVM_x86", "/fstab.vbox86", "/init.vbox86.rc", "/ueventd.vbox86.rc", "/fstab.andy", "/ueventd.andy.rc", "/fstab.nox", "/init.nox.rc", "/ueventd.nox.rc", "/system/bin/nox-prop", "/system/bin/noxd", "/system/lib/libnoxd.so", "/system/bin/ldinit", "/system/bin/enable_houdini", "/system/lib/libhoudini.so", "/system/lib64/libhoudini.so", "/system/bin/bstfolder", "/system/priv-app/com.bluestacks.bstfolder.apk", "/mnt/windows/BstSharedFolder");

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\f\b\u0081\b\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;", "", "", "fingerprint", "model", "manufacturer", "brand", "device", "board", "bootloader", "product", "hardware", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DeviceBuildInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65841a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f65842b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f65843c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f65844e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f65845f;
        public final String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f65846h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final String f65847i;

        public DeviceBuildInfo(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            pq0.z(str, str2, str3, str4, str5);
            d21.y(str6, str7, str8, str9);
            this.f65841a = str;
            this.f65842b = str2;
            this.f65843c = str3;
            this.d = str4;
            this.f65844e = str5;
            this.f65845f = str6;
            this.g = str7;
            this.f65846h = str8;
            this.f65847i = str9;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DeviceBuildInfo)) {
                return false;
            }
            DeviceBuildInfo deviceBuildInfo = (DeviceBuildInfo) obj;
            return Intrinsics.c(this.f65841a, deviceBuildInfo.f65841a) && Intrinsics.c(this.f65842b, deviceBuildInfo.f65842b) && Intrinsics.c(this.f65843c, deviceBuildInfo.f65843c) && Intrinsics.c(this.d, deviceBuildInfo.d) && Intrinsics.c(this.f65844e, deviceBuildInfo.f65844e) && Intrinsics.c(this.f65845f, deviceBuildInfo.f65845f) && Intrinsics.c(this.g, deviceBuildInfo.g) && Intrinsics.c(this.f65846h, deviceBuildInfo.f65846h) && Intrinsics.c(this.f65847i, deviceBuildInfo.f65847i);
        }

        public final int hashCode() {
            return this.f65847i.hashCode() + fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(this.f65841a.hashCode() * 31, 31, this.f65842b), 31, this.f65843c), 31, this.d), 31, this.f65844e), 31, this.f65845f), 31, this.g), 31, this.f65846h);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("DeviceBuildInfo(fingerprint=", this.f65841a, ", model=", this.f65842b, ", manufacturer=");
            cj.C(sbS, this.f65843c, ", brand=", this.d, ", device=");
            cj.C(sbS, this.f65844e, ", board=", this.f65845f, ", bootloader=");
            cj.C(sbS, this.g, ", product=", this.f65846h, ", hardware=");
            return n00.r(this.f65847i, ")", sbS);
        }
    }

    public static String a(String str) {
        String string = StringsKt.a0(str).toString();
        Locale locale = Locale.ROOT;
        locale.getClass();
        String lowerCase = string.toLowerCase(locale);
        lowerCase.getClass();
        return lowerCase;
    }
}
