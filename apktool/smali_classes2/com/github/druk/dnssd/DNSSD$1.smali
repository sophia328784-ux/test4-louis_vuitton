.class Lcom/github/druk/dnssd/DNSSD$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/druk/dnssd/InternalBrowseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/druk/dnssd/DNSSD;->browse(IILjava/lang/String;Ljava/lang/String;Lcom/github/druk/dnssd/BrowseListener;)Lcom/github/druk/dnssd/DNSSDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/druk/dnssd/DNSSD;

.field final synthetic val$listener:Lcom/github/druk/dnssd/BrowseListener;

.field final synthetic val$services:[Lcom/github/druk/dnssd/InternalDNSSDService;


# direct methods
.method public constructor <init>(Lcom/github/druk/dnssd/DNSSD;Lcom/github/druk/dnssd/BrowseListener;[Lcom/github/druk/dnssd/InternalDNSSDService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/druk/dnssd/DNSSD$1;->this$0:Lcom/github/druk/dnssd/DNSSD;

    iput-object p2, p0, Lcom/github/druk/dnssd/DNSSD$1;->val$listener:Lcom/github/druk/dnssd/BrowseListener;

    iput-object p3, p0, Lcom/github/druk/dnssd/DNSSD$1;->val$services:[Lcom/github/druk/dnssd/InternalDNSSDService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/github/druk/dnssd/BrowseListener;[Lcom/github/druk/dnssd/InternalDNSSDService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/github/druk/dnssd/DNSSD$1;->lambda$serviceLost$1(Lcom/github/druk/dnssd/BrowseListener;[Lcom/github/druk/dnssd/InternalDNSSDService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/github/druk/dnssd/BrowseListener;[Lcom/github/druk/dnssd/InternalDNSSDService;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/druk/dnssd/DNSSD$1;->lambda$operationFailed$2(Lcom/github/druk/dnssd/BrowseListener;[Lcom/github/druk/dnssd/InternalDNSSDService;I)V

    return-void
.end method

.method public static synthetic c(Lcom/github/druk/dnssd/BrowseListener;[Lcom/github/druk/dnssd/InternalDNSSDService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/github/druk/dnssd/DNSSD$1;->lambda$serviceFound$0(Lcom/github/druk/dnssd/BrowseListener;[Lcom/github/druk/dnssd/InternalDNSSDService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$operationFailed$2(Lcom/github/druk/dnssd/BrowseListener;[Lcom/github/druk/dnssd/InternalDNSSDService;I)V
    .locals 1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-interface {p0, p1, p2}, Lcom/github/druk/dnssd/BaseListener;->operationFailed(Lcom/github/druk/dnssd/DNSSDService;I)V

    return-void
.end method

.method private static synthetic lambda$serviceFound$0(Lcom/github/druk/dnssd/BrowseListener;[Lcom/github/druk/dnssd/InternalDNSSDService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-interface/range {p0 .. p6}, Lcom/github/druk/dnssd/BrowseListener;->serviceFound(Lcom/github/druk/dnssd/DNSSDService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$serviceLost$1(Lcom/github/druk/dnssd/BrowseListener;[Lcom/github/druk/dnssd/InternalDNSSDService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-interface/range {p0 .. p6}, Lcom/github/druk/dnssd/BrowseListener;->serviceLost(Lcom/github/druk/dnssd/DNSSDService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public operationFailed(Lcom/github/druk/dnssd/DNSSDService;I)V
    .locals 3

    iget-object p1, p0, Lcom/github/druk/dnssd/DNSSD$1;->this$0:Lcom/github/druk/dnssd/DNSSD;

    invoke-static {p1}, Lcom/github/druk/dnssd/DNSSD;->access$100(Lcom/github/druk/dnssd/DNSSD;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/github/druk/dnssd/DNSSD$1;->val$listener:Lcom/github/druk/dnssd/BrowseListener;

    iget-object p0, p0, Lcom/github/druk/dnssd/DNSSD$1;->val$services:[Lcom/github/druk/dnssd/InternalDNSSDService;

    new-instance v1, Lcom/github/druk/dnssd/b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, p2, v2}, Lcom/github/druk/dnssd/b;-><init>(Lcom/github/druk/dnssd/BaseListener;[Lcom/github/druk/dnssd/DNSSDService;II)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public serviceFound(Lcom/github/druk/dnssd/DNSSDService;II[B[B[B)V
    .locals 9

    new-instance v5, Ljava/lang/String;

    invoke-static {}, Lcom/github/druk/dnssd/DNSSD;->access$000()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v5, p4, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v6, Ljava/lang/String;

    invoke-static {}, Lcom/github/druk/dnssd/DNSSD;->access$000()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v6, p5, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v7, Ljava/lang/String;

    invoke-static {}, Lcom/github/druk/dnssd/DNSSD;->access$000()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v7, p6, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object p1, p0, Lcom/github/druk/dnssd/DNSSD$1;->this$0:Lcom/github/druk/dnssd/DNSSD;

    invoke-static {p1}, Lcom/github/druk/dnssd/DNSSD;->access$100(Lcom/github/druk/dnssd/DNSSD;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/github/druk/dnssd/DNSSD$1;->val$listener:Lcom/github/druk/dnssd/BrowseListener;

    iget-object v2, p0, Lcom/github/druk/dnssd/DNSSD$1;->val$services:[Lcom/github/druk/dnssd/InternalDNSSDService;

    new-instance v0, Lcom/github/druk/dnssd/a;

    const/4 v8, 0x0

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/github/druk/dnssd/a;-><init>(Lcom/github/druk/dnssd/BrowseListener;[Lcom/github/druk/dnssd/InternalDNSSDService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public serviceLost(Lcom/github/druk/dnssd/DNSSDService;II[B[B[B)V
    .locals 9

    new-instance v5, Ljava/lang/String;

    invoke-static {}, Lcom/github/druk/dnssd/DNSSD;->access$000()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v5, p4, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v6, Ljava/lang/String;

    invoke-static {}, Lcom/github/druk/dnssd/DNSSD;->access$000()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v6, p5, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v7, Ljava/lang/String;

    invoke-static {}, Lcom/github/druk/dnssd/DNSSD;->access$000()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v7, p6, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object p1, p0, Lcom/github/druk/dnssd/DNSSD$1;->this$0:Lcom/github/druk/dnssd/DNSSD;

    invoke-static {p1}, Lcom/github/druk/dnssd/DNSSD;->access$100(Lcom/github/druk/dnssd/DNSSD;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/github/druk/dnssd/DNSSD$1;->val$listener:Lcom/github/druk/dnssd/BrowseListener;

    iget-object v2, p0, Lcom/github/druk/dnssd/DNSSD$1;->val$services:[Lcom/github/druk/dnssd/InternalDNSSDService;

    new-instance v0, Lcom/github/druk/dnssd/a;

    const/4 v8, 0x1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/github/druk/dnssd/a;-><init>(Lcom/github/druk/dnssd/BrowseListener;[Lcom/github/druk/dnssd/InternalDNSSDService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
