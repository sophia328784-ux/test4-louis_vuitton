.class public final Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;
.super Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "None"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;",
        "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;",
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
.field public static final f:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;

    new-instance v1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move v5, v2

    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-direct {v2, v5, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move v6, v4

    new-instance v4, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-direct {v4, v5, v3, v6, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v6, 0x14

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;->f:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;

    return-void
.end method
