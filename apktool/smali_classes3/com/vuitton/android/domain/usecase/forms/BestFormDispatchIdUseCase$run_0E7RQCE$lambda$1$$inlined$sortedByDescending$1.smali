.class public final Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$run_0E7RQCE$lambda$1$$inlined$sortedByDescending$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p2, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;

    iget-object p0, p2, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->d:Ljava/lang/String;

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    check-cast p1, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->d:Ljava/lang/String;

    if-nez p1, :cond_1

    move p2, v0

    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
