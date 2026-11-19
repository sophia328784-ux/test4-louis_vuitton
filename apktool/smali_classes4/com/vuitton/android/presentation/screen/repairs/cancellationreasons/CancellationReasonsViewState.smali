.class public final Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001B7\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;",
        "",
        "",
        "isLoading",
        "isError",
        "",
        "Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;",
        "cancellationReasonList",
        "selectedCancellationReason",
        "<init>",
        "(ZZLjava/util/List;Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;)V",
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

.field public final c:Ljava/util/List;

.field public final d:Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 31
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;-><init>(ZZLjava/util/List;Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/util/List;Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;",
            ">;",
            "Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;->a:Z

    .line 28
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;->b:Z

    .line 29
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;->c:Ljava/util/List;

    .line 30
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;->d:Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;

    return-void
.end method

.method public constructor <init>(ZZLjava/util/List;Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    sget-object p3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;-><init>(ZZLjava/util/List;Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;->d:Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;->d:Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;->d:Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", isError="

    const-string v1, ", cancellationReasonList="

    const-string v2, "CancellationReasonsViewState(isLoading="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;->a:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;->b:Z

    invoke-static {v2, v0, v1, v3, v4}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedCancellationReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;->d:Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
