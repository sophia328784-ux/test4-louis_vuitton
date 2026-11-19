.class Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplyEffectIdsInfo"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final b:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public volatile c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;->c:Landroid/graphics/Bitmap;

    return-void
.end method
