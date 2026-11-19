.class public final Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u00002\u00020\u0001B9\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;",
        "",
        "",
        "isTutorialEnabled",
        "isRepairCreationEnabled",
        "isRepairCancellationReasonEnabled",
        "isShippedFromEhubEnabled",
        "isRepairModifyEnabled",
        "<init>",
        "(ZZZZZ)V",
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

.field public final c:Z

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 36
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;-><init>(ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZZ)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->a:Z

    .line 32
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->b:Z

    .line 33
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->c:Z

    .line 34
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->d:Z

    .line 35
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move p5, v0

    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;-><init>(ZZZZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->e:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->e:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->e:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", isRepairCreationEnabled="

    const-string v1, ", isRepairCancellationReasonEnabled="

    const-string v2, "RepairFeatureFlags(isTutorialEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->a:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->b:Z

    invoke-static {v2, v0, v1, v3, v4}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isShippedFromEhubEnabled="

    const-string v2, ", isRepairModifyEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->e:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
