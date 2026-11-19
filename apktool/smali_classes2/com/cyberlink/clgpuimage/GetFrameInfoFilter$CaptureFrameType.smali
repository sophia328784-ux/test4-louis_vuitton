.class public final enum Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CAPTURE_AFTER_MAKEUP_FILTERS:Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;

.field public static final enum CAPTURE_BOTH:Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;

.field public static final enum CAPTURE_SOURCE:Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;

.field public static final enum NONE:Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;

.field private static final synthetic a:[Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;->NONE:Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;

    new-instance v1, Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;

    const-string v2, "CAPTURE_SOURCE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;->CAPTURE_SOURCE:Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;

    new-instance v2, Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;

    const-string v3, "CAPTURE_AFTER_MAKEUP_FILTERS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;->CAPTURE_AFTER_MAKEUP_FILTERS:Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;

    new-instance v3, Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;

    const-string v4, "CAPTURE_BOTH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;->CAPTURE_BOTH:Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;

    move-result-object v0

    sput-object v0, Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;->a:[Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;
    .locals 1

    const-class v0, Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;

    return-object p0
.end method

.method public static values()[Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;
    .locals 1

    sget-object v0, Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;->a:[Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;

    invoke-virtual {v0}, [Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CaptureFrameType;

    return-object v0
.end method
