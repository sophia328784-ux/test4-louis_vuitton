.class public final enum Lcom/sightcall/universal/ar/ArIgnored$Reason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/ar/ArIgnored;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/ar/ArIgnored$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/ar/ArIgnored$Reason;

.field public static final enum BACKGROUND:Lcom/sightcall/universal/ar/ArIgnored$Reason;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "background"
    .end annotation
.end field

.field public static final enum CAMERA_OFF:Lcom/sightcall/universal/ar/ArIgnored$Reason;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "cameraOff"
    .end annotation
.end field

.field public static final enum CAMERA_SOURCE:Lcom/sightcall/universal/ar/ArIgnored$Reason;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "cameraSource"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/sightcall/universal/ar/ArIgnored$Reason;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "unknown"
    .end annotation
.end field

.field public static final enum UNSUPPORTED:Lcom/sightcall/universal/ar/ArIgnored$Reason;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "unsupported"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/ar/ArIgnored$Reason;
    .locals 5

    sget-object v0, Lcom/sightcall/universal/ar/ArIgnored$Reason;->UNKNOWN:Lcom/sightcall/universal/ar/ArIgnored$Reason;

    sget-object v1, Lcom/sightcall/universal/ar/ArIgnored$Reason;->UNSUPPORTED:Lcom/sightcall/universal/ar/ArIgnored$Reason;

    sget-object v2, Lcom/sightcall/universal/ar/ArIgnored$Reason;->CAMERA_OFF:Lcom/sightcall/universal/ar/ArIgnored$Reason;

    sget-object v3, Lcom/sightcall/universal/ar/ArIgnored$Reason;->CAMERA_SOURCE:Lcom/sightcall/universal/ar/ArIgnored$Reason;

    sget-object v4, Lcom/sightcall/universal/ar/ArIgnored$Reason;->BACKGROUND:Lcom/sightcall/universal/ar/ArIgnored$Reason;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sightcall/universal/ar/ArIgnored$Reason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/ar/ArIgnored$Reason;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/ar/ArIgnored$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/ar/ArIgnored$Reason;->UNKNOWN:Lcom/sightcall/universal/ar/ArIgnored$Reason;

    new-instance v0, Lcom/sightcall/universal/ar/ArIgnored$Reason;

    const-string v1, "UNSUPPORTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/ar/ArIgnored$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/ar/ArIgnored$Reason;->UNSUPPORTED:Lcom/sightcall/universal/ar/ArIgnored$Reason;

    new-instance v0, Lcom/sightcall/universal/ar/ArIgnored$Reason;

    const-string v1, "CAMERA_OFF"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/ar/ArIgnored$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/ar/ArIgnored$Reason;->CAMERA_OFF:Lcom/sightcall/universal/ar/ArIgnored$Reason;

    new-instance v0, Lcom/sightcall/universal/ar/ArIgnored$Reason;

    const-string v1, "CAMERA_SOURCE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/ar/ArIgnored$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/ar/ArIgnored$Reason;->CAMERA_SOURCE:Lcom/sightcall/universal/ar/ArIgnored$Reason;

    new-instance v0, Lcom/sightcall/universal/ar/ArIgnored$Reason;

    const-string v1, "BACKGROUND"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/ar/ArIgnored$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/ar/ArIgnored$Reason;->BACKGROUND:Lcom/sightcall/universal/ar/ArIgnored$Reason;

    invoke-static {}, Lcom/sightcall/universal/ar/ArIgnored$Reason;->$values()[Lcom/sightcall/universal/ar/ArIgnored$Reason;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/ar/ArIgnored$Reason;->$VALUES:[Lcom/sightcall/universal/ar/ArIgnored$Reason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/ar/ArIgnored$Reason;
    .locals 1

    const-class v0, Lcom/sightcall/universal/ar/ArIgnored$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/ar/ArIgnored$Reason;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/ar/ArIgnored$Reason;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/ar/ArIgnored$Reason;->$VALUES:[Lcom/sightcall/universal/ar/ArIgnored$Reason;

    invoke-virtual {v0}, [Lcom/sightcall/universal/ar/ArIgnored$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/ar/ArIgnored$Reason;

    return-object v0
.end method
