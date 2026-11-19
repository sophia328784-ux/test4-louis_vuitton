.class public final enum Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;",
        "",
        "",
        "trackingName",
        "Ljava/lang/String;",
        "a",
        "()Ljava/lang/String;",
        "PDP",
        "CUSTOMER_SERVICES",
        "CONTRIBUTION_LINK",
        "APPOINTMENT_LIST",
        "APP_LINK",
        "PERSONAL_SELECTION",
        "BOOKING",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

.field public static final enum APPOINTMENT_LIST:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

.field public static final enum APP_LINK:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

.field public static final enum BOOKING:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

.field public static final enum CONTRIBUTION_LINK:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

.field public static final enum CUSTOMER_SERVICES:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

.field public static final enum PDP:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

.field public static final enum PERSONAL_SELECTION:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;


# instance fields
.field private final trackingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    const/4 v1, 0x0

    const-string v2, "pdp"

    const-string v3, "PDP"

    invoke-direct {v0, v3, v1, v2}, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->PDP:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    const/4 v2, 0x1

    const-string v3, "customer_services"

    const-string v4, "CUSTOMER_SERVICES"

    invoke-direct {v1, v4, v2, v3}, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->CUSTOMER_SERVICES:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    new-instance v2, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    const/4 v3, 0x2

    const-string v4, "contribution_link"

    const-string v5, "CONTRIBUTION_LINK"

    invoke-direct {v2, v5, v3, v4}, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->CONTRIBUTION_LINK:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    new-instance v3, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    const/4 v4, 0x3

    const-string v5, "appointment_list"

    const-string v6, "APPOINTMENT_LIST"

    invoke-direct {v3, v6, v4, v5}, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->APPOINTMENT_LIST:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    new-instance v4, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    const/4 v5, 0x4

    const-string v6, "app_link"

    const-string v7, "APP_LINK"

    invoke-direct {v4, v7, v5, v6}, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->APP_LINK:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    new-instance v5, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    const/4 v6, 0x5

    const-string v7, "in_store_personal_selection"

    const-string v8, "PERSONAL_SELECTION"

    invoke-direct {v5, v8, v6, v7}, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->PERSONAL_SELECTION:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    new-instance v6, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    const/4 v7, 0x6

    const-string v8, "booking"

    const-string v9, "BOOKING"

    invoke-direct {v6, v9, v7, v8}, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->BOOKING:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    filled-new-array/range {v0 .. v6}, [Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->$VALUES:[Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->trackingName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->$VALUES:[Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->trackingName:Ljava/lang/String;

    return-object p0
.end method
