.class public Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x168

    iput v0, p0, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration$Builder;->a:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration$Builder;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iget v0, p1, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->a:I

    .line 14
    iput v0, p0, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration$Builder;->a:I

    .line 15
    iget p1, p1, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->b:I

    .line 16
    iput p1, p0, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration$Builder;->b:I

    return-void
.end method
