.class public final synthetic Lsr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:[Lcom/github/druk/dnssd/DNSSDService;


# direct methods
.method public synthetic constructor <init>([Lcom/github/druk/dnssd/DNSSDService;I)V
    .locals 0

    iput p2, p0, Lsr;->b:I

    iput-object p1, p0, Lsr;->c:[Lcom/github/druk/dnssd/DNSSDService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lsr;->b:I

    iget-object p0, p0, Lsr;->c:[Lcom/github/druk/dnssd/DNSSDService;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/github/druk/dnssd/DNSSD;->a([Lcom/github/druk/dnssd/DNSSDService;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/github/druk/dnssd/DNSSD;->b([Lcom/github/druk/dnssd/DNSSDService;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
