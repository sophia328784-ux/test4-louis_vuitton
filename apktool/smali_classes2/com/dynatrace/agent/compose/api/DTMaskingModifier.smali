.class public final Lcom/dynatrace/agent/compose/api/DTMaskingModifier;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Lcom/dynatrace/agent/compose/api/DynatraceMaskingNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dynatrace/agent/compose/api/DTMaskingModifier;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Lcom/dynatrace/agent/compose/api/DynatraceMaskingNode;",
        "<init>",
        "()V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    new-instance p0, Lcom/dynatrace/agent/compose/api/DynatraceMaskingNode;

    invoke-direct {p0}, Lcom/dynatrace/agent/compose/api/DynatraceMaskingNode;-><init>()V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Lcom/dynatrace/agent/compose/api/DTMaskingModifier;

    return p0
.end method

.method public final g(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Lcom/dynatrace/agent/compose/api/DynatraceMaskingNode;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
