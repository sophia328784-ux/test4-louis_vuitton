.class public final Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001B5\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;",
        "",
        "",
        "Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;",
        "prebookList",
        "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;",
        "additionalList",
        "",
        "priceLabel",
        "freeLabel",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V",
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

.field public final b:Ljava/util/List;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->d:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", additionalList="

    const-string v1, ", priceLabel="

    const-string v2, "PreBookSummaryUiModel(prebookList="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->b:Ljava/util/List;

    invoke-static {v2, v0, v1, v3, v4}, Lo60;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", freeLabel="

    const-string v2, ")"

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, p0, v2}, Ltr;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
