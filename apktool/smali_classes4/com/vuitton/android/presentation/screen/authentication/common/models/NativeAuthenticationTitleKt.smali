.class public abstract Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
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


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;

    new-instance v1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v2, 0x7f140d44

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v5, 0x7f140d40

    invoke-direct {v2, v5, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v5, "nativeForgetPassword_title_text"

    const-string v6, "nativeForgetPassword_description_text"

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;

    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v7, 0x7f140d45

    invoke-direct {v2, v7, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v7, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140d41

    invoke-direct {v7, v8, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v2, v7, v5, v6}, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;

    new-instance v7, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140d3f

    invoke-direct {v7, v8, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v8, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v9, 0x7f140d3e

    invoke-direct {v8, v9, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v2, v7, v8, v5, v6}, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v0, v1, v2}, [Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitleKt;->a:Ljava/util/List;

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;

    new-instance v1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v2, 0x7f140d12

    invoke-direct {v1, v2, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v5, 0x7f140d11

    invoke-direct {v2, v5, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v5, "account_activation_title"

    const-string v6, "account_activation_subtitle"

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;

    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v7, 0x7f140d0c

    invoke-direct {v2, v7, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v7, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140e22

    invoke-direct {v7, v8, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v2, v7, v5, v6}, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v0, v1}, [Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitleKt;->b:Ljava/util/List;

    return-void
.end method
