.class abstract Lcom/linecorp/linesdk/internal/nwclient/IdTokenParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lio/jsonwebtoken/Claims;)Lcom/linecorp/linesdk/LineIdToken;
    .locals 4

    new-instance v0, Lcom/linecorp/linesdk/LineIdToken$Builder;

    invoke-direct {v0}, Lcom/linecorp/linesdk/LineIdToken$Builder;-><init>()V

    iput-object p0, v0, Lcom/linecorp/linesdk/LineIdToken$Builder;->a:Ljava/lang/String;

    invoke-interface {p1}, Lio/jsonwebtoken/Claims;->getIssuer()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/linecorp/linesdk/LineIdToken$Builder;->b:Ljava/lang/String;

    invoke-interface {p1}, Lio/jsonwebtoken/Claims;->getSubject()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/linecorp/linesdk/LineIdToken$Builder;->c:Ljava/lang/String;

    invoke-interface {p1}, Lio/jsonwebtoken/Claims;->getAudience()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/linecorp/linesdk/LineIdToken$Builder;->d:Ljava/lang/String;

    invoke-interface {p1}, Lio/jsonwebtoken/Claims;->getExpiration()Ljava/util/Date;

    move-result-object p0

    iput-object p0, v0, Lcom/linecorp/linesdk/LineIdToken$Builder;->e:Ljava/util/Date;

    invoke-interface {p1}, Lio/jsonwebtoken/Claims;->getIssuedAt()Ljava/util/Date;

    move-result-object p0

    iput-object p0, v0, Lcom/linecorp/linesdk/LineIdToken$Builder;->f:Ljava/util/Date;

    const-string p0, "auth_time"

    const-class v1, Ljava/util/Date;

    invoke-interface {p1, p0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    iput-object p0, v0, Lcom/linecorp/linesdk/LineIdToken$Builder;->g:Ljava/util/Date;

    const-string p0, "nonce"

    const-class v1, Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/linecorp/linesdk/LineIdToken$Builder;->h:Ljava/lang/String;

    const-string p0, "amr"

    const-class v2, Ljava/util/List;

    invoke-interface {p1, p0, v2}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    iput-object p0, v0, Lcom/linecorp/linesdk/LineIdToken$Builder;->i:Ljava/util/List;

    const-string p0, "name"

    invoke-interface {p1, p0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/linecorp/linesdk/LineIdToken$Builder;->j:Ljava/lang/String;

    const-string p0, "picture"

    invoke-interface {p1, p0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/linecorp/linesdk/LineIdToken$Builder;->k:Ljava/lang/String;

    const-string p0, "phone_number"

    invoke-interface {p1, p0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/linecorp/linesdk/LineIdToken$Builder;->l:Ljava/lang/String;

    const-string p0, "email"

    invoke-interface {p1, p0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/linecorp/linesdk/LineIdToken$Builder;->m:Ljava/lang/String;

    const-string p0, "gender"

    invoke-interface {p1, p0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/linecorp/linesdk/LineIdToken$Builder;->n:Ljava/lang/String;

    const-string p0, "birthdate"

    invoke-interface {p1, p0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/linecorp/linesdk/LineIdToken$Builder;->o:Ljava/lang/String;

    const-string p0, "address"

    const-class v2, Ljava/util/Map;

    invoke-interface {p1, p0, v2}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;

    invoke-direct {v2}, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;-><init>()V

    const-string v3, "street_address"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;->a:Ljava/lang/String;

    const-string v3, "locality"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;->b:Ljava/lang/String;

    const-string v3, "region"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;->c:Ljava/lang/String;

    const-string v3, "postal_code"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;->d:Ljava/lang/String;

    const-string v3, "country"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v2, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;->e:Ljava/lang/String;

    new-instance p0, Lcom/linecorp/linesdk/LineIdToken$Address;

    invoke-direct {p0, v2}, Lcom/linecorp/linesdk/LineIdToken$Address;-><init>(Lcom/linecorp/linesdk/LineIdToken$Address$Builder;)V

    :goto_0
    iput-object p0, v0, Lcom/linecorp/linesdk/LineIdToken$Builder;->p:Lcom/linecorp/linesdk/LineIdToken$Address;

    const-string p0, "given_name"

    invoke-interface {p1, p0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/linecorp/linesdk/LineIdToken$Builder;->q:Ljava/lang/String;

    const-string p0, "given_name_pronunciation"

    invoke-interface {p1, p0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/linecorp/linesdk/LineIdToken$Builder;->r:Ljava/lang/String;

    const-string p0, "middle_name"

    invoke-interface {p1, p0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/linecorp/linesdk/LineIdToken$Builder;->s:Ljava/lang/String;

    const-string p0, "family_name"

    invoke-interface {p1, p0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/linecorp/linesdk/LineIdToken$Builder;->t:Ljava/lang/String;

    const-string p0, "family_name_pronunciation"

    invoke-interface {p1, p0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/linecorp/linesdk/LineIdToken$Builder;->u:Ljava/lang/String;

    new-instance p0, Lcom/linecorp/linesdk/LineIdToken;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/LineIdToken;-><init>(Lcom/linecorp/linesdk/LineIdToken$Builder;)V

    return-object p0
.end method
