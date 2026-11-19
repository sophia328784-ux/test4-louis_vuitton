.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/nailLook/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/nailLook/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final guid:Ljava/lang/String;

.field public final lastModified:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/nailLook/a$a;->guid:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/nailLook/a$a;->lastModified:J

    return-void
.end method
