.class abstract Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/NetworkTaskManagerHolder$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/NetworkTaskManagerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/common/network/NetworkTaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/perfectcorp/common/network/NetworkTaskManager;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/NetworkTaskManagerHolder$a;->a:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/network/NetworkTaskManager;-><init>(Lcom/perfectcorp/common/network/h;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/NetworkTaskManagerHolder$b;->a:Lcom/perfectcorp/common/network/NetworkTaskManager;

    return-void
.end method
