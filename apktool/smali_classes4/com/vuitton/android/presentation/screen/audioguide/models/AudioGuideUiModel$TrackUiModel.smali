.class public final Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackUiModel"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;",
        "",
        "",
        "id",
        "title",
        "label",
        "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;",
        "thumbnailImage",
        "trackImage",
        "Lcom/vuitton/android/presentation/model/common/SoundUiModel;",
        "sound",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;",
        "status",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/SoundUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;)V",
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

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

.field public final e:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

.field public final f:Lcom/vuitton/android/presentation/model/common/SoundUiModel;

.field public final g:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/SoundUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->f:Lcom/vuitton/android/presentation/model/common/SoundUiModel;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->g:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/SoundUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;->IDLE:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;

    move-object v8, v0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    goto :goto_1

    :cond_0
    move-object/from16 v8, p7

    goto :goto_0

    .line 40
    :goto_1
    invoke-direct/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/SoundUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;)V

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;
    .locals 8

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->f:Lcom/vuitton/android/presentation/model/common/SoundUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/SoundUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->f:Lcom/vuitton/android/presentation/model/common/SoundUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->f:Lcom/vuitton/android/presentation/model/common/SoundUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->g:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->g:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->f:Lcom/vuitton/android/presentation/model/common/SoundUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/model/common/SoundUiModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->g:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", title="

    const-string v1, ", label="

    const-string v2, "TrackUiModel(id="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnailImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->f:Lcom/vuitton/android/presentation/model/common/SoundUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->g:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
