.class public final Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;",
        "",
        "Companion",
        "iso6391Code",
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
.field public static final b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode$Companion;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;

.field public static final n:Ljava/lang/String;

.field public static final o:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode$Companion;

    const-string v0, "ar"

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->c:Ljava/lang/String;

    const-string v0, "zh"

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->d:Ljava/lang/String;

    const-string v0, "en"

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->e:Ljava/lang/String;

    const-string v0, "fr"

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->f:Ljava/lang/String;

    const-string v0, "de"

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->g:Ljava/lang/String;

    const-string v0, "it"

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->h:Ljava/lang/String;

    const-string v0, "ja"

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->i:Ljava/lang/String;

    const-string v0, "ko"

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->j:Ljava/lang/String;

    const-string v0, "pt"

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->k:Ljava/lang/String;

    const-string v0, "ru"

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->l:Ljava/lang/String;

    const-string v0, "es"

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->m:Ljava/lang/String;

    const-string v0, "th"

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->n:Ljava/lang/String;

    const-string v0, "pl"

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->o:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "LanguageCode(iso6391Code="

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->a:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
