.class public final enum Lcom/sightcall/universal/ar/ArTracking$Reason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/ar/ArTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/ar/ArTracking$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/ar/ArTracking$Reason;

.field public static final enum EXCESSIVE_MOTION:Lcom/sightcall/universal/ar/ArTracking$Reason;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "excessive_motion"
    .end annotation
.end field

.field public static final enum INSUFFICIENT_FEATURES:Lcom/sightcall/universal/ar/ArTracking$Reason;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "insufficient_features"
    .end annotation
.end field

.field public static final enum INSUFFICIENT_LIGHT:Lcom/sightcall/universal/ar/ArTracking$Reason;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "insufficient_light"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/ar/ArTracking$Reason;
    .locals 3

    sget-object v0, Lcom/sightcall/universal/ar/ArTracking$Reason;->INSUFFICIENT_LIGHT:Lcom/sightcall/universal/ar/ArTracking$Reason;

    sget-object v1, Lcom/sightcall/universal/ar/ArTracking$Reason;->INSUFFICIENT_FEATURES:Lcom/sightcall/universal/ar/ArTracking$Reason;

    sget-object v2, Lcom/sightcall/universal/ar/ArTracking$Reason;->EXCESSIVE_MOTION:Lcom/sightcall/universal/ar/ArTracking$Reason;

    filled-new-array {v0, v1, v2}, [Lcom/sightcall/universal/ar/ArTracking$Reason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/ar/ArTracking$Reason;

    const-string v1, "INSUFFICIENT_LIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/ar/ArTracking$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/ar/ArTracking$Reason;->INSUFFICIENT_LIGHT:Lcom/sightcall/universal/ar/ArTracking$Reason;

    new-instance v0, Lcom/sightcall/universal/ar/ArTracking$Reason;

    const-string v1, "INSUFFICIENT_FEATURES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/ar/ArTracking$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/ar/ArTracking$Reason;->INSUFFICIENT_FEATURES:Lcom/sightcall/universal/ar/ArTracking$Reason;

    new-instance v0, Lcom/sightcall/universal/ar/ArTracking$Reason;

    const-string v1, "EXCESSIVE_MOTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/ar/ArTracking$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/ar/ArTracking$Reason;->EXCESSIVE_MOTION:Lcom/sightcall/universal/ar/ArTracking$Reason;

    invoke-static {}, Lcom/sightcall/universal/ar/ArTracking$Reason;->$values()[Lcom/sightcall/universal/ar/ArTracking$Reason;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/ar/ArTracking$Reason;->$VALUES:[Lcom/sightcall/universal/ar/ArTracking$Reason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/ar/ArTracking$Reason;
    .locals 1

    const-class v0, Lcom/sightcall/universal/ar/ArTracking$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/ar/ArTracking$Reason;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/ar/ArTracking$Reason;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/ar/ArTracking$Reason;->$VALUES:[Lcom/sightcall/universal/ar/ArTracking$Reason;

    invoke-virtual {v0}, [Lcom/sightcall/universal/ar/ArTracking$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/ar/ArTracking$Reason;

    return-object v0
.end method
