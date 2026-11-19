.class public final enum Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

.field public static final enum IMAGE_CAMERA:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

.field public static final enum IMAGE_GALLERY:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

.field public static final enum IMAGE_SNAPSHOT:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

.field public static final enum INVALID:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

.field public static final enum SCREEN:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

.field public static final enum WEB:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;
    .locals 6

    sget-object v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->INVALID:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    sget-object v1, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->IMAGE_GALLERY:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    sget-object v2, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->IMAGE_CAMERA:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    sget-object v3, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->IMAGE_SNAPSHOT:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    sget-object v4, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->WEB:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    sget-object v5, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->SCREEN:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    filled-new-array/range {v0 .. v5}, [Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->INVALID:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    new-instance v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    const-string v1, "IMAGE_GALLERY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->IMAGE_GALLERY:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    new-instance v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    const-string v1, "IMAGE_CAMERA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->IMAGE_CAMERA:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    new-instance v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    const-string v1, "IMAGE_SNAPSHOT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->IMAGE_SNAPSHOT:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    new-instance v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    const-string v1, "WEB"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->WEB:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    new-instance v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    const-string v1, "SCREEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->SCREEN:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    invoke-static {}, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->$values()[Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->$VALUES:[Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

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

.method public static isImage(Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;)Z
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->IMAGE_GALLERY:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->IMAGE_CAMERA:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->IMAGE_SNAPSHOT:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isScreen(Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;)Z
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->SCREEN:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isWeb(Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;)Z
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->WEB:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;
    .locals 1

    const-class v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->$VALUES:[Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    invoke-virtual {v0}, [Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    return-object v0
.end method
