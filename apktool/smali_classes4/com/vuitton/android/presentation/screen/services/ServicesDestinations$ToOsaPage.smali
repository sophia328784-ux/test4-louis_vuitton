.class public final Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToOsaPage"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u00002\u00020\u0001Be\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;",
        "Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;",
        "Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;",
        "rootScreen",
        "",
        "reason",
        "",
        "prefilledStoreCodes",
        "prefilledStoreName",
        "",
        "isPrefilledEditable",
        "Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;",
        "origin",
        "selectionId",
        "redirectToMyExperiencesAfterLogin",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;Ljava/lang/String;Z)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

.field public final g:Ljava/lang/String;

.field public final h:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->a:Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

    .line 43
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->b:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->c:Ljava/util/List;

    .line 45
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->d:Ljava/lang/String;

    .line 46
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->e:Z

    .line 47
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->f:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    .line 48
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->g:Ljava/lang/String;

    .line 49
    iput-boolean p8, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->h:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p10, p9, 0x2

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p10, p9, 0x10

    const/4 v1, 0x0

    if-eqz p10, :cond_3

    move p5, v1

    :cond_3
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_4

    move-object p6, v0

    :cond_4
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_5

    move-object p7, v0

    :cond_5
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_6

    move p8, v1

    :cond_6
    invoke-direct/range {p0 .. p8}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;-><init>(Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->a:Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->a:Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->f:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->f:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->h:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->h:Z

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->a:Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->c:Ljava/util/List;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->d:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->e:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->f:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->g:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->h:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ToOsaPage(rootScreen="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->a:Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prefilledStoreCodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prefilledStoreName="

    const-string v2, ", isPrefilledEditable="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->c:Ljava/util/List;

    invoke-static {v1, v3, v2, v0, v4}, Lo60;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->f:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", redirectToMyExperiencesAfterLogin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->h:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
