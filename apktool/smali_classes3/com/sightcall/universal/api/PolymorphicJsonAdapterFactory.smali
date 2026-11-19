.class public final Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/moshi/JsonAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory$PolymorphicJsonAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/moshi/JsonAdapter$Factory;"
    }
.end annotation


# instance fields
.field final baseType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final defaultValueSet:Z

.field final labelKey:Ljava/lang/String;

.field final labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final subtypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;TT;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->baseType:Ljava/lang/Class;

    iput-object p2, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->labelKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->labels:Ljava/util/List;

    iput-object p4, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->subtypes:Ljava/util/List;

    iput-object p5, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->defaultValue:Ljava/lang/Object;

    iput-boolean p6, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->defaultValueSet:Z

    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;)Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v4

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Object;Z)V

    return-object v1

    :cond_0
    const-string p0, "labelKey == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string p0, "baseType == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public create(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/Moshi;)Lcom/squareup/moshi/JsonAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/squareup/moshi/Moshi;",
            ")",
            "Lcom/squareup/moshi/JsonAdapter<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/squareup/moshi/Types;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->baseType:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->subtypes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->subtypes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->subtypes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/squareup/moshi/internal/Util;->a:Ljava/util/Set;

    invoke-virtual {p3, v0, v1}, Lcom/squareup/moshi/Moshi;->b(Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory$PolymorphicJsonAdapter;

    iget-object v1, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->labelKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->labels:Ljava/util/List;

    iget-object v3, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->subtypes:Ljava/util/List;

    iget-object v5, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->defaultValue:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->defaultValueSet:Z

    invoke-direct/range {v0 .. v6}, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory$PolymorphicJsonAdapter;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Object;Z)V

    invoke-virtual {v0}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/JsonAdapter;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public withDefaultValue(Ljava/lang/Object;)Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;

    iget-object v1, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->baseType:Ljava/lang/Class;

    iget-object v2, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->labelKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->labels:Ljava/util/List;

    iget-object v4, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->subtypes:Ljava/util/List;

    const/4 v6, 0x1

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public withSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->labels:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->subtypes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->labels:Ljava/util/List;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->subtypes:Ljava/util/List;

    invoke-direct {v6, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;

    iget-object v3, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->baseType:Ljava/lang/Class;

    iget-object v4, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->labelKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->defaultValue:Ljava/lang/Object;

    iget-boolean v8, p0, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->defaultValueSet:Z

    invoke-direct/range {v2 .. v8}, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Object;Z)V

    return-object v2

    :cond_0
    const-string p0, "Subtypes and labels must be unique."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string p0, "label == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string p0, "subtype == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v0
.end method
