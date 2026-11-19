.class public final synthetic Lcom/github/druk/dnssd/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/github/druk/dnssd/QueryListener;

.field public final synthetic c:[Lcom/github/druk/dnssd/DNSSDService;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:[B

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Lcom/github/druk/dnssd/QueryListener;[Lcom/github/druk/dnssd/DNSSDService;IILjava/lang/String;II[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/druk/dnssd/e;->b:Lcom/github/druk/dnssd/QueryListener;

    iput-object p2, p0, Lcom/github/druk/dnssd/e;->c:[Lcom/github/druk/dnssd/DNSSDService;

    iput p3, p0, Lcom/github/druk/dnssd/e;->d:I

    iput p4, p0, Lcom/github/druk/dnssd/e;->e:I

    iput-object p5, p0, Lcom/github/druk/dnssd/e;->f:Ljava/lang/String;

    iput p6, p0, Lcom/github/druk/dnssd/e;->g:I

    iput p7, p0, Lcom/github/druk/dnssd/e;->h:I

    iput-object p8, p0, Lcom/github/druk/dnssd/e;->i:[B

    iput p9, p0, Lcom/github/druk/dnssd/e;->j:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v7, p0, Lcom/github/druk/dnssd/e;->i:[B

    iget v8, p0, Lcom/github/druk/dnssd/e;->j:I

    iget-object v0, p0, Lcom/github/druk/dnssd/e;->b:Lcom/github/druk/dnssd/QueryListener;

    iget-object v1, p0, Lcom/github/druk/dnssd/e;->c:[Lcom/github/druk/dnssd/DNSSDService;

    iget v2, p0, Lcom/github/druk/dnssd/e;->d:I

    iget v3, p0, Lcom/github/druk/dnssd/e;->e:I

    iget-object v4, p0, Lcom/github/druk/dnssd/e;->f:Ljava/lang/String;

    iget v5, p0, Lcom/github/druk/dnssd/e;->g:I

    iget v6, p0, Lcom/github/druk/dnssd/e;->h:I

    invoke-static/range {v0 .. v8}, Lcom/github/druk/dnssd/DNSSD$4;->b(Lcom/github/druk/dnssd/QueryListener;[Lcom/github/druk/dnssd/DNSSDService;IILjava/lang/String;II[BI)V

    return-void
.end method
