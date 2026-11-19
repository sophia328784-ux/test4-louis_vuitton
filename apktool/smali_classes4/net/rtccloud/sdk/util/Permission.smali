.class public final enum Lnet/rtccloud/sdk/util/Permission;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/util/Permission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/util/Permission;

.field public static final enum BLUETOOTH:Lnet/rtccloud/sdk/util/Permission;

.field public static final enum CAMERA:Lnet/rtccloud/sdk/util/Permission;

.field public static final enum INTERNET:Lnet/rtccloud/sdk/util/Permission;

.field public static final enum MODIFY_AUDIO_SETTINGS:Lnet/rtccloud/sdk/util/Permission;

.field public static final enum READ_PHONE_STATE:Lnet/rtccloud/sdk/util/Permission;

.field public static final enum RECORD_AUDIO:Lnet/rtccloud/sdk/util/Permission;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/util/Permission;
    .locals 6

    sget-object v0, Lnet/rtccloud/sdk/util/Permission;->INTERNET:Lnet/rtccloud/sdk/util/Permission;

    sget-object v1, Lnet/rtccloud/sdk/util/Permission;->CAMERA:Lnet/rtccloud/sdk/util/Permission;

    sget-object v2, Lnet/rtccloud/sdk/util/Permission;->RECORD_AUDIO:Lnet/rtccloud/sdk/util/Permission;

    sget-object v3, Lnet/rtccloud/sdk/util/Permission;->MODIFY_AUDIO_SETTINGS:Lnet/rtccloud/sdk/util/Permission;

    sget-object v4, Lnet/rtccloud/sdk/util/Permission;->BLUETOOTH:Lnet/rtccloud/sdk/util/Permission;

    sget-object v5, Lnet/rtccloud/sdk/util/Permission;->READ_PHONE_STATE:Lnet/rtccloud/sdk/util/Permission;

    filled-new-array/range {v0 .. v5}, [Lnet/rtccloud/sdk/util/Permission;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/rtccloud/sdk/util/Permission;

    const/4 v1, 0x0

    const-string v2, "android.permission.INTERNET"

    const-string v3, "INTERNET"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/util/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/util/Permission;->INTERNET:Lnet/rtccloud/sdk/util/Permission;

    new-instance v0, Lnet/rtccloud/sdk/util/Permission;

    const/4 v1, 0x1

    const-string v2, "android.permission.CAMERA"

    const-string v3, "CAMERA"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/util/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/util/Permission;->CAMERA:Lnet/rtccloud/sdk/util/Permission;

    new-instance v0, Lnet/rtccloud/sdk/util/Permission;

    const/4 v1, 0x2

    const-string v2, "android.permission.RECORD_AUDIO"

    const-string v3, "RECORD_AUDIO"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/util/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/util/Permission;->RECORD_AUDIO:Lnet/rtccloud/sdk/util/Permission;

    new-instance v0, Lnet/rtccloud/sdk/util/Permission;

    const/4 v1, 0x3

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    const-string v3, "MODIFY_AUDIO_SETTINGS"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/util/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/util/Permission;->MODIFY_AUDIO_SETTINGS:Lnet/rtccloud/sdk/util/Permission;

    new-instance v0, Lnet/rtccloud/sdk/util/Permission;

    const/4 v1, 0x4

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "BLUETOOTH"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/util/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/util/Permission;->BLUETOOTH:Lnet/rtccloud/sdk/util/Permission;

    new-instance v0, Lnet/rtccloud/sdk/util/Permission;

    const/4 v1, 0x5

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "READ_PHONE_STATE"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/util/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/util/Permission;->READ_PHONE_STATE:Lnet/rtccloud/sdk/util/Permission;

    invoke-static {}, Lnet/rtccloud/sdk/util/Permission;->$values()[Lnet/rtccloud/sdk/util/Permission;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/util/Permission;->$VALUES:[Lnet/rtccloud/sdk/util/Permission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/rtccloud/sdk/util/Permission;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/util/Permission;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/util/Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/util/Permission;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/util/Permission;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/Permission;->$VALUES:[Lnet/rtccloud/sdk/util/Permission;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/util/Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/util/Permission;

    return-object v0
.end method


# virtual methods
.method public description(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lnet/rtccloud/sdk/util/Permission;->value:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/util/Permission;->value:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget-object p0, p0, Lnet/rtccloud/sdk/util/Permission;->value:Ljava/lang/String;

    return-object p0
.end method

.method public isGranted(Landroid/content/Context;)Z
    .locals 2

    iget-object p0, p0, Lnet/rtccloud/sdk/util/Permission;->value:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public value()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/util/Permission;->value:Ljava/lang/String;

    return-object p0
.end method
