.class public final enum Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConcealerMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONCEALER_MODE_DARK_CIRCLE_ONLY:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

.field public static final enum CONCEALER_MODE_SPOT_DARK_CIRCLE:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

.field public static final enum CONCEALER_MODE_SPOT_ONLY:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

.field private static final synthetic a:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    const-string v1, "CONCEALER_MODE_SPOT_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;->CONCEALER_MODE_SPOT_ONLY:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    new-instance v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    const-string v2, "CONCEALER_MODE_DARK_CIRCLE_ONLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;->CONCEALER_MODE_DARK_CIRCLE_ONLY:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    const-string v3, "CONCEALER_MODE_SPOT_DARK_CIRCLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;->CONCEALER_MODE_SPOT_DARK_CIRCLE:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    filled-new-array {v0, v1, v2}, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    move-result-object v0

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;->a:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;
    .locals 1

    const-class v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    return-object p0
.end method

.method public static values()[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;
    .locals 1

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;->a:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    invoke-virtual {v0}, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    return-object v0
.end method
