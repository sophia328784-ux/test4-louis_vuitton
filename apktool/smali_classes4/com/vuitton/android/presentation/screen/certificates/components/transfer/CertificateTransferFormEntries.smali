.class public final enum Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;",
        "",
        "",
        "entryName",
        "Ljava/lang/String;",
        "a",
        "()Ljava/lang/String;",
        "EMAIL",
        "EMAIL_CONFIRMATION",
        "PHONE_NUMBER",
        "PHONE_NUMBER_CONFIRMATION",
        "KEYWORD",
        "KEYWORD_CONFIRMATION",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

.field public static final enum EMAIL:Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

.field public static final enum EMAIL_CONFIRMATION:Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

.field public static final enum KEYWORD:Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

.field public static final enum KEYWORD_CONFIRMATION:Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

.field public static final enum PHONE_NUMBER:Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

.field public static final enum PHONE_NUMBER_CONFIRMATION:Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;


# instance fields
.field private final entryName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    const/4 v1, 0x0

    const-string v2, "email"

    const-string v3, "EMAIL"

    invoke-direct {v0, v3, v1, v2}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->EMAIL:Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    new-instance v1, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    const/4 v2, 0x1

    const-string v3, "emailConfirmation"

    const-string v4, "EMAIL_CONFIRMATION"

    invoke-direct {v1, v4, v2, v3}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->EMAIL_CONFIRMATION:Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    new-instance v2, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    const/4 v3, 0x2

    const-string v4, "phoneNumber"

    const-string v5, "PHONE_NUMBER"

    invoke-direct {v2, v5, v3, v4}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->PHONE_NUMBER:Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    new-instance v3, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    const/4 v4, 0x3

    const-string v5, "phoneNumberConfirmation"

    const-string v6, "PHONE_NUMBER_CONFIRMATION"

    invoke-direct {v3, v6, v4, v5}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->PHONE_NUMBER_CONFIRMATION:Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    new-instance v4, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    const/4 v5, 0x4

    const-string v6, "keyword"

    const-string v7, "KEYWORD"

    invoke-direct {v4, v7, v5, v6}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->KEYWORD:Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    new-instance v5, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    const/4 v6, 0x5

    const-string v7, "keywordConfirmation"

    const-string v8, "KEYWORD_CONFIRMATION"

    invoke-direct {v5, v8, v6, v7}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->KEYWORD_CONFIRMATION:Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    filled-new-array/range {v0 .. v5}, [Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->$VALUES:[Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->entryName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->$VALUES:[Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->entryName:Ljava/lang/String;

    return-object p0
.end method
