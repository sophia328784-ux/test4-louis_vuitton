.class public final Landroidx/camera/core/internal/CalculatedUseCaseInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0087\u0001\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/camera/core/internal/CalculatedUseCaseInfo;",
        "",
        "",
        "Landroidx/camera/core/UseCase;",
        "appUseCases",
        "cameraUseCases",
        "",
        "cameraUseCasesToAttach",
        "cameraUseCasesToKeep",
        "cameraUseCasesToDetach",
        "Landroidx/camera/core/streamsharing/StreamSharing;",
        "streamSharing",
        "placeholderForExtensions",
        "",
        "Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;",
        "useCaseConfigs",
        "Landroidx/camera/core/internal/StreamSpecQueryResult;",
        "primaryStreamSpecResult",
        "secondaryStreamSpecResult",
        "<init>",
        "(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/core/streamsharing/StreamSharing;Landroidx/camera/core/UseCase;Ljava/util/Map;Landroidx/camera/core/internal/StreamSpecQueryResult;Landroidx/camera/core/internal/StreamSpecQueryResult;)V",
        "camera-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/util/Collection;

.field public final b:Ljava/util/Collection;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;

.field public final f:Landroidx/camera/core/streamsharing/StreamSharing;

.field public final g:Landroidx/camera/core/UseCase;

.field public final h:Ljava/util/Map;

.field public final i:Landroidx/camera/core/internal/StreamSpecQueryResult;

.field public final j:Landroidx/camera/core/internal/StreamSpecQueryResult;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/core/streamsharing/StreamSharing;Landroidx/camera/core/UseCase;Ljava/util/Map;Landroidx/camera/core/internal/StreamSpecQueryResult;Landroidx/camera/core/internal/StreamSpecQueryResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Landroidx/camera/core/streamsharing/StreamSharing;",
            "Landroidx/camera/core/UseCase;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/UseCase;",
            "+",
            "Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;",
            ">;",
            "Landroidx/camera/core/internal/StreamSpecQueryResult;",
            "Landroidx/camera/core/internal/StreamSpecQueryResult;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->a:Ljava/util/Collection;

    iput-object p2, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->b:Ljava/util/Collection;

    iput-object p3, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->c:Ljava/util/List;

    iput-object p4, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->d:Ljava/util/List;

    iput-object p5, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->e:Ljava/util/List;

    iput-object p6, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->f:Landroidx/camera/core/streamsharing/StreamSharing;

    iput-object p7, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->g:Landroidx/camera/core/UseCase;

    iput-object p8, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->h:Ljava/util/Map;

    iput-object p9, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->i:Landroidx/camera/core/internal/StreamSpecQueryResult;

    iput-object p10, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->j:Landroidx/camera/core/internal/StreamSpecQueryResult;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->a:Ljava/util/Collection;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->a:Ljava/util/Collection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->b:Ljava/util/Collection;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->b:Ljava/util/Collection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->c:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->d:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->d:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->e:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->f:Landroidx/camera/core/streamsharing/StreamSharing;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->f:Landroidx/camera/core/streamsharing/StreamSharing;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->g:Landroidx/camera/core/UseCase;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->g:Landroidx/camera/core/UseCase;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->h:Ljava/util/Map;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->h:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->i:Landroidx/camera/core/internal/StreamSpecQueryResult;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->i:Landroidx/camera/core/internal/StreamSpecQueryResult;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->j:Landroidx/camera/core/internal/StreamSpecQueryResult;

    iget-object p1, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->j:Landroidx/camera/core/internal/StreamSpecQueryResult;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->a:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->b:Ljava/util/Collection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->c:Ljava/util/List;

    invoke-static {v2, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->d:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->e:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->f:Landroidx/camera/core/streamsharing/StreamSharing;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->g:Landroidx/camera/core/UseCase;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->h:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->i:Landroidx/camera/core/internal/StreamSpecQueryResult;

    invoke-virtual {v0}, Landroidx/camera/core/internal/StreamSpecQueryResult;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->j:Landroidx/camera/core/internal/StreamSpecQueryResult;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/camera/core/internal/StreamSpecQueryResult;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CalculatedUseCaseInfo(appUseCases="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->a:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraUseCases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->b:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraUseCasesToAttach="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraUseCasesToKeep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraUseCasesToDetach="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", streamSharing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->f:Landroidx/camera/core/streamsharing/StreamSharing;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", placeholderForExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->g:Landroidx/camera/core/UseCase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", useCaseConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->h:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", primaryStreamSpecResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->i:Landroidx/camera/core/internal/StreamSpecQueryResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryStreamSpecResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->j:Landroidx/camera/core/internal/StreamSpecQueryResult;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
