.class public final synthetic Lcom/perfectcorp/perfectlib/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;IZLjava/util/List;Ljava/util/List;IILcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/i2;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    iput p2, p0, Lcom/perfectcorp/perfectlib/i2;->c:I

    iput-boolean p3, p0, Lcom/perfectcorp/perfectlib/i2;->d:Z

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/i2;->e:Ljava/util/List;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/i2;->f:Ljava/util/List;

    iput p6, p0, Lcom/perfectcorp/perfectlib/i2;->g:I

    iput p7, p0, Lcom/perfectcorp/perfectlib/i2;->h:I

    iput-object p8, p0, Lcom/perfectcorp/perfectlib/i2;->i:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/i2;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    iget v2, p0, Lcom/perfectcorp/perfectlib/i2;->c:I

    iget-boolean v3, p0, Lcom/perfectcorp/perfectlib/i2;->d:Z

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/i2;->e:Ljava/util/List;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/i2;->f:Ljava/util/List;

    iget v6, p0, Lcom/perfectcorp/perfectlib/i2;->g:I

    iget v7, p0, Lcom/perfectcorp/perfectlib/i2;->h:I

    iget-object v8, p0, Lcom/perfectcorp/perfectlib/i2;->i:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    invoke-virtual/range {v1 .. v8}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->r(IZLjava/lang/Iterable;Ljava/lang/Iterable;IILcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    move-result-object p0

    return-object p0
.end method
