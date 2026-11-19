.class public final Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bu\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;",
        "",
        "",
        "shouldShowSkuList",
        "shouldShowStepper",
        "shouldShowExitButton",
        "shouldShowBackButton",
        "shouldShowVideos",
        "shouldShowBackground",
        "shouldShowIntroPlayer",
        "shouldShowFocusPlayer",
        "shouldShowOutroPlayer",
        "shouldShowWhiteScreen",
        "canDisplayHotspot",
        "<init>",
        "(ZZZZZZZZZZZ)V",
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

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 73
    const/16 v12, 0x7ff

    const/4 v13, 0x0

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

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;-><init>(ZZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZZZZZZZZ)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->a:Z

    .line 63
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->b:Z

    .line 64
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->c:Z

    .line 65
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->d:Z

    .line 66
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->e:Z

    .line 67
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->f:Z

    .line 68
    iput-boolean p7, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->g:Z

    .line 69
    iput-boolean p8, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->h:Z

    .line 70
    iput-boolean p9, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->i:Z

    .line 71
    iput-boolean p10, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->j:Z

    .line 72
    iput-boolean p11, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->k:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p13, p12, 0x1

    const/4 v0, 0x0

    if-eqz p13, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p13, p12, 0x2

    const/4 v1, 0x1

    if-eqz p13, :cond_1

    move p2, v1

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    move p3, v1

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    move p6, v1

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    move p7, v1

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    move p8, v0

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    move p9, v0

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    move p10, v0

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    move p11, v1

    :cond_a
    invoke-direct/range {p0 .. p11}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;-><init>(ZZZZZZZZZZZ)V

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;ZZZZZZZZZZZI)Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;
    .locals 12

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->a:Z

    :cond_0
    move v1, p1

    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->b:Z

    :cond_1
    move v2, p2

    and-int/lit8 p1, v0, 0x4

    if-eqz p1, :cond_2

    iget-boolean p3, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->c:Z

    :cond_2
    move v3, p3

    and-int/lit8 p1, v0, 0x8

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->d:Z

    move v4, p1

    goto :goto_0

    :cond_3
    move/from16 v4, p4

    :goto_0
    and-int/lit8 p1, v0, 0x10

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->e:Z

    move v5, p1

    goto :goto_1

    :cond_4
    move/from16 v5, p5

    :goto_1
    and-int/lit8 p1, v0, 0x20

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->f:Z

    move v6, p1

    goto :goto_2

    :cond_5
    move/from16 v6, p6

    :goto_2
    and-int/lit8 p1, v0, 0x40

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->g:Z

    move v7, p1

    goto :goto_3

    :cond_6
    move/from16 v7, p7

    :goto_3
    and-int/lit16 p1, v0, 0x80

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->h:Z

    move v8, p1

    goto :goto_4

    :cond_7
    move/from16 v8, p8

    :goto_4
    and-int/lit16 p1, v0, 0x100

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->i:Z

    move v9, p1

    goto :goto_5

    :cond_8
    move/from16 v9, p9

    :goto_5
    and-int/lit16 p1, v0, 0x200

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->j:Z

    move v10, p1

    goto :goto_6

    :cond_9
    move/from16 v10, p10

    :goto_6
    and-int/lit16 p1, v0, 0x400

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->k:Z

    move v11, p1

    goto :goto_7

    :cond_a
    move/from16 v11, p11

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    invoke-direct/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;-><init>(ZZZZZZZZZZZ)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->g:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->h:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->i:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->i:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->j:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->j:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->k:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->k:Z

    if-eq p0, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->e:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->f:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->g:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->h:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->i:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->j:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->k:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", shouldShowStepper="

    const-string v1, ", shouldShowExitButton="

    const-string v2, "SpotlightContainerStateUiModel(shouldShowSkuList="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->a:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->b:Z

    invoke-static {v2, v0, v1, v3, v4}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shouldShowBackButton="

    const-string v2, ", shouldShowVideos="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", shouldShowBackground="

    const-string v2, ", shouldShowIntroPlayer="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->e:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->f:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", shouldShowFocusPlayer="

    const-string v2, ", shouldShowOutroPlayer="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->g:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->h:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", shouldShowWhiteScreen="

    const-string v2, ", canDisplayHotspot="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->i:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->j:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->k:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
