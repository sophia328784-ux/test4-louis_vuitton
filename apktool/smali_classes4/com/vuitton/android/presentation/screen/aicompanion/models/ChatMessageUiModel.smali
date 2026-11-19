.class public final Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;",
        "",
        "",
        "id",
        "Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;",
        "role",
        "Lkotlinx/datetime/Instant;",
        "dateTime",
        "",
        "Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel;",
        "sections",
        "formattedDateTime",
        "",
        "isFromHistory",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;Lkotlinx/datetime/Instant;Ljava/util/List;Ljava/lang/String;Z)V",
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

.field public final b:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;

.field public final c:Lkotlinx/datetime/Instant;

.field public final d:Ljava/util/List;

.field public final e:Ljava/lang/String;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;Lkotlinx/datetime/Instant;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;",
            "Lkotlinx/datetime/Instant;",
            "Ljava/util/List<",
            "+",
            "Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->b:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->c:Lkotlinx/datetime/Instant;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;Lkotlinx/datetime/Instant;Ljava/util/List;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 31
    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;Lkotlinx/datetime/Instant;Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;Ljava/util/ArrayList;I)Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;
    .locals 7

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->b:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->c:Lkotlinx/datetime/Instant;

    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->d:Ljava/util/List;

    :cond_0
    move-object v4, p1

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->e:Ljava/lang/String;

    and-int/lit8 p1, p2, 0x20

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->f:Z

    :goto_0
    move v6, p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;Lkotlinx/datetime/Instant;Ljava/util/List;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->b:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->b:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->c:Lkotlinx/datetime/Instant;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->c:Lkotlinx/datetime/Instant;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->d:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->f:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->f:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->b:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->c:Lkotlinx/datetime/Instant;

    iget-object v0, v0, Lkotlinx/datetime/Instant;->b:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->d:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->f:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChatMessageUiModel(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->b:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->c:Lkotlinx/datetime/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", formattedDateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isFromHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->f:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
