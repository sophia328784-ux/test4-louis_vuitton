.class public final enum Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PostProcessMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum POST_FADE:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

.field public static final enum POST_NONE:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

.field public static final enum POST_NORMAL:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

.field public static final enum POST_SOURCE:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

.field public static final enum POST_VIGNETTE:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

.field private static final synthetic a:[Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

    const-string v1, "POST_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;->POST_NONE:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

    new-instance v1, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

    const-string v2, "POST_NORMAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;->POST_NORMAL:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

    new-instance v2, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

    const-string v3, "POST_VIGNETTE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;->POST_VIGNETTE:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

    new-instance v3, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

    const-string v4, "POST_SOURCE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;->POST_SOURCE:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

    new-instance v4, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

    const-string v5, "POST_FADE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;->POST_FADE:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

    move-result-object v0

    sput-object v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;->a:[Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;
    .locals 1

    const-class v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

    return-object p0
.end method

.method public static values()[Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;
    .locals 1

    sget-object v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;->a:[Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

    invoke-virtual {v0}, [Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

    return-object v0
.end method
