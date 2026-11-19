.class public final Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;",
        "",
        "",
        "id",
        "",
        "Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/Theme;",
        "themes",
        "Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;",
        "currentTheme",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;)V",
        "domain"
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

.field public final b:Ljava/util/List;

.field public final c:Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/Theme;",
            ">;",
            "Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;->c:Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;->c:Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;->c:Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;->c:Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", themes="

    const-string v1, ", currentTheme="

    const-string v2, "ThematicPlpThemes(id="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;->b:Ljava/util/List;

    invoke-static {v2, v3, v0, v4, v1}, Ld21;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;->c:Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
