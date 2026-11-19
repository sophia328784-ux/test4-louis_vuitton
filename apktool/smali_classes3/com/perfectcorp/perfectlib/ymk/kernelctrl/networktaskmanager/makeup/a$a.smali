.class public final Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final badLightingLV:Z

.field public final brand:Ljava/lang/String;

.field public final lookComparisonLV:Z

.field public final skinsmoothLV:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$a;->brand:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$a;->badLightingLV:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$a;->skinsmoothLV:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$a;->lookComparisonLV:Z

    return-void
.end method
