.class public final enum Lcom/cyberlink/clgpuimage/Rotation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyberlink/clgpuimage/Rotation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NORMAL:Lcom/cyberlink/clgpuimage/Rotation;

.field public static final enum ROTATION_180:Lcom/cyberlink/clgpuimage/Rotation;

.field public static final enum ROTATION_270:Lcom/cyberlink/clgpuimage/Rotation;

.field public static final enum ROTATION_90:Lcom/cyberlink/clgpuimage/Rotation;

.field private static final synthetic a:[Lcom/cyberlink/clgpuimage/Rotation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/cyberlink/clgpuimage/Rotation;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyberlink/clgpuimage/Rotation;->NORMAL:Lcom/cyberlink/clgpuimage/Rotation;

    new-instance v1, Lcom/cyberlink/clgpuimage/Rotation;

    const-string v2, "ROTATION_90"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cyberlink/clgpuimage/Rotation;->ROTATION_90:Lcom/cyberlink/clgpuimage/Rotation;

    new-instance v2, Lcom/cyberlink/clgpuimage/Rotation;

    const-string v3, "ROTATION_180"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/cyberlink/clgpuimage/Rotation;->ROTATION_180:Lcom/cyberlink/clgpuimage/Rotation;

    new-instance v3, Lcom/cyberlink/clgpuimage/Rotation;

    const-string v4, "ROTATION_270"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cyberlink/clgpuimage/Rotation;->ROTATION_270:Lcom/cyberlink/clgpuimage/Rotation;

    filled-new-array {v0, v1, v2, v3}, [Lcom/cyberlink/clgpuimage/Rotation;

    move-result-object v0

    sput-object v0, Lcom/cyberlink/clgpuimage/Rotation;->a:[Lcom/cyberlink/clgpuimage/Rotation;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyberlink/clgpuimage/Rotation;
    .locals 1

    const-class v0, Lcom/cyberlink/clgpuimage/Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyberlink/clgpuimage/Rotation;

    return-object p0
.end method

.method public static values()[Lcom/cyberlink/clgpuimage/Rotation;
    .locals 1

    sget-object v0, Lcom/cyberlink/clgpuimage/Rotation;->a:[Lcom/cyberlink/clgpuimage/Rotation;

    invoke-virtual {v0}, [Lcom/cyberlink/clgpuimage/Rotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyberlink/clgpuimage/Rotation;

    return-object v0
.end method
