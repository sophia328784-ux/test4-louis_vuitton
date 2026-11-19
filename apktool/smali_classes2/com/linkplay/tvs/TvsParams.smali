.class public Lcom/linkplay/tvs/TvsParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field tvsAuthCode:Ljava/lang/String;

.field tvsClientID:Ljava/lang/String;

.field tvsRedirectUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linkplay/tvs/TvsParams;->tvsClientID:Ljava/lang/String;

    iput-object p2, p0, Lcom/linkplay/tvs/TvsParams;->tvsAuthCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/linkplay/tvs/TvsParams;->tvsRedirectUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTvsAuthCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/tvs/TvsParams;->tvsAuthCode:Ljava/lang/String;

    return-object p0
.end method

.method public getTvsClientID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/tvs/TvsParams;->tvsClientID:Ljava/lang/String;

    return-object p0
.end method

.method public getTvsRedirectUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/tvs/TvsParams;->tvsRedirectUri:Ljava/lang/String;

    return-object p0
.end method

.method public setTvsAuthCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/tvs/TvsParams;->tvsAuthCode:Ljava/lang/String;

    return-void
.end method

.method public setTvsClientID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/tvs/TvsParams;->tvsClientID:Ljava/lang/String;

    return-void
.end method

.method public setTvsRedirectUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/tvs/TvsParams;->tvsRedirectUri:Ljava/lang/String;

    return-void
.end method
