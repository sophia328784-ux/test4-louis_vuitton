.class public final Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;",
        "languageCode",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode;",
        "scriptCode",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;",
        "regionCode",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;",
        "regionGroup",
        "",
        "usedNonConventionalInternationalRegionCodeForCountry",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

.field public final e:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_1

    move-object p4, v0

    :cond_1
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2

    const/4 p5, 0x0

    :cond_2
    const/4 p6, 0x0

    invoke-direct/range {p0 .. p6}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->a:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->b:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->c:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    .line 27
    iput-boolean p5, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->e:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode$Companion;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->b:Ljava/lang/String;

    if-nez v3, :cond_4

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->c:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->c:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->e:Z

    iget-boolean p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->e:Z

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode$Companion;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode$Companion;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->c:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->e:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ", scriptCode="

    const-string v4, ", regionCode="

    const-string v5, "DispatchLocale(languageCode="

    invoke-static {v5, v0, v3, v1, v4}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", regionGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", usedNonConventionalInternationalRegionCodeForCountry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->e:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
