.class public final enum Lcom/sightcall/universal/api/Environment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/api/Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/api/Environment;

.field public static final enum CUSTOM:Lcom/sightcall/universal/api/Environment;

.field public static final enum PPR:Lcom/sightcall/universal/api/Environment;

.field public static final enum PPR_US:Lcom/sightcall/universal/api/Environment;

.field public static final enum PROD:Lcom/sightcall/universal/api/Environment;

.field public static final enum PROD_US:Lcom/sightcall/universal/api/Environment;

.field public static final enum QUALIF:Lcom/sightcall/universal/api/Environment;


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private environmentPlatform:I

.field private overrideBaseUrl:Ljava/lang/String;

.field private pattern:Ljava/util/regex/Pattern;

.field private value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/api/Environment;
    .locals 6

    sget-object v0, Lcom/sightcall/universal/api/Environment;->PPR_US:Lcom/sightcall/universal/api/Environment;

    sget-object v1, Lcom/sightcall/universal/api/Environment;->PROD_US:Lcom/sightcall/universal/api/Environment;

    sget-object v2, Lcom/sightcall/universal/api/Environment;->PROD:Lcom/sightcall/universal/api/Environment;

    sget-object v3, Lcom/sightcall/universal/api/Environment;->PPR:Lcom/sightcall/universal/api/Environment;

    sget-object v4, Lcom/sightcall/universal/api/Environment;->QUALIF:Lcom/sightcall/universal/api/Environment;

    sget-object v5, Lcom/sightcall/universal/api/Environment;->CUSTOM:Lcom/sightcall/universal/api/Environment;

    filled-new-array/range {v0 .. v5}, [Lcom/sightcall/universal/api/Environment;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/sightcall/universal/api/Environment;

    const-string v4, "https://api-usppr.sightcall.com/api/"

    const/4 v5, 0x1

    const-string v1, "PPR_US"

    const/4 v2, 0x0

    const-string v3, "-usppr|usppr"

    invoke-direct/range {v0 .. v5}, Lcom/sightcall/universal/api/Environment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/api/Environment;->PPR_US:Lcom/sightcall/universal/api/Environment;

    new-instance v1, Lcom/sightcall/universal/api/Environment;

    const-string v5, "https://api-us.sightcall.com/api/"

    const/4 v6, 0x1

    const-string v2, "PROD_US"

    const/4 v3, 0x1

    const-string v4, "us"

    invoke-direct/range {v1 .. v6}, Lcom/sightcall/universal/api/Environment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lcom/sightcall/universal/api/Environment;->PROD_US:Lcom/sightcall/universal/api/Environment;

    new-instance v2, Lcom/sightcall/universal/api/Environment;

    const-string v6, "https://api.sightcall.com/api/"

    const/4 v7, 0x0

    const-string v3, "PROD"

    const/4 v4, 0x2

    const-string v5, "prod"

    invoke-direct/range {v2 .. v7}, Lcom/sightcall/universal/api/Environment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v2, Lcom/sightcall/universal/api/Environment;->PROD:Lcom/sightcall/universal/api/Environment;

    new-instance v3, Lcom/sightcall/universal/api/Environment;

    const-string v7, "https://api-ppr.sightcall.com/api/"

    const/4 v8, 0x0

    const-string v4, "PPR"

    const/4 v5, 0x3

    const-string v6, "ppr"

    invoke-direct/range {v3 .. v8}, Lcom/sightcall/universal/api/Environment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/sightcall/universal/api/Environment;->PPR:Lcom/sightcall/universal/api/Environment;

    new-instance v4, Lcom/sightcall/universal/api/Environment;

    const-string v8, "https://api-qualif.sightcall.com/api/"

    const/4 v9, 0x0

    const-string v5, "QUALIF"

    const/4 v6, 0x4

    const-string v7, "qualif"

    invoke-direct/range {v4 .. v9}, Lcom/sightcall/universal/api/Environment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v4, Lcom/sightcall/universal/api/Environment;->QUALIF:Lcom/sightcall/universal/api/Environment;

    new-instance v5, Lcom/sightcall/universal/api/Environment;

    const-string v9, "https://api.sightcall.com/api/"

    const/4 v10, 0x0

    const-string v6, "CUSTOM"

    const/4 v7, 0x5

    const-string v8, "custom"

    invoke-direct/range {v5 .. v10}, Lcom/sightcall/universal/api/Environment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v5, Lcom/sightcall/universal/api/Environment;->CUSTOM:Lcom/sightcall/universal/api/Environment;

    invoke-static {}, Lcom/sightcall/universal/api/Environment;->$values()[Lcom/sightcall/universal/api/Environment;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/api/Environment;->$VALUES:[Lcom/sightcall/universal/api/Environment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sightcall/universal/api/Environment;->value:Ljava/lang/String;

    iput-object p4, p0, Lcom/sightcall/universal/api/Environment;->baseUrl:Ljava/lang/String;

    iput p5, p0, Lcom/sightcall/universal/api/Environment;->environmentPlatform:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/api/Environment;
    .locals 1

    const-class v0, Lcom/sightcall/universal/api/Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/api/Environment;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/api/Environment;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/api/Environment;->$VALUES:[Lcom/sightcall/universal/api/Environment;

    invoke-virtual {v0}, [Lcom/sightcall/universal/api/Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/api/Environment;

    return-object v0
.end method

.method public static with(Landroid/net/Uri;)Lcom/sightcall/universal/api/Environment;
    .locals 1

    if-nez p0, :cond_0

    .line 94
    sget-object p0, Lcom/sightcall/universal/api/Environment;->PROD:Lcom/sightcall/universal/api/Environment;

    return-object p0

    .line 95
    :cond_0
    const-string v0, "url"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 96
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_1
    invoke-static {v0}, Lcom/sightcall/universal/api/Environment;->with(Ljava/lang/String;)Lcom/sightcall/universal/api/Environment;

    move-result-object p0

    return-object p0
.end method

.method public static with(Ljava/lang/String;)Lcom/sightcall/universal/api/Environment;
    .locals 5

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/api/Environment;->values()[Lcom/sightcall/universal/api/Environment;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/sightcall/universal/api/Environment;->pattern:Ljava/util/regex/Pattern;

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/sightcall/universal/api/Environment;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, v3, Lcom/sightcall/universal/api/Environment;->pattern:Ljava/util/regex/Pattern;

    :cond_1
    iget-object v4, v3, Lcom/sightcall/universal/api/Environment;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p0, Lcom/sightcall/universal/api/Environment;->PROD:Lcom/sightcall/universal/api/Environment;

    return-object p0

    :cond_4
    sget-object v0, Lcom/sightcall/universal/api/Environment;->CUSTOM:Lcom/sightcall/universal/api/Environment;

    const-string v1, "Custom"

    iput-object v1, v0, Lcom/sightcall/universal/api/Environment;->value:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    iput-object p0, v0, Lcom/sightcall/universal/api/Environment;->baseUrl:Ljava/lang/String;

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/sightcall/universal/api/Environment;->pattern:Ljava/util/regex/Pattern;

    return-object v0

    :cond_6
    :goto_2
    sget-object p0, Lcom/sightcall/universal/api/Environment;->PROD:Lcom/sightcall/universal/api/Environment;

    return-object p0
.end method


# virtual methods
.method public final baseUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/api/Environment;->overrideBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/api/Environment;->overrideBaseUrl:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/api/Environment;->baseUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getEnvironmentPlatform()I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/api/Environment;->environmentPlatform:I

    return p0
.end method

.method public overrideBaseUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/api/Environment;->overrideBaseUrl:Ljava/lang/String;

    return-void
.end method
