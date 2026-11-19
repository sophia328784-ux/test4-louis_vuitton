.class public final enum Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;

.field public static final enum GET:Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;

.field public static final enum POST:Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;


# direct methods
.method private static synthetic $values()[Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;
    .locals 2

    sget-object v0, Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;->GET:Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;

    sget-object v1, Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;->POST:Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;

    filled-new-array {v0, v1}, [Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;->GET:Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;

    new-instance v0, Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;

    const-string v1, "POST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;->POST:Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;

    invoke-static {}, Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;->$values()[Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;

    move-result-object v0

    sput-object v0, Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;->$VALUES:[Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;
    .locals 1

    const-class v0, Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;
    .locals 1

    sget-object v0, Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;->$VALUES:[Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;

    invoke-virtual {v0}, [Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;

    return-object v0
.end method
