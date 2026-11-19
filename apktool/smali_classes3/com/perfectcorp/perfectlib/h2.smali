.class public final synthetic Lcom/perfectcorp/perfectlib/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;IZLjava/util/List;IILcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/h2;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    iput p2, p0, Lcom/perfectcorp/perfectlib/h2;->c:I

    iput-boolean p3, p0, Lcom/perfectcorp/perfectlib/h2;->d:Z

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/h2;->e:Ljava/util/List;

    iput p5, p0, Lcom/perfectcorp/perfectlib/h2;->f:I

    iput p6, p0, Lcom/perfectcorp/perfectlib/h2;->g:I

    iput-object p7, p0, Lcom/perfectcorp/perfectlib/h2;->h:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    sget-object p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/h2;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    iget v1, p0, Lcom/perfectcorp/perfectlib/h2;->c:I

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/h2;->d:Z

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/h2;->e:Ljava/util/List;

    iget v5, p0, Lcom/perfectcorp/perfectlib/h2;->f:I

    iget v6, p0, Lcom/perfectcorp/perfectlib/h2;->g:I

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/h2;->h:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    invoke-virtual/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->r(IZLjava/lang/Iterable;Ljava/lang/Iterable;IILcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    move-result-object p0

    return-object p0
.end method
