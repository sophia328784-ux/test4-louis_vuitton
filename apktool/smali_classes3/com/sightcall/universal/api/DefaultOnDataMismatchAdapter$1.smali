.class Lcom/sightcall/universal/api/DefaultOnDataMismatchAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/moshi/JsonAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/api/DefaultOnDataMismatchAdapter;->newFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/squareup/moshi/JsonAdapter$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$defaultValue:Ljava/lang/Object;

.field final synthetic val$type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/api/DefaultOnDataMismatchAdapter$1;->val$type:Ljava/lang/Class;

    iput-object p2, p0, Lcom/sightcall/universal/api/DefaultOnDataMismatchAdapter$1;->val$defaultValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/Moshi;)Lcom/squareup/moshi/JsonAdapter;
    .locals 1
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

    iget-object v0, p0, Lcom/sightcall/universal/api/DefaultOnDataMismatchAdapter$1;->val$type:Ljava/lang/Class;

    if-eq v0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p3, p0, v0, p2}, Lcom/squareup/moshi/Moshi;->d(Lcom/squareup/moshi/JsonAdapter$Factory;Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object p1

    new-instance p2, Lcom/sightcall/universal/api/DefaultOnDataMismatchAdapter;

    iget-object p0, p0, Lcom/sightcall/universal/api/DefaultOnDataMismatchAdapter$1;->val$defaultValue:Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p0, p3}, Lcom/sightcall/universal/api/DefaultOnDataMismatchAdapter;-><init>(Lcom/squareup/moshi/JsonAdapter;Ljava/lang/Object;I)V

    return-object p2
.end method
