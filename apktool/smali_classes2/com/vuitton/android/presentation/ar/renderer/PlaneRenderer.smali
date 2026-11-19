.class public final Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0008B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lcom/vuitton/android/presentation/ar/filament/Filament;",
        "filament",
        "<init>",
        "(Landroid/content/Context;Lcom/vuitton/android/presentation/ar/filament/Filament;)V",
        "Companion",
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
.field public final a:Lcom/vuitton/android/presentation/ar/filament/Filament;

.field public final b:Lcom/google/android/filament/Material;

.field public final c:Lcom/google/android/filament/MaterialInstance;

.field public final d:Lcom/google/android/filament/Material;

.field public final e:Ljava/nio/FloatBuffer;

.field public final f:Ljava/nio/FloatBuffer;

.field public final g:Ljava/nio/ShortBuffer;

.field public final h:Lcom/google/android/filament/VertexBuffer;

.field public final i:Lcom/google/android/filament/IndexBuffer;

.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vuitton/android/presentation/ar/filament/Filament;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->a:Lcom/vuitton/android/presentation/ar/filament/Filament;

    const-string v0, "materials/textured.filamat"

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/ar/MatrixKt;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Lcom/google/android/filament/Material$Builder;

    invoke-direct {v1}, Lcom/google/android/filament/Material$Builder;-><init>()V

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    iput-object v0, v1, Lcom/google/android/filament/Material$Builder;->a:Ljava/nio/ByteBuffer;

    iput v2, v1, Lcom/google/android/filament/Material$Builder;->b:I

    iget-object v0, p2, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/Material$Builder;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Material;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->b:Lcom/google/android/filament/Material;

    invoke-virtual {v1}, Lcom/google/android/filament/Material;->b()Lcom/google/android/filament/MaterialInstance;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x7f080366

    sget-object v4, Lcom/google/android/filament/utils/TextureType;->COLOR:Lcom/google/android/filament/utils/TextureType;

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/filament/utils/TextureLoaderKt;->a(Lcom/google/android/filament/Engine;Landroid/content/res/Resources;ILcom/google/android/filament/utils/TextureType;)Lcom/google/android/filament/Texture;

    move-result-object v2

    new-instance v3, Lcom/google/android/filament/TextureSampler;

    invoke-direct {v3}, Lcom/google/android/filament/TextureSampler;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/filament/TextureSampler;->a()V

    const-string v4, "texture"

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/filament/MaterialInstance;->i(Ljava/lang/String;Lcom/google/android/filament/Texture;Lcom/google/android/filament/TextureSampler;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->c:Lcom/google/android/filament/MaterialInstance;

    const-string v1, "materials/shadow.filamat"

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/ar/MatrixKt;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    new-instance v1, Lcom/google/android/filament/Material$Builder;

    invoke-direct {v1}, Lcom/google/android/filament/Material$Builder;-><init>()V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    iput-object p1, v1, Lcom/google/android/filament/Material$Builder;->a:Ljava/nio/ByteBuffer;

    iput v2, v1, Lcom/google/android/filament/Material$Builder;->b:I

    invoke-virtual {v1, v0}, Lcom/google/android/filament/Material$Builder;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Material;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->d:Lcom/google/android/filament/Material;

    const/16 p1, 0x3e80

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->e:Ljava/nio/FloatBuffer;

    const/16 p1, 0x1f40

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->f:Ljava/nio/FloatBuffer;

    const/16 p1, 0xbb2

    invoke-static {p1}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->g:Ljava/nio/ShortBuffer;

    new-instance v1, Lcom/google/android/filament/VertexBuffer$Builder;

    invoke-direct {v1}, Lcom/google/android/filament/VertexBuffer$Builder;-><init>()V

    const/16 v2, 0x3e8

    iget-wide v3, v1, Lcom/google/android/filament/VertexBuffer$Builder;->b:J

    invoke-static {v2, v3, v4}, Lcom/google/android/filament/VertexBuffer;->d(IJ)V

    invoke-static {v3, v4}, Lcom/google/android/filament/VertexBuffer;->b(J)V

    sget-object v2, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->POSITION:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    sget-object v3, Lcom/google/android/filament/VertexBuffer$AttributeType;->FLOAT4:Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v4}, Lcom/google/android/filament/VertexBuffer$Builder;->a(Lcom/google/android/filament/VertexBuffer$VertexAttribute;ILcom/google/android/filament/VertexBuffer$AttributeType;I)V

    sget-object v2, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UV0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/4 v3, 0x1

    sget-object v5, Lcom/google/android/filament/VertexBuffer$AttributeType;->FLOAT2:Lcom/google/android/filament/VertexBuffer$AttributeType;

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/google/android/filament/VertexBuffer$Builder;->a(Lcom/google/android/filament/VertexBuffer$VertexAttribute;ILcom/google/android/filament/VertexBuffer$AttributeType;I)V

    invoke-virtual {v1, v0}, Lcom/google/android/filament/VertexBuffer$Builder;->b(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/VertexBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->h:Lcom/google/android/filament/VertexBuffer;

    new-instance v1, Lcom/google/android/filament/IndexBuffer$Builder;

    invoke-direct {v1}, Lcom/google/android/filament/IndexBuffer$Builder;-><init>()V

    iget-wide v2, v1, Lcom/google/android/filament/IndexBuffer$Builder;->b:J

    invoke-static {p1, v2, v3}, Lcom/google/android/filament/IndexBuffer;->c(IJ)V

    sget-object p1, Lcom/google/android/filament/IndexBuffer$Builder$IndexType;->USHORT:Lcom/google/android/filament/IndexBuffer$Builder$IndexType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1, v2, v3}, Lcom/google/android/filament/IndexBuffer;->a(IJ)V

    invoke-virtual {v1, v0}, Lcom/google/android/filament/IndexBuffer$Builder;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/IndexBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->i:Lcom/google/android/filament/IndexBuffer;

    invoke-static {}, Lcom/google/android/filament/EntityManager;->c()Lcom/google/android/filament/EntityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/filament/EntityManager;->a()I

    move-result p1

    iget-object p2, p2, Lcom/vuitton/android/presentation/ar/filament/Filament;->e:Lcom/google/android/filament/Scene;

    invoke-virtual {p2, p1}, Lcom/google/android/filament/Scene;->b(I)V

    iput p1, p0, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->j:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->a:Lcom/vuitton/android/presentation/ar/filament/Filament;

    iget-object v1, v0, Lcom/vuitton/android/presentation/ar/filament/Filament;->e:Lcom/google/android/filament/Scene;

    iget v2, p0, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->j:I

    invoke-virtual {v1, v2}, Lcom/google/android/filament/Scene;->e(I)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    invoke-virtual {v1, v2}, Lcom/google/android/filament/Engine;->n(I)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    iget-object v3, p0, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->c:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v1, v3}, Lcom/google/android/filament/Engine;->r(Lcom/google/android/filament/MaterialInstance;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    iget-object v3, p0, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->b:Lcom/google/android/filament/Material;

    invoke-virtual {v1, v3}, Lcom/google/android/filament/Engine;->q(Lcom/google/android/filament/Material;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    iget-object v3, p0, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->d:Lcom/google/android/filament/Material;

    invoke-virtual {v1, v3}, Lcom/google/android/filament/Engine;->q(Lcom/google/android/filament/Material;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    iget-object v3, p0, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->h:Lcom/google/android/filament/VertexBuffer;

    invoke-virtual {v1, v3}, Lcom/google/android/filament/Engine;->w(Lcom/google/android/filament/VertexBuffer;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->i:Lcom/google/android/filament/IndexBuffer;

    invoke-virtual {v0, p0}, Lcom/google/android/filament/Engine;->p(Lcom/google/android/filament/IndexBuffer;)V

    invoke-static {}, Lcom/google/android/filament/EntityManager;->c()Lcom/google/android/filament/EntityManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/google/android/filament/EntityManager;->b(I)V

    return-void
.end method
