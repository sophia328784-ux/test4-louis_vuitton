.class public final Lcom/dynatrace/agent/compose/userinteraction/sensor/DTBasicTextModifier;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Lcom/dynatrace/agent/compose/userinteraction/sensor/DynatraceBasicTextNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u0011\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dynatrace/agent/compose/userinteraction/sensor/DTBasicTextModifier;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Lcom/dynatrace/agent/compose/userinteraction/sensor/DynatraceBasicTextNode;",
        "",
        "text",
        "<init>",
        "(Ljava/lang/String;)V",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "annotatedString",
        "(Landroidx/compose/ui/text/AnnotatedString;)V",
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
.method public constructor <init>(Landroidx/compose/ui/text/AnnotatedString;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iget-object p1, p1, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTBasicTextModifier;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTBasicTextModifier;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DynatraceBasicTextNode;

    iget-object p0, p0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTBasicTextModifier;->b:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DynatraceBasicTextNode;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTBasicTextModifier;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTBasicTextModifier;

    iget-object p1, p1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTBasicTextModifier;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTBasicTextModifier;->b:Ljava/lang/String;

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

    check-cast p1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DynatraceBasicTextNode;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTBasicTextModifier;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/lit16 p0, p0, 0x20f

    return p0
.end method
