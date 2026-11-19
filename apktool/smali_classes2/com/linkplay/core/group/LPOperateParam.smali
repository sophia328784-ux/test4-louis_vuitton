.class public Lcom/linkplay/core/group/LPOperateParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field hardware:Ljava/lang/String;

.field index:I

.field slave_count:I

.field ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/linkplay/core/group/LPOperateParam;->slave_count:I

    iput v0, p0, Lcom/linkplay/core/group/LPOperateParam;->index:I

    const-string v0, ""

    iput-object v0, p0, Lcom/linkplay/core/group/LPOperateParam;->hardware:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/group/LPOperateParam;->ssid:Ljava/lang/String;

    return-void
.end method
