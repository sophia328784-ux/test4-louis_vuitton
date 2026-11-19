.class public final enum Lcom/sightcall/universal/media/Metadata$Storage;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Storage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/media/Metadata$Storage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/media/Metadata$Storage;

.field public static final enum CLOUD:Lcom/sightcall/universal/media/Metadata$Storage;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "CLOUD"
    .end annotation
.end field

.field static DEFAULT:Lcom/sightcall/universal/media/Metadata$Storage;

.field public static final enum LOCAL:Lcom/sightcall/universal/media/Metadata$Storage;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "LOCAL"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/media/Metadata$Storage;
    .locals 2

    sget-object v0, Lcom/sightcall/universal/media/Metadata$Storage;->CLOUD:Lcom/sightcall/universal/media/Metadata$Storage;

    sget-object v1, Lcom/sightcall/universal/media/Metadata$Storage;->LOCAL:Lcom/sightcall/universal/media/Metadata$Storage;

    filled-new-array {v0, v1}, [Lcom/sightcall/universal/media/Metadata$Storage;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/media/Metadata$Storage;

    const-string v1, "CLOUD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/media/Metadata$Storage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/media/Metadata$Storage;->CLOUD:Lcom/sightcall/universal/media/Metadata$Storage;

    new-instance v0, Lcom/sightcall/universal/media/Metadata$Storage;

    const-string v1, "LOCAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/media/Metadata$Storage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/media/Metadata$Storage;->LOCAL:Lcom/sightcall/universal/media/Metadata$Storage;

    invoke-static {}, Lcom/sightcall/universal/media/Metadata$Storage;->$values()[Lcom/sightcall/universal/media/Metadata$Storage;

    move-result-object v1

    sput-object v1, Lcom/sightcall/universal/media/Metadata$Storage;->$VALUES:[Lcom/sightcall/universal/media/Metadata$Storage;

    sput-object v0, Lcom/sightcall/universal/media/Metadata$Storage;->DEFAULT:Lcom/sightcall/universal/media/Metadata$Storage;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/media/Metadata$Storage;
    .locals 1

    const-class v0, Lcom/sightcall/universal/media/Metadata$Storage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/media/Metadata$Storage;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/media/Metadata$Storage;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/media/Metadata$Storage;->$VALUES:[Lcom/sightcall/universal/media/Metadata$Storage;

    invoke-virtual {v0}, [Lcom/sightcall/universal/media/Metadata$Storage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/media/Metadata$Storage;

    return-object v0
.end method
