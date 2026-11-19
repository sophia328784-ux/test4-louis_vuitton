.class public final enum Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EyebrowMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EYEBROW_ART_DESIGN_MODE:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;

.field public static final enum EYEBROW_ORIGINAL_MODE:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;

.field private static final synthetic a:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;

    const-string v1, "EYEBROW_ORIGINAL_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;->EYEBROW_ORIGINAL_MODE:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;

    new-instance v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;

    const-string v2, "EYEBROW_ART_DESIGN_MODE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;->EYEBROW_ART_DESIGN_MODE:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;

    filled-new-array {v0, v1}, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;

    move-result-object v0

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;->a:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;
    .locals 1

    const-class v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;

    return-object p0
.end method

.method public static values()[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;
    .locals 1

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;->a:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;

    invoke-virtual {v0}, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;

    return-object v0
.end method
