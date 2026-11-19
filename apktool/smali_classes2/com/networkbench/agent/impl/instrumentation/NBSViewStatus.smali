.class public final enum Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;

.field public static final enum VIEW_STATUS_IGNORE:Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;

.field public static final enum VIEW_STATUS_INVALID:Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;

.field public static final enum VIEW_STATUS_VALID:Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;

    const/4 v1, 0x0

    const-string v2, "valid_view"

    const-string v3, "VIEW_STATUS_VALID"

    invoke-direct {v0, v3, v1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;->VIEW_STATUS_VALID:Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;

    new-instance v1, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;

    const/4 v2, 0x1

    const-string v3, "invalid_view"

    const-string v4, "VIEW_STATUS_INVALID"

    invoke-direct {v1, v4, v2, v3}, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;->VIEW_STATUS_INVALID:Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;

    new-instance v2, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;

    const/4 v3, 0x2

    const-string v4, "ignore_view"

    const-string v5, "VIEW_STATUS_IGNORE"

    invoke-direct {v2, v5, v3, v4}, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;->VIEW_STATUS_IGNORE:Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;

    filled-new-array {v0, v1, v2}, [Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;->$VALUES:[Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;

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

    iput-object p3, p0, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;->$VALUES:[Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;

    return-object v0
.end method


# virtual methods
.method public getViewStatusValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;->value:Ljava/lang/String;

    return-object p0
.end method
