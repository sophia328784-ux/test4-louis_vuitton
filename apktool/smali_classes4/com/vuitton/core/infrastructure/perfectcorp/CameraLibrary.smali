.class public final enum Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;

.field public static final enum CAMERA_1:Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;

.field public static final enum CAMERA_2:Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;

    const-string v1, "CAMERA_1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;->CAMERA_1:Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;

    new-instance v1, Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;

    const-string v2, "CAMERA_2"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;->CAMERA_2:Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;

    filled-new-array {v0, v1}, [Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;

    move-result-object v0

    sput-object v0, Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;->$VALUES:[Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;
    .locals 1

    const-class v0, Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;
    .locals 1

    sget-object v0, Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;->$VALUES:[Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;

    invoke-virtual {v0}, [Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;

    return-object v0
.end method
