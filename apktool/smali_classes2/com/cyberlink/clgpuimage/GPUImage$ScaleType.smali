.class public final enum Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/GPUImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CENTER_CROP_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

.field public static final enum CENTER_INSIDE_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

.field public static final enum FIT_XY_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

.field private static final synthetic a:[Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    const-string v1, "CENTER_CROP_CAMERA_YUV_BUFFER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->CENTER_CROP_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    new-instance v1, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    const-string v2, "CENTER_INSIDE_CAMERA_YUV_BUFFER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->CENTER_INSIDE_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    new-instance v2, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    const-string v3, "FIT_XY_CAMERA_YUV_BUFFER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->FIT_XY_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    filled-new-array {v0, v1, v2}, [Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    move-result-object v0

    sput-object v0, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->a:[Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;
    .locals 1

    const-class v0, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    return-object p0
.end method

.method public static values()[Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;
    .locals 1

    sget-object v0, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->a:[Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    invoke-virtual {v0}, [Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    return-object v0
.end method
