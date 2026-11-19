.class public final Lcom/lightup/sdk/device/helpers/LightupHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lightup/sdk/device/helpers/LightupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0087\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0006\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u0011\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008R\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/lightup/sdk/device/helpers/LightupHelper$Companion;",
        "",
        "<init>",
        "()V",
        "defaultWalkingConfig",
        "Lcom/lightup/sdk/device/model/WalkingModeConfig;",
        "getDefaultWalkingConfig$annotations",
        "getDefaultWalkingConfig",
        "()Lcom/lightup/sdk/device/model/WalkingModeConfig;",
        "defaultX408WalkingConfig",
        "getDefaultX408WalkingConfig",
        "defaultKeepAllWalkingConfig",
        "getDefaultKeepAllWalkingConfig",
        "sdkVersion",
        "",
        "getSdkVersion",
        "()Ljava/lang/String;",
        "library"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/lightup/sdk/device/helpers/LightupHelper$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getDefaultWalkingConfig$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getDefaultKeepAllWalkingConfig()Lcom/lightup/sdk/device/model/WalkingModeConfig;
    .locals 0

    invoke-static {}, Lcom/lightup/sdk/device/helpers/LightupHelper;->access$getDefaultKeepAllWalkingConfig$cp()Lcom/lightup/sdk/device/model/WalkingModeConfig;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultWalkingConfig()Lcom/lightup/sdk/device/model/WalkingModeConfig;
    .locals 0

    invoke-static {}, Lcom/lightup/sdk/device/helpers/LightupHelper;->access$getDefaultWalkingConfig$cp()Lcom/lightup/sdk/device/model/WalkingModeConfig;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultX408WalkingConfig()Lcom/lightup/sdk/device/model/WalkingModeConfig;
    .locals 0

    invoke-static {}, Lcom/lightup/sdk/device/helpers/LightupHelper;->access$getDefaultX408WalkingConfig$cp()Lcom/lightup/sdk/device/model/WalkingModeConfig;

    move-result-object p0

    return-object p0
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "0.6.0"

    return-object p0
.end method
