.class public final enum Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;",
        "",
        "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;",
        "title",
        "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;",
        "b",
        "()Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;",
        "description",
        "a",
        "Default",
        "ContentCuration",
        "PersonalWishList",
        "ExclusiveService",
        "MyLVAccount",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;

.field public static final enum ContentCuration:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;

.field public static final enum Default:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;

.field public static final enum ExclusiveService:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;

.field public static final enum MyLVAccount:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;

.field public static final enum PersonalWishList:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;


# instance fields
.field private final description:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

.field private final title:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;

    new-instance v1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v2, 0x7f140ec7

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v2, "Default"

    const/4 v5, 0x0

    invoke-direct {v0, v2, v5, v3, v1}, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;-><init>(Ljava/lang/String;ILcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;->Default:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;

    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v5, 0x7f140e0a

    invoke-direct {v2, v5, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v6, 0x7f140e09

    invoke-direct {v5, v6, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v6, "ContentCuration"

    const/4 v7, 0x1

    invoke-direct {v1, v6, v7, v2, v5}, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;-><init>(Ljava/lang/String;ILcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;->ContentCuration:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;

    new-instance v5, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v6, 0x7f140e10

    invoke-direct {v5, v6, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v7, 0x7f140e0f

    invoke-direct {v6, v7, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v7, "PersonalWishList"

    invoke-direct {v2, v7, v4, v5, v6}, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;-><init>(Ljava/lang/String;ILcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;)V

    sput-object v2, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;->PersonalWishList:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;

    new-instance v5, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;

    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v7, 0x7f140e0c

    invoke-direct {v6, v7, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v7, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140e0b

    invoke-direct {v7, v8, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v8, "ExclusiveService"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v6, v7}, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;-><init>(Ljava/lang/String;ILcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;)V

    sput-object v5, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;->ExclusiveService:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;

    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;

    new-instance v7, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140e0e

    invoke-direct {v7, v8, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v8, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v9, 0x7f140e0d

    invoke-direct {v8, v9, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, "MyLVAccount"

    const/4 v4, 0x4

    invoke-direct {v6, v3, v4, v7, v8}, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;-><init>(Ljava/lang/String;ILcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;)V

    sput-object v6, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;->MyLVAccount:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;

    filled-new-array {v0, v1, v2, v5, v6}, [Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;->$VALUES:[Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;->title:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;->description:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;->$VALUES:[Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;->description:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    return-object p0
.end method

.method public final b()Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;->title:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    return-object p0
.end method
