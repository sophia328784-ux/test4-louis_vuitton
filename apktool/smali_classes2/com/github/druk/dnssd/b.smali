.class public final synthetic Lcom/github/druk/dnssd/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/github/druk/dnssd/BaseListener;

.field public final synthetic e:[Lcom/github/druk/dnssd/DNSSDService;


# direct methods
.method public synthetic constructor <init>(Lcom/github/druk/dnssd/BaseListener;[Lcom/github/druk/dnssd/DNSSDService;II)V
    .locals 0

    iput p4, p0, Lcom/github/druk/dnssd/b;->b:I

    iput-object p1, p0, Lcom/github/druk/dnssd/b;->d:Lcom/github/druk/dnssd/BaseListener;

    iput-object p2, p0, Lcom/github/druk/dnssd/b;->e:[Lcom/github/druk/dnssd/DNSSDService;

    iput p3, p0, Lcom/github/druk/dnssd/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/github/druk/dnssd/b;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/github/druk/dnssd/b;->d:Lcom/github/druk/dnssd/BaseListener;

    check-cast v0, Lcom/github/druk/dnssd/DomainListener;

    iget-object v1, p0, Lcom/github/druk/dnssd/b;->e:[Lcom/github/druk/dnssd/DNSSDService;

    iget p0, p0, Lcom/github/druk/dnssd/b;->c:I

    invoke-static {v0, v1, p0}, Lcom/github/druk/dnssd/DNSSD$5;->b(Lcom/github/druk/dnssd/DomainListener;[Lcom/github/druk/dnssd/DNSSDService;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/github/druk/dnssd/b;->d:Lcom/github/druk/dnssd/BaseListener;

    check-cast v0, Lcom/github/druk/dnssd/QueryListener;

    iget-object v1, p0, Lcom/github/druk/dnssd/b;->e:[Lcom/github/druk/dnssd/DNSSDService;

    iget p0, p0, Lcom/github/druk/dnssd/b;->c:I

    invoke-static {v0, v1, p0}, Lcom/github/druk/dnssd/DNSSD$4;->a(Lcom/github/druk/dnssd/QueryListener;[Lcom/github/druk/dnssd/DNSSDService;I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/github/druk/dnssd/b;->d:Lcom/github/druk/dnssd/BaseListener;

    check-cast v0, Lcom/github/druk/dnssd/RegisterListener;

    iget-object v1, p0, Lcom/github/druk/dnssd/b;->e:[Lcom/github/druk/dnssd/DNSSDService;

    check-cast v1, [Lcom/github/druk/dnssd/DNSSDRegistration;

    iget p0, p0, Lcom/github/druk/dnssd/b;->c:I

    invoke-static {v0, v1, p0}, Lcom/github/druk/dnssd/DNSSD$3;->b(Lcom/github/druk/dnssd/RegisterListener;[Lcom/github/druk/dnssd/DNSSDRegistration;I)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/github/druk/dnssd/b;->d:Lcom/github/druk/dnssd/BaseListener;

    check-cast v0, Lcom/github/druk/dnssd/ResolveListener;

    iget-object v1, p0, Lcom/github/druk/dnssd/b;->e:[Lcom/github/druk/dnssd/DNSSDService;

    iget p0, p0, Lcom/github/druk/dnssd/b;->c:I

    invoke-static {v0, v1, p0}, Lcom/github/druk/dnssd/DNSSD$2;->a(Lcom/github/druk/dnssd/ResolveListener;[Lcom/github/druk/dnssd/DNSSDService;I)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/github/druk/dnssd/b;->d:Lcom/github/druk/dnssd/BaseListener;

    check-cast v0, Lcom/github/druk/dnssd/BrowseListener;

    iget-object v1, p0, Lcom/github/druk/dnssd/b;->e:[Lcom/github/druk/dnssd/DNSSDService;

    check-cast v1, [Lcom/github/druk/dnssd/InternalDNSSDService;

    iget p0, p0, Lcom/github/druk/dnssd/b;->c:I

    invoke-static {v0, v1, p0}, Lcom/github/druk/dnssd/DNSSD$1;->b(Lcom/github/druk/dnssd/BrowseListener;[Lcom/github/druk/dnssd/InternalDNSSDService;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
