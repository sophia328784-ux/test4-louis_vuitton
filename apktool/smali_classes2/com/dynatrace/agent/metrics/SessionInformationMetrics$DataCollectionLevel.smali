.class public final enum Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/agent/metrics/SessionInformationMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataCollectionLevel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0080\u0081\u0002\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;",
        "",
        "",
        "serialized",
        "I",
        "b",
        "()I",
        "Companion",
        "OFF",
        "PERFORMANCE",
        "USER_BEHAVIOR",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

.field public static final Companion:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel$Companion;

.field public static final enum OFF:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

.field public static final enum PERFORMANCE:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

.field public static final enum USER_BEHAVIOR:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;


# instance fields
.field private final serialized:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;->OFF:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    new-instance v1, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    const-string v2, "PERFORMANCE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;->PERFORMANCE:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    new-instance v2, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    const-string v3, "USER_BEHAVIOR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;->USER_BEHAVIOR:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    filled-new-array {v0, v1, v2}, [Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;->$VALUES:[Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;->Companion:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;->serialized:I

    return-void
.end method

.method public static a()Lkotlin/enums/EnumEntries;
    .locals 1

    sget-object v0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;
    .locals 1

    const-class v0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    return-object p0
.end method

.method public static values()[Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;
    .locals 1

    sget-object v0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;->$VALUES:[Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 0

    iget p0, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;->serialized:I

    return p0
.end method
