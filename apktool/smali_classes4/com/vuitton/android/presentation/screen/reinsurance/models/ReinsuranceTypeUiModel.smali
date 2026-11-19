.class public final enum Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;",
        "",
        "",
        "identifier",
        "Ljava/lang/String;",
        "a",
        "()Ljava/lang/String;",
        "",
        "order",
        "I",
        "b",
        "()I",
        "PAYMENT",
        "DELIVERY",
        "RETURN_EXCHANGE",
        "PACKAGING",
        "COLLECT_IN_STORE",
        "CONTACT",
        "OTHERS",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

.field public static final enum COLLECT_IN_STORE:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

.field public static final enum CONTACT:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

.field public static final enum DELIVERY:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

.field public static final enum OTHERS:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

.field public static final enum PACKAGING:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

.field public static final enum PAYMENT:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

.field public static final enum RETURN_EXCHANGE:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;


# instance fields
.field private final identifier:Ljava/lang/String;

.field private final order:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    const-string v1, "PAYMENT"

    const/4 v2, 0x0

    const-string v3, "payment"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->PAYMENT:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    new-instance v1, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    const-string v2, "DELIVERY"

    const-string v3, "delivery"

    const/4 v5, 0x2

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->DELIVERY:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    new-instance v2, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    const-string v3, "RETURN_EXCHANGE"

    const-string v4, "returnexchange"

    const/4 v6, 0x3

    invoke-direct {v2, v3, v5, v4, v6}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->RETURN_EXCHANGE:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    new-instance v3, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    const-string v4, "PACKAGING"

    const-string v5, "packaging"

    const/4 v7, 0x4

    invoke-direct {v3, v4, v6, v5, v7}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->PACKAGING:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    new-instance v4, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    const-string v5, "COLLECT_IN_STORE"

    const-string v6, "next_day_collect_in_store"

    invoke-direct {v4, v5, v7, v6, v7}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->COLLECT_IN_STORE:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    new-instance v5, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    const-string v6, "contact"

    const-string v8, "CONTACT"

    const/4 v9, 0x5

    invoke-direct {v5, v8, v9, v6, v7}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->CONTACT:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    new-instance v6, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    const/4 v7, 0x6

    const-string v8, ""

    const-string v10, "OTHERS"

    invoke-direct {v6, v10, v7, v8, v9}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->OTHERS:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    filled-new-array/range {v0 .. v6}, [Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->$VALUES:[Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->identifier:Ljava/lang/String;

    iput p4, p0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->order:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->$VALUES:[Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->order:I

    return p0
.end method
