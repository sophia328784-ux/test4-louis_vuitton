.class public final enum Lcom/linkplay/medialib/ELocSearchType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linkplay/medialib/ELocSearchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkplay/medialib/ELocSearchType;

.field public static final enum LP_ALBUM:Lcom/linkplay/medialib/ELocSearchType;

.field public static final enum LP_ARTIST:Lcom/linkplay/medialib/ELocSearchType;

.field public static final enum LP_GENRE:Lcom/linkplay/medialib/ELocSearchType;

.field public static final enum LP_SONGS:Lcom/linkplay/medialib/ELocSearchType;


# direct methods
.method private static synthetic $values()[Lcom/linkplay/medialib/ELocSearchType;
    .locals 4

    sget-object v0, Lcom/linkplay/medialib/ELocSearchType;->LP_ARTIST:Lcom/linkplay/medialib/ELocSearchType;

    sget-object v1, Lcom/linkplay/medialib/ELocSearchType;->LP_ALBUM:Lcom/linkplay/medialib/ELocSearchType;

    sget-object v2, Lcom/linkplay/medialib/ELocSearchType;->LP_SONGS:Lcom/linkplay/medialib/ELocSearchType;

    sget-object v3, Lcom/linkplay/medialib/ELocSearchType;->LP_GENRE:Lcom/linkplay/medialib/ELocSearchType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/linkplay/medialib/ELocSearchType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/linkplay/medialib/ELocSearchType;

    const-string v1, "LP_ARTIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linkplay/medialib/ELocSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkplay/medialib/ELocSearchType;->LP_ARTIST:Lcom/linkplay/medialib/ELocSearchType;

    new-instance v0, Lcom/linkplay/medialib/ELocSearchType;

    const-string v1, "LP_ALBUM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/linkplay/medialib/ELocSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkplay/medialib/ELocSearchType;->LP_ALBUM:Lcom/linkplay/medialib/ELocSearchType;

    new-instance v0, Lcom/linkplay/medialib/ELocSearchType;

    const-string v1, "LP_SONGS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/linkplay/medialib/ELocSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkplay/medialib/ELocSearchType;->LP_SONGS:Lcom/linkplay/medialib/ELocSearchType;

    new-instance v0, Lcom/linkplay/medialib/ELocSearchType;

    const-string v1, "LP_GENRE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/linkplay/medialib/ELocSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkplay/medialib/ELocSearchType;->LP_GENRE:Lcom/linkplay/medialib/ELocSearchType;

    invoke-static {}, Lcom/linkplay/medialib/ELocSearchType;->$values()[Lcom/linkplay/medialib/ELocSearchType;

    move-result-object v0

    sput-object v0, Lcom/linkplay/medialib/ELocSearchType;->$VALUES:[Lcom/linkplay/medialib/ELocSearchType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/linkplay/medialib/ELocSearchType;
    .locals 1

    const-class v0, Lcom/linkplay/medialib/ELocSearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linkplay/medialib/ELocSearchType;

    return-object p0
.end method

.method public static values()[Lcom/linkplay/medialib/ELocSearchType;
    .locals 1

    sget-object v0, Lcom/linkplay/medialib/ELocSearchType;->$VALUES:[Lcom/linkplay/medialib/ELocSearchType;

    invoke-virtual {v0}, [Lcom/linkplay/medialib/ELocSearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linkplay/medialib/ELocSearchType;

    return-object v0
.end method
