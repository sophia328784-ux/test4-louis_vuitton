.class public abstract Landroidx/camera/core/impl/AttachedSurfaceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/camera/core/impl/SurfaceConfig;ILandroid/util/Size;Landroidx/camera/core/DynamicRange;Ljava/util/List;Landroidx/camera/core/impl/Config;ILandroid/util/Range;Z)Landroidx/camera/core/impl/AttachedSurfaceInfo;
    .locals 10

    new-instance v0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;-><init>(Landroidx/camera/core/impl/SurfaceConfig;ILandroid/util/Size;Landroidx/camera/core/DynamicRange;Ljava/util/List;Landroidx/camera/core/impl/Config;ILandroid/util/Range;Z)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/util/List;
.end method

.method public abstract c()Landroidx/camera/core/DynamicRange;
.end method

.method public abstract d()I
.end method

.method public abstract e()Landroidx/camera/core/impl/Config;
.end method

.method public abstract f()I
.end method

.method public abstract g()Landroid/util/Size;
.end method

.method public abstract h()Landroidx/camera/core/impl/SurfaceConfig;
.end method

.method public abstract i()Landroid/util/Range;
.end method

.method public abstract j()Z
.end method

.method public final k(Landroidx/camera/camera2/impl/Camera2ImplConfig;)Landroidx/camera/core/impl/StreamSpec;
    .locals 2

    check-cast p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;

    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->c:Landroid/util/Size;

    invoke-static {v0}, Landroidx/camera/core/impl/StreamSpec;->a(Landroid/util/Size;)Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->d:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->h:Landroid/util/Range;

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->c(Landroid/util/Range;)Landroidx/camera/core/impl/StreamSpec$Builder;

    iget-object p0, p0, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->d:Landroidx/camera/core/DynamicRange;

    invoke-virtual {v0, p0}, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->b(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/StreamSpec$Builder;

    iput-object p1, v0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->f:Landroidx/camera/core/impl/Config;

    invoke-virtual {v0}, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->a()Landroidx/camera/core/impl/StreamSpec;

    move-result-object p0

    return-object p0
.end method
