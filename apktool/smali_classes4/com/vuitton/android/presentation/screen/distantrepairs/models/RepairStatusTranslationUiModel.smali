.class public final Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;",
        "",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;",
        "id",
        "",
        "status",
        "statusLong",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    invoke-direct {v0, p0, p1, p2}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RepairStatusTranslationUiModel(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", statusLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->c:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
