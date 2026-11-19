.class public interface abstract Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/userinteraction/model/SequenceState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/agent/userinteraction/model/SequenceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Pending"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;,
        Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Touch;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending;",
        "Lcom/dynatrace/agent/userinteraction/model/SequenceState;",
        "Touch",
        "Gesture",
        "Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;",
        "Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Touch;",
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


# virtual methods
.method public abstract a()Lcom/dynatrace/agent/userinteraction/model/TouchEvent;
.end method

.method public abstract b()Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;
.end method

.method public abstract c()J
.end method
