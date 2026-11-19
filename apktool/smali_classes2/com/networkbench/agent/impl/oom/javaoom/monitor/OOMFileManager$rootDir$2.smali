.class final Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager$rootDir$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/io/File;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager$rootDir$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager$rootDir$2;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager$rootDir$2;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager$rootDir$2;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager$rootDir$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/io/File;
    .locals 1

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;

    invoke-static {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->access$getMRootDirInvoker$li(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->access$getMRootDirInvoker$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    const-string v0, "oom"

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->access$getMRootPath$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager$rootDir$2;->invoke()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
