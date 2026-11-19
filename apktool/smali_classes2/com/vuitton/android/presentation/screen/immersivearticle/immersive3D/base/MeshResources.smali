.class public final Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;",
        "",
        "",
        "entity",
        "Lcom/google/android/filament/VertexBuffer;",
        "vertexBuffer",
        "Lcom/google/android/filament/IndexBuffer;",
        "indexBuffer",
        "<init>",
        "(ILcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/filament/VertexBuffer;

.field public final c:Lcom/google/android/filament/IndexBuffer;


# direct methods
.method public constructor <init>(ILcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;->a:I

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;->b:Lcom/google/android/filament/VertexBuffer;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;->c:Lcom/google/android/filament/IndexBuffer;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->h:Lcom/google/android/filament/Scene;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Scene;->e(I)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    invoke-virtual {p1, v1}, Lcom/google/android/filament/Engine;->n(I)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;->b:Lcom/google/android/filament/VertexBuffer;

    invoke-virtual {p1, v0}, Lcom/google/android/filament/Engine;->w(Lcom/google/android/filament/VertexBuffer;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;->c:Lcom/google/android/filament/IndexBuffer;

    invoke-virtual {p1, p0}, Lcom/google/android/filament/Engine;->p(Lcom/google/android/filament/IndexBuffer;)V

    iget-object p0, p1, Lcom/google/android/filament/Engine;->e:Lcom/google/android/filament/EntityManager;

    invoke-virtual {p0, v1}, Lcom/google/android/filament/EntityManager;->b(I)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;->a:I

    iget v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;->b:Lcom/google/android/filament/VertexBuffer;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;->b:Lcom/google/android/filament/VertexBuffer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;->c:Lcom/google/android/filament/IndexBuffer;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;->c:Lcom/google/android/filament/IndexBuffer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;->b:Lcom/google/android/filament/VertexBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;->c:Lcom/google/android/filament/IndexBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MeshResources(entity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vertexBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;->b:Lcom/google/android/filament/VertexBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", indexBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;->c:Lcom/google/android/filament/IndexBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
