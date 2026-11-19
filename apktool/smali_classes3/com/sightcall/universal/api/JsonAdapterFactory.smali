.class public final Lcom/sightcall/universal/api/JsonAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/moshi/JsonAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/api/JsonAdapterFactory$PolymorphicJsonAdapter;
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
.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;TT;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/api/JsonAdapterFactory;->baseType:Ljava/lang/Class;

    iput-object p2, p0, Lcom/sightcall/universal/api/JsonAdapterFactory;->subtypes:Ljava/util/List;

    iput-object p3, p0, Lcom/sightcall/universal/api/JsonAdapterFactory;->defaultValue:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/sightcall/universal/api/JsonAdapterFactory;->defaultValueSet:Z

    return-void
.end method

.method public static of(Ljava/lang/Class;)Lcom/sightcall/universal/api/JsonAdapterFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/sightcall/universal/api/JsonAdapterFactory<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v1, Lcom/sightcall/universal/api/JsonAdapterFactory;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/sightcall/universal/api/JsonAdapterFactory;-><init>(Ljava/lang/Class;Ljava/util/List;Ljava/lang/Object;Z)V

    return-object v1

    :cond_0
    const-string p0, "baseType == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public create(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/Moshi;)Lcom/squareup/moshi/JsonAdapter;
    .locals 3
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

    iget-object v0, p0, Lcom/sightcall/universal/api/JsonAdapterFactory;->baseType:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/sightcall/universal/api/JsonAdapterFactory;->subtypes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p2, p0, Lcom/sightcall/universal/api/JsonAdapterFactory;->subtypes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sightcall/universal/api/JsonAdapterFactory;->subtypes:Ljava/util/List;

    if-ge v0, p2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/squareup/moshi/internal/Util;->a:Ljava/util/Set;

    invoke-virtual {p3, v1, v2}, Lcom/squareup/moshi/Moshi;->b(Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/sightcall/universal/api/JsonAdapterFactory$PolymorphicJsonAdapter;

    iget-object p3, p0, Lcom/sightcall/universal/api/JsonAdapterFactory;->defaultValue:Ljava/lang/Object;

    iget-boolean p0, p0, Lcom/sightcall/universal/api/JsonAdapterFactory;->defaultValueSet:Z

    invoke-direct {p2, v1, p1, p3, p0}, Lcom/sightcall/universal/api/JsonAdapterFactory$PolymorphicJsonAdapter;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;Z)V

    invoke-virtual {p2}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/JsonAdapter;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public withDefaultValue(Ljava/lang/Object;)Lcom/sightcall/universal/api/JsonAdapterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/sightcall/universal/api/JsonAdapterFactory<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/universal/api/JsonAdapterFactory;

    iget-object v1, p0, Lcom/sightcall/universal/api/JsonAdapterFactory;->baseType:Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/universal/api/JsonAdapterFactory;->subtypes:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/sightcall/universal/api/JsonAdapterFactory;-><init>(Ljava/lang/Class;Ljava/util/List;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public withSubtype(Ljava/lang/Class;)Lcom/sightcall/universal/api/JsonAdapterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Lcom/sightcall/universal/api/JsonAdapterFactory<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sightcall/universal/api/JsonAdapterFactory;->subtypes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/sightcall/universal/api/JsonAdapterFactory;

    iget-object v1, p0, Lcom/sightcall/universal/api/JsonAdapterFactory;->baseType:Ljava/lang/Class;

    iget-object v2, p0, Lcom/sightcall/universal/api/JsonAdapterFactory;->defaultValue:Ljava/lang/Object;

    iget-boolean p0, p0, Lcom/sightcall/universal/api/JsonAdapterFactory;->defaultValueSet:Z

    invoke-direct {p1, v1, v0, v2, p0}, Lcom/sightcall/universal/api/JsonAdapterFactory;-><init>(Ljava/lang/Class;Ljava/util/List;Ljava/lang/Object;Z)V

    return-object p1

    :cond_0
    const-string p0, "subtype == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
