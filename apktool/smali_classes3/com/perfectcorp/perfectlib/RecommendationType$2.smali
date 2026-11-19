.class final enum Lcom/perfectcorp/perfectlib/RecommendationType$2;
.super Lcom/perfectcorp/perfectlib/RecommendationType;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "SHADE_FINDER"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->d:Ljava/util/Set;

    sget-object v0, Lcom/perfectcorp/perfectlib/Functionality;->SHADE_FINDER:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
