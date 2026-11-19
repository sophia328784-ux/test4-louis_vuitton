.class final Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1$Camera1Parameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Camera1Parameters"
.end annotation


# instance fields
.field public final a:Landroid/hardware/Camera$Parameters;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera$Parameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1$Camera1Parameters;->a:Landroid/hardware/Camera$Parameters;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1$Camera1Parameters;->a:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 2

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1$Camera1Parameters;->a:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/FluentIterable;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object p0

    new-instance v0, Luh;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Luh;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/FluentIterable;->b(Luh;)Lcom/google/common/collect/FluentIterable;

    move-result-object p0

    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->b:Ljava/lang/Iterable;

    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->s(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public final c(II)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1$Camera1Parameters;->a:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;->d:Lcom/google/common/collect/ImmutableMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1$Camera1Parameters;->a:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 3

    sget-object v0, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1$Camera1Parameters;->a:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;->d:Lcom/google/common/collect/ImmutableMap;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public final getPreviewSize()Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;
    .locals 2

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1$Camera1Parameters;->a:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p0

    new-instance v0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, p0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;-><init>(II)V

    return-object v0
.end method
