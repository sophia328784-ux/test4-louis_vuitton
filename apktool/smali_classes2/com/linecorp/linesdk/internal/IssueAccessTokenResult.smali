.class public Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/linecorp/linesdk/internal/InternalAccessToken;

.field public final b:Ljava/util/List;

.field public final c:Lcom/linecorp/linesdk/LineIdToken;


# direct methods
.method public constructor <init>(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/util/List;Lcom/linecorp/linesdk/LineIdToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/Scope;",
            ">;",
            "Lcom/linecorp/linesdk/LineIdToken;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->a:Lcom/linecorp/linesdk/internal/InternalAccessToken;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->c:Lcom/linecorp/linesdk/LineIdToken;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;

    iget-object v2, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->a:Lcom/linecorp/linesdk/internal/InternalAccessToken;

    iget-object v3, p1, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->a:Lcom/linecorp/linesdk/internal/InternalAccessToken;

    invoke-virtual {v2, v3}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object p1, p1, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->c:Lcom/linecorp/linesdk/LineIdToken;

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->c:Lcom/linecorp/linesdk/LineIdToken;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/LineIdToken;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    if-nez p1, :cond_5

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->a:Lcom/linecorp/linesdk/internal/InternalAccessToken;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->c:Lcom/linecorp/linesdk/LineIdToken;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineIdToken;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v1, p0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IssueAccessTokenResult{accessToken=#####, scopes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", idToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->c:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
