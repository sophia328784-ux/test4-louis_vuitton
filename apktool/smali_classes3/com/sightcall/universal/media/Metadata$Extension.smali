.class public final enum Lcom/sightcall/universal/media/Metadata$Extension;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Extension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/media/Metadata$Extension;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/media/Metadata$Extension;

.field static DEFAULT:Lcom/sightcall/universal/media/Metadata$Extension;

.field public static final enum JPG:Lcom/sightcall/universal/media/Metadata$Extension;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "JPG"
    .end annotation
.end field

.field public static final enum PNG:Lcom/sightcall/universal/media/Metadata$Extension;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "PNG"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/media/Metadata$Extension;
    .locals 2

    sget-object v0, Lcom/sightcall/universal/media/Metadata$Extension;->PNG:Lcom/sightcall/universal/media/Metadata$Extension;

    sget-object v1, Lcom/sightcall/universal/media/Metadata$Extension;->JPG:Lcom/sightcall/universal/media/Metadata$Extension;

    filled-new-array {v0, v1}, [Lcom/sightcall/universal/media/Metadata$Extension;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sightcall/universal/media/Metadata$Extension;

    const-string v1, "PNG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/media/Metadata$Extension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/media/Metadata$Extension;->PNG:Lcom/sightcall/universal/media/Metadata$Extension;

    new-instance v1, Lcom/sightcall/universal/media/Metadata$Extension;

    const-string v2, "JPG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sightcall/universal/media/Metadata$Extension;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sightcall/universal/media/Metadata$Extension;->JPG:Lcom/sightcall/universal/media/Metadata$Extension;

    invoke-static {}, Lcom/sightcall/universal/media/Metadata$Extension;->$values()[Lcom/sightcall/universal/media/Metadata$Extension;

    move-result-object v1

    sput-object v1, Lcom/sightcall/universal/media/Metadata$Extension;->$VALUES:[Lcom/sightcall/universal/media/Metadata$Extension;

    sput-object v0, Lcom/sightcall/universal/media/Metadata$Extension;->DEFAULT:Lcom/sightcall/universal/media/Metadata$Extension;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/media/Metadata$Extension;
    .locals 1

    const-class v0, Lcom/sightcall/universal/media/Metadata$Extension;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/media/Metadata$Extension;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/media/Metadata$Extension;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/media/Metadata$Extension;->$VALUES:[Lcom/sightcall/universal/media/Metadata$Extension;

    invoke-virtual {v0}, [Lcom/sightcall/universal/media/Metadata$Extension;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/media/Metadata$Extension;

    return-object v0
.end method
