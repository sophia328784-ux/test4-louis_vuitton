.class public final Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final customFeature:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$a;

.field public final lastModified:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$b;->lastModified:J

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$a;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$b;->customFeature:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$a;

    return-void
.end method
