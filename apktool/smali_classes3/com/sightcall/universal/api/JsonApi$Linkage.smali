.class public Lcom/sightcall/universal/api/JsonApi$Linkage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/api/JsonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Linkage"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "id"
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/api/JsonApi$Linkage;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/api/JsonApi$Linkage;->type:Ljava/lang/String;

    return-void
.end method

.method public static of(Lcom/sightcall/universal/api/JsonApi$Included;)Lcom/sightcall/universal/api/JsonApi$Linkage;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 21
    :cond_0
    invoke-interface {p0}, Lcom/sightcall/universal/api/JsonApi$Included;->id()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/sightcall/universal/api/JsonApi$Included;->type()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sightcall/universal/api/JsonApi$Linkage;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/api/JsonApi$Linkage;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/api/JsonApi$Linkage;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sightcall/universal/api/JsonApi$Linkage;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/universal/api/JsonApi$Linkage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/api/JsonApi$Linkage;->id:Ljava/lang/String;

    return-object p0
.end method

.method public is(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/api/JsonApi$Linkage;->type:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public matches(Lcom/sightcall/universal/api/JsonApi$Included;)Z
    .locals 2

    invoke-interface {p1}, Lcom/sightcall/universal/api/JsonApi$Included;->id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/api/JsonApi$Linkage;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sightcall/universal/api/JsonApi$Included;->type()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/api/JsonApi$Linkage;->type:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Linkage{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sightcall/universal/api/JsonApi$Linkage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sightcall/universal/api/JsonApi$Linkage;->type:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public type()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/api/JsonApi$Linkage;->type:Ljava/lang/String;

    return-object p0
.end method
