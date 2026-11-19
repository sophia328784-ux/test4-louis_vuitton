.class public final Lcom/sightcall/universal/permission/Permissions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REQUIRED_PERMISSIONS:[Ljava/lang/String;

.field public static final REQUIRED_PERMISSIONS30:[Ljava/lang/String;

.field public static final REQUIRED_PERMISSIONS30_INSTANTAPP:[Ljava/lang/String;

.field public static final REQUIRED_PERMISSIONS33:[Ljava/lang/String;

.field public static final REQUIRED_PERMISSIONS_INSTANTAPP:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android.permission.INTERNET"

    const-string v1, "android.permission.CAMERA"

    const-string v2, "android.permission.RECORD_AUDIO"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sightcall/universal/permission/Permissions;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    const-string v3, "android.permission.READ_PHONE_STATE"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sightcall/universal/permission/Permissions;->REQUIRED_PERMISSIONS30:[Ljava/lang/String;

    const-string v4, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sightcall/universal/permission/Permissions;->REQUIRED_PERMISSIONS33:[Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sightcall/universal/permission/Permissions;->REQUIRED_PERMISSIONS_INSTANTAPP:[Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/permission/Permissions;->REQUIRED_PERMISSIONS30_INSTANTAPP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermissionList(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk30()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sightcall/pratik/InstantAppWrapper;->isInstantApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sightcall/universal/permission/Permissions;->REQUIRED_PERMISSIONS30_INSTANTAPP:[Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/sightcall/pratik/InstantAppWrapper;->isInstantApp(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sightcall/universal/permission/Permissions;->REQUIRED_PERMISSIONS_INSTANTAPP:[Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk33()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sightcall/universal/permission/Permissions;->REQUIRED_PERMISSIONS33:[Ljava/lang/String;

    return-object p0

    :cond_2
    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk30()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/sightcall/universal/permission/Permissions;->REQUIRED_PERMISSIONS30:[Ljava/lang/String;

    return-object p0

    :cond_3
    sget-object p0, Lcom/sightcall/universal/permission/Permissions;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    return-object p0
.end method

.method public static hasGrantedPermissions([I)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static hasRequiredPermissions(Landroid/content/Context;)Z
    .locals 5

    invoke-static {p0}, Lcom/sightcall/universal/permission/Permissions;->getPermissionList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
