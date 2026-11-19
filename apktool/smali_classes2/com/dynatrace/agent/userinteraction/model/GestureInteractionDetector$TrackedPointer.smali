.class final Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackedPointer"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;",
        "",
        "",
        "id",
        "",
        "startX",
        "startY",
        "",
        "initialRelativeTimeMs",
        "<init>",
        "(IFFJ)V",
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
.field public final a:I

.field public final b:F

.field public final c:F

.field public d:F

.field public e:F

.field public f:F

.field public final g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(IFFJ)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;->a:I

    iput p2, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;->b:F

    iput p3, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;->c:F

    iput p2, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;->e:F

    iput p3, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;->f:F

    new-instance v0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$RawSample;

    const/4 v5, 0x0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$RawSample;-><init>(FFJZ)V

    filled-new-array {v0}, [Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$RawSample;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(IFFJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const-wide/16 p4, 0x0

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 33
    invoke-direct/range {v0 .. v5}, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;-><init>(IFFJ)V

    return-void
.end method
