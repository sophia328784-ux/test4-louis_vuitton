.class public Lcom/sightcall/universal/api/JsonApi$Wrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/api/JsonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private included:[Lcom/sightcall/universal/api/JsonApi$Included;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "included"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/api/JsonApi$Wrapper;->data:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/sightcall/universal/api/JsonApi$Wrapper;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static unwrap(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/api/JsonApi$Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public included()[Lcom/sightcall/universal/api/JsonApi$Included;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/api/JsonApi$Wrapper;->included:[Lcom/sightcall/universal/api/JsonApi$Included;

    return-object p0
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 9
    iget-object p0, p0, Lcom/sightcall/universal/api/JsonApi$Wrapper;->data:Ljava/lang/Object;

    return-object p0
.end method
