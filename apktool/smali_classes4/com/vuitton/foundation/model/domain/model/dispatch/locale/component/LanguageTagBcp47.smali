.class public final Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47;",
        "",
        "Companion",
        "value",
        "",
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

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47$Companion;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47$Companion;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "LanguageTagBcp47(value="

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47;->a:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
