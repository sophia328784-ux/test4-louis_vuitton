.class public final Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;",
        "",
        "",
        "Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarSectionUiModel;",
        "sections",
        "Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;",
        "defaultAvatar",
        "<init>",
        "(Ljava/util/List;Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;)V",
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
.field public final a:Ljava/util/List;

.field public final b:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarSectionUiModel;",
            ">;",
            "Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;->b:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;->b:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;->b:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;->b:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AvatarLibraryUiModel(sections="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultAvatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;->b:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
