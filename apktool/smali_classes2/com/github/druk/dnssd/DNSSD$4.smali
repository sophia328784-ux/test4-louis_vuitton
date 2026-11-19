.class Lcom/github/druk/dnssd/DNSSD$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/druk/dnssd/InternalQueryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/druk/dnssd/DNSSD;->queryRecord(IILjava/lang/String;IIZLcom/github/druk/dnssd/QueryListener;)Lcom/github/druk/dnssd/DNSSDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/druk/dnssd/DNSSD;

.field final synthetic val$listener:Lcom/github/druk/dnssd/QueryListener;

.field final synthetic val$services:[Lcom/github/druk/dnssd/DNSSDService;

.field final synthetic val$timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/github/druk/dnssd/DNSSD;Ljava/lang/Runnable;Lcom/github/druk/dnssd/QueryListener;[Lcom/github/druk/dnssd/DNSSDService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/druk/dnssd/DNSSD$4;->this$0:Lcom/github/druk/dnssd/DNSSD;

    iput-object p2, p0, Lcom/github/druk/dnssd/DNSSD$4;->val$timeoutRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/github/druk/dnssd/DNSSD$4;->val$listener:Lcom/github/druk/dnssd/QueryListener;

    iput-object p4, p0, Lcom/github/druk/dnssd/DNSSD$4;->val$services:[Lcom/github/druk/dnssd/DNSSDService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/github/druk/dnssd/QueryListener;[Lcom/github/druk/dnssd/DNSSDService;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/druk/dnssd/DNSSD$4;->lambda$operationFailed$1(Lcom/github/druk/dnssd/QueryListener;[Lcom/github/druk/dnssd/DNSSDService;I)V

    return-void
.end method

.method public static synthetic b(Lcom/github/druk/dnssd/QueryListener;[Lcom/github/druk/dnssd/DNSSDService;IILjava/lang/String;II[BI)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/github/druk/dnssd/DNSSD$4;->lambda$queryAnswered$0(Lcom/github/druk/dnssd/QueryListener;[Lcom/github/druk/dnssd/DNSSDService;IILjava/lang/String;II[BI)V

    return-void
.end method

.method private static synthetic lambda$operationFailed$1(Lcom/github/druk/dnssd/QueryListener;[Lcom/github/druk/dnssd/DNSSDService;I)V
    .locals 2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-interface {p0, v1, p2}, Lcom/github/druk/dnssd/BaseListener;->operationFailed(Lcom/github/druk/dnssd/DNSSDService;I)V

    aget-object p0, p1, v0

    invoke-interface {p0}, Lcom/github/druk/dnssd/DNSSDService;->stop()V

    return-void
.end method

.method private static synthetic lambda$queryAnswered$0(Lcom/github/druk/dnssd/QueryListener;[Lcom/github/druk/dnssd/DNSSDService;IILjava/lang/String;II[BI)V
    .locals 10

    const/4 v0, 0x0

    aget-object v2, p1, v0

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/github/druk/dnssd/QueryListener;->queryAnswered(Lcom/github/druk/dnssd/DNSSDService;IILjava/lang/String;II[BI)V

    aget-object p0, p1, v0

    invoke-interface {p0}, Lcom/github/druk/dnssd/DNSSDService;->stop()V

    return-void
.end method


# virtual methods
.method public operationFailed(Lcom/github/druk/dnssd/DNSSDService;I)V
    .locals 3

    iget-object p1, p0, Lcom/github/druk/dnssd/DNSSD$4;->this$0:Lcom/github/druk/dnssd/DNSSD;

    invoke-static {p1}, Lcom/github/druk/dnssd/DNSSD;->access$100(Lcom/github/druk/dnssd/DNSSD;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/github/druk/dnssd/DNSSD$4;->val$timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/github/druk/dnssd/DNSSD$4;->this$0:Lcom/github/druk/dnssd/DNSSD;

    invoke-static {p1}, Lcom/github/druk/dnssd/DNSSD;->access$100(Lcom/github/druk/dnssd/DNSSD;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/github/druk/dnssd/DNSSD$4;->val$listener:Lcom/github/druk/dnssd/QueryListener;

    iget-object p0, p0, Lcom/github/druk/dnssd/DNSSD$4;->val$services:[Lcom/github/druk/dnssd/DNSSDService;

    new-instance v1, Lcom/github/druk/dnssd/b;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p0, p2, v2}, Lcom/github/druk/dnssd/b;-><init>(Lcom/github/druk/dnssd/BaseListener;[Lcom/github/druk/dnssd/DNSSDService;II)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public queryAnswered(Lcom/github/druk/dnssd/DNSSDService;II[BII[BI)V
    .locals 10

    new-instance v5, Ljava/lang/String;

    invoke-static {}, Lcom/github/druk/dnssd/DNSSD;->access$000()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v5, p4, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object p1, p0, Lcom/github/druk/dnssd/DNSSD$4;->this$0:Lcom/github/druk/dnssd/DNSSD;

    invoke-static {p1}, Lcom/github/druk/dnssd/DNSSD;->access$100(Lcom/github/druk/dnssd/DNSSD;)Landroid/os/Handler;

    move-result-object p1

    iget-object p4, p0, Lcom/github/druk/dnssd/DNSSD$4;->val$timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/github/druk/dnssd/DNSSD$4;->this$0:Lcom/github/druk/dnssd/DNSSD;

    invoke-static {p1}, Lcom/github/druk/dnssd/DNSSD;->access$100(Lcom/github/druk/dnssd/DNSSD;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/github/druk/dnssd/DNSSD$4;->val$listener:Lcom/github/druk/dnssd/QueryListener;

    iget-object v2, p0, Lcom/github/druk/dnssd/DNSSD$4;->val$services:[Lcom/github/druk/dnssd/DNSSDService;

    new-instance v0, Lcom/github/druk/dnssd/e;

    move v3, p2

    move v4, p3

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/github/druk/dnssd/e;-><init>(Lcom/github/druk/dnssd/QueryListener;[Lcom/github/druk/dnssd/DNSSDService;IILjava/lang/String;II[BI)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
