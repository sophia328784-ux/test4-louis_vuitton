.class public final synthetic Lcom/perfectcorp/perfectlib/s3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;IZLjava/util/List;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/s3;->b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    iput p2, p0, Lcom/perfectcorp/perfectlib/s3;->c:I

    iput-boolean p3, p0, Lcom/perfectcorp/perfectlib/s3;->d:Z

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/s3;->e:Ljava/util/List;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/s3;->f:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Iterable;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/s3;->b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    iget v1, p0, Lcom/perfectcorp/perfectlib/s3;->c:I

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/s3;->d:Z

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/s3;->e:Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->b(IZLjava/lang/Iterable;Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0
.end method
