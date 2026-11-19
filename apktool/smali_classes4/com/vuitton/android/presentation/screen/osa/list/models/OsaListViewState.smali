.class public final Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0087\u0008\u0018\u00002\u00020\u0001Ba\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
        "inAppDispatch",
        "",
        "isLoading",
        "isScreenLoading",
        "isError",
        "",
        "Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;",
        "historyAppointmentList",
        "ongoingAppointmentList",
        "isOsaReasonEnabled",
        "isOsaModifyEnabled",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZZLjava/util/List;Ljava/util/List;ZZ)V",
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
.field public final a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:Z

.field public final h:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZZLjava/util/List;Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
            "ZZZ",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    .line 44
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->b:Z

    .line 45
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->c:Z

    .line 46
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->d:Z

    .line 47
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->e:Ljava/util/List;

    .line 48
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->f:Ljava/util/List;

    .line 49
    iput-boolean p7, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->g:Z

    .line 50
    iput-boolean p8, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->h:Z

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZZLjava/util/List;Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x2

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_2

    move p4, v0

    :cond_2
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_3

    sget-object p5, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_3
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_4

    sget-object p6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_4
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_5

    move p7, v0

    :cond_5
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_6

    move p8, v0

    :cond_6
    invoke-direct/range {p0 .. p8}, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZZLjava/util/List;Ljava/util/List;ZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->f:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->g:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->h:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->h:Z

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->e:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->f:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->g:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->h:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OsaListViewState(inAppDispatch="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isScreenLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isError="

    const-string v2, ", historyAppointmentList="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", ongoingAppointmentList="

    const-string v2, ", isOsaReasonEnabled="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->e:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->f:Ljava/util/List;

    invoke-static {v0, v3, v1, v4, v2}, La;->C(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    const-string v1, ", isOsaModifyEnabled="

    const-string v2, ")"

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->g:Z

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->h:Z

    invoke-static {v0, v3, v1, p0, v2}, Lpq0;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
