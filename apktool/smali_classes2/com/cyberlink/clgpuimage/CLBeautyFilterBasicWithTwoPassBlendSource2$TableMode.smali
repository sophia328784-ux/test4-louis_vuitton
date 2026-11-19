.class public final enum Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TableMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TABLE_1D:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

.field public static final enum TABLE_3D:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

.field public static final enum TABLE_NONE:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

.field private static final synthetic a:[Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    const-string v1, "TABLE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;->TABLE_NONE:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    new-instance v1, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    const-string v2, "TABLE_3D"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;->TABLE_3D:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    new-instance v2, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    const-string v3, "TABLE_1D"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;->TABLE_1D:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    filled-new-array {v0, v1, v2}, [Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    move-result-object v0

    sput-object v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;->a:[Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;
    .locals 1

    const-class v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    return-object p0
.end method

.method public static values()[Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;
    .locals 1

    sget-object v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;->a:[Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    invoke-virtual {v0}, [Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    return-object v0
.end method
