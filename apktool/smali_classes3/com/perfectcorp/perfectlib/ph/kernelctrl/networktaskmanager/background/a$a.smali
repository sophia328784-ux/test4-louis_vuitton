.class public Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/perfectcorp/common/network/DownloadTask$Key;

.field public final b:Ljava/lang/String;

.field public c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/network/DownloadTask$Key;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$a;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$a;->a:Lcom/perfectcorp/common/network/DownloadTask$Key;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$b;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$a;)V

    return-object v0
.end method
