.class public final Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Lcom/dynatrace/agent/compose/userinteraction/sensor/DynatraceFunctionNameNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Lcom/dynatrace/agent/compose/userinteraction/sensor/DynatraceFunctionNameNode;",
        "",
        "text",
        "<init>",
        "(Ljava/lang/String;)V",
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


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DynatraceFunctionNameNode;

    iget-object p0, p0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;->b:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DynatraceFunctionNameNode;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    iget-object p1, p1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DynatraceFunctionNameNode;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/lit16 p0, p0, 0x20f

    return p0
.end method
