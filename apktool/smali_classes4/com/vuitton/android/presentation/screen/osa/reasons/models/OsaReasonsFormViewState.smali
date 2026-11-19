.class public final Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0087\u0008\u0018\u00002\u00020\u0001BK\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;",
        "",
        "",
        "isLoading",
        "isError",
        "",
        "Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;",
        "reasonsList",
        "selectedReason",
        "isExpanded",
        "isPrefilledMode",
        "<init>",
        "(ZZLjava/util/List;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;ZZ)V",
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

.field public final d:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 57
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;-><init>(ZZLjava/util/List;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/util/List;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;",
            ">;",
            "Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;",
            "ZZ)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->a:Z

    .line 52
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->b:Z

    .line 53
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->c:Ljava/util/List;

    .line 54
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->d:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    .line 55
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->e:Z

    .line 56
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->f:Z

    return-void
.end method

.method public constructor <init>(ZZLjava/util/List;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    sget-object p3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    const/4 p4, 0x0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move p8, v0

    move-object p6, p4

    move p7, p5

    move p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    goto :goto_0

    :cond_5
    move p8, p6

    move p7, p5

    move-object p5, p3

    move-object p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    :goto_0
    invoke-direct/range {p2 .. p8}, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;-><init>(ZZLjava/util/List;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;ZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->d:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->d:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->f:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->f:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->d:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->e:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->f:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", isError="

    const-string v1, ", reasonsList="

    const-string v2, "OsaReasonsFormViewState(isLoading="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->a:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->b:Z

    invoke-static {v2, v0, v1, v3, v4}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->d:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isExpanded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isPrefilledMode="

    const-string v2, ")"

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->e:Z

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->f:Z

    invoke-static {v0, v3, v1, p0, v2}, Lpq0;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
