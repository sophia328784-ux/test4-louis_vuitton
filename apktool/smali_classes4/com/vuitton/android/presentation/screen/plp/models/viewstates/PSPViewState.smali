.class public final Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u00002\u00020\u0001B=\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;",
        "",
        "",
        "currentQuery",
        "",
        "totalCount",
        "",
        "isPlpV3GridViewEnabled",
        "isAiCompanionEnabled",
        "showFilterBottomSheet",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Integer;ZZZ)V",
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
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Integer;

.field public final c:Z

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 37
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;ZZZ)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->b:Ljava/lang/Integer;

    .line 34
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->c:Z

    .line 35
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->d:Z

    .line 36
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move p5, v0

    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->b:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->b:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->e:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->e:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->b:Ljava/lang/Integer;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->c:Z

    invoke-static {v1, v2, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->d:Z

    invoke-static {v0, v2, v1}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->e:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PSPViewState(currentQuery="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPlpV3GridViewEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isAiCompanionEnabled="

    const-string v2, ", showFilterBottomSheet="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->e:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
