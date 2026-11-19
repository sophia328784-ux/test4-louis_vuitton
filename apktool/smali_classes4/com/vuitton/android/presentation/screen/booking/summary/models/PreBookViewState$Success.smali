.class public final Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;",
        "Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;",
        "Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;",
        "prebookSummary",
        "",
        "isOverlayLoading",
        "deleteLoading",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;ZZ)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;ZZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    .line 17
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->b:Z

    .line 18
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;ZZ)V

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;ZI)Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->b:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->c:Z

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    invoke-direct {p0, v0, v1, p1}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;ZZ)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->c:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->c:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->c:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Success(prebookSummary="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isOverlayLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deleteLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->c:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
