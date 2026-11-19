.class public final Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ExpansionListToggleEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExpansionListToggleEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ExpansionListToggleEvent;",
        "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;",
        "",
        "index",
        "",
        "moduleKey",
        "",
        "isExpanded",
        "<init>",
        "(ILjava/lang/String;Z)V",
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
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ExpansionListToggleEvent;->a:I

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ExpansionListToggleEvent;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ExpansionListToggleEvent;->c:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ExpansionListToggleEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ExpansionListToggleEvent;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ExpansionListToggleEvent;->a:I

    iget v3, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ExpansionListToggleEvent;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ExpansionListToggleEvent;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ExpansionListToggleEvent;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ExpansionListToggleEvent;->c:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ExpansionListToggleEvent;->c:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ExpansionListToggleEvent;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ExpansionListToggleEvent;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ExpansionListToggleEvent;->c:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExpansionListToggleEvent(index="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ExpansionListToggleEvent;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", moduleKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ExpansionListToggleEvent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isExpanded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ExpansionListToggleEvent;->c:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
