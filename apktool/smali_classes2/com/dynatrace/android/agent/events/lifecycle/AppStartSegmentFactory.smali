.class public Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegmentFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/lifecycle/SegmentFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dynatrace/android/lifecycle/SegmentFactory<",
        "Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;",
        "Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
