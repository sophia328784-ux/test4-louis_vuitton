.class public final enum Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FILTERTYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

.field public static final enum FIRST_FILTER:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

.field public static final enum LAST_FILTER:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

.field public static final enum MIDDLE_FILTER:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

.field public static final enum NONE:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;->NONE:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    new-instance v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    const-string v2, "FIRST_FILTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;->FIRST_FILTER:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    new-instance v2, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    const-string v3, "MIDDLE_FILTER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;->MIDDLE_FILTER:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    new-instance v3, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    const-string v4, "LAST_FILTER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;->LAST_FILTER:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    filled-new-array {v0, v1, v2, v3}, [Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;->$VALUES:[Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;->$VALUES:[Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    return-object v0
.end method
