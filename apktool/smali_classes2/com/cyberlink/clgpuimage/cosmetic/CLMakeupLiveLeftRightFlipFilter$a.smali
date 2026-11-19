.class public final enum Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLeftRightFlipFilter$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLeftRightFlipFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLeftRightFlipFilter$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLeftRightFlipFilter$a;

.field public static final enum b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLeftRightFlipFilter$a;

.field public static final enum c:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLeftRightFlipFilter$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLeftRightFlipFilter$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLeftRightFlipFilter$a;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLeftRightFlipFilter$a;

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLeftRightFlipFilter$a;

    const-string v1, "FOR_PORTRAIT_ORIENTATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLeftRightFlipFilter$a;->b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLeftRightFlipFilter$a;

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLeftRightFlipFilter$a;

    const-string v1, "FOR_LANDSCAPE_ORIENTATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLeftRightFlipFilter$a;->c:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLeftRightFlipFilter$a;

    return-void
.end method
