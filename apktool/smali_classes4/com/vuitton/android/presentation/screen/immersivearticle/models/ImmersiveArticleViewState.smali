.class public final Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bo\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;",
        "",
        "",
        "isLoading",
        "isError",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;",
        "immersivePage",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;",
        "screenshotNotification",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;",
        "immersive3DUiModel",
        "is3dLoading",
        "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;",
        "podcast",
        "isShareAvailable",
        "isUserLoggedIn",
        "Lcom/vuitton/android/presentation/model/common/A11ySettings;",
        "a11ySettings",
        "<init>",
        "(ZZLcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;ZLcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;ZZLcom/vuitton/android/presentation/model/common/A11ySettings;)V",
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
.field public final a:Z

.field public final b:Z

.field public final c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

.field public final d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;

.field public final e:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;

.field public final f:Z

.field public final g:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

.field public final h:Z

.field public final i:Z

.field public final j:Lcom/vuitton/android/presentation/model/common/A11ySettings;


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 161
    const/16 v11, 0x3ff

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;-><init>(ZZLcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;ZLcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;ZZLcom/vuitton/android/presentation/model/common/A11ySettings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;ZLcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;ZZLcom/vuitton/android/presentation/model/common/A11ySettings;)V
    .locals 0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->a:Z

    .line 152
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->b:Z

    .line 153
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    .line 154
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;

    .line 155
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;

    .line 156
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->f:Z

    .line 157
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->g:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

    .line 158
    iput-boolean p8, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->h:Z

    .line 159
    iput-boolean p9, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->i:Z

    .line 160
    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->j:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    return-void
.end method

.method public synthetic constructor <init>(ZZLcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;ZLcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;ZZLcom/vuitton/android/presentation/model/common/A11ySettings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move-object v4, v5

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    new-instance v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;

    const/4 v7, 0x3

    invoke-direct {v6, v2, v5, v7, v5}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;-><init>(ZLandroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    new-instance v8, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;

    const/16 v16, 0x7f

    const/16 v17, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_4
    move-object/from16 v8, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move v7, v2

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    goto :goto_6

    :cond_6
    move-object/from16 v5, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move v9, v2

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v2, p9

    :goto_8
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    new-instance v0, Lcom/vuitton/android/presentation/model/common/A11ySettings;

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 p1, v0

    move/from16 p5, v10

    move-object/from16 p6, v11

    move/from16 p2, v12

    move/from16 p3, v13

    move/from16 p4, v14

    invoke-direct/range {p1 .. p6}, Lcom/vuitton/android/presentation/model/common/A11ySettings;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 p11, v0

    :goto_9
    move-object/from16 p1, p0

    move/from16 p2, v1

    move/from16 p10, v2

    move/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p8, v5

    move-object/from16 p5, v6

    move/from16 p7, v7

    move-object/from16 p6, v8

    move/from16 p9, v9

    goto :goto_a

    :cond_9
    move-object/from16 p11, p10

    goto :goto_9

    :goto_a
    invoke-direct/range {p1 .. p11}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;-><init>(ZZLcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;ZLcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;ZZLcom/vuitton/android/presentation/model/common/A11ySettings;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->g:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->g:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->h:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->i:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->i:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->j:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->j:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->f:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->g:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->h:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->i:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->j:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/model/common/A11ySettings;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", isError="

    const-string v1, ", immersivePage="

    const-string v2, "ImmersiveArticleViewState(isLoading="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->a:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->b:Z

    invoke-static {v2, v0, v1, v3, v4}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", screenshotNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", immersive3DUiModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", is3dLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", podcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->g:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isShareAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUserLoggedIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", a11ySettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->j:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
