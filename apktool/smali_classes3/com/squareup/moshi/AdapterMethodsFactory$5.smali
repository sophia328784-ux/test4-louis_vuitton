.class Lcom/squareup/moshi/AdapterMethodsFactory$5;
.super Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;
.source "SourceFile"


# instance fields
.field public h:Lcom/squareup/moshi/JsonAdapter;

.field public final synthetic i:[Ljava/lang/reflect/Type;

.field public final synthetic j:Ljava/lang/reflect/Type;

.field public final synthetic k:Ljava/util/Set;

.field public final synthetic l:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/sightcall/universal/agent/Usecase$MultipleFormatsMultipartyAdapter;Ljava/lang/reflect/Method;IZ[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    iput-object p7, p0, Lcom/squareup/moshi/AdapterMethodsFactory$5;->i:[Ljava/lang/reflect/Type;

    iput-object p8, p0, Lcom/squareup/moshi/AdapterMethodsFactory$5;->j:Ljava/lang/reflect/Type;

    iput-object p9, p0, Lcom/squareup/moshi/AdapterMethodsFactory$5;->k:Ljava/util/Set;

    iput-object p10, p0, Lcom/squareup/moshi/AdapterMethodsFactory$5;->l:Ljava/util/Set;

    move p7, p6

    const/4 p6, 0x1

    invoke-direct/range {p0 .. p7}, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/sightcall/universal/agent/Usecase$MultipleFormatsMultipartyAdapter;Ljava/lang/reflect/Method;IIZ)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/squareup/moshi/Moshi;Lcom/squareup/moshi/JsonAdapter$Factory;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->a(Lcom/squareup/moshi/Moshi;Lcom/squareup/moshi/JsonAdapter$Factory;)V

    iget-object v0, p0, Lcom/squareup/moshi/AdapterMethodsFactory$5;->i:[Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v3, p0, Lcom/squareup/moshi/AdapterMethodsFactory$5;->j:Ljava/lang/reflect/Type;

    invoke-static {v2, v3}, Lcom/squareup/moshi/Types;->b(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v2

    iget-object v3, p0, Lcom/squareup/moshi/AdapterMethodsFactory$5;->k:Ljava/util/Set;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/squareup/moshi/AdapterMethodsFactory$5;->l:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v0, v0, v1

    invoke-virtual {p1, p2, v0, v3}, Lcom/squareup/moshi/Moshi;->d(Lcom/squareup/moshi/JsonAdapter$Factory;Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object p1

    goto :goto_0

    :cond_0
    aget-object p2, v0, v1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v3, v0}, Lcom/squareup/moshi/Moshi;->c(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/squareup/moshi/AdapterMethodsFactory$5;->h:Lcom/squareup/moshi/JsonAdapter;

    return-void
.end method

.method public final b(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/squareup/moshi/AdapterMethodsFactory$5;->h:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
