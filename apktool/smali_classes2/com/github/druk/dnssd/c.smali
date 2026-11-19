.class public final synthetic Lcom/github/druk/dnssd/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/github/druk/dnssd/ResolveListener;

.field public final synthetic c:[Lcom/github/druk/dnssd/DNSSDService;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I

.field public final synthetic i:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/github/druk/dnssd/ResolveListener;[Lcom/github/druk/dnssd/DNSSDService;IILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/druk/dnssd/c;->b:Lcom/github/druk/dnssd/ResolveListener;

    iput-object p2, p0, Lcom/github/druk/dnssd/c;->c:[Lcom/github/druk/dnssd/DNSSDService;

    iput p3, p0, Lcom/github/druk/dnssd/c;->d:I

    iput p4, p0, Lcom/github/druk/dnssd/c;->e:I

    iput-object p5, p0, Lcom/github/druk/dnssd/c;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/github/druk/dnssd/c;->g:Ljava/lang/String;

    iput p7, p0, Lcom/github/druk/dnssd/c;->h:I

    iput-object p8, p0, Lcom/github/druk/dnssd/c;->i:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v6, p0, Lcom/github/druk/dnssd/c;->h:I

    iget-object v7, p0, Lcom/github/druk/dnssd/c;->i:Ljava/util/Map;

    iget-object v0, p0, Lcom/github/druk/dnssd/c;->b:Lcom/github/druk/dnssd/ResolveListener;

    iget-object v1, p0, Lcom/github/druk/dnssd/c;->c:[Lcom/github/druk/dnssd/DNSSDService;

    iget v2, p0, Lcom/github/druk/dnssd/c;->d:I

    iget v3, p0, Lcom/github/druk/dnssd/c;->e:I

    iget-object v4, p0, Lcom/github/druk/dnssd/c;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/github/druk/dnssd/c;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/github/druk/dnssd/DNSSD$2;->b(Lcom/github/druk/dnssd/ResolveListener;[Lcom/github/druk/dnssd/DNSSDService;IILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method
