.class public final enum Llv/nfc/reader/data/exceptions/LVReadTagError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Llv/nfc/reader/data/exceptions/LVReadTagError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llv/nfc/reader/data/exceptions/LVReadTagError;

.field public static final enum lostTag:Llv/nfc/reader/data/exceptions/LVReadTagError;

.field public static final enum none:Llv/nfc/reader/data/exceptions/LVReadTagError;

.field public static final enum technicalError:Llv/nfc/reader/data/exceptions/LVReadTagError;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Llv/nfc/reader/data/exceptions/LVReadTagError;
    .locals 3

    sget-object v0, Llv/nfc/reader/data/exceptions/LVReadTagError;->none:Llv/nfc/reader/data/exceptions/LVReadTagError;

    sget-object v1, Llv/nfc/reader/data/exceptions/LVReadTagError;->lostTag:Llv/nfc/reader/data/exceptions/LVReadTagError;

    sget-object v2, Llv/nfc/reader/data/exceptions/LVReadTagError;->technicalError:Llv/nfc/reader/data/exceptions/LVReadTagError;

    filled-new-array {v0, v1, v2}, [Llv/nfc/reader/data/exceptions/LVReadTagError;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Llv/nfc/reader/data/exceptions/LVReadTagError;

    const/4 v1, 0x0

    const-string v2, "None"

    const-string v3, "none"

    invoke-direct {v0, v3, v1, v2}, Llv/nfc/reader/data/exceptions/LVReadTagError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Llv/nfc/reader/data/exceptions/LVReadTagError;->none:Llv/nfc/reader/data/exceptions/LVReadTagError;

    new-instance v0, Llv/nfc/reader/data/exceptions/LVReadTagError;

    const-string v1, "lostTag"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Llv/nfc/reader/data/exceptions/LVReadTagError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Llv/nfc/reader/data/exceptions/LVReadTagError;->lostTag:Llv/nfc/reader/data/exceptions/LVReadTagError;

    new-instance v0, Llv/nfc/reader/data/exceptions/LVReadTagError;

    const-string v1, "technicalError"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Llv/nfc/reader/data/exceptions/LVReadTagError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Llv/nfc/reader/data/exceptions/LVReadTagError;->technicalError:Llv/nfc/reader/data/exceptions/LVReadTagError;

    invoke-static {}, Llv/nfc/reader/data/exceptions/LVReadTagError;->$values()[Llv/nfc/reader/data/exceptions/LVReadTagError;

    move-result-object v0

    sput-object v0, Llv/nfc/reader/data/exceptions/LVReadTagError;->$VALUES:[Llv/nfc/reader/data/exceptions/LVReadTagError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Llv/nfc/reader/data/exceptions/LVReadTagError;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llv/nfc/reader/data/exceptions/LVReadTagError;
    .locals 1

    const-class v0, Llv/nfc/reader/data/exceptions/LVReadTagError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Llv/nfc/reader/data/exceptions/LVReadTagError;

    return-object p0
.end method

.method public static values()[Llv/nfc/reader/data/exceptions/LVReadTagError;
    .locals 1

    sget-object v0, Llv/nfc/reader/data/exceptions/LVReadTagError;->$VALUES:[Llv/nfc/reader/data/exceptions/LVReadTagError;

    invoke-virtual {v0}, [Llv/nfc/reader/data/exceptions/LVReadTagError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llv/nfc/reader/data/exceptions/LVReadTagError;

    return-object v0
.end method


# virtual methods
.method public equalsName(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Llv/nfc/reader/data/exceptions/LVReadTagError;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llv/nfc/reader/data/exceptions/LVReadTagError;->name:Ljava/lang/String;

    return-object p0
.end method
