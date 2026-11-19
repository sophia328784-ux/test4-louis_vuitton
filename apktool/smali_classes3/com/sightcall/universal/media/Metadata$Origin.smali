.class public final enum Lcom/sightcall/universal/media/Metadata$Origin;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Origin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/media/Metadata$Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/media/Metadata$Origin;

.field public static final enum CAMERA:Lcom/sightcall/universal/media/Metadata$Origin;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "CAMERA"
    .end annotation
.end field

.field public static final enum PHOTO:Lcom/sightcall/universal/media/Metadata$Origin;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "PHOTO"
    .end annotation
.end field

.field public static final enum PICTURE:Lcom/sightcall/universal/media/Metadata$Origin;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "PICTURE"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/sightcall/universal/media/Metadata$Origin;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "UNKNOWN"
    .end annotation
.end field

.field public static final enum URL:Lcom/sightcall/universal/media/Metadata$Origin;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "URL"
    .end annotation
.end field

.field public static final enum VIDEO:Lcom/sightcall/universal/media/Metadata$Origin;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "VIDEO"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/media/Metadata$Origin;
    .locals 6

    sget-object v0, Lcom/sightcall/universal/media/Metadata$Origin;->UNKNOWN:Lcom/sightcall/universal/media/Metadata$Origin;

    sget-object v1, Lcom/sightcall/universal/media/Metadata$Origin;->CAMERA:Lcom/sightcall/universal/media/Metadata$Origin;

    sget-object v2, Lcom/sightcall/universal/media/Metadata$Origin;->PHOTO:Lcom/sightcall/universal/media/Metadata$Origin;

    sget-object v3, Lcom/sightcall/universal/media/Metadata$Origin;->VIDEO:Lcom/sightcall/universal/media/Metadata$Origin;

    sget-object v4, Lcom/sightcall/universal/media/Metadata$Origin;->PICTURE:Lcom/sightcall/universal/media/Metadata$Origin;

    sget-object v5, Lcom/sightcall/universal/media/Metadata$Origin;->URL:Lcom/sightcall/universal/media/Metadata$Origin;

    filled-new-array/range {v0 .. v5}, [Lcom/sightcall/universal/media/Metadata$Origin;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/media/Metadata$Origin;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/media/Metadata$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/media/Metadata$Origin;->UNKNOWN:Lcom/sightcall/universal/media/Metadata$Origin;

    new-instance v0, Lcom/sightcall/universal/media/Metadata$Origin;

    const-string v1, "CAMERA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/media/Metadata$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/media/Metadata$Origin;->CAMERA:Lcom/sightcall/universal/media/Metadata$Origin;

    new-instance v0, Lcom/sightcall/universal/media/Metadata$Origin;

    const-string v1, "PHOTO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/media/Metadata$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/media/Metadata$Origin;->PHOTO:Lcom/sightcall/universal/media/Metadata$Origin;

    new-instance v0, Lcom/sightcall/universal/media/Metadata$Origin;

    const-string v1, "VIDEO"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/media/Metadata$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/media/Metadata$Origin;->VIDEO:Lcom/sightcall/universal/media/Metadata$Origin;

    new-instance v0, Lcom/sightcall/universal/media/Metadata$Origin;

    const-string v1, "PICTURE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/media/Metadata$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/media/Metadata$Origin;->PICTURE:Lcom/sightcall/universal/media/Metadata$Origin;

    new-instance v0, Lcom/sightcall/universal/media/Metadata$Origin;

    const-string v1, "URL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/media/Metadata$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/media/Metadata$Origin;->URL:Lcom/sightcall/universal/media/Metadata$Origin;

    invoke-static {}, Lcom/sightcall/universal/media/Metadata$Origin;->$values()[Lcom/sightcall/universal/media/Metadata$Origin;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/media/Metadata$Origin;->$VALUES:[Lcom/sightcall/universal/media/Metadata$Origin;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/media/Metadata$Origin;
    .locals 1

    const-class v0, Lcom/sightcall/universal/media/Metadata$Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/media/Metadata$Origin;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/media/Metadata$Origin;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/media/Metadata$Origin;->$VALUES:[Lcom/sightcall/universal/media/Metadata$Origin;

    invoke-virtual {v0}, [Lcom/sightcall/universal/media/Metadata$Origin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/media/Metadata$Origin;

    return-object v0
.end method
