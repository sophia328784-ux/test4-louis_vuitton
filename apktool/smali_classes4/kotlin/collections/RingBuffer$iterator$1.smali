.class public final Lkotlin/collections/RingBuffer$iterator$1;
.super Lkotlin/collections/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractIterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "kotlin/collections/RingBuffer$iterator$1",
        "Lkotlin/collections/AbstractIterator;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public final synthetic f:Lkotlin/collections/RingBuffer;


# direct methods
.method public constructor <init>(Lkotlin/collections/RingBuffer;)V
    .locals 1

    iput-object p1, p0, Lkotlin/collections/RingBuffer$iterator$1;->f:Lkotlin/collections/RingBuffer;

    invoke-direct {p0}, Lkotlin/collections/AbstractIterator;-><init>()V

    iget v0, p1, Lkotlin/collections/RingBuffer;->f:I

    iput v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->d:I

    iget p1, p1, Lkotlin/collections/RingBuffer;->e:I

    iput p1, p0, Lkotlin/collections/RingBuffer$iterator$1;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lkotlin/collections/AbstractIterator;->b:I

    return-void

    :cond_0
    iget-object v1, p0, Lkotlin/collections/RingBuffer$iterator$1;->f:Lkotlin/collections/RingBuffer;

    iget-object v2, v1, Lkotlin/collections/RingBuffer;->c:[Ljava/lang/Object;

    iget v3, p0, Lkotlin/collections/RingBuffer$iterator$1;->e:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lkotlin/collections/AbstractIterator;->c:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p0, Lkotlin/collections/AbstractIterator;->b:I

    add-int/2addr v3, v2

    iget v1, v1, Lkotlin/collections/RingBuffer;->d:I

    rem-int/2addr v3, v1

    iput v3, p0, Lkotlin/collections/RingBuffer$iterator$1;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->d:I

    return-void
.end method
