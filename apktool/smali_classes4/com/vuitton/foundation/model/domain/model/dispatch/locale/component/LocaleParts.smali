.class public final Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\nB\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;",
        "languageCode",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode;",
        "scriptCode",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;",
        "regionCode",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Companion",
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


# static fields
.field public static final d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts$Companion;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode$Companion;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->b:Ljava/lang/String;

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
    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->c:Ljava/lang/String;

    if-nez p0, :cond_8

    if-nez p1, :cond_7

    move p0, v0

    goto :goto_3

    :cond_7
    :goto_2
    move p0, v2

    goto :goto_3

    :cond_8
    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_3
    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode$Companion;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode$Companion;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->c:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->c:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string p0, ", scriptCode="

    const-string v3, ", regionCode="

    const-string v4, "LocaleParts(languageCode="

    invoke-static {v4, v0, p0, v2, v3}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-static {v1, v0, p0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
