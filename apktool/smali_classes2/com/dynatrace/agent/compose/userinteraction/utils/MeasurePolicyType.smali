.class public final enum Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;",
        "",
        "ROW",
        "COLUMN",
        "BOX",
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

.field private static final synthetic $VALUES:[Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

.field public static final enum BOX:Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

.field public static final enum COLUMN:Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

.field public static final enum ROW:Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    const-string v1, "ROW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;->ROW:Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    const-string v2, "COLUMN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;->COLUMN:Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    const-string v3, "BOX"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;->BOX:Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    filled-new-array {v0, v1, v2}, [Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;->$VALUES:[Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;
    .locals 1

    const-class v0, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    return-object p0
.end method

.method public static values()[Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;
    .locals 1

    sget-object v0, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;->$VALUES:[Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "Box"

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "Column"

    return-object p0

    :cond_2
    const-string p0, "Row"

    return-object p0
.end method
