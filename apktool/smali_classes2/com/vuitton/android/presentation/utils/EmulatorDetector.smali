.class public final Lcom/vuitton/android/presentation/utils/EmulatorDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u00c1\u0002\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/utils/EmulatorDetector;",
        "",
        "DeviceBuildInfo",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/vuitton/android/presentation/utils/EmulatorDetector;

.field public static final b:Ljava/util/Set;

.field public static final c:Ljava/util/Set;

.field public static final d:Ljava/util/Set;

.field public static final e:Ljava/util/Set;

.field public static final f:Ljava/util/Set;

.field public static final g:Ljava/util/Set;

.field public static final h:Ljava/util/List;

.field public static final i:Ljava/util/Set;

.field public static final j:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    new-instance v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->a:Lcom/vuitton/android/presentation/utils/EmulatorDetector;

    const-string v6, "nox"

    const-string v7, "droid4x"

    const-string v1, "sdk"

    const-string v2, "google_sdk"

    const-string v3, "sdk_x86"

    const-string v4, "vbox86p"

    const-string v5, "emu64x"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->b:Ljava/util/Set;

    const-string v0, "sdk"

    const-string v1, "google_sdk"

    const-string v2, "genymotion"

    const-string v3, "andy"

    const-string v4, "nox"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->c:Ljava/util/Set;

    const-string v10, "nox"

    const-string v11, "droid4x"

    const-string v5, "generic"

    const-string v6, "generic_x86"

    const-string v7, "generic_x86_64"

    const-string v8, "vbox86p"

    const-string v9, "emu64x"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->d:Ljava/util/Set;

    const-string v0, "vbox86"

    const-string v1, "vm_x86"

    const-string v2, "goldfish"

    const-string v3, "ranchu"

    filled-new-array {v2, v3, v0, v4, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->e:Ljava/util/Set;

    invoke-static {v4}, Lkotlin/collections/SetsKt;->h(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->f:Ljava/util/Set;

    const-string v0, "qemu"

    const-string v1, "vbox"

    filled-new-array {v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->g:Ljava/util/Set;

    const-string v0, "/product/build.prop"

    const-string v1, "/system/vendor/build.prop"

    const-string v2, "/system/build.prop"

    const-string v3, "/vendor/build.prop"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->h:Ljava/util/List;

    const-string v12, "ro.hardware=vbox86"

    const-string v13, "ro.board.platform=nox"

    const-string v1, "ro.kernel.qemu=1"

    const-string v2, "ro.boot.qemu=1"

    const-string v3, "ro.kernel.android.qemud=1"

    const-string v4, "ro.product.device=generic"

    const-string v5, "ro.product.device=generic_x86"

    const-string v6, "ro.product.device=vbox86p"

    const-string v7, "ro.product.name=sdk"

    const-string v8, "ro.product.name=sdk_x86"

    const-string v9, "ro.product.name=google_sdk"

    const-string v10, "ro.hardware=goldfish"

    const-string v11, "ro.hardware=ranchu"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->i:Ljava/util/Set;

    const-string v26, "/system/priv-app/com.bluestacks.bstfolder.apk"

    const-string v27, "/mnt/windows/BstSharedFolder"

    const-string v1, "/dev/socket/genyd"

    const-string v2, "/dev/socket/baseband_genyd"

    const-string v3, "/dev/socket/qemud"

    const-string v4, "/dev/qemu_pipe"

    const-string v5, "/ueventd.android_x86.rc"

    const-string v6, "/x86.prop"

    const-string v7, "/ueventd.ttVM_x86.rc"

    const-string v8, "/init.ttVM_x86.rc"

    const-string v9, "/fstab.ttVM_x86"

    const-string v10, "/fstab.vbox86"

    const-string v11, "/init.vbox86.rc"

    const-string v12, "/ueventd.vbox86.rc"

    const-string v13, "/fstab.andy"

    const-string v14, "/ueventd.andy.rc"

    const-string v15, "/fstab.nox"

    const-string v16, "/init.nox.rc"

    const-string v17, "/ueventd.nox.rc"

    const-string v18, "/system/bin/nox-prop"

    const-string v19, "/system/bin/noxd"

    const-string v20, "/system/lib/libnoxd.so"

    const-string v21, "/system/bin/ldinit"

    const-string v22, "/system/bin/enable_houdini"

    const-string v23, "/system/lib/libhoudini.so"

    const-string v24, "/system/lib64/libhoudini.so"

    const-string v25, "/system/bin/bstfolder"

    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->j:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
