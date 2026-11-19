.class public final enum Lcom/cyberlink/clgpuimage/IBeautyFilter2$EffectMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/IBeautyFilter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EffectMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyberlink/clgpuimage/IBeautyFilter2$EffectMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PORTRAIT_NATURAL:Lcom/cyberlink/clgpuimage/IBeautyFilter2$EffectMode;

.field private static final synthetic a:[Lcom/cyberlink/clgpuimage/IBeautyFilter2$EffectMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cyberlink/clgpuimage/IBeautyFilter2$EffectMode;

    const-string v1, "PORTRAIT_NATURAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyberlink/clgpuimage/IBeautyFilter2$EffectMode;->PORTRAIT_NATURAL:Lcom/cyberlink/clgpuimage/IBeautyFilter2$EffectMode;

    filled-new-array {v0}, [Lcom/cyberlink/clgpuimage/IBeautyFilter2$EffectMode;

    move-result-object v0

    sput-object v0, Lcom/cyberlink/clgpuimage/IBeautyFilter2$EffectMode;->a:[Lcom/cyberlink/clgpuimage/IBeautyFilter2$EffectMode;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyberlink/clgpuimage/IBeautyFilter2$EffectMode;
    .locals 1

    const-class v0, Lcom/cyberlink/clgpuimage/IBeautyFilter2$EffectMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyberlink/clgpuimage/IBeautyFilter2$EffectMode;

    return-object p0
.end method

.method public static values()[Lcom/cyberlink/clgpuimage/IBeautyFilter2$EffectMode;
    .locals 1

    sget-object v0, Lcom/cyberlink/clgpuimage/IBeautyFilter2$EffectMode;->a:[Lcom/cyberlink/clgpuimage/IBeautyFilter2$EffectMode;

    invoke-virtual {v0}, [Lcom/cyberlink/clgpuimage/IBeautyFilter2$EffectMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyberlink/clgpuimage/IBeautyFilter2$EffectMode;

    return-object v0
.end method
