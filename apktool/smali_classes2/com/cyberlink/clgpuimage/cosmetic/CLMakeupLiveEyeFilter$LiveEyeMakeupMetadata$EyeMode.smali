.class public final enum Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EyeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;

.field public static final enum BLINK:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;

.field public static final enum NORMAL:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;->NORMAL:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;

    new-instance v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;

    const-string v2, "BLINK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;->BLINK:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;

    filled-new-array {v0, v1}, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;

    move-result-object v0

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;->$VALUES:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;
    .locals 1

    const-class v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;

    return-object p0
.end method

.method public static values()[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;
    .locals 1

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;->$VALUES:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;

    invoke-virtual {v0}, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;

    return-object v0
.end method
