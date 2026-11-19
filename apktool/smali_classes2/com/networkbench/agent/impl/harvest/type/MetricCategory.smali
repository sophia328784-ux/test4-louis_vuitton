.class public final enum Lcom/networkbench/agent/impl/harvest/type/MetricCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/harvest/type/MetricCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

.field public static final enum BACKGROUND:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

.field public static final enum CUSTOMEVENT:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

.field public static final enum DATABASE:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

.field public static final enum IMAGE:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

.field public static final enum JSON:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

.field public static final enum NETWORK:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

.field public static final enum NONE:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

.field public static final enum VIEW_LAYOUT:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

.field public static final enum VIEW_LOADING:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

.field private static final methodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/harvest/type/MetricCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private categoryName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    const/4 v1, 0x0

    const-string v2, "None"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->NONE:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    new-instance v1, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    const/4 v2, 0x1

    const-string v3, "ViewLoading"

    const-string v4, "VIEW_LOADING"

    invoke-direct {v1, v4, v2, v3}, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->VIEW_LOADING:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    new-instance v2, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    const/4 v3, 0x2

    const-string v4, "ViewLayout"

    const-string v5, "VIEW_LAYOUT"

    invoke-direct {v2, v5, v3, v4}, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->VIEW_LAYOUT:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    new-instance v3, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    const/4 v4, 0x3

    const-string v5, "Storage"

    const-string v6, "DATABASE"

    invoke-direct {v3, v6, v4, v5}, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->DATABASE:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    new-instance v4, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    const/4 v5, 0x4

    const-string v6, "Image"

    const-string v7, "IMAGE"

    invoke-direct {v4, v7, v5, v6}, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->IMAGE:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    new-instance v5, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    const/4 v6, 0x5

    const-string v7, "Json"

    const-string v8, "JSON"

    invoke-direct {v5, v8, v6, v7}, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->JSON:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    new-instance v6, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    const/4 v7, 0x6

    const-string v8, "Network"

    const-string v9, "NETWORK"

    invoke-direct {v6, v9, v7, v8}, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->NETWORK:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    new-instance v7, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    const/4 v8, 0x7

    const-string v9, "Background"

    const-string v10, "BACKGROUND"

    invoke-direct {v7, v10, v8, v9}, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->BACKGROUND:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    new-instance v8, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    const/16 v9, 0x8

    const-string v10, "CustomEvent"

    const-string v11, "CUSTOMEVENT"

    invoke-direct {v8, v11, v9, v10}, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->CUSTOMEVENT:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    filled-new-array/range {v0 .. v8}, [Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->$VALUES:[Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    new-instance v0, Lcom/networkbench/agent/impl/harvest/type/MetricCategory$1;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/type/MetricCategory$1;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->methodMap:Ljava/util/Map;

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

    iput-object p3, p0, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->categoryName:Ljava/lang/String;

    return-void
.end method

.method public static categoryForMethod(Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/type/MetricCategory;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->NONE:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    return-object p0

    :cond_0
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->methodMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    if-nez p0, :cond_2

    sget-object p0, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->NONE:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    :cond_2
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/type/MetricCategory;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/harvest/type/MetricCategory;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->$VALUES:[Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    return-object v0
.end method


# virtual methods
.method public getCategoryName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->categoryName:Ljava/lang/String;

    return-object p0
.end method
