.class public final enum Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

.field public static final enum ALBUM:Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

.field public static final enum ALBUMARTURI:Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

.field public static final enum ARTIST:Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

.field public static final enum DATE:Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

.field public static final enum GENRE:Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

.field public static final enum ICON:Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

.field public static final enum TRACK_NUMBER:Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;
    .locals 7

    sget-object v0, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;->DATE:Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    sget-object v1, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;->ARTIST:Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    sget-object v2, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;->ALBUM:Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    sget-object v3, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;->GENRE:Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    sget-object v4, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;->ICON:Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    sget-object v5, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;->ALBUMARTURI:Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    sget-object v6, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;->TRACK_NUMBER:Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    filled-new-array/range {v0 .. v6}, [Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    const/4 v1, 0x0

    const-string v2, "date"

    const-string v3, "DATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;->DATE:Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    new-instance v0, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    const/4 v1, 0x1

    const-string v2, "artist"

    const-string v3, "ARTIST"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;->ARTIST:Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    new-instance v0, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    const/4 v1, 0x2

    const-string v2, "album"

    const-string v3, "ALBUM"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;->ALBUM:Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    new-instance v0, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    const/4 v1, 0x3

    const-string v2, "genre"

    const-string v3, "GENRE"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;->GENRE:Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    new-instance v0, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    const/4 v1, 0x4

    const-string v2, "icon"

    const-string v3, "ICON"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;->ICON:Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    new-instance v0, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    const/4 v1, 0x5

    const-string v2, "albumArtURI"

    const-string v3, "ALBUMARTURI"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;->ALBUMARTURI:Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    new-instance v0, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    const/4 v1, 0x6

    const-string v2, "originalTrackNumber"

    const-string v3, "TRACK_NUMBER"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;->TRACK_NUMBER:Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    invoke-static {}, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;->$values()[Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    move-result-object v0

    sput-object v0, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;->$VALUES:[Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;
    .locals 1

    const-class v0, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    return-object p0
.end method

.method public static values()[Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;
    .locals 1

    sget-object v0, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;->$VALUES:[Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    invoke-virtual {v0}, [Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/nas/ENUMNASMEDIAINFOTYPE;->value:Ljava/lang/String;

    return-object p0
.end method
