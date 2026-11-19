.class public abstract Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MaterialHelperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MaterialHelperKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;Lcom/google/android/filament/MaterialInstance;)Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Vertex;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-direct {v3, v4, v4, v4}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Vertex;-><init>(FFF)V

    invoke-static {v2, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MaterialHelperKt;->c(Ljava/nio/ByteBuffer;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Vertex;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Vertex;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v4}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Vertex;-><init>(FFF)V

    invoke-static {v2, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MaterialHelperKt;->c(Ljava/nio/ByteBuffer;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Vertex;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Vertex;

    invoke-direct {v3, v5, v5, v4}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Vertex;-><init>(FFF)V

    invoke-static {v2, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MaterialHelperKt;->c(Ljava/nio/ByteBuffer;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Vertex;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Vertex;

    invoke-direct {v3, v5, v4, v4}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Vertex;-><init>(FFF)V

    invoke-static {v2, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MaterialHelperKt;->c(Ljava/nio/ByteBuffer;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Vertex;)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/VertexUv;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/VertexUv;-><init>(FF)V

    invoke-static {v1, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MaterialHelperKt;->d(Ljava/nio/ByteBuffer;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/VertexUv;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/VertexUv;

    invoke-direct {v3, v4, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/VertexUv;-><init>(FF)V

    invoke-static {v1, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MaterialHelperKt;->d(Ljava/nio/ByteBuffer;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/VertexUv;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/VertexUv;

    invoke-direct {v3, v5, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/VertexUv;-><init>(FF)V

    invoke-static {v1, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MaterialHelperKt;->d(Ljava/nio/ByteBuffer;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/VertexUv;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/VertexUv;

    invoke-direct {v3, v5, v4}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/VertexUv;-><init>(FF)V

    invoke-static {v1, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MaterialHelperKt;->d(Ljava/nio/ByteBuffer;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/VertexUv;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v1

    new-instance v3, Lcom/google/android/filament/VertexBuffer$Builder;

    invoke-direct {v3}, Lcom/google/android/filament/VertexBuffer$Builder;-><init>()V

    iget-wide v4, v3, Lcom/google/android/filament/VertexBuffer$Builder;->b:J

    invoke-static {v4, v5}, Lcom/google/android/filament/VertexBuffer;->b(J)V

    const/4 v6, 0x4

    invoke-static {v6, v4, v5}, Lcom/google/android/filament/VertexBuffer;->d(IJ)V

    sget-object v4, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->POSITION:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    sget-object v5, Lcom/google/android/filament/VertexBuffer$AttributeType;->FLOAT3:Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/4 v6, 0x0

    const/16 v7, 0xc

    invoke-virtual {v3, v4, v6, v5, v7}, Lcom/google/android/filament/VertexBuffer$Builder;->a(Lcom/google/android/filament/VertexBuffer$VertexAttribute;ILcom/google/android/filament/VertexBuffer$AttributeType;I)V

    sget-object v4, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UV0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    sget-object v5, Lcom/google/android/filament/VertexBuffer$AttributeType;->FLOAT2:Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/4 v8, 0x1

    const/16 v9, 0x8

    invoke-virtual {v3, v4, v8, v5, v9}, Lcom/google/android/filament/VertexBuffer$Builder;->a(Lcom/google/android/filament/VertexBuffer$VertexAttribute;ILcom/google/android/filament/VertexBuffer$AttributeType;I)V

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    invoke-virtual {v3, v4}, Lcom/google/android/filament/VertexBuffer$Builder;->b(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/VertexBuffer;

    move-result-object v3

    invoke-virtual {v3, v6, v4, v2}, Lcom/google/android/filament/VertexBuffer;->h(ILcom/google/android/filament/Engine;Ljava/nio/Buffer;)V

    invoke-virtual {v3, v8, v4, v1}, Lcom/google/android/filament/VertexBuffer;->h(ILcom/google/android/filament/Engine;Ljava/nio/Buffer;)V

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v2, Lcom/google/android/filament/IndexBuffer$Builder;

    invoke-direct {v2}, Lcom/google/android/filament/IndexBuffer$Builder;-><init>()V

    iget-wide v10, v2, Lcom/google/android/filament/IndexBuffer$Builder;->b:J

    invoke-static {v9, v10, v11}, Lcom/google/android/filament/IndexBuffer;->c(IJ)V

    sget-object v7, Lcom/google/android/filament/IndexBuffer$Builder$IndexType;->USHORT:Lcom/google/android/filament/IndexBuffer$Builder$IndexType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-static {v7, v10, v11}, Lcom/google/android/filament/IndexBuffer;->a(IJ)V

    invoke-virtual {v2, v4}, Lcom/google/android/filament/IndexBuffer$Builder;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/IndexBuffer;

    move-result-object v2

    invoke-virtual {v2, v6, v4, v1}, Lcom/google/android/filament/IndexBuffer;->g(ILcom/google/android/filament/Engine;Ljava/nio/Buffer;)V

    iget-object v1, v4, Lcom/google/android/filament/Engine;->e:Lcom/google/android/filament/EntityManager;

    invoke-virtual {v1}, Lcom/google/android/filament/EntityManager;->a()I

    move-result v1

    new-instance v7, Lcom/google/android/filament/RenderableManager$Builder;

    invoke-direct {v7, v8}, Lcom/google/android/filament/RenderableManager$Builder;-><init>(I)V

    new-instance v9, Lcom/google/android/filament/Box;

    const/4 v14, 0x0

    const v15, 0x3c23d70a    # 0.01f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x41f00000    # 30.0f

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/google/android/filament/Box;-><init>(FFFFFF)V

    iget-object v10, v9, Lcom/google/android/filament/Box;->a:[F

    aget v13, v10, v6

    aget v14, v10, v8

    aget v15, v10, v5

    iget-object v9, v9, Lcom/google/android/filament/Box;->b:[F

    aget v16, v9, v6

    aget v17, v9, v8

    aget v18, v9, v5

    iget-wide v11, v7, Lcom/google/android/filament/RenderableManager$Builder;->b:J

    invoke-static/range {v11 .. v18}, Lcom/google/android/filament/RenderableManager;->a(JFFFFFF)V

    sget-object v5, Lcom/google/android/filament/RenderableManager$PrimitiveType;->TRIANGLES:Lcom/google/android/filament/RenderableManager$PrimitiveType;

    invoke-virtual {v5}, Lcom/google/android/filament/RenderableManager$PrimitiveType;->a()I

    move-result v14

    invoke-virtual {v3}, Lcom/google/android/filament/VertexBuffer;->g()J

    move-result-wide v10

    invoke-virtual {v2}, Lcom/google/android/filament/IndexBuffer;->f()J

    move-result-wide v12

    iget-wide v8, v7, Lcom/google/android/filament/RenderableManager$Builder;->b:J

    invoke-static/range {v8 .. v14}, Lcom/google/android/filament/RenderableManager;->f(JJJI)V

    iget-wide v8, v7, Lcom/google/android/filament/RenderableManager$Builder;->b:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filament/MaterialInstance;->a()J

    move-result-wide v10

    invoke-static {v6, v8, v9, v10, v11}, Lcom/google/android/filament/RenderableManager;->g(IJJ)V

    invoke-virtual {v7, v4, v1}, Lcom/google/android/filament/RenderableManager$Builder;->a(Lcom/google/android/filament/Engine;I)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->h:Lcom/google/android/filament/Scene;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Scene;->b(I)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;

    invoke-direct {v0, v1, v3, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;-><init>(ILcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;)V

    return-object v0
.end method

.method public static final b(Lcom/google/android/filament/Engine;Landroid/graphics/Bitmap;Lcom/google/android/filament/utils/TextureType;)Lcom/google/android/filament/Texture;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Lcom/google/android/filament/utils/TextureType;->COLOR:Lcom/google/android/filament/utils/TextureType;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    new-instance v0, Lcom/google/android/filament/Texture$Builder;

    invoke-direct {v0}, Lcom/google/android/filament/Texture$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-wide v3, v0, Lcom/google/android/filament/Texture$Builder;->b:J

    invoke-static {v1, v3, v4}, Lcom/google/android/filament/Texture;->h(IJ)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v1, v3, v4}, Lcom/google/android/filament/Texture;->c(IJ)V

    sget-object v1, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_2D:Lcom/google/android/filament/Texture$Sampler;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture$Builder;->c(Lcom/google/android/filament/Texture$Sampler;)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MaterialHelperKt$WhenMappings;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    if-eq p2, v2, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    sget-object p2, Lcom/google/android/filament/Texture$InternalFormat;->RGBA8:Lcom/google/android/filament/Texture$InternalFormat;

    goto :goto_1

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    sget-object p2, Lcom/google/android/filament/Texture$InternalFormat;->RGBA8:Lcom/google/android/filament/Texture$InternalFormat;

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/google/android/filament/Texture$InternalFormat;->SRGB8_A8:Lcom/google/android/filament/Texture$InternalFormat;

    :goto_1
    invoke-virtual {v0, p2}, Lcom/google/android/filament/Texture$Builder;->b(Lcom/google/android/filament/Texture$InternalFormat;)V

    invoke-static {v3, v4}, Lcom/google/android/filament/Texture;->g(J)V

    const/16 p2, 0xff

    invoke-static {p2, v3, v4}, Lcom/google/android/filament/Texture;->e(IJ)V

    invoke-virtual {v0, p0}, Lcom/google/android/filament/Texture$Builder;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Texture;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/google/android/filament/android/TextureHelper;->a(Lcom/google/android/filament/Engine;Lcom/google/android/filament/Texture;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, p0}, Lcom/google/android/filament/Texture;->k(Lcom/google/android/filament/Engine;)V

    return-object p2
.end method

.method public static final c(Ljava/nio/ByteBuffer;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Vertex;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Vertex;->a:F

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget v0, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Vertex;->b:F

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Vertex;->c:F

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static final d(Ljava/nio/ByteBuffer;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/VertexUv;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/VertexUv;->a:F

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/VertexUv;->b:F

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-void
.end method
