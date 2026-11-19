.class Lcom/github/druk/dnssd/DNSSD$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/druk/dnssd/InternalRegisterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/druk/dnssd/DNSSD;->register(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/github/druk/dnssd/TXTRecord;Lcom/github/druk/dnssd/RegisterListener;)Lcom/github/druk/dnssd/DNSSDRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/druk/dnssd/DNSSD;

.field final synthetic val$listener:Lcom/github/druk/dnssd/RegisterListener;

.field final synthetic val$services:[Lcom/github/druk/dnssd/DNSSDRegistration;


# direct methods
.method public constructor <init>(Lcom/github/druk/dnssd/DNSSD;Lcom/github/druk/dnssd/RegisterListener;[Lcom/github/druk/dnssd/DNSSDRegistration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/druk/dnssd/DNSSD$3;->this$0:Lcom/github/druk/dnssd/DNSSD;

    iput-object p2, p0, Lcom/github/druk/dnssd/DNSSD$3;->val$listener:Lcom/github/druk/dnssd/RegisterListener;

    iput-object p3, p0, Lcom/github/druk/dnssd/DNSSD$3;->val$services:[Lcom/github/druk/dnssd/DNSSDRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/github/druk/dnssd/RegisterListener;[Lcom/github/druk/dnssd/DNSSDRegistration;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/github/druk/dnssd/DNSSD$3;->lambda$serviceRegistered$0(Lcom/github/druk/dnssd/RegisterListener;[Lcom/github/druk/dnssd/DNSSDRegistration;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/github/druk/dnssd/RegisterListener;[Lcom/github/druk/dnssd/DNSSDRegistration;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/druk/dnssd/DNSSD$3;->lambda$operationFailed$1(Lcom/github/druk/dnssd/RegisterListener;[Lcom/github/druk/dnssd/DNSSDRegistration;I)V

    return-void
.end method

.method private static synthetic lambda$operationFailed$1(Lcom/github/druk/dnssd/RegisterListener;[Lcom/github/druk/dnssd/DNSSDRegistration;I)V
    .locals 1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-interface {p0, p1, p2}, Lcom/github/druk/dnssd/BaseListener;->operationFailed(Lcom/github/druk/dnssd/DNSSDService;I)V

    return-void
.end method

.method private static synthetic lambda$serviceRegistered$0(Lcom/github/druk/dnssd/RegisterListener;[Lcom/github/druk/dnssd/DNSSDRegistration;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-interface/range {p0 .. p5}, Lcom/github/druk/dnssd/RegisterListener;->serviceRegistered(Lcom/github/druk/dnssd/DNSSDRegistration;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public operationFailed(Lcom/github/druk/dnssd/DNSSDService;I)V
    .locals 3

    iget-object p1, p0, Lcom/github/druk/dnssd/DNSSD$3;->this$0:Lcom/github/druk/dnssd/DNSSD;

    invoke-static {p1}, Lcom/github/druk/dnssd/DNSSD;->access$100(Lcom/github/druk/dnssd/DNSSD;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/github/druk/dnssd/DNSSD$3;->val$listener:Lcom/github/druk/dnssd/RegisterListener;

    iget-object p0, p0, Lcom/github/druk/dnssd/DNSSD$3;->val$services:[Lcom/github/druk/dnssd/DNSSDRegistration;

    new-instance v1, Lcom/github/druk/dnssd/b;

    const/4 v2, 0x2

    invoke-direct {v1, v0, p0, p2, v2}, Lcom/github/druk/dnssd/b;-><init>(Lcom/github/druk/dnssd/BaseListener;[Lcom/github/druk/dnssd/DNSSDService;II)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public serviceRegistered(Lcom/github/druk/dnssd/DNSSDRegistration;I[B[B[B)V
    .locals 7

    new-instance v4, Ljava/lang/String;

    invoke-static {}, Lcom/github/druk/dnssd/DNSSD;->access$000()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v4, p3, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v5, Ljava/lang/String;

    invoke-static {}, Lcom/github/druk/dnssd/DNSSD;->access$000()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v5, p4, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v6, Ljava/lang/String;

    invoke-static {}, Lcom/github/druk/dnssd/DNSSD;->access$000()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v6, p5, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object p1, p0, Lcom/github/druk/dnssd/DNSSD$3;->this$0:Lcom/github/druk/dnssd/DNSSD;

    invoke-static {p1}, Lcom/github/druk/dnssd/DNSSD;->access$100(Lcom/github/druk/dnssd/DNSSD;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/github/druk/dnssd/DNSSD$3;->val$listener:Lcom/github/druk/dnssd/RegisterListener;

    iget-object v2, p0, Lcom/github/druk/dnssd/DNSSD$3;->val$services:[Lcom/github/druk/dnssd/DNSSDRegistration;

    new-instance v0, Lcom/github/druk/dnssd/d;

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/github/druk/dnssd/d;-><init>(Lcom/github/druk/dnssd/RegisterListener;[Lcom/github/druk/dnssd/DNSSDRegistration;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
