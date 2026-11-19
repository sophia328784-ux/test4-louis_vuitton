.class public final enum Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;",
        "",
        "",
        "code",
        "Ljava/lang/String;",
        "a",
        "()Ljava/lang/String;",
        "INVALID_NEW_PASSWORD",
        "INVALID_OLD_PASSWORD",
        "ERROR_INVALID_REPEATED_PASSWORD",
        "UNKNOWN",
        "data"
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;

.field public static final enum ERROR_INVALID_REPEATED_PASSWORD:Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;

.field public static final enum INVALID_NEW_PASSWORD:Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;

.field public static final enum INVALID_OLD_PASSWORD:Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;

.field public static final enum UNKNOWN:Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;

    const-string v1, "INVALID_NEW_PASSWORD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;->INVALID_NEW_PASSWORD:Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;

    new-instance v1, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;

    const-string v2, "INVALID_OLD_PASSWORD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;->INVALID_OLD_PASSWORD:Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;

    new-instance v2, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;

    const/4 v3, 0x2

    const-string v4, "invalid repeated password"

    const-string v5, "ERROR_INVALID_REPEATED_PASSWORD"

    invoke-direct {v2, v5, v3, v4}, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;->ERROR_INVALID_REPEATED_PASSWORD:Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;

    new-instance v3, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;

    const-string v4, "UNKNOWN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v4}, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;->UNKNOWN:Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;->$VALUES:[Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;
    .locals 1

    const-class v0, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;->$VALUES:[Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;->code:Ljava/lang/String;

    return-object p0
.end method
