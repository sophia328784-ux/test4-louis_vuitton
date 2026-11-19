.class public final enum Lcom/perfectcorp/perfectlib/CameraView$ScaleType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/CameraView$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CENTER_CROP:Lcom/perfectcorp/perfectlib/CameraView$ScaleType;

.field public static final enum CENTER_INSIDE:Lcom/perfectcorp/perfectlib/CameraView$ScaleType;

.field public static final enum FIT_XY:Lcom/perfectcorp/perfectlib/CameraView$ScaleType;

.field private static final synthetic b:[Lcom/perfectcorp/perfectlib/CameraView$ScaleType;


# instance fields
.field final a:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/perfectcorp/perfectlib/CameraView$ScaleType;

    const/4 v1, 0x0

    sget-object v2, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->CENTER_INSIDE_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    const-string v3, "CENTER_INSIDE"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/CameraView$ScaleType;-><init>(Ljava/lang/String;ILcom/cyberlink/clgpuimage/GPUImage$ScaleType;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/CameraView$ScaleType;->CENTER_INSIDE:Lcom/perfectcorp/perfectlib/CameraView$ScaleType;

    new-instance v1, Lcom/perfectcorp/perfectlib/CameraView$ScaleType;

    const/4 v2, 0x1

    sget-object v3, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->CENTER_CROP_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    const-string v4, "CENTER_CROP"

    invoke-direct {v1, v4, v2, v3}, Lcom/perfectcorp/perfectlib/CameraView$ScaleType;-><init>(Ljava/lang/String;ILcom/cyberlink/clgpuimage/GPUImage$ScaleType;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/CameraView$ScaleType;->CENTER_CROP:Lcom/perfectcorp/perfectlib/CameraView$ScaleType;

    new-instance v2, Lcom/perfectcorp/perfectlib/CameraView$ScaleType;

    const/4 v3, 0x2

    sget-object v4, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->FIT_XY_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    const-string v5, "FIT_XY"

    invoke-direct {v2, v5, v3, v4}, Lcom/perfectcorp/perfectlib/CameraView$ScaleType;-><init>(Ljava/lang/String;ILcom/cyberlink/clgpuimage/GPUImage$ScaleType;)V

    sput-object v2, Lcom/perfectcorp/perfectlib/CameraView$ScaleType;->FIT_XY:Lcom/perfectcorp/perfectlib/CameraView$ScaleType;

    filled-new-array {v0, v1, v2}, [Lcom/perfectcorp/perfectlib/CameraView$ScaleType;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/CameraView$ScaleType;->b:[Lcom/perfectcorp/perfectlib/CameraView$ScaleType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/cyberlink/clgpuimage/GPUImage$ScaleType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/CameraView$ScaleType;->a:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/CameraView$ScaleType;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/CameraView$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/CameraView$ScaleType;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/CameraView$ScaleType;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/CameraView$ScaleType;->b:[Lcom/perfectcorp/perfectlib/CameraView$ScaleType;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/CameraView$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/CameraView$ScaleType;

    return-object v0
.end method
