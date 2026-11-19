.class public Landroidx/camera/video/CapabilitiesByQuality;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedHashMap;

.field public final b:Ljava/util/TreeMap;

.field public final c:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

.field public final d:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/EncoderProfilesProvider;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/video/CapabilitiesByQuality;->a:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    invoke-direct {v1}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Landroidx/camera/video/CapabilitiesByQuality;->b:Ljava/util/TreeMap;

    sget-object v0, Landroidx/camera/video/Quality;->a:Landroidx/camera/video/Quality;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroidx/camera/video/Quality;->i:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "CapabilitiesByQuality"

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/video/Quality;

    instance-of v4, v1, Landroidx/camera/video/Quality$ConstantQuality;

    const-string v5, "Currently only support ConstantQuality"

    invoke-static {v5, v4}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    move-object v4, v1

    check-cast v4, Landroidx/camera/video/Quality$ConstantQuality;

    const/4 v5, 0x1

    if-eq p2, v5, :cond_1

    const/4 v5, 0x2

    if-ne p2, v5, :cond_0

    invoke-virtual {v4}, Landroidx/camera/video/Quality$ConstantQuality;->a()I

    move-result v4

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Unknown quality source: "

    invoke-static {p2, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    throw v2

    :cond_1
    invoke-virtual {v4}, Landroidx/camera/video/Quality$ConstantQuality;->d()I

    move-result v4

    :goto_1
    invoke-interface {p1, v4}, Landroidx/camera/core/impl/EncoderProfilesProvider;->b(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v5, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-interface {v4}, Landroidx/camera/core/impl/EncoderProfilesProxy;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v4}, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;->e(Landroidx/camera/core/impl/EncoderProfilesProxy;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_4

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v1, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;->g()Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object v3

    iget-object v4, p0, Landroidx/camera/video/CapabilitiesByQuality;->b:Ljava/util/TreeMap;

    invoke-virtual {v3}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->k()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v4, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroidx/camera/video/CapabilitiesByQuality;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    iget-object p1, p0, Landroidx/camera/video/CapabilitiesByQuality;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v3}, Landroidx/camera/core/Logger;->a(Ljava/lang/String;)V

    iput-object v2, p0, Landroidx/camera/video/CapabilitiesByQuality;->d:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    iput-object v2, p0, Landroidx/camera/video/CapabilitiesByQuality;->c:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    return-void

    :cond_6
    new-instance p1, Ljava/util/ArrayDeque;

    iget-object p2, p0, Landroidx/camera/video/CapabilitiesByQuality;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    iput-object p2, p0, Landroidx/camera/video/CapabilitiesByQuality;->c:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    iput-object p1, p0, Landroidx/camera/video/CapabilitiesByQuality;->d:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/camera/video/Quality;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;
    .locals 3

    sget-object v0, Landroidx/camera/video/Quality;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown quality: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/String;)V

    sget-object v0, Landroidx/camera/video/Quality;->f:Landroidx/camera/video/Quality;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroidx/camera/video/CapabilitiesByQuality;->c:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    return-object p0

    :cond_0
    sget-object v0, Landroidx/camera/video/Quality;->e:Landroidx/camera/video/Quality;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Landroidx/camera/video/CapabilitiesByQuality;->d:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    return-object p0

    :cond_1
    iget-object p0, p0, Landroidx/camera/video/CapabilitiesByQuality;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    return-object p0
.end method
