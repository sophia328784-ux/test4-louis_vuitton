.class public final Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u00002\u00020\u0001Be\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;",
        "",
        "",
        "isFadingOut",
        "",
        "cartUrl",
        "confirmationPageUrl",
        "shouldShowNavigationBar",
        "shouldShowBottomBar",
        "Lcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;",
        "mainActivityFeatureFlags",
        "",
        "cartCount",
        "isAICompanionEnabled",
        "hasAITooltipBeenDisplayed",
        "<init>",
        "(ZLjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;IZZ)V",
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

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z

.field public final f:Lcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;

.field public final g:I

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 67
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

    invoke-direct/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;IZZ)V
    .locals 0

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->a:Z

    .line 59
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->b:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->c:Ljava/lang/String;

    .line 61
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->d:Z

    .line 62
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->e:Z

    .line 63
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->f:Lcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;

    .line 64
    iput p7, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->g:I

    .line 65
    iput-boolean p8, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->h:Z

    .line 66
    iput-boolean p9, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->i:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x1

    if-eqz p11, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x2

    const/4 v1, 0x0

    if-eqz p11, :cond_1

    move-object p2, v1

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    move-object p3, v1

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    const/4 v0, 0x0

    if-eqz p11, :cond_5

    new-instance p6, Lcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;

    const/4 p11, 0x3

    invoke-direct {p6, v0, v0, p11, v1}, Lcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    invoke-direct/range {p0 .. p9}, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;IZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->f:Lcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->f:Lcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->g:I

    iget v3, p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->g:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->h:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->i:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->i:Z

    if-eq p0, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->c:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->e:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->f:Lcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->g:I

    invoke-static {v0, v2, v1}, Ltr;->b(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->h:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->i:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MainActivityViewState(isFadingOut="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cartUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", confirmationPageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldShowNavigationBar="

    const-string v2, ", shouldShowBottomBar="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->d:Z

    invoke-static {v3, v1, v2, v0, v4}, Lpq0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mainActivityFeatureFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->f:Lcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cartCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAICompanionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasAITooltipBeenDisplayed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->i:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
