.class public final enum Lcom/networkbench/agent/impl/harvest/type/HarvestableType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/harvest/type/HarvestableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

.field public static final enum ARRAY:Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

.field public static final enum OBJECT:Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

.field public static final enum VALUE:Lcom/networkbench/agent/impl/harvest/type/HarvestableType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    const-string v1, "OBJECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;->OBJECT:Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    new-instance v1, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    const-string v2, "ARRAY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;->ARRAY:Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    new-instance v2, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    const-string v3, "VALUE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;->VALUE:Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    filled-new-array {v0, v1, v2}, [Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;->$VALUES:[Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/type/HarvestableType;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/harvest/type/HarvestableType;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;->$VALUES:[Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/harvest/type/HarvestableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    return-object v0
.end method
