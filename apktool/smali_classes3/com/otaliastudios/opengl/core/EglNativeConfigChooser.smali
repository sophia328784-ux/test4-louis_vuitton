.class public Lcom/otaliastudios/opengl/core/EglNativeConfigChooser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/core/EglNativeConfigChooser$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/core/EglNativeConfigChooser;",
        "",
        "<init>",
        "()V",
        "Companion",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/core/EglNativeConfigChooser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/core/EglNativeConfigChooser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/otaliastudios/opengl/internal/EglDisplay;IZ)Lcom/otaliastudios/opengl/internal/EglConfig;
    .locals 24

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    move/from16 v1, p1

    if-lt v1, v0, :cond_0

    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->j:I

    sget v1, Lcom/otaliastudios/opengl/internal/EglKt;->k:I

    or-int/2addr v0, v1

    :goto_0
    move v12, v0

    goto :goto_1

    :cond_0
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->j:I

    goto :goto_0

    :goto_1
    sget v1, Lcom/otaliastudios/opengl/internal/EglKt;->l:I

    sget v3, Lcom/otaliastudios/opengl/internal/EglKt;->m:I

    sget v5, Lcom/otaliastudios/opengl/internal/EglKt;->n:I

    sget v7, Lcom/otaliastudios/opengl/internal/EglKt;->o:I

    sget v9, Lcom/otaliastudios/opengl/internal/EglKt;->p:I

    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->q:I

    sget v2, Lcom/otaliastudios/opengl/internal/EglKt;->r:I

    or-int v10, v0, v2

    sget v11, Lcom/otaliastudios/opengl/internal/EglKt;->s:I

    if-eqz p2, :cond_1

    const/16 v0, 0x3142

    :goto_2
    move v13, v0

    goto :goto_3

    :cond_1
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->e:I

    goto :goto_2

    :goto_3
    sget v15, Lcom/otaliastudios/opengl/internal/EglKt;->e:I

    const/16 v2, 0x8

    const/16 v4, 0x8

    const/16 v6, 0x8

    const/16 v8, 0x8

    move/from16 v14, p2

    filled-new-array/range {v1 .. v15}, [I

    move-result-object v17

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/otaliastudios/opengl/internal/EglConfig;

    new-array v2, v0, [I

    new-array v0, v0, [Landroid/opengl/EGLConfig;

    move-object/from16 v3, p0

    iget-object v3, v3, Lcom/otaliastudios/opengl/internal/EglDisplay;->a:Landroid/opengl/EGLDisplay;

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x1

    move-object/from16 v19, v0

    move-object/from16 v22, v2

    move-object/from16 v16, v3

    invoke-static/range {v16 .. v23}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    new-instance v4, Lkotlin/ranges/IntRange;

    invoke-direct {v4, v2, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    move-object v5, v4

    check-cast v5, Lkotlin/ranges/IntProgressionIterator;

    iget-boolean v5, v5, Lkotlin/ranges/IntProgressionIterator;->d:Z

    if-eqz v5, :cond_3

    move-object v5, v4

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    aget-object v6, v19, v5

    if-nez v6, :cond_2

    move-object v7, v3

    goto :goto_5

    :cond_2
    new-instance v7, Lcom/otaliastudios/opengl/internal/EglConfig;

    invoke-direct {v7, v6}, Lcom/otaliastudios/opengl/internal/EglConfig;-><init>(Landroid/opengl/EGLConfig;)V

    :goto_5
    aput-object v7, v1, v5

    goto :goto_4

    :cond_3
    if-nez v0, :cond_4

    return-object v3

    :cond_4
    aget-object v0, v1, v2

    return-object v0
.end method
