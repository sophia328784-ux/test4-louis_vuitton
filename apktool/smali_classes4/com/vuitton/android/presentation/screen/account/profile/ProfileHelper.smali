.class public abstract Lcom/vuitton/android/presentation/screen/account/profile/ProfileHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/profile/ProfileHelper;",
        "",
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


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:Ljava/util/List;

.field public static final c:Ljava/util/List;

.field public static final d:Ljava/util/List;

.field public static final e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v5, "tMrAP"

    const-string v6, "mr"

    const-string v0, "tMr"

    const-string v1, "tMale"

    const-string v2, "tMrKR"

    const-string v3, "tMrCN"

    const-string v4, "tMrEU"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/account/profile/ProfileHelper;->a:Ljava/util/List;

    const-string v0, "tMrsEU"

    const-string v1, "mrs"

    const-string v2, "tMrs"

    const-string v3, "tFemale"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/account/profile/ProfileHelper;->b:Ljava/util/List;

    const-string v5, "tMsAP"

    const-string v6, "ms"

    const-string v1, "tMs"

    const-string v2, "tMsKR"

    const-string v3, "tMsCN"

    const-string v4, "tMsEU"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/account/profile/ProfileHelper;->c:Ljava/util/List;

    const-string v0, "tMxEU"

    const-string v1, "mx"

    const-string v2, "tMx"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/account/profile/ProfileHelper;->d:Ljava/util/List;

    const-string v0, "tUnknownEU"

    const-string v1, "undisclosed"

    const-string v2, "tUnknown"

    const-string v3, "tUnknownKR"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/account/profile/ProfileHelper;->e:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;
    .locals 3

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/profile/ProfileHelper;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->u(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f140f88

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/profile/ProfileHelper;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->u(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f140f89

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/profile/ProfileHelper;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->u(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f140f8a

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/profile/ProfileHelper;->d:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->u(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f140f8b

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    :cond_3
    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/profile/ProfileHelper;->e:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->u(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f140f93

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    :cond_4
    sget-object p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;

    return-object p0
.end method
