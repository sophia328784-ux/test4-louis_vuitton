.class final Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FormDispatchIdentifierDetail"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/forms/FormDispatchId;",
        "formDispatchId",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;",
        "languageCode",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode;",
        "scriptCode",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;",
        "regionCode",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    :cond_1
    const/4 p5, 0x0

    .line 18
    invoke-direct/range {p0 .. p5}, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;

    iget-object v1, p1, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore$Companion;

    iget-object v3, p0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p1, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->b:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode$Companion;

    iget-object v3, p0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->b:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p1, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->c:Ljava/lang/String;

    if-nez v3, :cond_5

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_5
    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->d:Ljava/lang/String;

    if-nez p0, :cond_9

    if-nez p1, :cond_8

    move p0, v0

    goto :goto_3

    :cond_8
    :goto_2
    move p0, v2

    goto :goto_3

    :cond_9
    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_3
    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore$Companion;

    iget-object v0, p0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode$Companion;

    iget-object v2, p0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->c:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->d:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore$Companion;

    const-string v0, "LanguageTagWithUnderscore(value="

    iget-object v1, p0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->a:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FormDispatchId(languageTagWithUnderscore="

    invoke-static {v1, v0, v2}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "null"

    iget-object v4, p0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->c:Ljava/lang/String;

    if-nez v4, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->d:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string p0, ", languageCode="

    const-string v5, ", scriptCode="

    const-string v6, "FormDispatchIdentifierDetail(formDispatchId="

    invoke-static {v6, v0, p0, v1, v5}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", regionCode="

    invoke-static {p0, v4, v0, v3, v2}, Ltr;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
