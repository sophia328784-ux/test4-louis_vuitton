.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final expiredDate:Ljava/lang/String;

.field public final guid:Ljava/lang/String;

.field public final lastModified:J

.field public final payload:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$b;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$b;->type:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$b;->payload:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$b;->expiredDate:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$b;->lastModified:J

    return-void
.end method
