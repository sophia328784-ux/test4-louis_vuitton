.class final Landroidx/datastore/core/FileWriteScope$writeData$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.datastore.core.FileWriteScope"
    f = "FileStorage.kt"
    l = {
        0xc9
    }
    m = "writeData"
.end annotation


# instance fields
.field public b:Ljava/io/FileOutputStream;

.field public c:Ljava/io/FileOutputStream;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Landroidx/datastore/core/FileWriteScope;

.field public f:I


# direct methods
.method public constructor <init>(Landroidx/datastore/core/FileWriteScope;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/datastore/core/FileWriteScope$writeData$1;->e:Landroidx/datastore/core/FileWriteScope;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/datastore/core/FileWriteScope$writeData$1;->d:Ljava/lang/Object;

    iget p1, p0, Landroidx/datastore/core/FileWriteScope$writeData$1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/datastore/core/FileWriteScope$writeData$1;->f:I

    iget-object p1, p0, Landroidx/datastore/core/FileWriteScope$writeData$1;->e:Landroidx/datastore/core/FileWriteScope;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroidx/datastore/core/FileWriteScope;->d(Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
