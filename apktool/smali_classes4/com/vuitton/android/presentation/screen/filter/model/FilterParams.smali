.class public final Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;",
        "",
        "",
        "filterKey",
        "sortId",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;",
        "source",
        "Ljava/util/UUID;",
        "requestHash",
        "Lcom/vuitton/android/presentation/screen/filter/model/FilterType;",
        "filterType",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Ljava/util/UUID;Lcom/vuitton/android/presentation/screen/filter/model/FilterType;)V",
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
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

.field public final d:Ljava/util/UUID;

.field public final e:Lcom/vuitton/android/presentation/screen/filter/model/FilterType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Ljava/util/UUID;Lcom/vuitton/android/presentation/screen/filter/model/FilterType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->b:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    .line 30
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->d:Ljava/util/UUID;

    .line 31
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->e:Lcom/vuitton/android/presentation/screen/filter/model/FilterType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Ljava/util/UUID;Lcom/vuitton/android/presentation/screen/filter/model/FilterType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2

    move-object p5, v0

    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Ljava/util/UUID;Lcom/vuitton/android/presentation/screen/filter/model/FilterType;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->d:Ljava/util/UUID;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->d:Ljava/util/UUID;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->e:Lcom/vuitton/android/presentation/screen/filter/model/FilterType;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->e:Lcom/vuitton/android/presentation/screen/filter/model/FilterType;

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->d:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->e:Lcom/vuitton/android/presentation/screen/filter/model/FilterType;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", sortId="

    const-string v1, ", source="

    const-string v2, "FilterParams(filterKey="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->d:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filterType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->e:Lcom/vuitton/android/presentation/screen/filter/model/FilterType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
