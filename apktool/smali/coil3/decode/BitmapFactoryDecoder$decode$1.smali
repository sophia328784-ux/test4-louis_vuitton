.class final Lcoil3/decode/BitmapFactoryDecoder$decode$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "coil3.decode.BitmapFactoryDecoder"
    f = "BitmapFactoryDecoder.kt"
    l = {
        0xd5,
        0x28
    }
    m = "decode"
    v = 0x1
.end annotation


# instance fields
.field public b:Lkotlinx/coroutines/sync/Semaphore;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcoil3/decode/BitmapFactoryDecoder;

.field public e:I


# direct methods
.method public constructor <init>(Lcoil3/decode/BitmapFactoryDecoder;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->d:Lcoil3/decode/BitmapFactoryDecoder;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->c:Ljava/lang/Object;

    iget p1, p0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->e:I

    iget-object p1, p0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->d:Lcoil3/decode/BitmapFactoryDecoder;

    invoke-virtual {p1, p0}, Lcoil3/decode/BitmapFactoryDecoder;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
