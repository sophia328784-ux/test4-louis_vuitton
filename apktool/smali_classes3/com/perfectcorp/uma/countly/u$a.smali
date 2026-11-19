.class final Lcom/perfectcorp/uma/countly/u$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/uma/countly/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/uma/countly/u$a$b;,
        Lcom/perfectcorp/uma/countly/u$a$c;,
        Lcom/perfectcorp/uma/countly/u$a$a;
    }
.end annotation


# static fields
.field public static b:I

.field public static final c:J

.field public static final d:Ljava/math/BigInteger;

.field public static final e:[B

.field public static final f:[B


# instance fields
.field public final a:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/16 v3, 0x7e3

    invoke-direct {v0, v3, v1, v2}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/perfectcorp/uma/countly/u$a;->c:J

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "93364549467778479633419641727879047297"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/uma/countly/u$a;->d:Ljava/math/BigInteger;

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/perfectcorp/uma/countly/u$a;->e:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/perfectcorp/uma/countly/u$a;->f:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x54t
        0x25t
        -0x62t
        -0x20t
        -0x3dt
        -0x11t
        0x79t
        0x3t
        -0x54t
        -0x7et
        0x39t
        0x3ft
        0x8t
        0x4dt
        -0x23t
        0x26t
        0x1ct
        0x2at
        0x6at
        -0x16t
        0x63t
        -0x49t
        -0x4ct
        -0x26t
        -0x58t
        -0x73t
        0x4bt
        0x63t
        -0x2dt
        0x5bt
        0x1t
        -0x23t
        -0x4bt
        -0x77t
        0x6et
        0x4at
        -0x53t
        0xat
        0x5at
        0x17t
        -0x41t
        0x2t
        -0x52t
        -0x42t
        -0x8t
        0x69t
        0x6ct
        -0x5at
        0x2et
        -0x2bt
        0x53t
        0x63t
        -0x57t
        -0x50t
        -0x47t
        -0x41t
        0x58t
        0x43t
        0x6bt
        0x4t
        0x5dt
        0x41t
        0x15t
        0x29t
        0x1t
        0x6at
        0x6at
        -0x7et
        0x29t
        0x34t
        0x23t
        0x17t
        -0x7ft
        -0x3t
        -0x51t
        -0x26t
        0x62t
        0x39t
        0x22t
        0x74t
        0x48t
        -0x1ct
        -0x2t
        0x7dt
        -0x20t
        -0x2ft
        0x8t
        0x63t
        0x7at
        0x4dt
        0x77t
        -0x1ft
        -0x66t
        0x26t
        0x15t
        0x60t
        -0x73t
        0x71t
        -0x7et
        0x1dt
        0x34t
        -0x5ct
        0x62t
        -0x55t
        -0x3et
        0x23t
        -0x4dt
        0x13t
        -0x59t
        -0x50t
        -0x19t
        -0x2t
        -0x13t
        -0x34t
        0x4ct
        0x14t
        -0x11t
        -0x41t
        0x23t
        0x67t
        0x32t
        -0x19t
        0x7at
        -0x2bt
        -0x6bt
        -0x1et
        -0x22t
        0x16t
        -0x2ft
        -0x5et
        -0x1ft
        0x28t
        -0x6ft
        -0x4dt
        0x57t
        0x0t
        -0x2ct
        0x63t
        0x74t
        -0x2dt
        -0x12t
        0x4et
        0x52t
        0x71t
        -0x1ft
        0x4ct
        0x32t
        -0x66t
        -0x80t
        0x71t
        0x4at
        -0x55t
        0x12t
        0x43t
        0x2t
        0x6at
        -0x54t
        0x5ft
        0x34t
        0x1ft
        0x66t
        0x5dt
        -0x6ct
        -0x57t
        -0x67t
        -0x70t
        -0x12t
        -0x66t
        -0x3ct
        -0x12t
        -0x6ct
        -0x7et
        0x52t
        -0x76t
        -0x36t
        -0x14t
        0x20t
        0x66t
        0x3bt
        -0x70t
        0x6t
        0x4at
        -0x5dt
        0xdt
        -0x34t
        0x1dt
        -0x70t
        -0x75t
        -0x3et
        -0x18t
        0x53t
        -0x4at
        0x14t
        0x1ct
        -0x36t
        0xet
        -0x77t
        0x55t
        0x23t
        0x5ct
        0xct
        -0x26t
        -0x2dt
        0x71t
        0x48t
        0x67t
        -0x56t
        0x72t
        0x0t
        -0x4ct
        0x7ft
        0x2at
        0xdt
        0x1ft
        0x43t
        0x22t
        0x2bt
        0x6t
        -0x29t
        0x65t
        0x27t
        -0x1ct
        -0x3ft
        0x18t
        -0x42t
        -0xct
        -0x27t
        0x2ft
        -0x3et
        -0x37t
        0xct
        0x1bt
        -0x8t
        0x60t
        -0x27t
        -0x43t
        0x41t
        0x4t
        0x17t
        -0x5at
        0x21t
        -0x27t
        0x14t
        0x3dt
        0x45t
        0x4et
        -0x3et
        0x7dt
        -0xft
        0x7t
        0x2ft
        -0x13t
        -0x1at
        -0xct
        0x54t
        -0x7t
    .end array-data

    :array_1
    .array-data 1
        0x7at
        0x53t
        -0x4bt
        -0x22t
        -0x4at
        -0x11t
        0x52t
        -0x5dt
        0x5ft
        -0x76t
        -0xbt
        -0x77t
        -0xft
        0x42t
        -0x34t
        0x5et
        0x46t
        -0x78t
        -0x52t
        -0x5bt
        0x8t
        -0x79t
        0x51t
        -0x22t
        0xft
        0xft
        0x2t
        -0x15t
        0xct
        -0x7et
        0x78t
        -0x1dt
        0x73t
        0x7dt
        0x71t
        -0x43t
        0x43t
        -0x17t
        -0x36t
        -0x76t
        0x3ft
        -0x20t
        0x25t
        -0x6et
        -0x65t
        0x33t
        0x33t
        0x74t
        0x49t
        0x5et
        0x0t
        -0x27t
        0x73t
        0x14t
        0x1ct
        0xbt
        0x46t
        0x76t
        0x1ct
        -0x76t
        0xdt
        0x4dt
        -0x74t
        0x6ct
        0x7et
        0x4bt
        -0x9t
        0x60t
        -0x28t
        -0x7ft
        0x78t
        -0x60t
        0x78t
        -0x30t
        0x25t
        0x62t
        -0x55t
        0x10t
        -0x36t
        0x22t
        -0x18t
        0x1ct
        0x19t
        -0x23t
        0x52t
        -0x7dt
        0x64t
        0x5t
        -0x1bt
        -0x79t
        0x66t
        -0x52t
        -0x19t
        0x7at
        -0x5ct
        0x3bt
        0x3et
        -0x28t
        0x70t
        0x7at
        0x76t
        -0x5et
        0x67t
        0x39t
        -0x2ct
        -0x37t
        -0x6t
        -0x1bt
        -0x49t
        0x1et
        0x41t
        -0x1et
        0x9t
        0x39t
        -0x78t
        0x1ct
        0x18t
        0x55t
        0xat
        -0x3ct
        0x41t
        -0x51t
        -0x4et
        -0xdt
        -0xdt
        0xft
        0x42t
        0x14t
        0x61t
        0x74t
        -0x7ft
        -0x1dt
        -0x26t
        -0x79t
        0x5at
        -0x66t
        0x4dt
        -0x75t
        -0x2dt
        -0x37t
        -0x71t
        -0x77t
        0x66t
        0x13t
        0x29t
        0x11t
        -0x1ct
        -0x1t
        -0x1et
        -0x21t
        -0x72t
        -0x6at
        0xct
        0x5at
        -0x5ft
        -0x56t
        0x6bt
        -0x65t
        -0x3t
        -0x4t
        0x3t
        0x3bt
        0x55t
        0xdt
        -0x5at
        -0x5et
        0x25t
        0x48t
        0x17t
        0x1ft
        0x42t
        -0x58t
        -0x26t
        0x6ct
        0x7et
        0x69t
        0x6et
        -0x60t
        -0x21t
        0x67t
        -0x2et
        0x6dt
        -0xct
        0xet
        0x6at
        0x12t
        0x79t
        -0xbt
        0x7ct
        -0x38t
        -0x5bt
        0x32t
        0x1ct
        -0x3ct
        0x31t
        -0x4et
        -0x1at
        -0x45t
        -0x58t
        0x6bt
        0x6at
        -0x5et
        -0x76t
        0x60t
        0x69t
        -0x40t
        0x57t
        0x7dt
        -0x4et
        -0xet
        0x31t
        0xct
        -0x68t
        0x65t
        0x32t
        -0x14t
        0x8t
        0x5at
        -0x32t
        -0x3at
        -0x68t
        -0x17t
        0x21t
        -0x69t
        0x3ft
        0x2ct
        0x79t
        0x29t
        0x3t
        -0xbt
        -0xat
        -0x6ct
        0x2bt
        0x53t
        0x31t
        -0xdt
        -0x6dt
        0x68t
        0x57t
        -0x1ft
        -0x29t
        0x4ft
        0x3at
        -0x2ft
        0x61t
        -0x5ft
        0x60t
        -0x32t
        -0x47t
        -0x55t
        -0x68t
        -0x52t
        0x35t
        0x54t
        0x63t
        -0x75t
    .end array-data
.end method

.method public constructor <init>(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 1

    sget-object v0, Lcom/perfectcorp/uma/countly/t;->a:Lcom/perfectcorp/uma/countly/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/uma/countly/u$a;->a:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p1, p0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 4

    iget-object p0, p0, Lcom/perfectcorp/uma/countly/u$a;->a:Ljavax/net/ssl/HostnameVerifier;

    check-cast p0, Lcom/perfectcorp/uma/countly/t;

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/uma/countly/t;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/perfectcorp/uma/countly/u$a;->c:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_5

    const/4 p1, 0x1

    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    const-string v1, "CN=*.perfectcorp.com"

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "CN=RapidSSL SHA256 CA - G2,O=GeoTrust Inc.,C=US"

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/perfectcorp/uma/countly/u$a;->e:[B

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/perfectcorp/uma/countly/u$a;->d:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object p2, p2, p1

    check-cast p2, Ljava/security/cert/X509Certificate;

    sget-object v0, Lcom/perfectcorp/uma/countly/u$a;->f:[B

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/perfectcorp/uma/countly/u$a$b;

    const-string v1, "The issuer\'s signature is not matching."

    invoke-direct {v0, v1, p2}, Lcom/perfectcorp/uma/countly/u$a$a;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    throw v0

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/perfectcorp/uma/countly/u$a$b;

    const-string v1, "The serial number is not matching."

    invoke-direct {p2, v1, v0}, Lcom/perfectcorp/uma/countly/u$a$a;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    throw p2

    :cond_2
    new-instance p2, Lcom/perfectcorp/uma/countly/u$a$b;

    const-string v1, "The signature is not matching."

    invoke-direct {p2, v1, v0}, Lcom/perfectcorp/uma/countly/u$a$a;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    throw p2

    :cond_3
    new-instance p2, Lcom/perfectcorp/uma/countly/u$a$b;

    const-string v1, "Not our issuer."

    invoke-direct {p2, v1, v0}, Lcom/perfectcorp/uma/countly/u$a$a;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    throw p2

    :cond_4
    new-instance p2, Lcom/perfectcorp/uma/countly/u$a$c;

    const-string v1, "Not our certificate. The device is vulnerable. This cannot happen if the TLS implementation provided by the platform is correct."

    invoke-direct {p2, v1, v0}, Lcom/perfectcorp/uma/countly/u$a$a;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    throw p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    sget v0, Lcom/perfectcorp/uma/countly/u$a;->b:I

    add-int/2addr v0, p1

    sput v0, Lcom/perfectcorp/uma/countly/u$a;->b:I

    const-string p1, "UMASecurity"

    const-string v0, ""

    invoke-static {p1, v0, p2}, Lcom/perfectcorp/uma/b$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return p0
.end method
