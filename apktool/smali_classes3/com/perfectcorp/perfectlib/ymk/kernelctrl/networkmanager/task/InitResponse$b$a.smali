.class public final Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final endDate:J

.field public final startDate:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;->startDate:J

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;->endDate:J

    return-void
.end method
