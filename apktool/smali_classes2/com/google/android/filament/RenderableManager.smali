.class public Lcom/google/android/filament/RenderableManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/RenderableManager$PrimitiveType;,
        Lcom/google/android/filament/RenderableManager$Builder;
    }
.end annotation


# instance fields
.field public a:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->values()[Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    return-void
.end method

.method public static bridge synthetic a(JFFFFFF)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/google/android/filament/RenderableManager;->nBuilderBoundingBox(JFFFFFF)V

    return-void
.end method

.method public static bridge synthetic b(IJJ)Z
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lcom/google/android/filament/RenderableManager;->nBuilderBuild(JJI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/filament/RenderableManager;->nBuilderCastShadows(JZ)V

    return-void
.end method

.method public static bridge synthetic d(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->nBuilderCulling(JZ)V

    return-void
.end method

.method public static bridge synthetic e(JIIJJI)V
    .locals 10

    const/4 v8, 0x0

    move-wide v0, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/google/android/filament/RenderableManager;->nBuilderGeometry(JIIJJII)V

    return-void
.end method

.method public static bridge synthetic f(JJJI)V
    .locals 8

    const/4 v2, 0x0

    move-wide v0, p0

    move-wide v4, p2

    move-wide v6, p4

    move v3, p6

    invoke-static/range {v0 .. v7}, Lcom/google/android/filament/RenderableManager;->nBuilderGeometry(JIIJJ)V

    return-void
.end method

.method public static bridge synthetic g(IJJ)V
    .locals 0

    invoke-static {p1, p2, p0, p3, p4}, Lcom/google/android/filament/RenderableManager;->nBuilderMaterial(JIJ)V

    return-void
.end method

.method public static bridge synthetic h(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->nBuilderReceiveShadows(JZ)V

    return-void
.end method

.method public static bridge synthetic i(I)J
    .locals 2

    invoke-static {p0}, Lcom/google/android/filament/RenderableManager;->nCreateBuilder(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic j(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/RenderableManager;->nDestroyBuilder(J)V

    return-void
.end method

.method private static native nBuilderBoundingBox(JFFFFFF)V
.end method

.method private static native nBuilderBuild(JJI)Z
.end method

.method private static native nBuilderCastShadows(JZ)V
.end method

.method private static native nBuilderCulling(JZ)V
.end method

.method private static native nBuilderGeometry(JIIJJ)V
.end method

.method private static native nBuilderGeometry(JIIJJII)V
.end method

.method private static native nBuilderMaterial(JIJ)V
.end method

.method private static native nBuilderReceiveShadows(JZ)V
.end method

.method private static native nCreateBuilder(I)J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGetInstance(JI)I
.end method

.method private static native nGetMaterialInstanceAt(JII)J
.end method

.method private static native nHasComponent(JI)Z
.end method

.method private static native nSetScreenSpaceContactShadows(JIZ)V
.end method


# virtual methods
.method public final k(I)I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->nGetInstance(JI)I

    move-result p0

    return p0
.end method

.method public final l(I)Lcom/google/android/filament/MaterialInstance;
    .locals 3

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v1, v2, p1, v0}, Lcom/google/android/filament/RenderableManager;->nGetMaterialInstanceAt(JII)J

    move-result-wide p0

    new-instance v0, Lcom/google/android/filament/MaterialInstance;

    invoke-direct {v0, p0, p1}, Lcom/google/android/filament/MaterialInstance;-><init>(J)V

    return-object v0
.end method

.method public final m(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->nHasComponent(JI)Z

    move-result p0

    return p0
.end method

.method public final n(I)V
    .locals 3

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v1, v2, p1, v0}, Lcom/google/android/filament/RenderableManager;->nSetScreenSpaceContactShadows(JIZ)V

    return-void
.end method
