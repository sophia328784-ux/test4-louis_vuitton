.class public final synthetic Lcom/github/druk/dnssd/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/github/druk/dnssd/BrowseListener;

.field public final synthetic d:[Lcom/github/druk/dnssd/InternalDNSSDService;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/github/druk/dnssd/BrowseListener;[Lcom/github/druk/dnssd/InternalDNSSDService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p8, p0, Lcom/github/druk/dnssd/a;->b:I

    iput-object p1, p0, Lcom/github/druk/dnssd/a;->c:Lcom/github/druk/dnssd/BrowseListener;

    iput-object p2, p0, Lcom/github/druk/dnssd/a;->d:[Lcom/github/druk/dnssd/InternalDNSSDService;

    iput p3, p0, Lcom/github/druk/dnssd/a;->e:I

    iput p4, p0, Lcom/github/druk/dnssd/a;->f:I

    iput-object p5, p0, Lcom/github/druk/dnssd/a;->g:Ljava/lang/String;

    iput-object p6, p0, Lcom/github/druk/dnssd/a;->h:Ljava/lang/String;

    iput-object p7, p0, Lcom/github/druk/dnssd/a;->i:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lcom/github/druk/dnssd/a;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v6, p0, Lcom/github/druk/dnssd/a;->h:Ljava/lang/String;

    iget-object v7, p0, Lcom/github/druk/dnssd/a;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/github/druk/dnssd/a;->c:Lcom/github/druk/dnssd/BrowseListener;

    iget-object v2, p0, Lcom/github/druk/dnssd/a;->d:[Lcom/github/druk/dnssd/InternalDNSSDService;

    iget v3, p0, Lcom/github/druk/dnssd/a;->e:I

    iget v4, p0, Lcom/github/druk/dnssd/a;->f:I

    iget-object v5, p0, Lcom/github/druk/dnssd/a;->g:Ljava/lang/String;

    invoke-static/range {v1 .. v7}, Lcom/github/druk/dnssd/DNSSD$1;->a(Lcom/github/druk/dnssd/BrowseListener;[Lcom/github/druk/dnssd/InternalDNSSDService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v13, p0, Lcom/github/druk/dnssd/a;->h:Ljava/lang/String;

    iget-object v14, p0, Lcom/github/druk/dnssd/a;->i:Ljava/lang/String;

    iget-object v8, p0, Lcom/github/druk/dnssd/a;->c:Lcom/github/druk/dnssd/BrowseListener;

    iget-object v9, p0, Lcom/github/druk/dnssd/a;->d:[Lcom/github/druk/dnssd/InternalDNSSDService;

    iget v10, p0, Lcom/github/druk/dnssd/a;->e:I

    iget v11, p0, Lcom/github/druk/dnssd/a;->f:I

    iget-object v12, p0, Lcom/github/druk/dnssd/a;->g:Ljava/lang/String;

    invoke-static/range {v8 .. v14}, Lcom/github/druk/dnssd/DNSSD$1;->c(Lcom/github/druk/dnssd/BrowseListener;[Lcom/github/druk/dnssd/InternalDNSSDService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
