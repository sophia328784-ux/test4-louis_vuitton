.class public final enum Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;",
        "",
        "",
        "errorCode",
        "Ljava/lang/String;",
        "a",
        "()Ljava/lang/String;",
        "INVALID_PASSWORD",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;

.field public static final enum INVALID_PASSWORD:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;


# instance fields
.field private final errorCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;

    invoke-direct {v0}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;-><init>()V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;->INVALID_PASSWORD:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;

    filled-new-array {v0}, [Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "INVALID_PASSWORD"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string v0, "custom_error_invalid_password"

    iput-object v0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;
    .locals 1

    const-class v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;->errorCode:Ljava/lang/String;

    return-object p0
.end method
