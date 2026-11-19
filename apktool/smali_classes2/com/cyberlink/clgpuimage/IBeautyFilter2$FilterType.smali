.class public final enum Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/IBeautyFilter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISABLE_SMOOTH:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

.field public static final enum ENABLE_SMOOTH:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

.field public static final enum LIVE_SMOOTH:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

.field private static final synthetic a:[Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    const-string v1, "LIVE_SMOOTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;->LIVE_SMOOTH:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    new-instance v1, Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    const-string v2, "ENABLE_SMOOTH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;->ENABLE_SMOOTH:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    new-instance v2, Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    const-string v3, "DISABLE_SMOOTH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;->DISABLE_SMOOTH:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    filled-new-array {v0, v1, v2}, [Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    move-result-object v0

    sput-object v0, Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;->a:[Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;
    .locals 1

    const-class v0, Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    return-object p0
.end method

.method public static values()[Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;
    .locals 1

    sget-object v0, Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;->a:[Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    invoke-virtual {v0}, [Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    return-object v0
.end method
