.class public final Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStoryPage"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;",
        "Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations;",
        "",
        "categoryUrl",
        "",
        "isCart",
        "isPLPStory",
        "storyTitle",
        "<init>",
        "(Ljava/lang/String;ZZLjava/lang/String;)V",
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

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;->b:Z

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;->c:Z

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", isCart="

    const-string v1, ", isPLPStory="

    const-string v2, "ToStoryPage(categoryUrl="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;->b:Z

    invoke-static {v2, v3, v0, v1, v4}, Ld21;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", storyTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
