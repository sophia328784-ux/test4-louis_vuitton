.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/makeupcam/camera/PayloadValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

.field public final c:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;",
            ">;",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-static {p3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "no pattern can be used"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
