.class public final Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bk\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;",
        "",
        "",
        "isError",
        "isLoading",
        "Lcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;",
        "storyHeader",
        "",
        "Lcom/vuitton/android/presentation/screen/story/models/StorySlideUiModel;",
        "stories",
        "",
        "storyPosition",
        "Lcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;",
        "shouldClose",
        "isNavigationSimplified",
        "isAutoPlayDisabled",
        "isContrastEnhanced",
        "<init>",
        "(ZZLcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;Ljava/util/List;ILcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;ZZZ)V",
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

.field public final c:Lcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;

.field public final d:Ljava/util/List;

.field public final e:I

.field public final f:Lcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;

.field public final g:Z

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 62
    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;-><init>(ZZLcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;Ljava/util/List;ILcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;Ljava/util/List;ILcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/story/models/StorySlideUiModel;",
            ">;I",
            "Lcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;",
            "ZZZ)V"
        }
    .end annotation

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->a:Z

    .line 54
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->b:Z

    .line 55
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->c:Lcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;

    .line 56
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->d:Ljava/util/List;

    .line 57
    iput p5, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->e:I

    .line 58
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->f:Lcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;

    .line 59
    iput-boolean p7, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->g:Z

    .line 60
    iput-boolean p8, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->h:Z

    .line 61
    iput-boolean p9, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->i:Z

    return-void
.end method

.method public constructor <init>(ZZLcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;Ljava/util/List;ILcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    const/4 v1, 0x0

    if-eqz p11, :cond_2

    move-object p3, v1

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    sget-object p4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    move-object p6, v1

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    move p7, v0

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    move p8, v0

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    move p9, v0

    :cond_8
    invoke-direct/range {p0 .. p9}, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;-><init>(ZZLcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;Ljava/util/List;ILcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;ZZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->c:Lcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->c:Lcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->d:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->e:I

    iget v3, p1, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->e:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->f:Lcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->f:Lcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->g:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->h:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->i:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->i:Z

    if-eq p0, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->c:Lcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->d:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget v3, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->e:I

    invoke-static {v3, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->f:Lcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->g:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->h:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->i:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", isLoading="

    const-string v1, ", storyHeader="

    const-string v2, "StoryViewState(isError="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->a:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->b:Z

    invoke-static {v2, v0, v1, v3, v4}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->c:Lcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", storyPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shouldClose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->f:Lcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isNavigationSimplified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isAutoPlayDisabled="

    const-string v2, ", isContrastEnhanced="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->g:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->h:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->i:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
