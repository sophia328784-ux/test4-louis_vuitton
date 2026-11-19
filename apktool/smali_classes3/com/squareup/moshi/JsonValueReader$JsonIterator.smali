.class final Lcom/squareup/moshi/JsonValueReader$JsonIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/JsonValueReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public final b:Lcom/squareup/moshi/JsonReader$Token;

.field public final c:[Ljava/lang/Object;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/squareup/moshi/JsonReader$Token;[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/moshi/JsonValueReader$JsonIterator;->b:Lcom/squareup/moshi/JsonReader$Token;

    iput-object p2, p0, Lcom/squareup/moshi/JsonValueReader$JsonIterator;->c:[Ljava/lang/Object;

    iput p3, p0, Lcom/squareup/moshi/JsonValueReader$JsonIterator;->d:I

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/squareup/moshi/JsonValueReader$JsonIterator;

    iget-object v1, p0, Lcom/squareup/moshi/JsonValueReader$JsonIterator;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/squareup/moshi/JsonValueReader$JsonIterator;->d:I

    iget-object p0, p0, Lcom/squareup/moshi/JsonValueReader$JsonIterator;->b:Lcom/squareup/moshi/JsonReader$Token;

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/moshi/JsonValueReader$JsonIterator;-><init>(Lcom/squareup/moshi/JsonReader$Token;[Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/squareup/moshi/JsonValueReader$JsonIterator;->d:I

    iget-object p0, p0, Lcom/squareup/moshi/JsonValueReader$JsonIterator;->c:[Ljava/lang/Object;

    array-length p0, p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/squareup/moshi/JsonValueReader$JsonIterator;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/squareup/moshi/JsonValueReader$JsonIterator;->d:I

    iget-object p0, p0, Lcom/squareup/moshi/JsonValueReader$JsonIterator;->c:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
