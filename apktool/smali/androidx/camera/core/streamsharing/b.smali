.class public final synthetic Landroidx/camera/core/streamsharing/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/SessionConfig$ErrorListener;


# instance fields
.field public final synthetic a:Landroidx/camera/core/streamsharing/StreamSharing;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroidx/camera/core/impl/UseCaseConfig;

.field public final synthetic e:Landroidx/camera/core/impl/StreamSpec;

.field public final synthetic f:Landroidx/camera/core/impl/StreamSpec;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/streamsharing/StreamSharing;Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/streamsharing/b;->a:Landroidx/camera/core/streamsharing/StreamSharing;

    iput-object p2, p0, Landroidx/camera/core/streamsharing/b;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/camera/core/streamsharing/b;->c:Ljava/lang/String;

    iput-object p4, p0, Landroidx/camera/core/streamsharing/b;->d:Landroidx/camera/core/impl/UseCaseConfig;

    iput-object p5, p0, Landroidx/camera/core/streamsharing/b;->e:Landroidx/camera/core/impl/StreamSpec;

    iput-object p6, p0, Landroidx/camera/core/streamsharing/b;->f:Landroidx/camera/core/impl/StreamSpec;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 6

    iget-object v0, p0, Landroidx/camera/core/streamsharing/b;->a:Landroidx/camera/core/streamsharing/StreamSharing;

    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroidx/camera/core/streamsharing/StreamSharing;->E()V

    iget-object v1, p0, Landroidx/camera/core/streamsharing/b;->b:Ljava/lang/String;

    iget-object v2, p0, Landroidx/camera/core/streamsharing/b;->c:Ljava/lang/String;

    iget-object v3, p0, Landroidx/camera/core/streamsharing/b;->d:Landroidx/camera/core/impl/UseCaseConfig;

    iget-object v4, p0, Landroidx/camera/core/streamsharing/b;->e:Landroidx/camera/core/impl/StreamSpec;

    iget-object v5, p0, Landroidx/camera/core/streamsharing/b;->f:Landroidx/camera/core/impl/StreamSpec;

    invoke-virtual/range {v0 .. v5}, Landroidx/camera/core/streamsharing/StreamSharing;->F(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/camera/core/UseCase;->D(Ljava/util/List;)V

    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->q()V

    iget-object p0, v0, Landroidx/camera/core/streamsharing/StreamSharing;->r:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object p1, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/core/UseCase;

    invoke-virtual {p0, p2}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->m(Landroidx/camera/core/UseCase;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
