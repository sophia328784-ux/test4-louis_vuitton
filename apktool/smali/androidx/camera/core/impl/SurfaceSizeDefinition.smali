.class public abstract Landroidx/camera/core/impl/SurfaceSizeDefinition;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/util/Size;Ljava/util/Map;Landroid/util/Size;Ljava/util/Map;Landroid/util/Size;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Landroidx/camera/core/impl/SurfaceSizeDefinition;
    .locals 10

    new-instance v0, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;-><init>(Landroid/util/Size;Ljava/util/Map;Landroid/util/Size;Ljava/util/Map;Landroid/util/Size;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Landroid/util/Size;
.end method

.method public abstract c()Ljava/util/Map;
.end method

.method public abstract d()Ljava/util/Map;
.end method

.method public final e(I)Landroid/util/Size;
    .locals 0

    check-cast p0, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    iget-object p0, p0, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0
.end method

.method public abstract f()Ljava/util/Map;
.end method

.method public abstract g()Landroid/util/Size;
.end method

.method public abstract h()Ljava/util/Map;
.end method

.method public abstract i()Ljava/util/Map;
.end method

.method public abstract j()Ljava/util/Map;
.end method
