.class public final Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;",
        "",
        "<init>",
        "()V",
        "Companion",
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
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:I

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 7

    iget v0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->c:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->d:F

    sub-float v1, p2, v1

    iget v2, p0, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->f:F

    float-to-double v3, v0

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->f:F

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    iget v3, p0, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->g:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->g:F

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->h:F

    neg-float v0, v0

    add-float/2addr v3, v0

    iput v3, p0, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->h:F

    :goto_0
    cmpl-float v0, v1, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->i:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->i:F

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->j:F

    neg-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->j:F

    :goto_1
    iput p1, p0, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->c:F

    iput p2, p0, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->d:F

    iget p1, p0, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->e:I

    return-void
.end method
