.class Lcom/sightcall/universal/agent/IdentityExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final arOverlayModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/ArOverlayModel;",
            ">;"
        }
    .end annotation
.end field

.field final code:Lcom/sightcall/universal/agent/Code;

.field final consent:Lcom/sightcall/universal/agent/Consent;

.field final identity:Lcom/sightcall/universal/agent/Identity;

.field final included:[Lcom/sightcall/universal/api/JsonApi$Included;

.field final integrationScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/IntegrationScope;",
            ">;"
        }
    .end annotation
.end field

.field final providerCustomizations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/ProviderCustomization;",
            ">;"
        }
    .end annotation
.end field

.field final usecases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/Usecase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/agent/Identity;[Lcom/sightcall/universal/api/JsonApi$Included;Lcom/sightcall/universal/agent/Consent;Ljava/util/List;Lcom/sightcall/universal/agent/Code;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/agent/Identity;",
            "[",
            "Lcom/sightcall/universal/api/JsonApi$Included;",
            "Lcom/sightcall/universal/agent/Consent;",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/Usecase;",
            ">;",
            "Lcom/sightcall/universal/agent/Code;",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/ProviderCustomization;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/ArOverlayModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/IntegrationScope;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/agent/IdentityExtractor;->identity:Lcom/sightcall/universal/agent/Identity;

    iput-object p2, p0, Lcom/sightcall/universal/agent/IdentityExtractor;->included:[Lcom/sightcall/universal/api/JsonApi$Included;

    iput-object p3, p0, Lcom/sightcall/universal/agent/IdentityExtractor;->consent:Lcom/sightcall/universal/agent/Consent;

    iput-object p4, p0, Lcom/sightcall/universal/agent/IdentityExtractor;->usecases:Ljava/util/List;

    iput-object p5, p0, Lcom/sightcall/universal/agent/IdentityExtractor;->code:Lcom/sightcall/universal/agent/Code;

    iput-object p6, p0, Lcom/sightcall/universal/agent/IdentityExtractor;->providerCustomizations:Ljava/util/List;

    iput-object p7, p0, Lcom/sightcall/universal/agent/IdentityExtractor;->arOverlayModels:Ljava/util/List;

    iput-object p8, p0, Lcom/sightcall/universal/agent/IdentityExtractor;->integrationScopes:Ljava/util/List;

    return-void
.end method

.method public static extract(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lcom/sightcall/universal/agent/IdentityExtractor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Identity;",
            ">;)",
            "Lcom/sightcall/universal/agent/IdentityExtractor;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sightcall/universal/api/JsonApi$Wrapper;->unwrap(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/sightcall/universal/agent/Identity;

    if-eqz p0, :cond_3

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v2, Lcom/sightcall/universal/agent/Identity;->relationships:Lcom/sightcall/universal/agent/Identity$Relationships;

    invoke-virtual {p0}, Lcom/sightcall/universal/api/JsonApi$Wrapper;->included()[Lcom/sightcall/universal/api/JsonApi$Included;

    move-result-object v3

    if-eqz v0, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v3}, Lcom/sightcall/universal/agent/IdentityExtractor;->extractConsent(Lcom/sightcall/universal/agent/Identity$Relationships;[Lcom/sightcall/universal/api/JsonApi$Included;)Lcom/sightcall/universal/agent/Consent;

    move-result-object v4

    invoke-static {v0, v3}, Lcom/sightcall/universal/agent/IdentityExtractor;->extractUsecases(Lcom/sightcall/universal/agent/Identity$Relationships;[Lcom/sightcall/universal/api/JsonApi$Included;)Ljava/util/List;

    move-result-object v5

    invoke-static {v0, v3}, Lcom/sightcall/universal/agent/IdentityExtractor;->extractCode(Lcom/sightcall/universal/agent/Identity$Relationships;[Lcom/sightcall/universal/api/JsonApi$Included;)Lcom/sightcall/universal/agent/Code;

    move-result-object v6

    invoke-static {v0, v3}, Lcom/sightcall/universal/agent/IdentityExtractor;->extractProviderCustomizations(Lcom/sightcall/universal/agent/Identity$Relationships;[Lcom/sightcall/universal/api/JsonApi$Included;)Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v3}, Lcom/sightcall/universal/agent/IdentityExtractor;->extractArOverlayModels(Lcom/sightcall/universal/agent/Identity$Relationships;[Lcom/sightcall/universal/api/JsonApi$Included;)Ljava/util/List;

    move-result-object v8

    invoke-static {v0, v3}, Lcom/sightcall/universal/agent/IdentityExtractor;->extractIntegrationScopes(Lcom/sightcall/universal/agent/Identity$Relationships;[Lcom/sightcall/universal/api/JsonApi$Included;)Ljava/util/List;

    move-result-object v9

    new-instance v1, Lcom/sightcall/universal/agent/IdentityExtractor;

    invoke-direct/range {v1 .. v9}, Lcom/sightcall/universal/agent/IdentityExtractor;-><init>(Lcom/sightcall/universal/agent/Identity;[Lcom/sightcall/universal/api/JsonApi$Included;Lcom/sightcall/universal/agent/Consent;Ljava/util/List;Lcom/sightcall/universal/agent/Code;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1

    :cond_2
    :goto_0
    new-instance v1, Lcom/sightcall/universal/agent/IdentityExtractor;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/sightcall/universal/agent/IdentityExtractor;-><init>(Lcom/sightcall/universal/agent/Identity;[Lcom/sightcall/universal/api/JsonApi$Included;Lcom/sightcall/universal/agent/Consent;Ljava/util/List;Lcom/sightcall/universal/agent/Code;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractArOverlayModels(Lcom/sightcall/universal/agent/Identity$Relationships;[Lcom/sightcall/universal/api/JsonApi$Included;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/agent/Identity$Relationships;",
            "[",
            "Lcom/sightcall/universal/api/JsonApi$Included;",
            ")",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/ArOverlayModel;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    instance-of v3, v2, Lcom/sightcall/universal/agent/ArOverlayModel;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/sightcall/universal/agent/ArOverlayModel;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static extractCode(Lcom/sightcall/universal/agent/Identity$Relationships;[Lcom/sightcall/universal/api/JsonApi$Included;)Lcom/sightcall/universal/agent/Code;
    .locals 5

    iget-object p0, p0, Lcom/sightcall/universal/agent/Identity$Relationships;->pincode:Lcom/sightcall/universal/api/JsonApi$Wrapper;

    invoke-static {p0}, Lcom/sightcall/universal/api/JsonApi$Wrapper;->unwrap(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/api/JsonApi$Linkage;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/sightcall/universal/api/JsonApi$Linkage;->matches(Lcom/sightcall/universal/api/JsonApi$Included;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance p0, Lcom/sightcall/universal/agent/Code;

    check-cast v3, Lcom/sightcall/universal/agent/Pincode;

    invoke-direct {p0, v3}, Lcom/sightcall/universal/agent/Code;-><init>(Lcom/sightcall/universal/agent/Pincode;)V

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static extractConsent(Lcom/sightcall/universal/agent/Identity$Relationships;[Lcom/sightcall/universal/api/JsonApi$Included;)Lcom/sightcall/universal/agent/Consent;
    .locals 5

    iget-object p0, p0, Lcom/sightcall/universal/agent/Identity$Relationships;->consent:Lcom/sightcall/universal/api/JsonApi$Wrapper;

    invoke-static {p0}, Lcom/sightcall/universal/api/JsonApi$Wrapper;->unwrap(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/api/JsonApi$Linkage;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/sightcall/universal/api/JsonApi$Linkage;->matches(Lcom/sightcall/universal/api/JsonApi$Included;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v3, Lcom/sightcall/universal/agent/Consent;

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static extractIntegrationScopes(Lcom/sightcall/universal/agent/Identity$Relationships;[Lcom/sightcall/universal/api/JsonApi$Included;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/agent/Identity$Relationships;",
            "[",
            "Lcom/sightcall/universal/api/JsonApi$Included;",
            ")",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/IntegrationScope;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    instance-of v3, v2, Lcom/sightcall/universal/agent/IntegrationScope;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/sightcall/universal/agent/IntegrationScope;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static extractProviderCustomizations(Lcom/sightcall/universal/agent/Identity$Relationships;[Lcom/sightcall/universal/api/JsonApi$Included;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/agent/Identity$Relationships;",
            "[",
            "Lcom/sightcall/universal/api/JsonApi$Included;",
            ")",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/ProviderCustomization;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    instance-of v3, v2, Lcom/sightcall/universal/agent/ProviderCustomization;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/sightcall/universal/agent/ProviderCustomization;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static extractUsecases(Lcom/sightcall/universal/agent/Identity$Relationships;[Lcom/sightcall/universal/api/JsonApi$Included;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/agent/Identity$Relationships;",
            "[",
            "Lcom/sightcall/universal/api/JsonApi$Included;",
            ")",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/Usecase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sightcall/universal/agent/Identity$Relationships;->usecases:Lcom/sightcall/universal/api/JsonApi$Wrapper;

    invoke-static {v0}, Lcom/sightcall/universal/api/JsonApi$Wrapper;->unwrap(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/api/JsonApi$Linkage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v0, v5

    const-string v7, "usecases"

    invoke-virtual {v6, v7}, Lcom/sightcall/universal/api/JsonApi$Linkage;->is(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/sightcall/universal/api/JsonApi$Linkage;->id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sightcall/universal/agent/Identity$Relationships;->guestProduct:Lcom/sightcall/universal/api/JsonApi$Wrapper;

    invoke-static {v0}, Lcom/sightcall/universal/api/JsonApi$Wrapper;->unwrap(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/api/JsonApi$Linkage;

    iget-object v3, p0, Lcom/sightcall/universal/agent/Identity$Relationships;->guestLanguage:Lcom/sightcall/universal/api/JsonApi$Wrapper;

    invoke-static {v3}, Lcom/sightcall/universal/api/JsonApi$Wrapper;->unwrap(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sightcall/universal/api/JsonApi$Linkage;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Identity$Relationships;->guestLocation:Lcom/sightcall/universal/api/JsonApi$Wrapper;

    invoke-static {p0}, Lcom/sightcall/universal/api/JsonApi$Wrapper;->unwrap(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/api/JsonApi$Linkage;

    array-length v5, p1

    move-object v7, v1

    move-object v8, v7

    move-object v9, v8

    move v6, v4

    :goto_1
    if-ge v6, v5, :cond_6

    aget-object v10, p1, v6

    instance-of v11, v10, Lcom/sightcall/universal/agent/Product;

    if-eqz v11, :cond_3

    if-eqz v0, :cond_5

    if-nez v7, :cond_5

    check-cast v10, Lcom/sightcall/universal/agent/Product;

    invoke-virtual {v0, v10}, Lcom/sightcall/universal/api/JsonApi$Linkage;->matches(Lcom/sightcall/universal/api/JsonApi$Included;)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v7, v10

    goto :goto_2

    :cond_3
    instance-of v11, v10, Lcom/sightcall/universal/agent/Language;

    if-eqz v11, :cond_4

    if-eqz v3, :cond_5

    if-nez v8, :cond_5

    check-cast v10, Lcom/sightcall/universal/agent/Language;

    invoke-virtual {v3, v10}, Lcom/sightcall/universal/api/JsonApi$Linkage;->matches(Lcom/sightcall/universal/api/JsonApi$Included;)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v8, v10

    goto :goto_2

    :cond_4
    instance-of v11, v10, Lcom/sightcall/universal/agent/Location;

    if-eqz v11, :cond_5

    if-eqz p0, :cond_5

    if-nez v9, :cond_5

    check-cast v10, Lcom/sightcall/universal/agent/Location;

    invoke-virtual {p0, v10}, Lcom/sightcall/universal/api/JsonApi$Linkage;->matches(Lcom/sightcall/universal/api/JsonApi$Included;)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v9, v10

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    if-eqz v7, :cond_7

    iget-object p0, v7, Lcom/sightcall/universal/agent/Product;->relationships:Lcom/sightcall/universal/agent/Product$Relationships;

    goto :goto_3

    :cond_7
    move-object p0, v1

    :goto_3
    if-eqz p0, :cond_8

    iget-object p0, p0, Lcom/sightcall/universal/agent/Product$Relationships;->usecase:Lcom/sightcall/universal/api/JsonApi$Wrapper;

    invoke-static {p0}, Lcom/sightcall/universal/api/JsonApi$Wrapper;->unwrap(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/sightcall/universal/api/JsonApi$Linkage;

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/sightcall/universal/api/JsonApi$Linkage;->id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p1

    :goto_4
    if-ge v4, v0, :cond_13

    aget-object v3, p1, v4

    instance-of v5, v3, Lcom/sightcall/universal/agent/Usecase;

    if-eqz v5, :cond_12

    check-cast v3, Lcom/sightcall/universal/agent/Usecase;

    iget-object v5, v3, Lcom/sightcall/universal/agent/Usecase;->id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v3}, Lcom/sightcall/universal/agent/Usecase;->callDistribution()Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    move-result-object v5

    if-nez v5, :cond_b

    goto :goto_6

    :cond_b
    sget-object v6, Lcom/sightcall/universal/agent/IdentityExtractor$1;->$SwitchMap$com$sightcall$universal$agent$Usecase$CallDistribution:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_11

    const/4 v6, 0x3

    if-eq v5, v6, :cond_c

    goto :goto_6

    :cond_c
    if-eqz v1, :cond_12

    invoke-virtual {v1, v3}, Lcom/sightcall/universal/api/JsonApi$Linkage;->matches(Lcom/sightcall/universal/api/JsonApi$Included;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, v7, Lcom/sightcall/universal/agent/Product;->attributes:Lcom/sightcall/universal/agent/Product$Attributes;

    iget-object v5, v5, Lcom/sightcall/universal/agent/Product$Attributes;->hashValue:Ljava/lang/String;

    if-nez v8, :cond_d

    if-eqz v9, :cond_10

    :cond_d
    const-string v6, ","

    invoke-static {v5, v6}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "-1"

    if-eqz v8, :cond_e

    iget-object v11, v8, Lcom/sightcall/universal/agent/Language;->attributes:Lcom/sightcall/universal/agent/Language$Attributes;

    iget-object v11, v11, Lcom/sightcall/universal/agent/Language$Attributes;->code:Ljava/lang/String;

    goto :goto_5

    :cond_e
    move-object v11, v10

    :goto_5
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v9, :cond_f

    iget-object v10, v9, Lcom/sightcall/universal/agent/Location;->id:Ljava/lang/String;

    :cond_f
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_10
    iget-object v6, v3, Lcom/sightcall/universal/agent/Usecase;->attributes:Lcom/sightcall/universal/agent/Usecase$Attributes;

    iput-object v5, v6, Lcom/sightcall/universal/agent/Usecase$Attributes;->hashValue:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_13
    return-object p0
.end method
