.class Landroidx/camera/video/VideoCapture$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Observable$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/Observable$Observer<",
        "Landroidx/camera/video/StreamInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/camera/video/VideoCapture;


# direct methods
.method public constructor <init>(Landroidx/camera/video/VideoCapture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/VideoCapture$1;->a:Landroidx/camera/video/VideoCapture;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Landroidx/camera/video/StreamInfo;

    if-eqz p1, :cond_7

    iget-object p0, p0, Landroidx/camera/video/VideoCapture$1;->a:Landroidx/camera/video/VideoCapture;

    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->w:Landroidx/camera/video/VideoOutput$SourceState;

    sget-object v1, Landroidx/camera/video/VideoOutput$SourceState;->INACTIVE:Landroidx/camera/video/VideoOutput$SourceState;

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->s:Landroidx/camera/video/StreamInfo;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 v0, 0x3

    const-string v1, "VideoCapture"

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->s:Landroidx/camera/video/StreamInfo;

    iput-object p1, p0, Landroidx/camera/video/VideoCapture;->s:Landroidx/camera/video/StreamInfo;

    iget-object v1, p0, Landroidx/camera/core/UseCase;->i:Landroidx/camera/core/impl/StreamSpec;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v0

    check-cast v2, Landroidx/camera/video/AutoValue_StreamInfo;

    iget v2, v2, Landroidx/camera/video/AutoValue_StreamInfo;->d:I

    move-object v3, p1

    check-cast v3, Landroidx/camera/video/AutoValue_StreamInfo;

    iget v4, v3, Landroidx/camera/video/AutoValue_StreamInfo;->d:I

    sget-object v5, Landroidx/camera/video/StreamInfo;->b:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Landroidx/camera/video/VideoCapture;->A:Z

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Landroidx/camera/video/AutoValue_StreamInfo;

    iget-object v2, v2, Landroidx/camera/video/AutoValue_StreamInfo;->f:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    if-eqz v2, :cond_2

    iget-object v2, v3, Landroidx/camera/video/AutoValue_StreamInfo;->f:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    if-nez v2, :cond_2

    :goto_0
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->M()V

    return-void

    :cond_2
    check-cast v0, Landroidx/camera/video/AutoValue_StreamInfo;

    iget v2, v0, Landroidx/camera/video/AutoValue_StreamInfo;->d:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    if-eq v4, v7, :cond_4

    :cond_3
    if-ne v2, v7, :cond_5

    if-eq v4, v7, :cond_5

    :cond_4
    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->t:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {p0, v0, p1, v1}, Landroidx/camera/video/VideoCapture;->G(Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/video/StreamInfo;Landroidx/camera/core/impl/StreamSpec;)V

    iget-object p1, p0, Landroidx/camera/video/VideoCapture;->t:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->k()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->D(Ljava/util/List;)V

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->q()V

    return-void

    :cond_5
    iget-object v0, v0, Landroidx/camera/video/AutoValue_StreamInfo;->e:Landroidx/camera/video/StreamInfo$StreamState;

    iget-object v2, v3, Landroidx/camera/video/AutoValue_StreamInfo;->e:Landroidx/camera/video/StreamInfo$StreamState;

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->t:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {p0, v0, p1, v1}, Landroidx/camera/video/VideoCapture;->G(Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/video/StreamInfo;Landroidx/camera/core/impl/StreamSpec;)V

    iget-object p1, p0, Landroidx/camera/video/VideoCapture;->t:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->k()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->D(Ljava/util/List;)V

    iget-object p1, p0, Landroidx/camera/core/UseCase;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/UseCase$StateChangeCallback;

    invoke-interface {v0, p0}, Landroidx/camera/core/UseCase$StateChangeCallback;->e(Landroidx/camera/core/UseCase;)V

    goto :goto_1

    :cond_6
    :goto_2
    return-void

    :cond_7
    const-string p0, "StreamInfo can\'t be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    const-string p0, "VideoCapture"

    const/4 p1, 0x5

    invoke-static {p1, p0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    return-void
.end method
