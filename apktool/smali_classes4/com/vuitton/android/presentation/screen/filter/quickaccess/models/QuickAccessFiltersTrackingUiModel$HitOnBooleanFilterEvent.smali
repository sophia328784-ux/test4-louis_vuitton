.class public final Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HitOnBooleanFilterEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;",
        "",
        "isFromScreenOverlay",
        "wasSelected",
        "",
        "filterId",
        "<init>",
        "(ZZLjava/lang/String;)V",
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

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;->a:Z

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;->b:Z

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", wasSelected="

    const-string v1, ", filterId="

    const-string v2, "HitOnBooleanFilterEvent(isFromScreenOverlay="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;->a:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;->b:Z

    invoke-static {v2, v0, v1, v3, v4}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;->c:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
