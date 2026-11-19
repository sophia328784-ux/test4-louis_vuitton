.class public final Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;",
        "",
        "Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;",
        "kisa",
        "Landroidx/compose/runtime/MutableState;",
        "Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;",
        "marketing",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;Landroidx/compose/runtime/MutableState;)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;

.field public final b:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;-><init>(Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;Landroidx/compose/runtime/MutableState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->a:Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;

    .line 34
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->b:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;Landroidx/compose/runtime/MutableState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    new-instance v0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;-><init>(ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;-><init>(Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;Landroidx/compose/runtime/MutableState;)V

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;Landroidx/compose/runtime/MutableState;)Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->a:Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    invoke-direct {p0, v0, p1}, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;-><init>(Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;Landroidx/compose/runtime/MutableState;)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->a:Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->a:Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->b:Landroidx/compose/runtime/MutableState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->a:Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserConsentsUiModel(kisa="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->a:Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", marketing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
